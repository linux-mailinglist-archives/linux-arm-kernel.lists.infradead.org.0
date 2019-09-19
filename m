Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730F5B73EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpLrxqcS3wsKacVE2DLa7/T92VlcVxRJfeKyBSXqySg=; b=U7bgTsg2sJdmzO
	TfhYaEAXQyxBKr0BV4uBdEhjNaDvY4ozUImjitBjZ2Nbq0L5TeHsRwcmfQ+vcI8s6URFXnlhgCB1g
	+d/hJ1HeOmmPZ1JY1Rrl6n61CGXAfkmF/IqGuRyqir3Oo2K6w+ByFPF4902V742dJXLT0uIY/pmcQ
	tlr7XVDL3Tzts+B6bBADyy3rzYI3rJB+bKf3rV8oPykrSsMmZhVPYHP8q0RVqwEH8IBl2euQxTvZZ
	qVLLrunkGtLUf8zqGmet41lJAxDKi8ehXMYvDQ3wf/+OuoXi7H7vpW/xVrZuvfgpz5ChkoyjuIx8/
	XQShovTYP2CxlroGhl2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqi8-0004DY-9S; Thu, 19 Sep 2019 07:18:40 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqhR-0004CG-B5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:18:00 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id E59A367AB45;
 Thu, 19 Sep 2019 09:17:44 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 19 Sep
 2019 09:17:44 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Thu, 19 Sep 2019 09:17:44 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Anson Huang <Anson.Huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "leonard.crestez@nxp.com"
 <leonard.crestez@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "ping.bai@nxp.com" <ping.bai@nxp.com>,
 "daniel.baluta@nxp.com" <daniel.baluta@nxp.com>, "jun.li@nxp.com"
 <jun.li@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "abel.vesa@nxp.com" <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>, "agx@sigxcpu.org"
 <agx@sigxcpu.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's ipg
 clk
Thread-Topic: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's
 ipg clk
Thread-Index: AQHVbqhJada8Xsj3oEetJoKRBs2eSKcyddCA
Date: Thu, 19 Sep 2019 07:17:44 +0000
Message-ID: <c680d114-1c14-6bf8-226c-2fdd98350158@kontron.de>
References: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
 <1568869559-28611-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1568869559-28611-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <F14B5A1009A44548B13FE27527380192@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: E59A367AB45.A1B78
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: abel.vesa@nxp.com, agx@sigxcpu.org,
 andrew.smirnov@gmail.com, angus@akkea.ca, anson.huang@nxp.com,
 ccaione@baylibre.com, daniel.baluta@nxp.com,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
 festevam@gmail.com, jun.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, ping.bai@nxp.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_001757_938649_AF6BFEC0 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "Linux-imx@nxp.com" <Linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

I have a question, that is not directly related to this patch.
I see that for the usdhc1 and usdhc3 nodes, there is an 'assigned-clock' 
and 'assigned-clock-rates' property but not for usdhc2. The same applies 
to the mx8mq and mx8mn dtsi file.

Is there any reason for this? If not can you fix it?

Thanks,
Frieder

On 19.09.19 07:05, Anson Huang wrote:
> On i.MX8MM, usdhc's ipg clock is from IMX8MM_CLK_IPG_ROOT,
> assign it explicitly instead of using IMX8MM_CLK_DUMMY.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 7c4dcce..8aafad2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -694,7 +694,7 @@
>   				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
>   				reg = <0x30b40000 0x10000>;
>   				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk IMX8MM_CLK_DUMMY>,
> +				clocks = <&clk IMX8MM_CLK_IPG_ROOT>,
>   					 <&clk IMX8MM_CLK_NAND_USDHC_BUS>,
>   					 <&clk IMX8MM_CLK_USDHC1_ROOT>;
>   				clock-names = "ipg", "ahb", "per";
> @@ -710,7 +710,7 @@
>   				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
>   				reg = <0x30b50000 0x10000>;
>   				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk IMX8MM_CLK_DUMMY>,
> +				clocks = <&clk IMX8MM_CLK_IPG_ROOT>,
>   					 <&clk IMX8MM_CLK_NAND_USDHC_BUS>,
>   					 <&clk IMX8MM_CLK_USDHC2_ROOT>;
>   				clock-names = "ipg", "ahb", "per";
> @@ -724,7 +724,7 @@
>   				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
>   				reg = <0x30b60000 0x10000>;
>   				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk IMX8MM_CLK_DUMMY>,
> +				clocks = <&clk IMX8MM_CLK_IPG_ROOT>,
>   					 <&clk IMX8MM_CLK_NAND_USDHC_BUS>,
>   					 <&clk IMX8MM_CLK_USDHC3_ROOT>;
>   				clock-names = "ipg", "ahb", "per";
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
