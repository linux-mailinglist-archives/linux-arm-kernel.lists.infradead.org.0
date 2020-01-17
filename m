Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3392140DAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1yEcPmPo7er3kPrfHwtzKOYW6hfF0XVDMMqcWokbhg=; b=YENwdBWHv8KVJH
	ct3v/pvToxy0LA7a8rWR+yO1qsXIs10g4qcBmeFfQyrUseLot63pxdkJq8mQKv4sMj0p9O54YT2Ku
	uGsI1niiv0n+TWxIjZuFO1L+ZWgwQgQHxRZKidRloy5XSC6B61qniRqXEB4dnjPBXjZDd/Kbi2u5Y
	/cZPcTrY4Ng6z1y2W0S9EyjyFfldApttr+6BW4Y/X+zoufq41bbTbhqZcsfdeb4n6PLFwEMFt+5qR
	7d5/5CRix2VTXVkLREW2wpROp/hqxLRDAO5tUJfP4nT+0cVoUu/f9wgg5vOzjYinibSdHiEeki9Qm
	Gurz+DTl/4JfNoSCpqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTN8-0001G8-C5; Fri, 17 Jan 2020 15:17:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTMw-0001F4-HZ
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 Jan 2020 15:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sBS1drMzIhipzCNVy8OKMGnYXRx1U8GXiDqx0O3pTls=; b=xbl0pzABN8FSNelcDT6OE28U8
 HtKNAW5hqWR2aK0rwRmivz6TD2a1dOR4KBEyFdUexiwybn4+TrVTs2blfRtmRRWowiYvGEkvQwBk6
 qKzlb8f4+R+GRzo9aHjcTzk/cemxdltFEgpH8q8UVw8rGy5CHop4vm0lsXn9Fda5VHKXg+oME3YIf
 P/vAxSvt6eoTYznz+6FmU7sd48hb7XN0PqyS3hkI19lQF1YpGqPTtO3ZrZpciCneGvlidVhA0b3gv
 fYnMLparMSSo+FiqTeQkk5kSfRCPP72WIZjZN72rk2XLjTziEeKubyP98Ud2xX+Z3MH+vkrN94gcb
 iQ/g18erg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTMq-0000eo-Fx; Fri, 17 Jan 2020 15:17:00 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3CA8E304123;
 Fri, 17 Jan 2020 16:15:21 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 784C320261863; Fri, 17 Jan 2020 16:16:58 +0100 (CET)
Date: Fri, 17 Jan 2020 16:16:58 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: James Clark <James.Clark@arm.com>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Message-ID: <20200117151658.GH14879@hirez.programming.kicks-ass.net>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
 <20200117140143.GD14879@hirez.programming.kicks-ass.net>
 <1231fd60-79cd-fcdf-8b99-a3be746bf2d1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1231fd60-79cd-fcdf-8b99-a3be746bf2d1@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Tan Xiaojun <tanxiaojun@huawei.com>, Namhyung Kim <namhyung@kernel.org>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 03:00:37PM +0000, James Clark wrote:
> Hi Peter,
> 
> Do you mean something like this?

Yes.

> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index 43d1d4945433..f74acd085bea 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -10812,6 +10812,12 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
>                 goto err_pmu;
>         }
>  
> +       if (event->attr.precise_ip &&
> +               !(pmu->capabilities & PERF_PMU_CAP_PRECISE_IP)) {
> +               err = -EOPNOTSUPP;
> +               goto err_pmu;
> +       }
> +
>         err = exclusive_event_init(event);
>         if (err)
>                 goto err_pmu;
> 
> 
> Or should it only be done via sysfs to not break userspace?

So we've added checks like this in the past and gotten away with it. Do
you already know of some userspace that will break due to it?

An alternative approach is adding a sysctl like kernel.perf_nostrict
which would disable this or something, that way 'old' userspace has a
chicken bit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
