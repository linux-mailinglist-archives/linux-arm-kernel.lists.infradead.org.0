Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E2D12AEAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 22:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AUSgQ2q0JKVLh1RLdkTdlB6CnscUe0+DgeIVXL9Ixw=; b=d1l6doEKKT/vwi
	Tu/Kjg8LTWRAAk9vc+txLy2BzkhZPP44Pn1gMrMsYRMzmXU1UCF1SgMmon+dagU0YKh7/efsfToBt
	mF2ygXSHpwwSma1kGxBozGH1nkv+pv7B0Q5A5R4HlmYx1G/9+HmT2T0ZXiRurpT4roRlNJxf/xnOE
	1wnLrOwR+HBWrtbSeSvwB10xsEqnAdW3hCsM7qHklhBcGEKRyjvmJuehMx0XbW3bT54ditvXnB0nD
	AePSqXWsdNweMuIzRuDCywpNkEbJnswjJs4N9lj/iI1PCeBMF4M0CtLEvYlhyI8xbAr7LDb9TmVQH
	0t9rEjp6jhd/WFjmPZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikaGF-0005aS-0r; Thu, 26 Dec 2019 21:01:35 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikaG2-0005Zb-N1; Thu, 26 Dec 2019 21:01:23 +0000
Received: by mail-io1-f67.google.com with SMTP id z8so24167283ioh.0;
 Thu, 26 Dec 2019 13:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bHX15Yzi2L1Jns7nLa3IWC/ZCGyo3mc3Ea/j0HJyq2E=;
 b=QkdzElGBv2hgSeAyPCBEn4FuEqccotHL/leFEiUUUYQ9EFuAmYC7l/q/FwC/fxD9Xl
 haMJ7lKL0/ei3CtOgX0cGXBYbGROUbI4Fsmm1eHqcICRJZyB7SwCkOLiX+yveX9RJuNz
 mKWZAlpf6tgEHk87xqefGWVBxyuWYXQxLkFJtqhnfEFXdrT4212MBiANBS3weNVMcm4s
 UzR7A3JdNMRy6j2nnWptHTx1rBK1cYp+XWpyfUsC9ZxV/Wh9HNKuXGd117PJ05wQlOB3
 meCT5ZPzryEOqyyaCx5B9ZYrjPpGU2eBnjfP0N2HuceQvzhgPMMCMrFeV6+gfQ1p1/48
 4G5w==
X-Gm-Message-State: APjAAAVKfqpOgfGqDvgQIDbH5XrebVx2Ih84gO6fmFdicTH3Eeb+D7om
 VslwkqFIqdXoZ9UkRdTFnw==
X-Google-Smtp-Source: APXvYqw2id01ES8madxnhVdw39D50+loE9hLiO8Ni0cKSbMkVMhJOMUu2liajePavZinypZuxSHHsQ==
X-Received: by 2002:a6b:b211:: with SMTP id b17mr33988040iof.138.1577394081439; 
 Thu, 26 Dec 2019 13:01:21 -0800 (PST)
Received: from localhost ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id i83sm12570632ilf.65.2019.12.26.13.01.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 13:01:20 -0800 (PST)
Date: Thu, 26 Dec 2019 14:01:19 -0700
From: Rob Herring <robh@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
Message-ID: <20191226210119.GA8706@bogus>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
 <20191217055738.28445-5-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-5-cw00.choi@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_130122_750268_D12EA0E7 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, krzk@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq' property, replace with
> new 'exynos,parent-bus' property in order to get the parent devfreq device
> in devicetree file instead of 'devfreq' property. But, to guarantee the
> backward-compatibility, keep the support 'devfreq' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
>  2 files changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> index e71f752cc18f..c948cee01124 100644
> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
>    of buses.
>  
>  Required properties only for passive bus device:
> -- devfreq: the parent bus device.
> +- exynos,parent-bus: the parent bus device.

If you are going to do something new, why not use the interconnect 
binding here?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
