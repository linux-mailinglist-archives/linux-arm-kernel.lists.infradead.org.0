Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1215AE77B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JciyDEOQ9+eDRUxJ0BZ3eb0V15+sjm8TNrGKiUYqMlU=; b=JxKwLI5sn6D3f5
	yJkgAMp5+lRu+aRo9br35XJsoB5s+3Uf7FtKCZYpVj0KrDuFGuSXi4bQQus0MGpDW+1K5UlHHzsSa
	G75uy0r2s9cK6ssqb5EGOyFHdFkRTx7fxQFiAA6u4eq7QvoicxjgKpC07aHX3lxebmIZoYy5+HKwk
	nEZ8JPHcr58/oEDS6YraOdHuqqyerTUtzMDsgg4uV27tLrkt+C28WMAZ3RZlTR4MSJOmrqafZifDY
	tZ2K6Kbl4zNLUKdg7qoc3ZARRVPTaOnHBY+1WnAiJEKobgbI+5mW7jYeP7Ad5uVFXploHvtBDXGWO
	We6m2vbdjBOppaLXwj1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8wW-0000t0-NR; Mon, 28 Oct 2019 17:36:36 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8w6-0000iM-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:36:12 +0000
Received: by mail-ed1-f67.google.com with SMTP id a21so8530221edj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:36:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OAsEaZPXZx2ykx4Hduijb09lsGu9L40MOJoDfA4h76I=;
 b=HBR8DU/Ypy6VYfxgWA+4753+hpU64TIXMeQ2pS8FUPS2A9rrmoNAQ3WFrIiyCsYoZi
 CO4IDoZHORcLMdM+f63KPnfhYyeZOrEYbTWWNbI5c49m3Mjbws+JSuWVyYCjJWicDkVl
 NjVAUoEgFH8iCiXXRxU+S0s6R3PEOOnj5N1bD+cLdVR5BOcajzWiuuRGM1Gm+k0b5rlx
 Al5B37OdD4KUxB1ra5nTmq3lsU+CU2mc6CsjH0AzxZfIGJQXvPm7LKo9eM3Vg3CuXZ8p
 39FixUS2vXqt3uE+FSyP1aVinWxB+a7wpbCChbAcb/U1PVfi5JR7AWlBwkoZ+xba4K5g
 wBwA==
X-Gm-Message-State: APjAAAWRDED2dZJgpLEf7e9dDE9Lxcg1GHrLLwzswvo/KwzNUMW4ri93
 Ix7YZFn86mp5L7A6+H4A/H4=
X-Google-Smtp-Source: APXvYqwJ3rGCTA5Ugojohtfi7BCoIjiTdyuBPtySkjGp2LNe5eVrME1DaNBUpbKCPFdjUbhwuwe2Nw==
X-Received: by 2002:a50:ec0e:: with SMTP id g14mr20955345edr.274.1572284169385; 
 Mon, 28 Oct 2019 10:36:09 -0700 (PDT)
Received: from kozik-lap ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id rp21sm84757ejb.17.2019.10.28.10.36.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 10:36:08 -0700 (PDT)
Date: Mon, 28 Oct 2019 18:36:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v6 2/2] ARM: EXYNOS: Enable exynos-asv driver for
 ARCH_EXYNOS
Message-ID: <20191028173606.GC14395@kozik-lap>
References: <20191028151534.9920-1-s.nawrocki@samsung.com>
 <CGME20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289@eucas1p2.samsung.com>
 <20191028151534.9920-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028151534.9920-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_103610_908237_6546B014 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 vireshk@kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:15:34PM +0100, Sylwester Nawrocki wrote:
> Enable exynos-asv driver for Exynos 32-bit SoCs.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1 (RFC):
>  - none
> 
>  arch/arm/mach-exynos/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
