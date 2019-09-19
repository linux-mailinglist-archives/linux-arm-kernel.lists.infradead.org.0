Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC94B80C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lqG7gtkZtbQuRMO1noy3IN4URvDXYFI3Bjmb866We0=; b=YgsprKJfEOaosX
	WVW63/oygJQc67+oPcAr8wO3Nbz3UsxkW08gFGt6TcdP3VZYL6ELSkni84Cx3oOx1eNAMeNUCQYRM
	RUDff7TRltCqZv41KxoCDzFRQzumlAvr0irFR7KPAwH9NWBbqdgdFc1Zo1gQ5kVzTLf8ZDF6/3Trz
	Z2D9+BD50Wc3+p6osGB4owQTm1K7SnXiG3DZgPdV+W8yYQ+bIm54rUyzDewjQbI6D3/EIhmNlMaiK
	6F7rSzm90VS9wQPYaEf2e5ERXV+2xqQvd6+pJMtUnXMchzMBND//9TOE7+xyOzTzZLIvcBZ9TQg46
	Hpmfndfu8Mq4DzxCmonQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB17u-0002Tr-Ep; Thu, 19 Sep 2019 18:25:59 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB121-0000im-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:20:34 +0000
Received: by mail-wm1-f66.google.com with SMTP id 3so5088412wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 11:19:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MS71DLSrsr/G7o0fTmBzjlmIBqxvb7B9GSSu+P2PwIg=;
 b=jmRJ4djqkHo97FPFH6z4uGejpa01Mkk36U8xyBEI9G++l5ylBk/0VS0tz09IYDs0r2
 cSe9HqnuBSX4jLXINbMgB3/lYa31j61r3emI3SGcs3/tCzICsrNVetnDY1asVbaZ4RkC
 +6f3fiSWJ/tC6SpgI6vuwZrS1Y44SE+fjC37h+876tqbhDxZC+v/wIR5v5Ta5UA8+PwS
 jw6WdJ8dLpwBQa5zHeGaK8OHbRn458laeYMoZYu7bMPGpf6rT1Ib2zMutJ7ZVmCdM0Ct
 GDaahigGgVZYtCeFgkDcQJAcoac0Z6p12P8BCxCCsZtxPoKyoTXAppS0Z+hlNuh27fNl
 zT/w==
X-Gm-Message-State: APjAAAVbefdEgvgJwYZ90tuIQwXeRc/kZ3aBp3kKlayLeivTtPKqMPl+
 oJ5V7gyx3IFXuNroWtOi4zg=
X-Google-Smtp-Source: APXvYqzDQmkkIzntHgwlryzOqeRBmIg4C0xnns499J6+IhQ83PPvBY71St9Lwr2+SJuP95RGKnOA6Q==
X-Received: by 2002:a1c:6508:: with SMTP id z8mr4156412wmb.93.1568917187038;
 Thu, 19 Sep 2019 11:19:47 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id r13sm13927274wrn.0.2019.09.19.11.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Sep 2019 11:19:46 -0700 (PDT)
Date: Thu, 19 Sep 2019 20:19:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 1/2] memory: samsung: exynos5422-dmc: Fix kfree() of
 devm-allocated memory and missing static
Message-ID: <20190919181943.GA10759@kozik-lap>
References: <20190919092641.4407-1-l.luba@partner.samsung.com>
 <CGME20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be@eucas1p1.samsung.com>
 <20190919092641.4407-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919092641.4407-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_112001_599016_591D80F9 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
 s.nawrocki@samsung.com, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 11:26:40AM +0200, Lukasz Luba wrote:
> Fix issues captured by static checkers: used kfree() and missing 'static'
> in the private function.
> 
> Fixes Smatch warning:
>     drivers/memory/samsung/exynos5422-dmc.c:272
>         exynos5_init_freq_table() warn: passing devm_ allocated variable to kfree. 'dmc->opp'
> 
> Fixes Sparse warning:
>     drivers/memory/samsung/exynos5422-dmc.c:736:1:
>         warning: symbol 'exynos5_dmc_align_init_freq' was not declared.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 6 ++----

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
