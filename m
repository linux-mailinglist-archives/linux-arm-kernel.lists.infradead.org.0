Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E44670EF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7DiCHb5AgpZmoZf87zIKiAJBN9yjpLx730KYtTt/Dc=; b=Kfb4yN7lZzXp81
	aj4S0gIKdVlx16ShGvsFIldLQuY4pQ/xRGk/VzQlpKtdVb2CbIupuDn4Ou1G9O6JgrHy3v7mi3Osn
	CYuT5oSOddmc05xjYM7lmATAGkCuWhHmDMXtL8PrwV2voBLrOqh2rUfI0W0pGnOiTD0W6oFl/YsKd
	aL6zWi80TPIjyK0306bol1V8daT87HPRxn/SK9Yoox2jMJ05JC15ZIwMRMjbqHcjYq27IuOMr1oQL
	sO9AJoqnR2BCGlQwYKmSsAU/KDlwKahBAVvqwNfaqg/72Sn4TUh1NrX13TWYagWys8R/lrqr/UHxs
	48WsE/SlqUWWY6aMgmVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkBX-0004sd-5V; Tue, 23 Jul 2019 02:05:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkAg-0003Rn-Mo
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:04:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id az7so19925114plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 19:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=c+fYefKdegWfzNVcvBNCZFAqK5d+WzXI5vtjxfFF6J8=;
 b=zRFzuYvWEWhGryAT6Q8/QwGY+31z0WJLeKBR9uQowX7cZbFobNq11qUpTg8+BZ9xdX
 geyyg7Y+iGQzwrwj3w8cE1UZojdY1o3jWGaU9cpggpJHJO1wmLY1aPQwKWhPKX7GxOIm
 /NvsPv7aR2tvFuB2l39aNzgFqRfkVWHNr/zBjK6BcrfdIBv5z6Ljx1/ZPwVyrbRfH+fn
 WC0xIll82mi599BW7YbJ6tFjpvgPx0Lgi5B03JE0YEPlBUchR3PWyTjQSVOMMOY5KJ2F
 be5nLPczyeJJU4UOXcnq4KKqAfKifvC4IYRjLWX3B2c/N80/HngqF6zuF/cKP6wBQfJd
 yM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c+fYefKdegWfzNVcvBNCZFAqK5d+WzXI5vtjxfFF6J8=;
 b=G2iRYykKnCHQam7xubAta1KoLm9va5LzwtVDh8UY6mm5z9YHNuC7Idp0dnqDBb8DJG
 YekJCpXl+iGkDiYFbUZATmp2CXlSHHqpLDa/1JsJr20nZMTINtfssEvfbWhFpfRE4Mq1
 GegfxmzMmcngRgsyT/HvnGiUSAutQmgEN7SxCKKxN4r/r63pgAQc9hal+y4r2L5huDDe
 uE1zHHf7jQ5SCK1fATBg1MPxB5D/7nxlWOHW8/48DLIpqSNhG/tnJDaeCeVU/mS1QEQi
 s6bauxyH3g9FRKVgBn51Wvf6pRe0mcMrBx9ICjqKIcsQwGNnaQr/YAVTL385LwnavMY7
 wkWw==
X-Gm-Message-State: APjAAAXy2RhR4kGiEraVtJgbM/pM1HCjDjTDRRroZ7SeVlXedAdgVD8+
 d5Yzro9CejvFDdIsOw/dkii0XQ==
X-Google-Smtp-Source: APXvYqz1TZYMRg8AYFQKtJluS92AI/3l+SomVKMpEHPQggv0G3T/KfU0bla677YewN8LIbRxc6gdVw==
X-Received: by 2002:a17:902:4623:: with SMTP id
 o32mr76901784pld.112.1563847493573; 
 Mon, 22 Jul 2019 19:04:53 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id z63sm6349546pfb.98.2019.07.22.19.04.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 19:04:52 -0700 (PDT)
Date: Tue, 23 Jul 2019 07:34:50 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718143044.25066-1-s.nawrocki@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_190455_008549_D28D40FA 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-07-19, 16:30, Sylwester Nawrocki wrote:
> This is second iteration of patch series adding ASV (Adaptive Supply 
> Voltage) support for Exynos SoCs. The first one can be found at:
> https://lore.kernel.org/lkml/20190404171735.12815-1-s.nawrocki@samsung.com
> 
> The main changes comparing to the first (RFC) version are:
>  - moving ASV data tables from DT to the driver,
>  - converting the chipid and the ASV drivers to use regmap,
>  - converting the ASV driver to proper platform driver.
> 
> I tried the opp-supported-hw bitmask approach as in the Qualcomm CPUFreq
> DT bindings but it resulted in too many OPPs and DT nodes, around 200
> per CPU cluster. So the ASV OPP tables are now in the ASV driver, as in
> downstream kernels.

Hmm. Can you explain why do you have so many OPPs? How many
frequencies do you actually support per cluster and what all varies
per frequency based on hw ? How many hw version do u have ?

I am asking as the OPP core can be improved to support your case if
possible. But I need to understand the problem first.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
