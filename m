Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64697B6661
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ttV7gGtBoMRQENsLatMIOq8ld0wciqhv/rZ1WKq07bE=; b=KVCim40KlUJyNchUsPjbPUzEX
	M0O6XzlCd3zjjj4DDR8ulJMgHiJelDsTlJn6ciTQX6O3MYdwlsEGv0k+YlXwpop4bllbDgMiJmcFE
	PePbt0jtrjobvqOp46lb3TXUUJ2KnySRK3QYr7S//JWPB8lBKbKtzi7pqgs7OGlpkO6uzVl8hRCfV
	ewD3OP1NK2lGPtu67YkzjMTDWzNzx8Wuc0+fv81nd/vqXhN4YD3xk5B6AFNbJLt4pjGhM5xl64076
	RBpWOB0yEv83EUMClQZxpt6qVw0HFDoRPq1ZR+NT6eCsqbMz8bLS9gYCxFqwCVGppmLthbQdfrpJk
	FtYSwl1SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbEm-0001hc-0l; Wed, 18 Sep 2019 14:47:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbDu-0001X6-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:46:28 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 956C920665;
 Wed, 18 Sep 2019 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568817986;
 bh=sh1/pWZQhmLEdoTgy9qc8FXTS1/RZaYcRnv+3EKj65E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iLwZ/6VIpFCY9nmCA/pyN0QOt0xG9M/wyRbUo2JejYMhSu66brQVBmIP8uqq8zLId
 m/S/imTVnNLYNb2unr1BoQwtKGdVyqTtOIlmQNM/KzvSs8iSdvtoWP5eDlZ5WnFaw4
 4rlc9Dwz41fHMSDoK2WE021TSBxPVvCmIq6ooAb0=
Date: Wed, 18 Sep 2019 16:46:23 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: pine64-plus: Add PHY
 regulator delay
Message-ID: <20190918144623.tkwrhykb3sxqbr6d@gilmour>
References: <20190909184235.13196-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190909184235.13196-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_074627_294127_B9B29603 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8041726311805024085=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8041726311805024085==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="td5nie2iuibay3rv"
Content-Disposition: inline


--td5nie2iuibay3rv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 08:42:35PM +0200, Jernej Skrabec wrote:
> Depending on kernel and bootloader configuration, it's possible that
> Realtek ethernet PHY isn't powered on properly. According to the
> datasheet, it needs 30ms to power up and then some more time before it
> can be used.
>
> Fix that by adding 100ms ramp delay to regulator responsible for
> powering PHY.
>
> Fixes: 94dcfdc77fc5 ("arm64: allwinner: pine64-plus: Enable dwmac-sun8i")
> Suggested-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Queued as a fix for 5.4, thanks!
Maxime

--td5nie2iuibay3rv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYJDPwAKCRDj7w1vZxhR
xdK4AP0RZ4CscsTpkYmuYSXG3hH/C10hoz66XEjSw3F/uixspAD+O2C20oxlnZhd
xnwehkcetGTGELnGwpmVspE3HGCD+gA=
=CDeL
-----END PGP SIGNATURE-----

--td5nie2iuibay3rv--


--===============8041726311805024085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8041726311805024085==--

