Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7320E1304B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 22:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4k6FYf+Zp36EWoRRp4sE47a0VjQQDvO66oObnX+4is=; b=WJ+nZzXKWPjQQy
	BiAcv11ru7etVnJ2Dd3eU6LtO1y/Qy2X9vRfSvhk+KpfHWaSSk1/ZCU894ZynAVoSDqGq2GZVRrTj
	RBHn6RbefDFqJtYVA6QheZnTwFbOpR5ztHs7EQAkJu0KuxszytyS4INYhHgV10MAwuLMQElXN1Dv1
	kOkebE3J3a6I+2sHrerqG1DcVNgEuAtBu3nfmZ6mxb8pj+jRuWYAsUYoGcM3ijudGJ893uSWEwFVT
	NH5yVH5fVKHa/cn3Dl6ewPyIk+qLWIl6VQ4dhlEAHSD/tIP1xEhYTVQZrddm4+kdznpbVIO1vtZlX
	FFaW/ivwQoRDLzQCdwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inr4k-0007I2-9P; Sat, 04 Jan 2020 21:35:14 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inr4d-0006rk-ED
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 21:35:08 +0000
Received: by mail-il1-f194.google.com with SMTP id p8so39368745iln.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 13:35:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E086cLVBXwQ6vOtP7yO03NEZ/tAJB2ltt2lzCZgTgEA=;
 b=sDSBbwhF0tnUvz36qQxrR0bKa1DHPtHyly4apIMme+yiM0HSv2bGfvVjFvRPJKMeAl
 5DDtWivBwy8Hb6xN7OHS0U6BPcbVFlw6GqsenkwMfj03lTwETz1hi3XnlLp/YjY2a1Qx
 8xZ3J6PR64dJpF7a5aQ/QBJHhQbZv+vQh7TCR9TKARMoO/7wKhDGzkMHojMxa9ftybjO
 YDfGlQOTjJWkUTSdDK3whtxNjPhELan56sALWJMl/4jHUZmNr8TpUn0At9t527zwK9Iw
 +BzN1Sp42g7JjMYOdU68SRxKLg2eBoI8kLsZOW0xmRpTWIco5ZEKBaOhP1R+qj8IlLvK
 u6FQ==
X-Gm-Message-State: APjAAAVIjYwYHuD+3C4uWGW2giatTdWzBQA65X7xqDfc9yso2PpRu8Sn
 VN0kYWOlsdxglqmSWxUXvAOiIN4=
X-Google-Smtp-Source: APXvYqwydzVoNs5Uh5GuqoLL21SNPWc9qKD41NvZlnB/JA62l6oGjkyBbC9KLZisU6TosihSDnK8Ag==
X-Received: by 2002:a92:860f:: with SMTP id g15mr78777297ild.297.1578173705830; 
 Sat, 04 Jan 2020 13:35:05 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id o12sm16778097ilo.24.2020.01.04.13.35.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:35:05 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:33:32 -0700
Date: Sat, 4 Jan 2020 14:33:32 -0700
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Message-ID: <20200104213332.GA19211@bogus>
References: <1577342743-25885-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577342743-25885-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_133507_486586_FAE9E84D 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, will@kernel.org,
 linux-gpio@vger.kernel.org, festevam@gmail.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, stefan@agner.ch, bjorn.andersson@linaro.org,
 marcin.juszkiewicz@linaro.org, dinguyen@kernel.org, devicetree@vger.kernel.org,
 maxime@cerno.tech, kernel@pengutronix.de, catalin.marinas@arm.com,
 olof@lixom.net, leonard.crestez@nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 02:45:41PM +0800, Anson Huang wrote:
> Add binding doc for i.MX8MP pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  .../bindings/pinctrl/fsl,imx8mp-pinctrl.txt        |  38 +

Please make this a DT schema.

>  arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h     | 931 +++++++++++++++++++++
>  2 files changed, 969 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.txt
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.txt
> new file mode 100644
> index 0000000..619104b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.txt
> @@ -0,0 +1,38 @@
> +* Freescale IMX8MP IOMUX Controller
> +
> +Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
> +for common binding part and usage.
> +
> +Required properties:
> +- compatible: "fsl,imx8mp-iomuxc"
> +- reg: should contain the base physical address and size of the iomuxc
> +  registers.
> +
> +Required properties in sub-nodes:
> +- fsl,pins: each entry consists of 6 integers and represents the mux and config
> +  setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
> +  input_val> are specified using a PIN_FUNC_ID macro, which can be found in
> +  <arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h>. The last integer CONFIG is
> +  the pad setting value like pull-up on this pin. Please refer to i.MX8M Plus
> +  Reference Manual for detailed CONFIG settings.
> +
> +Examples:
> +
> +&uart1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_uart1>;
> +};
> +
> +iomuxc: pinctrl@30330000 {
> +        compatible = "fsl,imx8mp-iomuxc";
> +        reg = <0x30330000 0x10000>;
> +
> +	pinctrl_uart1: uart1grp {

In particular, define some node naming pattern that you can match on. 
Perhaps "grp$" works.

> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX    0x140
> +			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX    0x140
> +			MX8MP_IOMUXC_UART3_RXD__UART1_DCE_CTS   0x140
> +			MX8MP_IOMUXC_UART3_TXD__UART1_DCE_RTS   0x140
> +		>;
> +	};
> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
