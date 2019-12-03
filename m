Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E6111BC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 23:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYX9qPjyTMCV3UKDF6WwLrxyhjjy3B2LjAkQriQGDPQ=; b=FKpy2Ej+/sboku
	0seHWKNKK+Z/NHyOTQ3iiwHUUl+NAJ0DoA3EE1IAynFT20YJCQ7OBuQPy8NA82dpOw2pYkIYidDv9
	dHdl6uoC2WpRRO+E63gC4A1A6sICYG1PGI716Qtb6CD6mTpsLjkXVAnnXqYyuDz+iANMFtHsmivuf
	Vg69HpBiFMpDpdadKSMvo6H8cPs2InLo39P0GRoOxzI0KjxuffH+32OMZ42KBJ2Dxj3Yam0CLx5+i
	INCMR6/uWKyB4uvtGk5IPRfQeWPEjaDwCvumCa4rOcenPQ7qWkB7wY4t+SKpRpv70R6YckPhz7lLR
	wZc4tYsEek7OP9SmOOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGnC-000572-QK; Tue, 03 Dec 2019 22:37:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGn3-00055v-SM; Tue, 03 Dec 2019 22:37:07 +0000
Received: by mail-oi1-f196.google.com with SMTP id 6so4967651oix.7;
 Tue, 03 Dec 2019 14:37:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NnWqN+v6idF+rYohPBc8yK8WHdS4XunbYI4eJ0qCx44=;
 b=R50tlexcX0fIWyvZrOSQXVmGxQ8r/JqJTo18Sy4bUwV2fVpBr0jJ8A49tyXvgDZ5Ye
 y80P8NpqtT7SFD6b7yX9z3L9t39BAdMGp53aDqsFnZFJHojLCI+lQGVk/kPOkwZWfKvw
 0jlgM6QPstOZKEVz6djimG5Ssb8ll8jJ8tAekqjDAJiSBzSlxL6LZz950obyTX8UXaQ5
 hgJjZTCj7JhksQU32GXbreDSvXKvsRlqfhxc2Hn8d23gSTUr3tZ0UsTYXLWYQSvEZGLU
 AzZQHdkaivp4NHrVzc4UuJbGYP1tMC6eDTzA95G0gRrjgOCh9ZcS/T3Im03AqKUY4mKf
 xHHA==
X-Gm-Message-State: APjAAAXvkk6dWtq2pWVdbc4/xWFgQZfnCNqjLRQhzfj9PylV6BfkfchW
 1N1u+sXSGnqIiBLL+wEVxQ==
X-Google-Smtp-Source: APXvYqyY+MvnuM+hiACvXhy/3tKtbTc72UkG95+81S0zipokTze6+5MxpHqRBYpAnCxnfaY6IROUJQ==
X-Received: by 2002:aca:4cc7:: with SMTP id z190mr996oia.10.1575412625132;
 Tue, 03 Dec 2019 14:37:05 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m2sm1615150oim.13.2019.12.03.14.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 14:37:04 -0800 (PST)
Date: Tue, 3 Dec 2019 16:37:04 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add libretech for
 roc-pc binding
Message-ID: <20191203223704.GA29109@bogus>
References: <20191119185817.11216-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119185817.11216-1-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_143705_917439_3C4696A7 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Da Xue <da@lessconfused.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 12:28:16AM +0530, Jagan Teki wrote:
> Though the ROC-PC is manufactured by firefly, it is co-designed
> by libretch like other Libretech computer boards from allwinner,
> amlogic does.
> 
> It is always meaningful to keep maintain those vendors who are
> part of design participation, so add libretech roc-pc compatible
> with existing binding.

Maybe so, but this is pretty pointless if it's not different h/w. 
Compatible strings are simply a h/w identifier.

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index f7470ed1e17d..45728fd22af8 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -100,6 +100,7 @@ properties:
>        - description: Firefly ROC-RK3399-PC
>          items:
>            - enum:
> +              - libretech,roc-rk3399-pc
>                - firefly,roc-rk3399-pc
>                - firefly,roc-rk3399-pc-mezzanine

This doesn't match your change in the dts. file. The schema says there 
are 2 strings with the first one being 1 of these 3.

>            - const: rockchip,rk3399
> -- 
> 2.18.0.321.gffc6fa0e3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
