Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7BBC3564
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTaQWp7F3MwZ/+MNUXuE8hjsvRycw6dRInlnnzZ2jfY=; b=RuBrfKvL/neIJY
	2VhwFg9htwcQhm6Qs7hDK98c9g+dUudVqh74hJGFWPiY0YT/VtXpQBWOwfPGcohzSJ6kl8r2eAwjQ
	c32pnn1if/Fv5EAZmj1bCiOkVgvAOAntfPf8Ayd+xUqV9N58BxCuw/b8q6e62AoNZ+yWzN3EF9UHb
	cAXnRq0znJ7rGcW6rGGOiGlj9NT3d7X/Ow/z/mJMUGK8v60KMOeSOBuN0jzQebX6unVFKakpiW5J2
	HavPjB1AyXyV7hX2LlyMP2fHbHw/Zz8mjxJjAHwMPPG2AXrwL9sh+FzrjCptMvwCzW6xh0soEm9i+
	0KVR4OHv6sPGrLVMEfdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFI2p-0001Lh-FA; Tue, 01 Oct 2019 13:18:23 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFI2g-0001Ks-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:18:15 +0000
Received: by mail-wm1-f68.google.com with SMTP id v17so3203305wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hpSRk5pH5ZfX94ui4Po6gctzu/8HdpWpMgPRUTWIgiY=;
 b=ZEVcF7LAeU8OObdjjzhoXFCWeKLhYLH17GgQjSu5Io53ZUvwBs3kFOofuUYjiNr8JW
 pD6KldcwbekGiNH0zd2WmZnGJo1kkFw6sj1qCAnf0NYjk8/TssyrbncgdFObBMkRQPJK
 oJYt1wZ1mxz8MUszVfmW9qYSDvs49nBBj3yf3ajw7gA7uegtEPS4i7/PCp17Z8ozeqnX
 MWDmSn4F1V2RVyy8DK7x4hphgUvXywPs23REmaigL+0AUd+Q8OiQM/ubWN2IUxoHjRWK
 5FwYJn60xtzsEu9LLzy7/zIGQ1W3PIU8gvcYhy4h5l3dihcFeyZRVUTlDjgNXZOAt/px
 c6GA==
X-Gm-Message-State: APjAAAV7AinHfksxLcRvqYSgaRQuMLZDuA0TtNAScV7qYHQqitqXpM8T
 AdWqhF+jlBm0ok0gZfkOsUM=
X-Google-Smtp-Source: APXvYqxgdnyCxx5oD9tLArvgGVNt21WJpjLWH5T4JaMALPm61yEm4BR5Qt7YiPJMubGHsBapZrlLqA==
X-Received: by 2002:a1c:7519:: with SMTP id o25mr3603916wmc.16.1569935891213; 
 Tue, 01 Oct 2019 06:18:11 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id y5sm3780299wma.14.2019.10.01.06.18.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:18:09 -0700 (PDT)
Date: Tue, 1 Oct 2019 15:18:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: memory-controllers: Add Exynos5422
 DMC interrupts description
Message-ID: <20191001131807.GB30129@pi3>
References: <20191001125436.24086-1-l.luba@partner.samsung.com>
 <CGME20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7@eucas1p2.samsung.com>
 <20191001125436.24086-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001125436.24086-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_061814_062402_A1EB2601 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 02:54:33PM +0200, Lukasz Luba wrote:
> Add description for optional interrupt lines. It provides a new operation
> mode, which uses internal performance counters interrupt when overflow.
> This is more reliable than using default polling mode implemented in
> devfreq.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  .../bindings/memory-controllers/exynos5422-dmc.txt     | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index 02aeb3b5a820..afc38aea6b1c 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -31,6 +31,13 @@ Required properties for DMC device for Exynos5422:
>  	The register offsets are in the driver code and specyfic for this SoC
>  	type.
>  
> +Optional properties for DMC device for Exynos5422:
> +- interrupt-parent : The parent interrupt controller.
> +- interrupts : Contains the IRQ line numbers for the DMC internal performance
> +  event counters. Align with specification of the interrupt line(s) in the
> +  interrupt-parent controller.
> +- interrupt-names : List of IRQ names.

Since the names are important (not the order) they are part of the
bindings and they must be listed here.

Best regards,
Krzysztof


> +
>  Example:
>  
>  	ppmu_dmc0_0: ppmu@10d00000 {
> @@ -70,4 +77,7 @@ Example:
>  		device-handle = <&samsung_K3QF2F20DB>;
>  		vdd-supply = <&buck1_reg>;
>  		samsung,syscon-clk = <&clock>;
> +		interrupt-parent = <&combiner>;
> +		interrupts = <16 0>, <16 1>;
> +		interrupt-names = "drex_0", "drex_1";
>  	};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
