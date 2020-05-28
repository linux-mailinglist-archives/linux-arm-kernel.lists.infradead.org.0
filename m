Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11091E542B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+9jxjFIiTVQ77Ywn8l5zCoK0fvWeaM2aeLpTpQVJVA=; b=On5t2veDrYUIAn
	Z4IqEzRC6JKSAJKgSEMO3Vmutj3sOFgg5YflJPyB9UoWAjVkoClQQBKwJ/AQjIuy6RZGMrm07eQNF
	4nZACSN0XlVgghEFMAfbKTXwmBqkB1ABeS3p9rl8KBsmFxQeZt22tx5qJL5drrBP9XC26sFXdprUy
	OMddjGbGFRmtAzN+arCAmNS03E3eMmw6x6YyTbb/Vpw5EXy5Mi4FPBsApkfi4ugrXqzaM61Hk6hNu
	eLXVrq+WxLVr9omVcFvZdi6jCf3qcO4tOhnUW9BQZ0m31G7Cy3TrSBttuZhUWXMPl0Hewr8/rfdqY
	ShCNnfbyNOe33bKpx1kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8Zq-0006Z7-LI; Thu, 28 May 2020 02:47:26 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8Ze-0006Yl-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:47:15 +0000
Received: by mail-il1-f193.google.com with SMTP id y17so23968574ilg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:47:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DyKeOTT5ayES89536EIkfmSdE8pie6WqWxuv+WC96Uc=;
 b=lo65l4dPKNZsTHt9E0aKecMOEGRKpIgP0JL8fQgYRX7jdkg/F9VJR4mBcyR/GHM2aJ
 VW+i/iewVTnvrhF2JnL6zkfLiHUcFwtuBZDubEZEJqE8FllEeRNKY0SQKT0NheSDqbCs
 JBoccaUaYOvGkS2o1WF5km2l6kicc6LwMrmevhuN4HUUZ61vDJrZ3GwIlyVRbp3AHWfC
 /dUDin2KfPLV1W0YyYde4iuT1ZrE8Hub537N8APFOUtl26ehO3hHBmUeaRYaPCpOD3m8
 cg9aQcrnWZ90Q63XJroj7jmBW5mVTZkYzMjMjQRKNQTnLrUM83QhMx2BcFcLQI86XqBB
 tLaQ==
X-Gm-Message-State: AOAM531GSmkHcKvHQiUgNfegStp6iIfrjGG3c/KVVgQOsVow0vITIeX3
 Tt1UEB15xo5+TWb9/16lYg==
X-Google-Smtp-Source: ABdhPJy2sXNW5d3TvaBR69TXcEPbrmESs/mfGAN1Xlh1FUcZkRjXJt+7LBlSAQNHed62UWXHktKI/Q==
X-Received: by 2002:a05:6e02:138b:: with SMTP id
 d11mr991383ilo.183.1590634033306; 
 Wed, 27 May 2020 19:47:13 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id l6sm1973875ioh.32.2020.05.27.19.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:47:12 -0700 (PDT)
Received: (nullmailer pid 3268338 invoked by uid 1000);
 Thu, 28 May 2020 02:47:11 -0000
Date: Wed, 27 May 2020 20:47:11 -0600
From: Rob Herring <robh@kernel.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: pwm: Convert imx pwm to json-schema
Message-ID: <20200528024711.GA3265614@bogus>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966EC7122B2BFB9FEEDD74280B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB4966EC7122B2BFB9FEEDD74280B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_194714_120887_C4E9926D 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 05:58:42AM +0000, Aisheng Dong wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Thursday, May 14, 2020 2:54 PM
> > 
> > Convert the imx pwm binding to DT schema format using json-schema.
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/pwm/imx-pwm.txt  | 27 ---------
> > Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 66
> > ++++++++++++++++++++++
> >  2 files changed, 66 insertions(+), 27 deletions(-)  delete mode 100644
> > Documentation/devicetree/bindings/pwm/imx-pwm.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> > b/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> > deleted file mode 100644
> > index 22f1c3d..0000000
> > --- a/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> > +++ /dev/null
> > @@ -1,27 +0,0 @@
> > -Freescale i.MX PWM controller
> > -
> > -Required properties:
> > -- compatible : should be "fsl,<soc>-pwm" and one of the following
> > -   compatible strings:
> > -  - "fsl,imx1-pwm" for PWM compatible with the one integrated on i.MX1
> > -  - "fsl,imx27-pwm" for PWM compatible with the one integrated on i.MX27
> > -- reg: physical base address and length of the controller's registers
> > -- #pwm-cells: 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
> > -  in this directory for a description of the cells format.
> > -- clocks : Clock specifiers for both ipg and per clocks.
> > -- clock-names : Clock names should include both "ipg" and "per"
> > -See the clock consumer binding,
> > -	Documentation/devicetree/bindings/clock/clock-bindings.txt
> > -- interrupts: The interrupt for the pwm controller
> > -
> > -Example:
> > -
> > -pwm1: pwm@53fb4000 {
> > -	#pwm-cells = <3>;
> > -	compatible = "fsl,imx53-pwm", "fsl,imx27-pwm";
> > -	reg = <0x53fb4000 0x4000>;
> > -	clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
> > -		 <&clks IMX5_CLK_PWM1_HF_GATE>;
> > -	clock-names = "ipg", "per";
> > -	interrupts = <61>;
> > -};
> > diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > new file mode 100644
> > index 0000000..4b62af2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> > +tree.org%2Fschemas%2Fpwm%2Fimx-pwm.yaml%23&amp;data=02%7C01%
> > 7Caisheng.d
> > +ong%40nxp.com%7C9b5cc1814a4b47d1cb0d08d7f7d4f594%7C686ea1d3bc
> > 2b4c6fa92c
> > +d99c5c301635%7C0%7C0%7C637250366331627865&amp;sdata=M2RPcty
> > wz61WZrpAW6S
> > +O3NJbr2wj2qXwnMMmBwCbInk%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> > +tree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Caishen
> > g.dong%
> > +40nxp.com%7C9b5cc1814a4b47d1cb0d08d7f7d4f594%7C686ea1d3bc2b4c
> > 6fa92cd99c
> > +5c301635%7C0%7C0%7C637250366331627865&amp;sdata=UxgYSClanyOjt
> > BmlyNrMZyF
> > +3%2F5awD%2FM3yaVPqgNKgxs%3D&amp;reserved=0
> > +
> > +title: Freescale i.MX PWM controller
> > +
> > +maintainers:
> > +  - Philipp Zabel <p.zabel@pengutronix.de>
> > +
> > +properties:
> > +  "#pwm-cells":
> > +    description: |
> > +      Should be 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
> > +      in this directory for a description of the cells format.
> 
> Should we add the reference to pwm.yaml?
> BTW, strange, I didn't see format description in pwm.yaml.

No need to. That's generally only needed when there's some structure 
like SPI or I2C bus to include.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
