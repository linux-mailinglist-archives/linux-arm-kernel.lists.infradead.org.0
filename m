Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDD51AEC12
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 13:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psJJtiu/k5fhVTmjhwzswITnXWOOBoC8RkIz+9vbeMI=; b=Q2PsPEwbbBAESW
	c+8W9NTlzbLgTGgL1OFAigZDveLUm2n737piNAe0+e5pF8Z9mOvAM8qDe+3WzVs/DsfHE8h35B3il
	Zul2PlY8vlIFNPdZjVBV50XOtSfL3SRrxuClu0d3jtl5I9hmGHHuLQYENK0mNfg2eQjEKcqSPk0+a
	ApnvCA3kOCqSSu9j96s2X/PU3fp1okYSC5NgiQKXvY3kiQqMZvlqEhrmilfHLMsB95WluzE0UpqZi
	VN1Mp2UTvigNXEuG32+BRn0XCnfLCBdQ2taJ5VFCOuDlyV34ht/U/+dBOljBVCubz7dGbYjvSwBo7
	OrLtPltyEDP4/0grek8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPlbg-0000vs-T7; Sat, 18 Apr 2020 11:25:56 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPlbY-0000ug-HJ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 11:25:50 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9934FD8AB4B7ECB6709C;
 Sat, 18 Apr 2020 19:25:35 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Sat, 18 Apr 2020
 19:25:29 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E8587A3.6030101@huawei.com>
 <558ffd42-74d7-e364-2b79-93ab0998ab6e@arm.com> <5E8EE845.8090406@huawei.com>
 <66db5a6a-e68b-00b7-6a78-2c8cd9e63aab@arm.com> <5E903FDD.4080106@huawei.com>
 <bddb100a-7353-1aac-9877-9c5df5bd2c92@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E9AE3A9.5020904@huawei.com>
Date: Sat, 18 Apr 2020 19:25:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <bddb100a-7353-1aac-9877-9c5df5bd2c92@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_042549_143300_ECC79C22 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James

On 2020/4/16 21:50, James Morse wrote:
> On 10/04/2020 10:43, Xiaofei Tan wrote:
>> On 2020/4/9 22:28, James Morse wrote:
>>> On 09/04/2020 10:17, Xiaofei Tan wrote:
>>>> On 2020/4/8 0:37, James Morse wrote:
>>>>> With that series, it runs in process-context as task-work. memory_failure() needs to
>>>>> sleep, so it has to run in process-context. 
> 
>>>>> Doing it as task-work means it runs before the thread returns to user-space.
>>>>
>>>> Sorry, i don't understand this. i thought the task-work need to reschedule, and current thread should
>>>> have returned to user-space before it.
>>>
>>> ret_to_user has a loop around do_notify_resume(), if the _TIF_NOTIFY_RESUME flag is set
>>> and we call tracehook_notify_resume() which ends up in task_work_run()...
>>>
>>> That TIF flag effectively prevents this thread returning to user-space until that task
>>> work has run.
> 
>> Got it. This function is great.
> 
> I think PeterZ pointed me at it,
> 

Great.

> 
>> BTW, i have not found the place of setting the flag _TIF_NOTIFY_RESUME. Is it set by default for each thread?
> 
> With that series, APEI calls task_work_add(), which calls set_notify_resume() from
> include/linux/tracehook.h
> |	if (!test_and_set_tsk_thread_flag(task, TIF_NOTIFY_RESUME))
> 

Got it. thanks.

> 
> Thanks,
> 
> James
> 
> .
> 

-- 
 thanks
tanxiaofei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
