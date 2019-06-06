Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F913780A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p30NvbbuUQzBTp0LM9KoNmq/2hIJ8mwedSgR/Qg8jT4=; b=VW2032mvYD8R7U
	eMZVQktLlyz2NXBZW7X190HtcLce6TeUp3rhF+wvq8GZCvD6nCOjM4SBqKu5Z/3B09FIugRyFnj5b
	3gHesv84uCzgzvzYaquSUYQJz4Nu9+6g63ClieeB8Lnbp1suvbzRWhM8IGU+ama0VebmBPRR/XH1e
	OGSdHb3apFyaJvFPHqxodlnM/R9wWgVvMYM84fIpYRNvMD4PxpLROPyEj0+GXQfKKsJogOARhZl77
	DvM4tPQzOXiz0DkYb17Yy7/UPaGqzYKazUrVokeV+vaIx5m4tLOnPuR+wsfjkPIG68Y0wtMM2LE1t
	DJITeAQrs88mN0GQahWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuOO-0004Kz-0j; Thu, 06 Jun 2019 15:33:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuOG-0004K5-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:33:22 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D950C550BB;
 Thu,  6 Jun 2019 15:32:54 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-85.bos.redhat.com [10.18.17.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B88DC7D901;
 Thu,  6 Jun 2019 15:32:46 +0000 (UTC)
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, Peter Zijlstra <peterz@infradead.org>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <20190329152006.110370-4-alex.kogan@oracle.com>
 <60a3a2d8-d222-73aa-2df1-64c9d3fa3241@redhat.com>
 <20190402094320.GM11158@hirez.programming.kicks-ass.net>
 <6AEDE4F2-306A-4DF9-9307-9E3517C68A2B@oracle.com>
 <20190403160112.GK4038@hirez.programming.kicks-ass.net>
 <C0BC44A5-875C-4BED-A616-D380F6CF25D5@oracle.com>
 <20190605204003.GC3402@hirez.programming.kicks-ass.net>
 <6426D627-77EE-471C-B02A-A85271B666E9@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <409b5d52-1f7d-7f60-04c7-e791e069239f@redhat.com>
Date: Thu, 6 Jun 2019 11:32:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6426D627-77EE-471C-B02A-A85271B666E9@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 06 Jun 2019 15:33:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083321_049458_E888E963 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, arnd@arndb.de, dave.dice@oracle.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Rahul Yadav <rahul.x.yadav@oracle.com>,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/6/19 11:21 AM, Alex Kogan wrote:
>>> Also, the paravirt code is under arch/x86, while CNA is generic (not
>>> x86-specific).  Do you still want to see CNA-related patching residing
>>> under arch/x86?
>>>
>>> We still need a config option (something like NUMA_AWARE_SPINLOCKS) to
>>> enable CNA patching under this config only, correct?
>> There is the static_call() stuff that could be generic; I posted a new
>> version of that today (x86 only for now, but IIRC there's arm64 patches
>> for that around somewhere too).
> The static_call technique appears as the more desirable long-term approach, but I think it would be prudent to keep the patches decoupled for now so we can move forward with less entanglements.
> So unless anyone objects, we will work on plugging into the existing patching for pv.
> And we will keep that code under arch/x86, but will be open for any suggestion to move it elsewhere.
>
If you mean making the CNV code depends on PARAVIRT_SPINLOCKS for now,
that is fine. The code should be under kernel/locking. You shouldn't put
it somewhere under arch/x86.

-Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
