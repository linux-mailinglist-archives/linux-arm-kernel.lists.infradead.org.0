Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E903E13B673
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 01:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4jr1iVwljnpoNGDOO6ikVYXpXWertFIfuynHpz7efQ=; b=nOQHjIYAhZzomz
	Xr2GTmUjoGbjJ9al16bi4a51y42lvpKy8YVs83mbmZ+S+nPIP9OxWU7fnaupGbTkj8CfoPgo429f2
	MHUPT/1rSIA/b5bONVFNpb4KpvG4ka447PSNYgJTfLWGwwK0fBBiYHNsIoZvX3ypnh7pJkN8wZoQ8
	TMZNur0e57tQNa/KOmEdZxPKsRFZSYcfxQgq1QyrXGVKge0W7kPPDqChgyzwxP9dfe3lyoHPzUFFr
	DKGhPFgsTk+lDu9urb5QjzPz0IJ9rCVAAkBbFMFDZOkLd53zZ/bbBVfuCdQSkPZoHRrBj8kr/HqUN
	T6Up2voSU3ouNjJyiD6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irWI3-0006ke-2m; Wed, 15 Jan 2020 00:12:07 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irWHs-0006kK-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 00:11:58 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so14485079otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 16:11:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rqYwFYlybDxb7rHCNCkg0gK4e3FUvJBmLmo+IxQN78U=;
 b=qWUqc6Tp5LCSYqZSflxELIfiBMydrBMtC9n/Zft4n7MyqOzbR/y0nk/ZBjvKLX1uiR
 uIjcutxql85xxKTpoS0+xLtJXC6+h5h2wqMIJxt0v3lcDe2quoT/qGsQXiDsOn02M6GD
 31XC91FQk5qTbwHMPXvN5/OS3RK473xuQRxKqAr1RV9JV4V9J4vzbumyhS0fadb9DFeK
 0EQj3mXX5hzKapUGWH+R61rJXlcsJCV0T/lr5hsCerRDk+WOitFMMbWqwkApcfNaF5kg
 zLfMi3fjU82+/wQI3xe6ZIreGH46IxiRMfNxJU4z3zQezhlHt1fpopcDcb3S3zotiYZN
 Je9A==
X-Gm-Message-State: APjAAAXGEWErbCQlgZJKVBl67xjn8ZoEtawRxBTQ8pwjg62ebOeYNOdF
 BCJAnnoPzpdOzpRBbidK8voEmB0=
X-Google-Smtp-Source: APXvYqzA5l3XkRwvWoHuwi1XYOc0w0Wyy+3kXAIVYfSLaHjDdOsf4v3px8Dk50JXBO/e2XgbaHtXzA==
X-Received: by 2002:a05:6830:1199:: with SMTP id
 u25mr760164otq.344.1579047115455; 
 Tue, 14 Jan 2020 16:11:55 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s6sm167667otd.72.2020.01.14.16.11.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 16:11:54 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2209ae
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 18:11:52 -0600
Date: Tue, 14 Jan 2020 18:11:52 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Message-ID: <20200115001152.GA12156@bogus>
References: <1578629120-25793-1-git-send-email-Anson.Huang@nxp.com>
 <1578629120-25793-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578629120-25793-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_161156_778129_BF6F4BA5 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 festevam@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-gpio@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:05:19PM +0800, Anson Huang wrote:
> Convert the i.MX8MM pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
>         - use "grp$" instead of "-grp$";
>         - use space instead of tab for "ref$";
> 	- add missed "reg" property;
>         - remove the "maxItem" for "fsl,pins" to avoid build warning, as the item number is changable.
> ---
>  .../bindings/pinctrl/fsl,imx8mm-pinctrl.txt        | 36 -----------
>  .../bindings/pinctrl/fsl,imx8mm-pinctrl.yaml       | 69 ++++++++++++++++++++++
>  2 files changed, 69 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> deleted file mode 100644
> index e4e01c0..0000000
> --- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -* Freescale IMX8MM IOMUX Controller
> -
> -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
> -for common binding part and usage.
> -
> -Required properties:
> -- compatible: "fsl,imx8mm-iomuxc"
> -- reg: should contain the base physical address and size of the iomuxc
> -  registers.
> -
> -Required properties in sub-nodes:
> -- fsl,pins: each entry consists of 6 integers and represents the mux and config
> -  setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
> -  input_val> are specified using a PIN_FUNC_ID macro, which can be found in
> -  <arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h>. The last integer CONFIG is
> -  the pad setting value like pull-up on this pin.  Please refer to i.MX8M Mini
> -  Reference Manual for detailed CONFIG settings.
> -
> -Examples:
> -
> -&uart1 {
> -       pinctrl-names = "default";
> -       pinctrl-0 = <&pinctrl_uart1>;
> -};
> -
> -iomuxc: pinctrl@30330000 {
> -        compatible = "fsl,imx8mm-iomuxc";
> -        reg = <0x0 0x30330000 0x0 0x10000>;
> -
> -        pinctrl_uart1: uart1grp {
> -                fsl,pins = <
> -                        MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX             0x140
> -                        MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX             0x140
> -                >;
> -        };
> -};
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> new file mode 100644
> index 0000000..a3c4275
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

Sorry, one other thing.

You're good with GPLv9? Plus this is a license change. Do you have 
rights to do so as some of this comes from the old binding doc? If you 
do, then make it:

(GPL-2.0-only OR BSD-2-Clause)

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
