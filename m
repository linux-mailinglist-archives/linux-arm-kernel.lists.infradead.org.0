Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019235DE0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 08:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRjCmdIHhtGQtLuMYhRSwld8TrdDYEwBrYJEH8jHcHM=; b=BZJ4S7SGM1vwQW
	jIRFKuk5p6GUmx0L7A83uZ7fl4TuFtExI/HK5Vj0WffDE9zgfFmfQGlsVwjG2prQqatgrOGZ0S3Cl
	0b8XHRU5bZJ9Pp40TlkM19UQcURktLpjFRSyEzH17Ei8kVQedvCkRxCE6UF3aX1oQtAtQRevfHIJf
	tFsrhkcXOXZq0VN1+ZYyfXSMZmEbtzFN57EIf3UwTtdxd/PQkCNjEus8y5qFUy5pdeyY9fnaGF8uJ
	Rv69UuJqsP7H6fcKYkhJowUo/z7NdNP5pQCm/uPouqEeN4P+vIb3XhEOC+5Aat9QAm7m9ItKX+4Du
	ojYj1SrXWPJpxWzwKFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiYkk-0001iv-2u; Wed, 03 Jul 2019 06:28:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiYkX-0001hw-LE
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 06:28:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id n9so900275wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 23:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8eCCLmkLkeLDCE1a5Yy+pkPkgEz/If2djsBLUVl9QJY=;
 b=fG8BhAz8rpQYJOJXA5V8a2gJRw28DhFgY3Psa6mrsFvwZGR6CTs4wcu+duQr9PUZ1b
 1fp2XrkoaQVdrihUflkGjH61OlQWzrCfKToaVUOCr+GGgVuKvxBliXtP5U7AcmY2zQrc
 Lne4KAP8plFJyOy00k7E7hH1AKViwLCpDBkSc/LHT9W4VlPbc8C5ft6Xfw7Xyf1CuJpb
 MoW6PjhgtrCI0b6gtdMkTE4xIWeQCaGpJJxi97JxTdsXNKWuFCv+SuxKJ1OnA+5uAG45
 cC+U99NQXlHlClM71PsZWDq6NXd6SdjFTKkA1UxYG0/DF9R2psTPqwkbfoikmALWuHoI
 ohgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8eCCLmkLkeLDCE1a5Yy+pkPkgEz/If2djsBLUVl9QJY=;
 b=nMJwmma54iIfk1hlN+Ik680rVqaiotzzAZ7QeK0+Uav9kouj8D8w8CqaZWIcTTD+Qc
 q/lxJoB5YJevCLxTggpBVedVvmwAXLxdHDdzrEdnt8viARTQzxtUMsvsV97Ii9c7N8HG
 3y1Ef6JzQDerpVZkOprkdzZrZePhPn3XFf20lwyozk0ftSn/anNpldHbgDDUHg33OvBR
 R+nlJEWy7rjSbEWeZnvuTZFLxCZTxsyaGZ5zUo+43XWff0s7s7HwzJSv8Xnnxlgs3/DM
 wn8vfxc9Z3JjuArmR9JeRMm6rlGyFriuKQc+wdA7RjXChpVFWWL3G+ev1KYIRjggI0NS
 G1yA==
X-Gm-Message-State: APjAAAVNDk7dm+US0OFiwMPA/oG5N1D7TWs2MVxmLrt6UPXU5Mrnw0XU
 G5s2V8mNy9TksExdsT72V0R0SeR9P2ppI1+7hiRWi1C1GEs=
X-Google-Smtp-Source: APXvYqx802GCX61Rc7Neoi0DifztLFTBp2UudWaw5hHr7BOqJW/VmA8zZ/yFboZfaa3BWsIrlQi+SX8f4OGEhsRcTQg=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr5812991wmd.87.1562135288232; 
 Tue, 02 Jul 2019 23:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
In-Reply-To: <20190702132353.18632-1-andradanciu1997@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Jul 2019 09:27:56 +0300
Message-ID: <CAEnQRZDO4FzsC-MZGsxd=7dxSc0dRGcMjWW-W9T2TF7C1iD9NA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
To: Andra Danciu <andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_232813_698549_46E94683 
X-CRM114-Status: GOOD (  15.77  )
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

On Tue, Jul 2, 2019 at 4:25 PM Andra Danciu <andradanciu1997@gmail.com> wrote:
>
> SAI3 and SAI6 nodes are used to connect to an external codec.
> They have 1 Tx and 1 Rx dataline.
>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
> Changes since v2:
>         - removed multiple new lines
>
> Changes since v1:
>         - Added sai3 node because we need it to enable audio on pico-pi-8m
>         - Added commit description
>
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808eff87..736cf81b695e 100644
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
> @@ -728,6 +742,21 @@
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
