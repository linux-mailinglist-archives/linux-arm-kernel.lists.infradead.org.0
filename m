Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6AEA5A98
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGWoIqp15CxER3hK574X7FuUZMm54k0TVT4ISSKPTrE=; b=Py82u/u0te51gM
	9M4gDw3/vSjVgNNpbn61aEUJB9byenShzuvvzn3oq/NTMe0ZLWRi2DFVmi+CvYhzztGdhqWKa8ym6
	YUpkrUcK+zbCkj0e0/by3Ud3ZkhWH3wmxMDlhZcDNm2ikk5JCVtLU9XiHAF37nNg8ST8BwN6ZRh7z
	fZQ685ACNAKhpyhBf7sDIadqoX3DFOPGV2M6FPZRbvxeY4vxc5zHO1nArIE5iQkf0HeFzrK/Zeopq
	vO2q9Xlwp27kVmrwLI8FK2TpNn83ETFGJY776ci85iMH0kX7Uo7HfygINBNnThchl9P4AKIJZG+1R
	kOmvBAJbnifFp1UE/FJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oJE-0000vB-LQ; Mon, 02 Sep 2019 15:32:00 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oJ5-0000ur-8q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 15:31:52 +0000
Received: by mail-wm1-f66.google.com with SMTP id n10so4379302wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 08:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gkZHYuF0hVorf0fdje3PgAdvpFgAOB5Pw0cF51olljc=;
 b=O5d1ozfLYR5xYquD71rDdIU1GsjvbGgcInFpc+LE6rt9+uSKOT7vU8ggt8IV+CYTaN
 d6d7v3isiPbmhsgUS9cI6DvWvY9XqJeGk9mXrPczSDFSssAIJFcOue1vQDfykAJcYbxw
 Ihyjm+VHiLfRHBKywCD4AAS+/Q0vsD2fqbBCIXZdzsKJighXLwKULSdZvAvJn2zZ56xT
 2ORaxerpvBqbpeXLM2WEf9ZcMRtHz/PjemMieKTHwb6lJEle2uNPaB64ksg7OCbkA0i9
 hqD/ImJkBjmcC0quZif4az4gOnbBJwHxC36BJG/h7gp5lkZYZi2KHO2enIb4PYD/LNVh
 1Lfg==
X-Gm-Message-State: APjAAAUFNDHEPenmgU6A7Pok2QT7EQ8k8OMghzUOZVVK4vEF3JhJt/Yd
 4fQ0GOQ/l1lLTmXorSqOiL0=
X-Google-Smtp-Source: APXvYqwjDWARCaw729SYN0Yt88CoFaEoD3zpxpK06WxNryigENZvFN+F5K4KMpvwwe/ikK8K1glJXA==
X-Received: by 2002:a1c:ca0b:: with SMTP id a11mr2728529wmg.87.1567438309268; 
 Mon, 02 Sep 2019 08:31:49 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id d18sm18264208wra.91.2019.09.02.08.31.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 08:31:48 -0700 (PDT)
Date: Mon, 2 Sep 2019 17:31:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Guillaume Gardet <guillaume.gardet@arm.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
 exynos5250 compatible
Message-ID: <20190902153146.GB9289@kozik-lap>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
 <20190830104502.7128-2-guillaume.gardet@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830104502.7128-2-guillaume.gardet@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_083151_307981_8C9EDC57 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 12:44:58PM +0200, Guillaume Gardet wrote:
> Add "samsung,exynos5250-mali" binding.
> 
> Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V3 changes:
>   * add dt-bindings before node in device tree
> V2 changes:
>   * new file
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +

Thanks, entire set applied (with re-ordering and minor description
changes).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
