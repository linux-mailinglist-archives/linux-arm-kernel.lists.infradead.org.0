Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE47489AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tTsSQyPyXcP9shfG+PDb5DVV4S+tsdPbiHaPCzgV1E=; b=ILEA6664hyAVHg
	B184FmCGsFes5d7rFuL0r+CFGh7xndh5NBpoB4AkG45yPA0Qid3r/hpVyPYuIUpjExMGzhkjWdBYy
	09M9l49a7qDAheOWBjJb4hR33ZpgnZkDCX391ikscON2vmMaOYezrJvKEMQ3q7kEyHiePh/64mHCg
	6phy2bbuwcRar+AFWzZKjKFCWF2HTdXvfZzpUk38q/KbbmIJOLQqyjC+wAqiFrOw4MnPUpX7ViFt8
	wE56BA317VyQip7v23mQiRnbULFu54+6DD+dnZzlT4oaSjaD+rBCldgD0Z1o6eYZdJezjaUAfEOtG
	ttOxrLGj4rycF6TggGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcv6e-0004lS-Av; Mon, 17 Jun 2019 17:07:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcv6S-0004l0-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:07:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 592E228;
 Mon, 17 Jun 2019 10:07:32 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F412C3F246;
 Mon, 17 Jun 2019 10:07:30 -0700 (PDT)
Subject: Re: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
To: Vincent Guittot <vincent.guittot@linaro.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk, gregkh@linuxfoundation.org, rafael@kernel.org,
 viresh.kumar@linaro.org, mingo@redhat.com, peterz@infradead.org
References: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <c8030f30-0899-070b-df3c-3839ec7e1909@arm.com>
Date: Mon, 17 Jun 2019 18:07:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_100733_051453_BB6BD01B 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: quentin.perret@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 17/06/2019 16:00, Vincent Guittot wrote:
> struct sched_domain *sd parameter is not used anymore in
> arch_scale_cpu_capacity() so we can remove it.
> 

I think it can't hurt to give a bit of background. The *sd parameter used
to be there for smt_gain, which got snipped out by:

  765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")

I'd appreciate having that commit mentioned in the log.

> Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>

Other than that, the changes look fine to me.

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
