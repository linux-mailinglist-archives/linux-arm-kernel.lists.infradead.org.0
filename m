Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDA05D051
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWWRqWyCqSLPAmL2WkzX8ennu6RWETOt9drwngiwhsA=; b=lUik9ljoWf2yYE
	6Lm9mhQ9kkEH/WOq2nxhychVaXv67USuhbFiY2Cx4sMXSeYDFSxdJ0SIXAySFVRqDZh0wySfczUp9
	Lzgfkcf3He2/mNXh75XHWgtxP3fcHcxlHuLe1ifJQ6xj20ghxEw0dLKOP7i8dnpWk7vAgazqIe1+6
	dNON65dYINmw7XICbgv9ZEij/X7Y/LtVX7Ms94tZQY9LvwD9NJixsf0MApI5J5CFWAQ6Y1iFIa9dB
	RBlLdD1v4ktKVtMFCO55DVX2uG7R9F7zn7fPo2aeEdEWRGf8JrtzxQH9kQhhaWX6sGp+qeJJTdwSS
	Btcj2Z9RDIbgUZ7PTGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIcp-0000Po-9Y; Tue, 02 Jul 2019 13:15:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIcU-0000PQ-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:14:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so1002537wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=43iWKH6jifytF6JFVgfLHPopXRcvvg3jKXLdEufvKFw=;
 b=XHZrJP4SOb5CVeG/E/xOCKM4DLp2Kmo4x9pWHCOlVjK45UA7ZmotrdUT/FpN5jf7j9
 qOpebsH/AJqMB8gFlQFEOReSsbmofA5CMNpe/82pJghUrdHdsgU2vSg+dnhowSv96oS8
 LK6v9QXiVAu355xmxFUEj+jfHAP4wWxWJCas00Ga3VcrhyZyZHw6khXDvKWNBU5CXjQH
 3BSvwbvAJbEgsCf4iaXiLLKvtVX1jaKGh+a7EuVJ55wlAx/2f5uF6Mcr2NixW95XbcV2
 lA8MjLt2kYklqra+H7kFMEYda+ZNRV5URE5AnIFvksujftfUeiDtoopSYkpemp3xSRME
 qD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=43iWKH6jifytF6JFVgfLHPopXRcvvg3jKXLdEufvKFw=;
 b=Q/OMv5pNfmY5TYoPJdUke7YSSreT1iECLo4j8RyMmaB1QpBiHLrQj0qHp/hpzj8FHg
 KWO1jCKkM/AE9kxYFWRWq+ebSmp6MPyBnNyJ0NNsTVPFSQDdwwOa94anaIvXv6QvXMvi
 LXFusXfvVXRtPqHQ2OLnh8mGNASj4F73qaZj9CfxWBSKiFbOk2EP2ApeC0K7/IrU0Gca
 O8rTejnM5CadJUePRx3cSl2l+t+FA8Ud8qBMv0TpjeG3/HDHNgrsXMV53Xm+VOzeGUQi
 h4KVrT+1JMuvSLu1uYUinx1C/sYZImExB6syOYJyK0e0Ut/E27ebHAlyP4QbTNyuhXf9
 hrrA==
X-Gm-Message-State: APjAAAX9PqkSWtFFfBywNg+Q5fMeRioR3bfWRCdmAJ2wuLInz3LFG3D6
 8o3tVUyCMM6cYW7ii8D8xztWSMthjRprkfusFkg=
X-Google-Smtp-Source: APXvYqxWyXlIkUu8b3u0rYozO679+E2AsoRAzxugCAL/051AnSJ56YHrOmAaSBvKviIHxzKsoTLBzEQBGqT0b1X6Hc8=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr3394953wmc.25.1562073288730; 
 Tue, 02 Jul 2019 06:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190702131155.18170-1-andradanciu1997@gmail.com>
In-Reply-To: <20190702131155.18170-1-andradanciu1997@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 2 Jul 2019 16:14:37 +0300
Message-ID: <CAEnQRZDC_wxHbs4ZpeKTo9z7T-tdgeDLwgcf+DLRfZmXDga20A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mq: Add sai3 and sai6 nodes
To: Andra Danciu <andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_061450_982923_102E60C7 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Devicetree List <devicetree@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 andrew.smirnov@gmail.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks better now. One comment inline:

On Tue, Jul 2, 2019 at 4:12 PM Andra Danciu <andradanciu1997@gmail.com> wrote:
>
> SAI3 and SAI6 nodes are used to connect to an external codec.
> They have 1 Tx and 1 Rx dataline.
>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> ---
> Changes since v1:
>         - Added sai3 node because we need it to enable audio on pico-pi-8m
>         - Added commit description
>
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808eff87..2d489c5cdc26 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -278,6 +278,20 @@
>                         #size-cells = <1>;
>                         ranges = <0x30000000 0x30000000 0x400000>;
>
> +                       sai6: sai@30030000 {
> +                               compatible = "fsl,imx8mq-sai",
> +                                       "fsl,imx6sx-sai";
> +                               reg = <0x30030000 0x10000>;
> +                               interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +                               clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
> +                                       <&clk IMX8MQ_CLK_SAI6_ROOT>,
> +                                       <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> +                               clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +                               dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
> +                               dma-names = "rx", "tx";
> +                               status = "disabled";
> +                       };
> +
>                         gpio1: gpio@30200000 {
>                                 compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
>                                 reg = <0x30200000 0x10000>;
> @@ -728,6 +742,22 @@
>                                 status = "disabled";
>                         };
>
> +                       sai3: sai@308c0000 {
> +                               compatible = "fsl,imx8mq-sai",
> +                                            "fsl,imx6sx-sai";
> +                               reg = <0x308c0000 0x10000>;
> +                               interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +                               clocks = <&clk IMX8MQ_CLK_SAI3_IPG>,
> +                                       <&clk IMX8MQ_CLK_DUMMY>,
> +                                       <&clk IMX8MQ_CLK_SAI3_ROOT>,
> +                                       <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> +                               clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +                               dmas = <&sdma1 12 24 0>, <&sdma1 13 24 0>;
> +                               dma-names = "rx", "tx";
> +                               status = "disabled";
> +                       };
> +
> +

Please don't use multiple blank lines here.

>                         i2c1: i2c@30a20000 {
>                                 compatible = "fsl,imx8mq-i2c", "fsl,imx21-i2c";
>                                 reg = <0x30a20000 0x10000>;
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
