Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4AE17238D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GaBCj6C34ovYpgGqrpxwo8H53wbT5d+isvBMmYVKQMk=; b=tveuCqBrw50P6ZHZgN3GoDqDW9
	XrSCPjkTJBwbpWEOmUsAmSFLvX9ap71CBYr2AJsL7wo5YyJwyxBEsAr+GfDztia3Zs/k1efkYbVSE
	KXUYoJuoUca5sZAKke9KPrjO5YC2F/3q9L6jg4oiWQ2+EP5BfGIEUr0mnhB1my0FyvP77aNf4z+OC
	dSPUNVSIMLxGLER/NHjin65sbbLke2FISkdnU9+Q9Fib51PZQ7wkaX/o4OLfDMM5q/45gWe3hAprQ
	Vat7Q//UkPspXpLInUmmctlRdHu9Ha0zPXdkrma5jyreBQ818QC5+APqo9B2TAt+cIYXU2Vst3nat
	n/yezMtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MAD-0003EX-G7; Thu, 27 Feb 2020 16:37:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MA5-0003EF-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:37:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 859DD1FB;
 Thu, 27 Feb 2020 08:37:20 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 350CD3F7B4;
 Thu, 27 Feb 2020 08:37:19 -0800 (PST)
References: <20200226164118.6405-1-valentin.schneider@arm.com>
 <20200226164118.6405-3-valentin.schneider@arm.com>
 <7f647316-00a7-69cb-5d40-733ab8c6796d@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH 2/2] arm64: defconfig: enable CONFIG_SCHED_SMT
In-reply-to: <7f647316-00a7-69cb-5d40-733ab8c6796d@arm.com>
Date: Thu, 27 Feb 2020 16:37:16 +0000
Message-ID: <jhjh7zcvver.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_083721_468506_AC9C1A82 
X-CRM114-Status: UNSURE (   7.17  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu, Feb 27 2020, Dietmar Eggemann wrote:
>> before:
>>   $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
>>   DIE
>>   MC
>>
>> after:
>>   $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
>>   DIE
>>   MC
>
> Have you tested that EAS still comes up ?

Yep:

  root@valsch-h960:~# zcat /proc/config.gz | grep SMT
  CONFIG_SCHED_SMT=y
  root@valsch-h960:~# ./set_governor.sh schedutil
  [  127.834363] root_domain 0-7: pd4:{ cpus=4-7 nr_cstate=5 } pd0:{ cpus=0-3 nr_cstate=5 }
  [  127.842344] sched_energy_set: starting EAS

No reason for it not to come up unless something's broken (but it's
always good to check!).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
