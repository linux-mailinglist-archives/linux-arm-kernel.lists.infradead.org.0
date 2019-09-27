Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE96BFF6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBQt/Yocxm2Hj74yyaa/PvQLU38q7haq7WOpo9kYEfU=; b=q1bFQiG7FB31MM
	z0fzpcJAcDIolphY08S7EpvZcDWY971nVHd23s6ulCnGf6lwbgJl6tUztWix5RWG2xs73zuCcmFsI
	dL9XSdGh7V/+oWCaNrKZcXeys9OlI15MJ3nN4rnvlrfdlRqic5jhko0/VMujapZHQc0uAuSOxmoc7
	ZUiiRtLgr6/gc1DMZp3eHfxKi05unoSHIk4OZjvUexdOcx8W9X0c0n19cr+98TDg63CRFvP7WnR4G
	YQkm9Ehn01VVDX6Ci5ceN8KeUKtGlg81hSVWnf3kCiu9wMECADB7273lQv6YS4rGuCr5VEz1k51KC
	5PPQQFSKwOhKS+tD8iYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDk81-00067Z-9g; Fri, 27 Sep 2019 06:53:21 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDk7G-00066j-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:52:36 +0000
Received: by mail-wr1-f52.google.com with SMTP id r3so1369438wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 23:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=od5B4j98TvNYBzRRG1HwoKOK/0TgQjKHWbpoGxQhWMA=;
 b=jSokwVGqBmF+2Ihos9Udf6pCwjRv+LvcOkhHcSthn+rdJJRK11oD7QN29QdK12LEEv
 Khg3Omj/3u3LUDyLx7F+sIs3Lp6W0VvOkel6zKzoAUGj9GleBIoqmi2rdYMLe8AJIH46
 jZ2IyjZDhLqUzS9LyRcGNWyp2wK4en2f3WEl5vIohmOc9azJv0sfRa81LI08J1kgKW0y
 WEY8gwDdVxTTBhiY5EF58AeAiVIblBoHLzwrP04v4QD6gWSdcRULUzgTrI2ezefm1CPG
 F3O3/ZScJgXROvJCV5pdhJDf17gzfhAEz5fsKNHaVMACc19hAzUyEREQs3SAI9nruev5
 gVOg==
X-Gm-Message-State: APjAAAV0+Ckrpg2gUUC5G3WPULQBYEtv73s7vIxEPrAD17owdLC+vcMr
 AtckEKJhGZZRJdYHyxcc3J4=
X-Google-Smtp-Source: APXvYqxdEtihX4Yerytw8i64RZ/298ncU9GqZWRrjMVs8x96gM2opoAvGjGhrDbKmbgWIrHpe/sbHg==
X-Received: by 2002:adf:a350:: with SMTP id d16mr1667998wrb.326.1569567152554; 
 Thu, 26 Sep 2019 23:52:32 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id j1sm3672139wrg.24.2019.09.26.23.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 23:52:31 -0700 (PDT)
Date: Fri, 27 Sep 2019 08:52:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] dt-bindings: timer: Use defines instead of numbers in
 Exynos MCT examples
Message-ID: <20190927065229.GA18923@pi3>
References: <CGME20190926183707epcas3p350fe17bc738540b37f1130d967c31a62@epcas3p3.samsung.com>
 <20190926183643.7118-1-krzk@kernel.org>
 <fc0809b0-1e6a-0564-75d9-0ccb14d2826c@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc0809b0-1e6a-0564-75d9-0ccb14d2826c@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_235234_743606_F74DA452 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 08:36:47AM +0200, Marek Szyprowski wrote:
> Hi Krzysztof,
 >   
> >       timer@10050000 {
> >           compatible = "samsung,exynos4412-mct";
> >           reg = <0x10050000 0x800>;
> >   
> > -        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > -                     <0 42 0>;
> > +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> 
> the last one should be GIC_PPI
> 
> >       };
> >   
> >     - |
> >       // In this example, the IP contains four local timers, but using
> >       // a per-processor interrupt to handle them. All the local timer
> >       // interrupts are specified.
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> >   
> >       timer@10050000 {
> >           compatible = "samsung,exynos4412-mct";
> >           reg = <0x10050000 0x800>;
> >   
> > -        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > -                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> > +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> 
> again, last 4 entries should use GIC_PPI

Indeed, thanks for noticing it.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
