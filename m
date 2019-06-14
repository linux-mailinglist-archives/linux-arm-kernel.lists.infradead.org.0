Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4372046489
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MebBVH4+g/Ue5KVUx6bE7fqQA8Mek5f4G7LMa1SdOOo=; b=DQ8ZqYafI6ZK9P
	N/tXlLgJZozySosIAR1yBTtD/yID+oT5x0IA/FZGON4nxXvKrSgpt+i1TnxbGUYtIZsy6pCyP/YRc
	/5u1+mJaAoxTrUbLtrCwGeogqWiqoOj+z8yVyn0nNqywUGS6sv4zbTCvr2PrGY+R4wJX31Bhlm3KA
	k1OK7o8w0LTNaNkAzyK5pud5vZpUXHoInx/RdGxGyro0m3CUw5/ZfpiGmf7C+ijhwvgeYCKdu/dRm
	bh2JvVpFJGIxnaA2WN4JBim6xYCSRZx/bHHKavTa09XsrBRnUqVSPrhCnmLItscwH+ax5CrJnF/B8
	955JhlHSYVqfkfWzuZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpHj-0006F9-4i; Fri, 14 Jun 2019 16:42:39 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpHV-0006Eh-QX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:42:27 +0000
Received: by mail-qk1-f194.google.com with SMTP id i125so2073001qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LvCoDYGzGpZHWNqqXDyj7tZ68K9QYgLtd6i/LSuZlTg=;
 b=SQIdAx7EMVH0q5QwTswZLgJR5jdQ3hmRi4/OlL1Xdy1+BnnWw8jvUgvIgELa/IfnP1
 TbpYlKQUv/hyl9QPptmBXP8t4kVo2vYAwZJCgvG5kQHy83CtYlLRDEmWLCTZ1JM2lGd8
 LX9pBG+RhIvSI+8vJsnw3YmTOXfBDYSeaiaqBKNijRMHCINxG5GspgOO69qYsu597l5P
 HkvtiWygK54uMafpDUeq0iW9s7m863gNkvSDIpb4JfXcT/tZ6DzQ0wN8Qa0CbuRK61N/
 kVb3GKhXhitMBe6tMMm2+bBtIjK9Pmfof0V12+jTmtX7zIMRBEJagNemeOYrzV643ovA
 U+sA==
X-Gm-Message-State: APjAAAVbVkBZPzjxzcaO9PpDCsqq9aYWiXCTy9FmxtUyBRP4t79FKIgR
 /6tEAnmrz5Jn7rLMmnhNyA==
X-Google-Smtp-Source: APXvYqxkjDZsM8wtlEDOhdkqswk52LRk6i4Tm9NDsqj3lu7WW63BnoOCyD1SGGrdI5t/apU2U7gULA==
X-Received: by 2002:a37:47d6:: with SMTP id
 u205mr11996243qka.214.1560530544550; 
 Fri, 14 Jun 2019 09:42:24 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id l6sm1882553qkf.83.2019.06.14.09.42.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:42:23 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:42:23 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Message-ID: <20190614164222.GA30277@bogus>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094225_862644_12587A53 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Angus Ainslie <angus@akkea.ca>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 08:41:13PM +0000, Leonard Crestez wrote:
> These values can be overwritten at probe time.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  .../devicetree/bindings/mfd/rohm,bd71837-pmic.txt         | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> index d5f68ac78d15..3649c1191432 100644
> --- a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> +++ b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> @@ -36,10 +36,18 @@ switched power state to SNVS. If reset is done via READY state the power
>  outputs will be returned to HW control by OTP loading. Thus the reset
>  target state is set to READY by default. If SNVS state is used the boot
>  crucial regulators must have the regulator-always-on and regulator-boot-on
>  properties set in regulator node.
>  
> +- rohm,short-press-ms	: Short press duration in milliseconds
> +- rohm,long-press-ms	: Long press duration in milliseconds
> +
> +Configure the "short press" and "long press" timers for the power button.
> +Values are rounded to what hardware supports (500ms multiple for short and
> +1000ms multiple for long). If these properties are not present the existing
> +configuration (from bootloader or OTP) is not touched.

We already have a standard property 'power-off-time-sec' for at least 
part of this assuming 'long' or 'short' causes a power off. 'long' and 
'short' don't describe anything useful. The action should be described.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
