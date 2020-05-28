Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B871E6E87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVobSMtrqKX5pLXcn6egfZMARfwWq6XYu5yNeVEFPm4=; b=NQjfgvFj/FPmqt
	IM/S7mie/pHvzCBEaM4g0rEurjia0YbbXjwrK05MLgc7PdP5FX1CRNTM9qDn9aCwABidqAViqVzJR
	8GeMKLfIh3rZeE9D41UQN19EmXEp8K/WMzKRoMdvjJ9ITW8RJC6ZrET8I+3kFiOzhf2V54E5rGMAf
	0aFtYF3MhoT2WxRqOw5kJ8fUnb8tHXCRenekj3FUCQ3OxiAx6obOmj3Eq5A9/JY7Mb09UUJhxUrd+
	I8GPCOmGffNfkn89zXVMeJvFI6igE2aREfyTIQ4e5TDJrg1yyPIkvWSdmvfrIJykNuXpNC+tOer8e
	o2ZJNnwL9og8aunE1EqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQt5-00054p-HR; Thu, 28 May 2020 22:20:31 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQsx-00052O-GV
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 22:20:24 +0000
Received: by mail-io1-f68.google.com with SMTP id q8so219543iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 15:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V1pVNRBWzHZ1G6jffgYB9BbYesxXCexItPOb/g+HRwk=;
 b=D1c14VKKcWKopl5tiyQP9q7nCWyJIQGLXyY4F1r4RCGa/jW0jOmNSF7MwVclOiX/39
 ulKo7f8GdXPwQuVgQN/t//lP2cv5SCutGPoHnpTIyc+m0LOKogNCn2PiHp7x5ezpm7WN
 DZrCcVI1WvCLmjQdcaqwSBIT8g0eqqCXWA7MllfrpgK638zJ69loXygIV5yrbg2JB0eW
 NFV7pDw3BhK6vV3tpbSx5IY+qbu4NXF04IwaXt0b4+yWm+4P48i2Xx9bJP4C42Ntm9ff
 JzDbAZTKgnTx80CBQgPMPoPbYt2oODnqFRYQ7jNf/2Y5UaCq3tKhngbvb3kSGkEUcyYN
 xUUA==
X-Gm-Message-State: AOAM533A/1YWOZZWAIBYLWp+EanmOFW+MJ9s8z+f2vC0W4EZYqUjQQnX
 Lq3uvcbK3DrwEe7zgge8DOEmbp8=
X-Google-Smtp-Source: ABdhPJwj8PCtzTwAhMry0miLqUZxr77A1fRZS29Pm/8O3Pm0xpLEjyn2R+dRN+D30uJ90Rg4+GEwtA==
X-Received: by 2002:a5e:d903:: with SMTP id n3mr3603677iop.93.1590704422191;
 Thu, 28 May 2020 15:20:22 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id q6sm3787197ilj.72.2020.05.28.15.20.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:20:21 -0700 (PDT)
Received: (nullmailer pid 785342 invoked by uid 1000);
 Thu, 28 May 2020 22:20:20 -0000
Date: Thu, 28 May 2020 16:20:20 -0600
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 1/6] dt-bindings: omap: Update PRM binding for genpd
Message-ID: <20200528222020.GA783133@bogus>
References: <20200520211334.61814-1-tony@atomide.com>
 <20200520211334.61814-2-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520211334.61814-2-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_152023_551166_8A7DE7A6 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 02:13:29PM -0700, Tony Lindgren wrote:
> The PRM (Power and Reset Module) has registers to enable and disable
> power domains, so let's update the binding for that.

multiple domains? Then why 0 cells?

> 
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  Documentation/devicetree/bindings/arm/omap/prm-inst.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> --- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> @@ -18,6 +18,7 @@ Required properties:
>  		(base address and length)
>  
>  Optional properties:
> +- #power-domain-cells:	Should be 0 if the PRM instance is a power domain.

...power domain provider.

>  - #reset-cells:	Should be 1 if the PRM instance in question supports resets.
>  
>  Example:
> @@ -25,5 +26,6 @@ Example:
>  prm_dsp2: prm@1b00 {
>  	compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
>  	reg = <0x1b00 0x40>;
> +	#power-domain-cells = <0>;
>  	#reset-cells = <1>;
>  };
> -- 
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
