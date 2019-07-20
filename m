Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92BB6EED3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kKOs0mYOfca6HDPoC0G50RSrEzhzxm0pd2GMSnvUDSs=; b=OXsJTmT/jTENmRAsBr2xgb0Xf
	X/FR316eMP6NOdGOsUfB8mY8ashpuF67im+Q/AdmYHOpGqj7c0xdmwf5YzY+aMToJXWfJ9p1gS++u
	lkbrYlN0Js8DnxuwpdSNi1FiF9ron2sXpzlPLaeuMYjNlyAZgJZL90cVOoxpswft7vCL0WqUtA8kl
	s8LuVS4avlUjBx+PMS1oAvjGnJFL6wqx7ucv2xpFfFgnSJ8Oyhg/1ihYLjBqgqh/7pn2FWjWEcBga
	76TMkZFr25eJG4FxhwLpUSNvnpMJGpyMoQivuUdDxd7Cyxk7Xs/Fnqaxq5HZNrTQpNJA/DQ7duQPw
	g2HnM9g/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holx4-0004UC-UM; Sat, 20 Jul 2019 09:46:51 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holwp-0004TL-HM
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:46:37 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 743D6FF803;
 Sat, 20 Jul 2019 09:46:32 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:46:32 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 5/8] clk: sunxi-ng: v3s: add Allwinner V3 support
Message-ID: <20190720094632.6plwtvt73xlnucw7@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-6-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-6-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024635_729257_E8550844 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1800349964419247433=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1800349964419247433==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qzyk6exegy3asgml"
Content-Disposition: inline


--qzyk6exegy3asgml
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:31AM +0800, Icenowy Zheng wrote:
> +		[CLK_MMC1]		= &mmc1_clk.common.hw,
> +		[CLK_MMC1_SAMPLE]	= &mmc1_sample_clk.common.hw,
> +		[CLK_MMC1_OUTPUT]	= &mmc1_output_clk.common.hw,
> +		[CLK_MMC2]		= &mmc1_clk.common.hw,
> +		[CLK_MMC2_SAMPLE]	= &mmc1_sample_clk.common.hw,
> +		[CLK_MMC2_OUTPUT]	= &mmc1_output_clk.common.hw,

And there's the same mistake here.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qzyk6exegy3asgml
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLi+AAKCRDj7w1vZxhR
xQjRAP9ST2/2c5sjUdw8/ITU0eEvk6+5Bu5SYQ2ltWVX6cOWFgEA9vegVFVC4LnG
ZendV+/AhkM+QvA9ziMPeStbZE5x+A4=
=nSSY
-----END PGP SIGNATURE-----

--qzyk6exegy3asgml--


--===============1800349964419247433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1800349964419247433==--

