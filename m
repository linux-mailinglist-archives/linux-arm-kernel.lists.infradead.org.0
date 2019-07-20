Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDAA6EEC8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+1+Sza3HiD7+twqcrvApEQJvpCZ9Ve4yuAj7xweMA4E=; b=A7BbfOYaCVTKvMBkBI+30FW1F
	LAw0TpVaTRm2TFpu8MLMSFSSchOfAn7CgaJJXqsagNBH+SK/fTS2K+EX/CvYR8RuVdMqCTTHH0opN
	WulSmDZhO+Xk0H/4yr/FRC+KTiLx900Z+44awGizXmgqmqeei8JRB+L8Xj00P8A+VuagSyYHe0D5Q
	t1nZwfln0t5kgr77pnM+C3uaYcKPNolT1g4HttHWwNzR2sPuZp7ce6uNVNnaUkRpFG3z49MKjpVyE
	rbxaSxVPCz7TMTrkuLBktPj7sHjZZyCzLLpEou99rVa0CBIxaaO45eXCQ4pjj/QtpFNGhlIMGeysT
	qs5UJYjcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holva-0002eG-Sq; Sat, 20 Jul 2019 09:45:19 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holvF-0002cc-SE
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:44:59 +0000
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1A045240004;
 Sat, 20 Jul 2019 09:44:49 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:44:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 4/8] clk: sunxi-ng: v3s: add missing clock slices for
 MMC2 module clocks
Message-ID: <20190720094449.dh53rbxz3mc74qls@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-5-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-5-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024458_067979_62B969AC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============5235655826900648451=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5235655826900648451==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bygt3ojtr3w3kmjg"
Content-Disposition: inline


--bygt3ojtr3w3kmjg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:30AM +0800, Icenowy Zheng wrote:
> The MMC2 clock slices are currently not defined in V3s CCU driver, which
> makes MMC2 not working.
>
> Fix this issue.
>
> Fixes: d0f11d14b0bc ("clk: sunxi-ng: add support for V3s CCU")
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> New patch in v4.
>
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> index 4eb68243e310..9c88015d4419 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> @@ -513,6 +513,9 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
>  		[CLK_MMC1]		= &mmc1_clk.common.hw,
>  		[CLK_MMC1_SAMPLE]	= &mmc1_sample_clk.common.hw,
>  		[CLK_MMC1_OUTPUT]	= &mmc1_output_clk.common.hw,
> +		[CLK_MMC2]		= &mmc1_clk.common.hw,
> +		[CLK_MMC2_SAMPLE]	= &mmc1_sample_clk.common.hw,
> +		[CLK_MMC2_OUTPUT]	= &mmc1_output_clk.common.hw,

You're using the same structures than mmc1, I guess it's a copy and
paste mistake?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bygt3ojtr3w3kmjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLikQAKCRDj7w1vZxhR
xXstAP4hG1qWU5aKOgq2MiLh0TPYedRrhD3NFX8NrLDp9uXWBAEAzaBusAgbeXvL
Geinke2sdGlDUaGa2D8WiG7b9POqBA4=
=hmf1
-----END PGP SIGNATURE-----

--bygt3ojtr3w3kmjg--


--===============5235655826900648451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5235655826900648451==--

