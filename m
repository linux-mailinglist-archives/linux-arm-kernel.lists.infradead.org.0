Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA0A1665B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItM+9kDnMfYD1sPNpWRoXiBCFZtHmx4O6hPiloedUP8=; b=sMwSVSZe787j8X
	tB5EAcP7utVw1otGkbsLMYHWf1Y4Z9nG1bmxrtS1Hd48xLQLh8b5x1jf1ydA1cBiAsSX6M9zHhbf5
	BmwboETUcM31pgcg/5gKYF4QhwJQF2t/GT/ADTrBb9msS8nJa8Av+esxZ/6s4EOJrD2mzwOVx0gQz
	IIaCX34zFNg86DVY4rIF4AvpOYzridIMDp6ktdFgC9XXs6trukTzG50ZgRj0PrOtVsO9KfitTfEE0
	4bSksWfPnK1LDbXh+FrFz/FVi8/jTPWxUrfBfezMJqsd2iXTTyxHdY4xO/bHD15FVDPv/aXSPUHIN
	gDpTkRmFYa6J5QV3a5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q8N-0002Xm-1r; Thu, 20 Feb 2020 18:01:11 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q7y-0002Jg-TV
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:00:48 +0000
Received: by mail-ed1-f68.google.com with SMTP id j17so34792456edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 10:00:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JuWavBe6OXyRFy5qql3DEFdCwPYGMywA79SDbY508v4=;
 b=pAEXeLjlU6+6WQ4MvAyDIB1c0Qo6L42Hivl/DAe0HAsk+DfkLv6946NboTbTlBBaOq
 LDcqz95Ga9PhIaQh+T6OS0kWb6QLP/l4h6PpAudbhOM7Io1GFBjUbCa9rElWXSS2oeiL
 NpTon25rV7XLsPF1a7o1YA/I/w12skEO4v6tuBHtYloCXQGX7WCdYgw68VhLfSsUrtvh
 tEHS66JoQIHXYKkRoKyVE3jAcw0AlQ9SiSgiOMXqZ8UtQIQJBVwzhhBlXQ/kyaI30inM
 74rUNIG5Ab9dguXHJ2b6qUv95/a/1gJK0gvhydEH16WAOOUhiWqXR7A2P+GdyMA2bDsh
 dlcA==
X-Gm-Message-State: APjAAAV6WuZiUzWjVG9cbgmmjHWVtc6hZyitgWrIRh8L21LnwJ31+a5k
 BE2+yw7QUoqX4brEIgfpjRE=
X-Google-Smtp-Source: APXvYqwN5Yx4Jc42BqpycwqSM0vNnKWMTJp0qMmgsdSQ1M3eTaby6XleOAjAIb1VUKWVgqrdjO6gCg==
X-Received: by 2002:a17:906:19c8:: with SMTP id
 h8mr31704573ejd.250.1582221644629; 
 Thu, 20 Feb 2020 10:00:44 -0800 (PST)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id yh21sm14798ejb.62.2020.02.20.10.00.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 10:00:43 -0800 (PST)
Date: Thu, 20 Feb 2020 19:00:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [RESEND PATCH v2 0/2] Enable Odroid-XU3/4 to use Energy Model
 and Energy Aware Scheduler
Message-ID: <20200220180040.GA8338@kozik-lap>
References: <20200220095636.29469-1-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220095636.29469-1-lukasz.luba@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100046_954560_D5681753 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 09:56:34AM +0000, Lukasz Luba wrote:
> Hi all,
> 
> This is just a resend, now with proper v2 in the patches subject.
> 
> The Odroid-XU4/3 is a decent and easy accessible ARM big.LITTLE platform,
> which might be used for research and development.
> 
> This small patch set provides possibility to run Energy Aware Scheduler (EAS)
> on Odroid-XU4/3 and experiment with it. 
> 
> The patch 1/2 provides 'dynamic-power-coefficient' in CPU DT nodes, which is
> then used by the Energy Model (EM).
> The patch 2/2 enables SCHED_MC (which adds another level in scheduling domains)
> and enables EM making EAS possible to run (when schedutil is set as a CPUFreq
> governor).
> 
> 1. Test results
> 
> Two types of different tests have been executed. The first is energy test
> case showing impact on energy consumption of this patch set. It is using a
> synthetic set of tasks (rt-app based). The second is the performance test
> case which is using hackbench (less time to complete is better).
> In both tests schedutil has been used as cpufreq governor. In all tests
> PROVE_LOCKING has not been compiled into the kernels.
> 
> 1.1 Energy test case
> 
> 10 iterations of 24 periodic rt-app tasks (16ms period, 10% duty-cycle)
> with energy measurement. The cpufreq governor - schedutil. Unit is Joules.
> The energy is calculated based on hwmon0 and hwmon3 power1_input.
> The goal is to save energy, lower is better.
> 
> +-----------+-----------------+------------------------+
> |           | Without patches | With patches           |
> +-----------+--------+--------+----------------+-------+
> | benchmark |  Mean  | RSD*   | Mean           | RSD*  |
> +-----------+--------+--------+----------------+-------+
> | 24 rt-app |  21.56 |  1.37% |  19.85 (-9.2%) | 0.92% |
> |    tasks  |        |        |                |       |
> +-----------+--------+--------+----------------+-------+
> 
> 1.2 Performance test case
> 
> 10 consecutive iterations of hackbench (hackbench -l 500 -s 4096),
> no delay between two successive executions.
> The cpufreq governor - schedutil. Units in seconds.
> The goal is to see not regression, lower completion time is better.
> 
> +-----------+-----------------+------------------------+
> |           | Without patches | With patches           |
> +-----------+--------+--------+----------------+-------+
> | benchmark | Mean   | RSD*   | Mean           | RSD*  |
> +-----------+--------+--------+----------------+-------+
> | hackbench |  8.15  | 2.86%  |  7.95 (-2.5%)  | 0.60% |
> +-----------+--------+--------+----------------+-------+
> 
> *RSD: Relative Standard Deviation (std dev / mean)

Nice measurements!

Applied both, thank you.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
