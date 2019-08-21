Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD2B9849A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a991P6sORgl8yA687xdlX4XzoslNUc6sfqAMP9VKZNk=; b=kjK77sRtH9/o+x
	vo0Ye1EBUS0QuuOR5ZmHScKK7sva3xehgLb2JpyaUq3IGwO7i65KP4HnxYm/rL/YtQ5Tvvp0jk48C
	e1cJuu0q1SsDyJlxOTbglX81bz6WJcaSauhf5OhT59ba5i2GI5qX6z+tfMYoOlrjZ8LYD5m7MTDN2
	LIYsOOUVqYkiYXtqB13qMvL+CFsdKmMjCqWCbVJOdTZwOVcAHFyoMCEJsYSyv8sgDhQKu/JCmrAVn
	2iVhpZ5PxMvaz6FUioVilGpI7yHMcnnb4V/61D/QuMVDEHadJWF8KX8znt/IPo7hnPAJSJs7UKSaJ
	U0713/1kYKjzReS5jMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WQK-0001QH-Ir; Wed, 21 Aug 2019 19:37:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WQD-0001Pq-Bu
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:37:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id g17so3203314otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qTxTORe3CDU5+wtcsSTA+vrlvuH2y71OcdqPkUNK2CM=;
 b=dm1lqkIwzOEpBLssvQO0pblscLwmzM7BalIAavKLYS4XJN6qk/E6jQ6GtYzyETLqPI
 nDhqvwbtS3BbCnsbegH0oTB4IUv6bbTbUriVaNBUerchatuKIgtfZhaoqRTqdGhhhaDb
 hdIAuy3QTjwGj6+QjUyGMHwi1DbnZ49Y7dTLWR7vDISRKcHAw1lt2CHLBLM3NySArqM0
 AMbtsjdIALKvQ27td/G9S27SBjHsFhneaCAEajYlapUjoX3x8UWqmHphlRtIETvOytht
 QdvYRZiQeL67WTA8ltIKzsDhbg0RNHJy3K8YUMGb84S7qbCcFdJdRDrLZyp5TrxBkm5z
 /Z9g==
X-Gm-Message-State: APjAAAUHB8z5ueyR6K4F4xlZ3Po//K5FCJ+7UMvj6BEEQua14JeTQ4H3
 sHKOHwXzCjnLrMHI51SXQw==
X-Google-Smtp-Source: APXvYqxUT+qOGqfMv0e1mea4IU+z4ctDfnpUPFYem3kRN8quYNDUUfknG9YdMP6OHSguJ8Uxm0enuQ==
X-Received: by 2002:a9d:5a11:: with SMTP id v17mr26504937oth.87.1566416247945; 
 Wed, 21 Aug 2019 12:37:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i22sm8014537oto.80.2019.08.21.12.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 12:37:27 -0700 (PDT)
Date: Wed, 21 Aug 2019 14:37:26 -0500
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC
 compatibles
Message-ID: <20190821193726.GA32220@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-17-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806145500.24109-17-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_123729_410637_B9D9D1EA 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 04:54:56PM +0200, Miquel Raynal wrote:
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
> 
> Describe the compatible properties for the new Marvell SoCs:
> * CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
> * CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
> * CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)
> 
> CP115 are similar to CP110 in terms of features.
> 
> There are three development boards based on these SoCs:
> * CN9130-DB: comes as a single mother board (with the CP115 bundled)
> * CN9131-DB: same as CN9130-DB with one additional modular CP115
> * CN9132-DB: same as CN9130-DB with two additional modular CP115
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.txt           | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Please convert this to DT schema first.

> 
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> index df98a9c82a8c..8eb34ca4c4f0 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> @@ -1,7 +1,7 @@
>  Marvell Armada 7K/8K Platforms Device Tree Bindings
>  ---------------------------------------------------
>  
> -Boards using a SoC of the Marvell Armada 7K or 8K families must carry
> +Boards using a SoC of the Marvell Armada 7K/8K or CN913x families must carry
>  the following root node property:
>  
>   - compatible, with one of the following values:
> @@ -18,6 +18,17 @@ the following root node property:
>     - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
>        when the SoC being used is the Armada 8040
>  
> +   - "marvell,cn9130", "marvell,armada-ap807-quad", "marvell,armada-ap807"
> +      when the SoC being used is the Armada CN9130 with no external CP.
> +
> +   - "marvell,cn9131", "marvell,cn9130",
> +     "marvell,armada-ap807-quad", "marvell,armada-ap807"
> +      when the SoC being used is the Armada CN9130 with one external CP.
> +
> +   - "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
> +     "marvell,armada-ap807-quad", "marvell,armada-ap807"

It's generally not all that useful to have all these compatibles.

> +      when the SoC being used is the Armada CN9130 with two external CPs.

Is the number of external CPs not discoverable somewhere else in the DT?

> +
>  Example:
>  
>  compatible = "marvell,armada7040-db", "marvell,armada7040",
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
