Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52F737852
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjMed7BYIu0U2ewbQdty/jwNqGOSwYtI9DJhuQLRbNs=; b=PHMm8Yq78qhz0e
	RK11N6ybANZCGk2xdGKRp0j76vB5Xt9kznjNMPHzKXLEW6b3saaiF/sfikjNC2EXk/5uq3MEKQuw0
	ot5TxKAgIi0Oi6i1qGS+YiU8xIg/KwDbV2cmaXsM7+dF/vQjKW6fzMi1OMqRbjheT6x+kZTjQ79Y4
	6voPwzC8UgA31+OCVIvKTJ6hZcD7tpqkFA4v2Ty0igNhRvrjJoQQQ5nVJFaP9F3yxI+gs5EU99/Qz
	RUr37hwTU7cfNy+q0fhrc6XJZXh7QCVIJkm1EtGSwFCxjA+pQwlsKTA1GYyyP939vxNhA7VnGmzj2
	YWgXQ8BM0y/9jLaEFTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuX5-00018D-E7; Thu, 06 Jun 2019 15:42:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuWy-00017o-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:42:21 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0BB2830C31B7;
 Thu,  6 Jun 2019 15:42:16 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-85.bos.redhat.com [10.18.17.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B2AF5F7D8;
 Thu,  6 Jun 2019 15:42:10 +0000 (UTC)
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Waiman Long <longman@redhat.com>
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
 <409b5d52-1f7d-7f60-04c7-e791e069239f@redhat.com>
Organization: Red Hat
Message-ID: <dc79105d-3f4d-d940-0313-cec9b3cf0680@redhat.com>
Date: Thu, 6 Jun 2019 11:42:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <409b5d52-1f7d-7f60-04c7-e791e069239f@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 06 Jun 2019 15:42:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_084220_593247_5677CC9F 
X-CRM114-Status: GOOD (  16.87  )
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

On 6/6/19 11:32 AM, Waiman Long wrote:
> On 6/6/19 11:21 AM, Alex Kogan wrote:
>>>> Also, the paravirt code is under arch/x86, while CNA is generic (not
>>>> x86-specific).  Do you still want to see CNA-related patching residing
>>>> under arch/x86?
>>>>
>>>> We still need a config option (something like NUMA_AWARE_SPINLOCKS) to
>>>> enable CNA patching under this config only, correct?
>>> There is the static_call() stuff that could be generic; I posted a new
>>> version of that today (x86 only for now, but IIRC there's arm64 patches
>>> for that around somewhere too).
>> The static_call technique appears as the more desirable long-term approach, but I think it would be prudent to keep the patches decoupled for now so we can move forward with less entanglements.
>> So unless anyone objects, we will work on plugging into the existing patching for pv.
>> And we will keep that code under arch/x86, but will be open for any suggestion to move it elsewhere.
>>
> If you mean making the CNV code depends on PARAVIRT_SPINLOCKS for now,
> that is fine. The code should be under kernel/locking. You shouldn't put
> it somewhere under arch/x86.

I mean the core CNV code should be under kernel/locking. The paravirt
specific code, however, should be close to the current paravirt code
which is under arch/x86.

-Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
