Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520E6B2214
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PomFfjH/Uy6Re8OQdZVo6P0dDmn4th3dF4pFeEiHHrM=; b=RGtI2cPxculiuD
	fvTRRgf4TyRrUuCUamsDnihP6juFhe73jl1UPLPfS9Iuj77N2ehwSSauUG/MlMPjIjmaNOnNkw4+U
	Sj0+yzMb+PQ4BOXiH8poedT2efByfi4YYfwwG8WmmX05CEK/FojIMmmjjneuinMa9kvGSJB5yb5pT
	5ET1N3Jb1+5eNHnDZLzFvUHEfN1XOKqX7AZkJaXHJoo5jgv46icTPvRrfvmdeDzhkVZjJdQM/MIxh
	sOirppdmXjRXa1MSSbpN81mBcbF/evkLCRZq764v7ck8rvfwHYJUwASg/WTAozriThMWbxnokvSff
	l3NskIVKOgIBRnxYx1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mhW-00032v-Hk; Fri, 13 Sep 2019 14:37:30 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgE-0002K2-Kb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:12 +0000
Received: by mail-oi1-f194.google.com with SMTP id k20so2819713oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=x59L5apnJL40NtS0tdeDtuo7G6k5ZSeB+XKw0XxxnFI=;
 b=KgH8YrAjnSfW9mguFABNyrJx8dCwg5dQt5n5Zyhu+HKVoFcXRK+BdIRWDgCQEjGeQt
 59JqakcUVslv5mrl8YZ0nQSqhfkWIrw/pUMZwzIIDRdRd0QIhjmVHyUjbIxl0/m24uzN
 QFNxEXyWOg8qD8h0okjzEdFkVdFtjEHMS8YsgixXxx86e0S/9Dmk0xsUUW9Eo0VxtIQo
 +uub0bvavMHgMbZV6tzLui1GzzMT1oZJYVjhkmNnTTzts8hwJ4Uw589ee7qRUHu8yTSw
 /3UI8sRKLyCOW1OfOhfBOibBC4wuOEI5rnHdsL1dlZlQmd8l0RvqpE+1IV9/vKGrSHy0
 L1bQ==
X-Gm-Message-State: APjAAAXr5PkpeCj/jva1HS1Lk08qv1NSzM2WV729B9u3TXjNkOfWukRx
 Am++Sq0P8Cn7z0q3UHd9QQ==
X-Google-Smtp-Source: APXvYqwcZJeRHC1PVNC2DKjUVCVr9+SFzeO0M0kOrsz2lu3agim9M0Aj63nSjTgT/vcdVxuD4z+A6g==
X-Received: by 2002:a05:6808:7c1:: with SMTP id
 f1mr2510604oij.123.1568385369033; 
 Fri, 13 Sep 2019 07:36:09 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s194sm921883oie.19.2019.09.13.07.36.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:08 -0700 (PDT)
Message-ID: <5d7ba958.1c69fb81.d998a.6602@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:07 +0100
From: Rob Herring <robh@kernel.org>
To: Talel Shenhar <talel@amazon.com>
Subject: Re: [PATCH 1/3] dt-bindings: edac: al-mc-edac: Amazon's Annapurna
 Labs Memory Controller EDAC
References: <1567603943-25316-1-git-send-email-talel@amazon.com>
 <1567603943-25316-2-git-send-email-talel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567603943-25316-2-git-send-email-talel@amazon.com>
X-Mutt-References: <1567603943-25316-2-git-send-email-talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073610_701998_546541F5 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, barakw@amazon.com,
 ronenk@amazon.com, hhhawa@amazon.com, gregkh@linuxfoundation.org,
 jonnyc@amazon.com, hanochu@amazon.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, catalin.marinas@arm.com, bp@alien8.de, mchehab@kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 04:32:21PM +0300, Talel Shenhar wrote:
> Document Amazon's Annapurna Labs Memory Controller EDAC SoC binding.
> 
> Signed-off-by: Talel Shenhar <talel@amazon.com>
> ---
>  .../devicetree/bindings/edac/amazon,al-mc-edac.txt | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.txt
> 
> diff --git a/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.txt b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.txt
> new file mode 100644
> index 0000000..9a3803f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.txt
> @@ -0,0 +1,24 @@
> +Amazon's Annapurna Labs Memory Controller EDAC
> +
> +EDAC node is defined to describe on-chip error detection and correction for
> +Amazon's Annapurna Labs Memory Controller.
> +
> +Required properties:
> +- compatible:	Shall be "amazon,al-mc-edac".
> +- reg:		DDR controller resource.
> +
> +Optional:
> +- interrupt-names:	may include "ue", for uncorrectable errors,
> +			and/or "ce", for correctable errors.
> +- interrupts:		should contain the interrupts associated with the
> +			interrupts names.
> +
> +Example:
> +
> +al_mc_edac {

edac@f0080000

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +	compatible = "amazon,al-mc-edac";
> +	reg = <0x0 0xf0080000 0x0 0x00010000>;
> +	interrupt-parent = <&amazon_al_system_fabric>;
> +	interrupt-names = "ue";
> +	interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
> +};
> -- 
> 2.7.4
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
