Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43949150A29
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sB6nd8MF9JTdqmYSbGr+8PjI0urqhn/UCeFpcT8PB/U=; b=mMa8jUqRcT/Dwc
	A7cedu4bnw/K/Fx6MrR6jUMm4LzHwysAk4E5O2InQ3+beu/aVjaQ23eQUOINW240IVmHF8B0KIE0l
	0mrpLz+ifc50y4FmNT6hoto2Olguuor+n4RCP2zc56lCnp5fzfvzN1QQ2WF0TjkhkXiscTpNYB4J4
	Bj9s5eg0VteXWw5JW2Ohm0kti0uOkWh+OrJijdPHdc+D6tnXedtyewUaVzxX9ZB+F+O82XZjVf2Ou
	eWG5WbTykRdrdvq5RMNk8ycgCN0GpBHo8Wjvg11U5XX1EBkpvXlgim3pUboylHxAx6eqqnessN5as
	s10pzQIlovGcP92X4Mdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydwk-0001aH-O9; Mon, 03 Feb 2020 15:47:34 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydwd-0001Ze-Tz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580744846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hXZe6FEUmH9hjk4hufHYUU+BgVLORNyZ1sbApPlRBeU=;
 b=hGUR+mLbJl7zkrBGIvJEQf21E5U9X1zz9vsJKRIn0SbgyV7jRDlj3k60s0InX7APB+TYiD
 GPvsJKv9sEV4wDnM9rpqLjRphkBqG48EUunxMGtv8mUd9xXF3cDFjqidaWlk0bNp3saFTJ
 LpVMDFSbD+mK/qsealVOnB0IHPC9z9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-aeDC1h7MNYCqXuy0WDdweg-1; Mon, 03 Feb 2020 10:47:24 -0500
X-MC-Unique: aeDC1h7MNYCqXuy0WDdweg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5959D800D4E;
 Mon,  3 Feb 2020 15:47:21 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 095D55C1B5;
 Mon,  3 Feb 2020 15:47:15 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>
References: <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
 <20200203134540.GA14879@hirez.programming.kicks-ass.net>
 <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
 <20200203152807.GK14914@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <15fa978d-bd41-3ecb-83d5-896187e11244@redhat.com>
Date: Mon, 3 Feb 2020 10:47:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200203152807.GK14914@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_074728_043678_2330D16C 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/3/20 10:28 AM, Peter Zijlstra wrote:
> On Mon, Feb 03, 2020 at 09:59:12AM -0500, Waiman Long wrote:
>> On 2/3/20 8:45 AM, Peter Zijlstra wrote:
>>> Presumably you have a workload where CNA is actually a win? That is,
>>> what inspired you to go down this road? Which actual kernel lock is so
>>> contended on NUMA machines that we need to do this?
>> Today, a 2-socket Rome server can have 128 cores and 256 threads. If we
>> scale up more, we could easily have more than 1000 threads in a system.
>> With that many logical cpus available, it is easy to envision some heavy
>> spinlock contention can happen fairly regularly. This patch can
>> alleviate the congestion and improve performance under that
>> circumstance. Of course, the specific locks that are contended will
>> depend on the workloads.
> Not the point. If there isn't an issue today, we don't have anything to
> fix.
>
> Furthermore, we've always adressed specific issues by looking at the
> locking granularity, first.

You are right in that. Unlike ticket spinlock where performance can drop
precipitately over a cliff when there is heavy contention, qspinlock
won't have this kind of performance drop. My suspicion is that slowdowns
caused by heavy spinlock contention in actual workloads are likely to be
more transient in nature and harder to pinpoint. These days, I seldom
get bug report that is related to heavy spinlock contention.

>
> So again, what specific lock inspired all these patches?
>
Maybe Alex has some data to share.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
