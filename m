Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C8E10EFEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kF+kS+n8DZ5hg9BgihVLXX9Utgj0WSzXrmKo/yQpJ+g=; b=O9CUIXIHGS1490Vq6VhAgrSMR
	AQcbipEJGd9e1JG1Ojmbf4kTxslZGOcZZF0+aeyWvwT1ZZnpEJ4iMFuBSRhK7qeriXB+Ys4kmUT8i
	F+Vo7zZqFlc9xIpqmP6L9Ce3JAFYJRb74lu7lJRfpMvx9+9Yf1C4MJQjRQAZhgL0bLlr58Nz/dweP
	CQsiH6A9ET4jcJb77jdfSIPipkMeNnb6l3+R1VxLFdEXXdZgDtTNtwA32HvNtiaWPtIABo48lRe56
	p9CDSuAGpdvSA6qi/2s/D7DDnkrQah2msMr0IBDG9pjfb+4drtTJaZ4QoemeERaI5jwn/HeJtYdyl
	pko6VsmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrCG-0001Gu-AN; Mon, 02 Dec 2019 19:17:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrC4-0001GG-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:17:13 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50C7A214AF;
 Mon,  2 Dec 2019 19:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575314231;
 bh=Tbap/Zmbh8gZMiHJcbLH34iqHD0SlfP5bSkdQHyv2Pw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dkufy4cS1HaipR+LhHipcKBL4Xu12NzG+/yYNkCVI8gfr2V1PjPUmGCblvOaQChp3
 NGrtXRe7y9k2FEFMan3af92qn2MJT+HhhtXbHNOwPFyH+qYrAXJdXDgQBw4M7zNt1d
 cpllNddpVE7MoUoKopBcs0zLjKjMqw+iRkfQ22aA=
Date: Mon, 2 Dec 2019 20:17:09 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: allwinner: a64: olinuxino: Fix SDIO
 supply regulator
Message-ID: <20191202191709.nqbushoi65dhiqgj@gilmour.lan>
References: <20191129113941.20170-1-stefan@olimex.com>
 <20191129113941.20170-4-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191129113941.20170-4-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_111712_139501_2F79B3EC 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7330938569024353768=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7330938569024353768==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l3uncgqa5xbn4vfx"
Content-Disposition: inline


--l3uncgqa5xbn4vfx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 29, 2019 at 01:39:41PM +0200, Stefan Mavrodiev wrote:
> A64-OLinuXino uses DCDC1 (VCC-IO) for MMC1 supply. In commit 916b68cfe4b5
> ("arm64: dts: a64-olinuxino: Enable RTL8723BS WiFi") ALDO2 is set, which is
> VCC-PL. Since DCDC1 is always present, the boards are working without a
> problem.
>
> This patch sets the correct regulator.
>
> Fixes: 916b68cfe4b5 ("arm64: dts: a64-olinuxino: Enable RTL8723BS WiFi")
> Cc: stable@vger.kernel.org # v4.16+
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Applied, thanks!
Maxime

--l3uncgqa5xbn4vfx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeVjNQAKCRDj7w1vZxhR
xYI5AQDZZQGUNxHfiwStWrEfc2VJtj2zpYy6AQcUhgg5psTkzQEAr0lcg82RRRqt
AQVFVWi1+hH35NAMNs6z1e4eIPP5ggU=
=yaJQ
-----END PGP SIGNATURE-----

--l3uncgqa5xbn4vfx--


--===============7330938569024353768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7330938569024353768==--

