Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34BC8D58
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQE/Wa4X9VbG6a9P/4hK2AV/FCKeljEgBhg1Gg8FflQ=; b=pcOnLQ2IHep0qg
	Bh+sNGA0h2uosYqNgcjteOf+7jQP8B9FrDdoNlxGIP2GQVkr+Ud5/1HPHSz0jdbGTwB48Gk1DzFjm
	yKH+wY5a08h652k1yVJ3TGumnDuW1RsNRDCk8nTLKz61gwrqq3giSOreZIUkqJpds5F+8p0HW3L1C
	94DrgRyh8CLsGbXy6c8UxTc6uGJTcyv1/IE8i9DpoaC0I0k8Y7NXp+/pBx0nV5m4/3TPWZ9pfz1BW
	Iqe3voV+tXomVdLwbOqDgycW3m+fl/JidrFFeTrmfqLjo/T1/1wzhFisetedVQbTEZKXG+2/pT3CV
	T13i5vDap/oRXauO6bIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgtO-0001n5-MB; Wed, 02 Oct 2019 15:50:18 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgsz-0001f2-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:49:54 +0000
Received: by mail-wr1-f66.google.com with SMTP id i1so20276683wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:49:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N9nTjf72b4P6SHuseYDd5vlj1uYAdlR5pUdnHMlgqL0=;
 b=TqlYHIXL6ybcB+s1erztjythiqU+WGTf6v/19259T86EAAtB343MMvyP4ywdJbi7rw
 GRnXysQbriK5X3PQDOcAcTSCoyHU8OAqOvxhucRQfaIy4cAsCKHxvwy2CRPda/exmFYD
 L9iIDJvWupq2+rNMB0lVaCNW2lq6tDw8TSFh4Ps5KSaPvJH7L3Hjgvaw9ja+0OnO8UgZ
 D1FtutgOMuZsOiIY+SUyW+Cf2vVWCWHc+K8bhfQGAxqcmcYIJXuuMNgDbK2c/E/ibiZ3
 fq/cwtWIRtoHWoH3EL5sIsLE6D9zGHW3xe2fqcnVhvwVrIf4Xlo6QCoUTSbqaDwqchio
 JqRg==
X-Gm-Message-State: APjAAAVGJKya/LQDD3Y4P+Tf5tJPcSbUkB3fK8FeuVRSx/xXogKvBqnX
 Fcy4LgEu9dZCq/MEZsuBd2x66okS1rE=
X-Google-Smtp-Source: APXvYqxo0WquSBacjKoEoHUoksUhAYGj2U4LdDifMhI3TadGabI6pAp9vVNWRUbjqa/xDVr98dJKXw==
X-Received: by 2002:adf:a350:: with SMTP id d16mr3339481wrb.326.1570031390634; 
 Wed, 02 Oct 2019 08:49:50 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id v6sm13355716wma.24.2019.10.02.08.49.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:49:49 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:49:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 2/8] ARM: dts: exynos: Rename Multi Core Timer node to
 "timer"
Message-ID: <20191002154947.GD4072@kozik-lap>
References: <20190923161411.9236-1-krzk@kernel.org>
 <20190923161411.9236-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923161411.9236-2-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_084953_335466_9A43167C 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 06:14:05PM +0200, Krzysztof Kozlowski wrote:
> The device node name should reflect generic class of a device so rename
> the Multi Core Timer node from "mct" to "timer".  This will be also in
> sync with upcoming DT schema.  No functional change.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/boot/dts/exynos3250.dtsi | 2 +-
>  arch/arm/boot/dts/exynos4210.dtsi | 2 +-
>  arch/arm/boot/dts/exynos4412.dtsi | 2 +-
>  arch/arm/boot/dts/exynos5250.dtsi | 2 +-
>  arch/arm/boot/dts/exynos5260.dtsi | 2 +-
>  arch/arm/boot/dts/exynos54xx.dtsi | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)

I applied all dts related patches from this set.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
