Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95FBB6B33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm/dsFEbPEhOP1Zd6d5hQg5kTuDLBQUYbEgizkLd1yE=; b=fICrPPzoW3cRk/
	4XdQ/QrP1imYbcih67eG+jmB4KP9WmPBHf/URQpqATWFrv5YaWtlMQKgdpiS0AIyzD3aTI6JAJUAq
	iqlZKzKm1zaXFgU0DTl8FxbbHPtxJmfomtogeHYQGU8iHZaxTAKe5XUOviOu6yMcR8ixeulXhnv2w
	Lamw4cwwM7tEdZWArKpDrDl60kngQGrJL1mdkrE8PHN2XRwbTYED3Rrmh8elHeJnrcLauGCI0opxd
	Dtm7yc/MG6VpT1PpIuTBFyfYwz1h7h3A9RiXRndCWt7QbJq3H3wY/pmrxLGQTTr2cV+EbnZUFiH/7
	3lXf3hKydxqcHJpWKPtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf7M-0006Vn-5J; Wed, 18 Sep 2019 18:55:56 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf79-0006VQ-W2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:55:45 +0000
Received: by mail-wr1-f67.google.com with SMTP id l11so523726wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 11:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+GKwkrH213eo66mk9kIsB2wGkIvBZ/XCWq93MBpuNTs=;
 b=etNg6AwQH2FBvDhL3GaRfb/TvoBDwN4niHng853P/bWFmlIXtFn0wGpmXJQgH8klC9
 kdu27k8pEzMOi7k1HrpTpGgG5qHGKLsLzS4p5jpMkHit7R+7m9CrRNtFSAdgOra2O9LY
 55djRnff1cOC8xEjRaACx+YrsGpnpPZ7RhVeF8zok2fXpVSTumCPZ1ynWqKXSIvPI8QO
 HQIs/gI5wh01xQmnyBq9zPKcijLLP50Nh6JxttoWWaSeJXOeTWMCiPXfjKYZvgpzzh3r
 VpGkDVBAfEQj+edyW6ceQbxNy6hkYy4NyOU6ZuT6jjjl6UqGzGQhX8t/t5wFiwgDyOo4
 STlw==
X-Gm-Message-State: APjAAAVD0fNUnUKF++yU1luUtw02zo2AZe9wPbb7jhHHEY33fvHQ56u6
 wyZZtOt6aLJA93fBQkmjops=
X-Google-Smtp-Source: APXvYqyxmqfMFEOtiakgqmvEF0djH94lr2Acxh5XHOyom1gmyhLzMdMxPMnU2DIaunXBDTHsoYaB3Q==
X-Received: by 2002:a5d:6242:: with SMTP id m2mr3953159wrv.261.1568832942283; 
 Wed, 18 Sep 2019 11:55:42 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id d10sm3312020wma.42.2019.09.18.11.55.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 11:55:40 -0700 (PDT)
Date: Wed, 18 Sep 2019 20:55:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v2 1/3] memory: Exynos5422: minor fixes in DMC
Message-ID: <20190918185537.GA8463@kozik-lap>
References: <20190916100704.26692-1-l.luba@partner.samsung.com>
 <CGME20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd@eucas1p1.samsung.com>
 <20190916100704.26692-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916100704.26692-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115544_034709_C5097308 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

On Mon, Sep 16, 2019 at 12:07:02PM +0200, Lukasz Luba wrote:
> Small fixes for issues captured by static analyzes:
> used kfree() insead of devm_kfree() and missing 'static' in the private
> function.
> Checks which show the issues:
> - drivers/memory/samsung/exynos5422-dmc.c:272 exynos5_init_freq_table()
> warn: passing devm_ allocated variable to kfree. 'dmc->opp'
> - drivers/memory/samsung/exynos5422-dmc.c:736:1: warning: symbol
> 'exynos5_dmc_align_init_freq' was not declared.
> 
> Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 4 ++--

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
