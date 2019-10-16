Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F667D98B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Xc7T81z2c/OP4YIJVwzSf078N1ptiJ2yuHUb4dYsZ0=; b=f2UDUNriz7f679
	EJqqEWaXKXA2kuOBMaatoJO3zDXPTxea0k+2TXYLq6YsVcaLfSkcEHnvK5efOzq5KWSMMYiGT40YH
	lJxUE5tMjCpEVmfgEyy3w4bLMoCkPQR1nngaEzkZdFnX+dkxIl7KE5/Ea09MgMGmNsKKeEJG4DR8r
	G5nhw7ep9rGO10xVNNvHaKUmSVFIWKZ4Eascnt4CCQhcrtnU6ICaVyK/879dCTmC40Z/iVNsqid9L
	k+++Sw7YrGkJIa9TUWL6wu34k2Qdepby1QtgAG2L9XuoHyHOfuq7x1evEYzQzJ++yJoUicqhC+7FA
	PnrN4dmUVMWCLSFz6LBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKnMR-00029k-5J; Wed, 16 Oct 2019 17:45:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKnMJ-00029O-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:45:16 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 807B530860BE;
 Wed, 16 Oct 2019 17:45:14 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B36495D9CD;
 Wed, 16 Oct 2019 17:45:13 +0000 (UTC)
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
To: Will Deacon <will@kernel.org>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191016155755.66ges3ybn3awx45l@willie-the-truck>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <a14cbac0-3eab-c136-ad2d-9b4d8b95a098@redhat.com>
Date: Wed, 16 Oct 2019 13:45:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191016155755.66ges3ybn3awx45l@willie-the-truck>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 16 Oct 2019 17:45:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_104515_200986_1C1363DE 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/19 11:57 AM, Will Deacon wrote:
> Hi Sebastian,
>
> On Mon, Oct 14, 2019 at 12:13:04AM +0200, Sebastian Andrzej Siewior wrote:
>> I added support for queued-RW and -spinlocks for ARM. I followed Arnd's
>> suggestion and added support for xchg() on 8bit and 16bit variables (V6
>> CPUs) via the SH implementation. This makes it possible to remove the
>> current ticket based locking implementation. 
>>
>> The numbers should be the same as in v1 posted here:
>>    http://lkml.kernel.org/r/20191007214439.27891-1-sebastian@breakpoint.cc
>>
>> The only thing changed is that patch #1-#3 wire up the missing xchg and
>> the patches #4 and #5 additionally remove the old implementation while
>> adding the missing bits for the queued implementation.
> To be honest with you, I'm surprised that qspinlock is worth it for 32-bit
> Arm. qrwlock makes sense because of fairness and starvation issues, but in
> my benchmarks on arm64 tickets tended to perform at least as well for small
> core counts, and I think that's largely going to be true for systems
> running a 32-bit kernel.

My own testing on qspinlocks in the past, at least on x86-64, is that it
is comparable to ticket lock with one or 2 contending tasks if not
better. When there are 3 contending tasks, qspinlock will then be a bit
slower than ticket lock because the overhead of using the MCS node for
queuing is showing up. Starting with 4 and more contending tasks,
qspinlock starts to show its strength and performing better and better
with more contending tasks.

So if the target is 4 cores or less, there isn't too much to gain from
using qspinlock. Lock function inlining probably has a bigger
performance benefit here than switching to qspinlock. Just food for thought.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
