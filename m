Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C5214573
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq1XV8qLU50N5oHwuP1H8jg5HJkiz+Ymz4LuLNX9fIc=; b=e9cG/TMUyK4SaW
	bfI0FHLVvk0xE0Fhj7WR+ktnjhiGIcjjLpEHB9VJ2Zc/AtHkFIqlbHBvMeIaOikU8JZrUjLRcnOAl
	bjG0YDPwlR5boI4jb440xDIw3/iic+h1vBXxyfYLU0BwEyzzVicoiLyvRkqWnJjiEzWTpxogmsru3
	uP+C/ft9MTn1R9FViT3xSB/qfYFxmVbjiBnN1UApvgb5tiV3jMWnKVxou6FwbHpbREKsxZOmTC0tw
	rZb7UYm7oDeFP9MtW5DZ/H6TcZBIoB5BZq+UeGGOmlk27wXWXrB8Bwd0KsabUGoinNRRX8kljwvFb
	F+fDSf8oedCYQ56I0FMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYFR-000544-SB; Mon, 06 May 2019 07:41:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYFL-00053Y-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:41:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hNYFH-00044r-HR; Mon, 06 May 2019 09:41:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hNYFH-0007AF-12; Mon, 06 May 2019 09:41:07 +0200
Date: Mon, 6 May 2019 09:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: fsl: ls1046a: Add the guts node in dts
Message-ID: <20190506074106.eqa7xhktn2vlmtio@pengutronix.de>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430044719.30720-2-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430044719.30720-2-chuanhua.han@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:38:31 up 48 days, 18:49, 81 users,  load average: 1.08, 1.22, 1.26
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_004111_529409_A717155C 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sumit.batra@nxp.com,
 eha@deif.com, festevam@gmail.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, wsa+renesas@sang-engineering.com, robh+dt@kernel.org,
 l.stach@pengutronix.de, linux-i2c@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux@rempel-privat.de, shawnguo@kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:47:19PM +0800, Chuanhua Han wrote:
> For NXP ls1046a SoC, the i2c clock needs to be configured with the
> appropriate bit of RCW, so we add the guts node (GUTS/DCFG global
> utilities block) for the driver to read.
> 
> Signed-off-by: Sumit Batra <sumit.batra@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index 373310e4c0ea..f88599df18bb 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -205,6 +205,11 @@
>  			status = "disabled";
>  		};
>  
> +		guts: global-utilities@1ee0000 {
> +			compatible = "fsl,qoriq-device-config";
> +			reg = <0x0 0x1ee0000 0x0 0x1000>;
> +		};

According to Documentation/devicetree/bindings/soc/fsl/guts.txt we have
the following compatibles:

        "fsl,qoriq-device-config-1.0"
        "fsl,qoriq-device-config-2.0"
        "fsl,<chip>-device-config"
        "fsl,<chip>-guts"

"fsl,qoriq-device-config" is none of them and I don't think you should
give this SoC specific thing a generic compatible.
"fsl,ls1046a-device-config" would be better.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
