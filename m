Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A13148A31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRe2ReacbmS1dAfRaxAUn467HHa9t5gjMAfNMh4x3gM=; b=BMatTV3Av7PY9H
	kWb1jxUfBx1i3cNoZmtESMAV22RSKua+1oPJuU+GwmXtOyf+JQfXp8J9N3fW5CeTxz/hD8yV5WOYC
	rbCPVQGZt0s8YQGhlwS1q5OJ6Xy54guulaxJ883jpfbz6iGz3J3kDEuX7DiB6fFr8BvMkFEfIpTkV
	Wup3auT6N12ryV4h9j96F17WR3o8DkrrkvbQpI1EPEWtfUi3awI5Jq/fRKppDr3aGxJsK6vd8/47J
	2PaW4mr883B5M/AOWQGfSrmlMtY+HdeFsHla+slAfoNDtGBF0sM8WECOpCmdALHO+m5/8VQgjLaVd
	SmaA3dOkJ61eRwzpFyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0B3-0005sQ-3e; Fri, 24 Jan 2020 14:43:17 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0Au-0005rf-DS
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579876986;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9l6POn3eu1T5wYGvqIrxXu86ud4cnXxoH7SZuURfrZw=;
 b=gA4koLBbpfTr3ZcSONSI2ZTRQVn8MS5c2Ix6Dkv93KHUQ9K56ApNYH+ARcujT/l3C4yDCi
 kAjF1jkNYfbBim/Myufn29WLB9Frg7U5G+IU67O2Sjf+cEwrT9MfqGwdMsDa9FD35QE8Dr
 PnKauZUqMVt+rMQ1xAGtMa6xon+ZtBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-NZHuf-WlOACiaqvI3HcN3A-1; Fri, 24 Jan 2020 09:43:03 -0500
X-MC-Unique: NZHuf-WlOACiaqvI3HcN3A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DAB4800D5B;
 Fri, 24 Jan 2020 14:42:48 +0000 (UTC)
Received: from llong.remote.csb (ovpn-124-92.rdu2.redhat.com [10.10.124.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 445F919C69;
 Fri, 24 Jan 2020 14:42:42 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>, Alex Kogan <alex.kogan@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
Date: Fri, 24 Jan 2020 09:42:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200124075235.GX14914@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064308_527286_2CE88596 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/24/20 2:52 AM, Peter Zijlstra wrote:
> On Thu, Jan 23, 2020 at 04:33:54PM -0500, Alex Kogan wrote:
>> Let me put this question to you. What do you think the number should be?
> I think it would be very good to keep the inter-node latency below 1ms.
It is hard to guarantee that given that lock hold times can vary quite a
lot depending on the workload. What we can control is just how many
later lock waiters can jump ahead before a given waiter.
> But to realize that we need data on the lock hold times. Specifically
> for the heavily contended locks that make CNA worth it in the first
> place.
>
> I don't see that data, so I don't see how we can argue about this let
> alone call something reasonable.
>
In essence, CNA lock is for improving throughput on NUMA machines at the
expense of increasing worst case latency. If low latency is important,
it should be disabled. If CONFIG_PREEMPT_RT is on,
CONFIG_NUMA_AWARE_SPINLOCKS should be off.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
