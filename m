Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB435F54C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJpD3QGXo715GoCvcZHZ/gN0S+XyTUVM7Iajh5l0iik=; b=h9kaCYPzaS9VH6
	2wKBYnsx3yOaqmm+KqJ0W/qPCxDC6seZZD+hES6fAc4IqrTroLAL2VhTzskFMpXlPKt40wGHl42Od
	rzo4zXPrBDJgztIkbZAD/niPeHhCf1X05SjinzQ166HKFenDXjqs5bI9RF1gEI9/Nv6TdHBEbGKho
	rRg0CRgIbcJNHDFpb8+T4YVxo98tDodBKfplsqMYJxdAqal50rQXtHKWByFgTayavk11w7FsW8OHT
	fEhNhxH9vJ2z/XFJFN5d2xydAXf8wlx7B2g5lbh1MgsmKTPvZ+G2sS/y8G1Au1gPIRcIEAtVFViek
	p3xJ4EuH5U+FhAG5lpfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixqL-0004vc-AV; Thu, 04 Jul 2019 09:15:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixq7-0004v6-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:15:40 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hixq0-0007Kg-L8; Thu, 04 Jul 2019 11:15:32 +0200
Message-ID: <1562231730.6641.4.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Add "fsl,imx8mq-src" as src's
 fallback compatible
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson.Huang@nxp.com, robh+dt@kernel.org, mark.rutland@arm.com, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org, 
 daniel.baluta@nxp.com, ping.bai@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 04 Jul 2019 11:15:30 +0200
In-Reply-To: <20190701093944.5540-2-Anson.Huang@nxp.com>
References: <20190701093944.5540-1-Anson.Huang@nxp.com>
 <20190701093944.5540-2-Anson.Huang@nxp.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_021539_529788_0D5C1B2F 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, 2019-07-01 at 17:39 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM can reuse i.MX8MQ's src driver, add "fsl,imx8mq-src" as
> src's fallback compatible to enable it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index f0ac027..ea15457 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -471,7 +471,7 @@
>  			};
>  
>  			src: reset-controller@30390000 {
> -				compatible = "fsl,imx8mm-src", "syscon";
> +				compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon";
>  				reg = <0x30390000 0x10000>;
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;

Please also update the compatible property documentation in
Documentation/devicetree/bindings/reset/fsl,imx7-src.txt.
With that,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
