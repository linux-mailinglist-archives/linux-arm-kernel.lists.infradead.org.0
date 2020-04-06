Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AF919F22E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ROFL5KEYEFWTLChO3c/1+SyAc1Am2iPfSOAqC9AtNyY=; b=Qwg5R5JsGI/7fZLkJ9HeMQdwi
	vy7T+KaB6Av9T2fJGKCH74roA6wwEeCVC4frCpmPYQd5Pmlf6pR/wRHMzdU/0WT3+Cg8NbvzGUm5r
	R2o0bwNmtu+JyL9ByBuGBUH+p6vOd9gZXI79AeWQAlZ+Sx4QefKL5CHUpQ3yqJUlf/NspFVuLXHvi
	Wl9OOc8pO3x4UmydEHQc6rGXrPjPbdNJ638jqnzYHVkTQqxgO75eD035YObfvNCDr4OiIkouc9+nx
	Z6R86T73SrvvFTwdlvAFBklptmehZmnirotBx7M75vQPDIaGUdLtMIHkm7b1h8fzdfi0LVxzxTCng
	HUrU8VGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNo1-0006nC-6r; Mon, 06 Apr 2020 09:12:33 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNnu-0006ml-Jy
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:12:27 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8af2140000>; Mon, 06 Apr 2020 02:10:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 06 Apr 2020 02:12:25 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 06 Apr 2020 02:12:25 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Apr
 2020 09:12:25 +0000
Received: from localhost (10.124.1.5) by DRHQMAIL107.nvidia.com (10.27.9.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Apr 2020 09:12:24
 +0000
Date: Mon, 6 Apr 2020 11:12:22 +0200
From: Thierry Reding <treding@nvidia.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/9] arm64: tegra: Remove redundant CLKDEV_LOOKUP selects
Message-ID: <20200406091222.GA475156@ulmo>
References: <20200405025123.154688-1-sboyd@kernel.org>
 <20200405025123.154688-4-sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200405025123.154688-4-sboyd@kernel.org>
X-NVConfidentiality: public
User-Agent: Mutt/1.13.1 (2019-12-14)
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586164244; bh=9kmRTXF8Etb9YX4oOcNjQcdL+srESuC5aHGqMIaGSiA=;
 h=X-PGP-Universal:Date:From:To:CC:Subject:Message-ID:References:
 MIME-Version:In-Reply-To:X-NVConfidentiality:User-Agent:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:
 Content-Disposition;
 b=RSirfZOQYdXD3Ox0BliIItemQ8d/Bs/Qcj6c5eKsQ0snKTh+/f1HotOfmbQ2aM3IZ
 mrGAb9Z7Y0qX/nLscwBRp/cavq14ZCHvCicFVGMzuw1YflXdDXZKXHjKAHcQ0Hp7kY
 k1t8+8YkXqZRT8Zd5Ik0qf12UuLipIUiNbmQoQFBpRLeZ3Aq6DAWgoTDmcbEI+EW1l
 F6sjSc+xU5uNYzKF6hOiwzUVsXIWSTX/8atYdil/PfdAerWZg6YKqA+Hj3bNlf7sXk
 Jjce3njkD3Pas7l5ePr6PDRpT62sBA6JgV3L38tL+xUFOwWmW0QEFup+TGwwZmMLYN
 aW1kAXEjN9iXg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_021226_663289_865AABAD 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Paul Walmsley <paul@pwsan.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5270494568005182159=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5270494568005182159==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline

--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 04, 2020 at 07:51:17PM -0700, Stephen Boyd wrote:
> The arm64 architecture selects COMMON_CLK at the toplevel ARM64 config.
> The COMMON_CLK config option already selects CLKDEV_LOOKUP so it's
> redundant to have this selected again for the Tegra specific config.
>=20
> Cc: Paul Walmsley <paul@pwsan.com>
> Cc: Thierry Reding <treding@nvidia.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  arch/arm64/Kconfig.platforms | 1 -
>  1 file changed, 1 deletion(-)

We rarely touch this, so I think it's fine for this to go through the
clock tree. I'll make a mental note just in case there's going to be
something touching this area in the next release, but I'm sure it'll be
all minor so we could easily work that out:

Acked-by: Thierry Reding <treding@nvidia.com>

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6K8nMACgkQ3SOs138+
s6GYOxAAl16bdJdFCTM/is7vcybWugFQqwYZ6YQqMs8mYm7vVkbuX24Mw4Imq8Dh
kCzqbiCOnF0Bzotqm2ZQH2DwFHuevqCcIVvFM3dFapq5vE+T/42fernYfv2Jcdt+
D5+aKv994tvCXMPKPq6oJyJGR3Frf2BcIjxThfduw+B68ILLaImTwoW5p6fWyrUL
jR9F3hCCASjWQS+fCNuEcNRlsEBmWw1u/c4iqjfU7JMHXpPE/DZuYeS2daLoQmEl
5li51m8hyES7/R9/tVaJlZIfOM3t9O4V58aZDnP/ieJ4nzFGLUWg3eveOm0b88ex
2jaQhn5zNUliym+sSa4/vZKXPkzUTW4zMtiNR2B/QZyEZdD7veQmlVVPWauSsH4S
1NCqegINAAaBAFZnS3Xz+iJsEqnK+iHiR6sZzckpChCN8znGgpK/sqGvY3gUj9bt
R7wI7snHv59hJSbU2NBZKl95G5JH22GlU/RT3exDgQd2LHyi9WcPbvg6lqYbydM4
FC/YOBQjSIBr1oC1ECh9XtGiGN614I3JextBY+NIFMONb/UN2b6K842uKhETt2U7
gCjXTkdSIGwf5m3QSSxUjPYUnMycFQ0XXhKjyNed0V7daaxrfS5LbgN2sVA/WC6G
cvGn2OsSZnLdE0dAY9hpANrWX2RFIhIqINKHTQqc+pqGieWXvJE=
=rq9p
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--


--===============5270494568005182159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5270494568005182159==--

