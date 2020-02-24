Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5F916AF89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9ZV8KeatJ1JmcSW7MrVN9xGzb7IqG4+3/50/nKFOPAc=; b=g2yNezzEf3sA0XxuLQ/5c2Is9s
	h8pVAAgCqjoPeVE8WYHLUC781wMXjmOTifqCKNkl8EWnAH7MFyVObJgfTKUcM/x0URQO2awrih4KS
	OHG+Ld+UiZwjTiq5kHx0mbYRb2/TSeSxXf3XUlIktvQsZVIyz4DA4gf3rf0qcoy4Mo5UV8kbpkp1t
	ouCUafnXaUL56vc4EIKAYZUpkcTL7aEcmqbm0vT9Y9a20pTn0cJh6BMUxo/sO/1KsSY03NHyUjI+F
	gilWQ5CophDyeMe5LIZQkec2MxWE7/XunGiB21z8rP5HpjK2Zmm5zkIEPYQX3y56GWlCKh4F26GBl
	VyUYtFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IiG-00051E-BA; Mon, 24 Feb 2020 18:44:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ii7-00050v-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:44:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71CB51FB;
 Mon, 24 Feb 2020 10:44:07 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 407B43F703;
 Mon, 24 Feb 2020 10:44:05 -0800 (PST)
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-6-ionela.voinescu@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v4 5/7] cpufreq: add function to get the hardware max
 frequency
In-reply-to: <20200224141142.25445-6-ionela.voinescu@arm.com>
Date: Mon, 24 Feb 2020 18:44:03 +0000
Message-ID: <jhjlforygek.fsf@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_104408_043283_62D847D9 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ionela Voinescu writes:

> Add weak function to return the hardware maximum frequency of a CPU,
> with the default implementation returning cpuinfo.max_freq, which is
> the best information we can generically get from the cpufreq framework.
>
> The default can be overwritten by a strong function in platforms
> that want to provide an alternative implementation, with more accurate
> information, obtained either from hardware or firmware.
>
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
