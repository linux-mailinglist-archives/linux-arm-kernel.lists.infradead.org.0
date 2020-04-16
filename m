Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C2B1AC3DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZ5dUMh9PaXyTATRhnnkXMKlXxMAQ1eLmYDaMhJM/S4=; b=JME1efuxgFybD9
	VGCCyZUJBuRKhVCgyb0cfbqfDkZzJN/HaRJ4IwK5Y32+9Y1x9fa1lDiXDltHD9bpFiFDRvnMonB2Z
	qJKqplBsS1nHF0w+vhLDzcGQ79BGCrZj4JmEPdTf7U8FNVUFAhsIP4Azxpwu6OWzrwYb4HCm8YLA3
	blzEJDtkaJy/TBzS1SbLEg5VkltrXEtwB84jZiZnE7B/Y4WB9nvdnlwseMW4HezkRhaxKybdtW3Dw
	7vB4PNhLnZv4dWgegMDIUdvTBLbEBbOYqhiExV4b8CsZSg5b/ZDBlBui1phHUhVGW8/3NfnkTBgt9
	QcvX2dcNblAclvstGgWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4uT-00009S-Hk; Thu, 16 Apr 2020 13:50:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4uK-00008r-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:50:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A6471FB;
 Thu, 16 Apr 2020 06:50:19 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21E553F237;
 Thu, 16 Apr 2020 06:50:18 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E8587A3.6030101@huawei.com>
 <558ffd42-74d7-e364-2b79-93ab0998ab6e@arm.com> <5E8EE845.8090406@huawei.com>
 <66db5a6a-e68b-00b7-6a78-2c8cd9e63aab@arm.com> <5E903FDD.4080106@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bddb100a-7353-1aac-9877-9c5df5bd2c92@arm.com>
Date: Thu, 16 Apr 2020 14:50:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E903FDD.4080106@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_065020_104890_25BADE2D 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/04/2020 10:43, Xiaofei Tan wrote:
> On 2020/4/9 22:28, James Morse wrote:
>> On 09/04/2020 10:17, Xiaofei Tan wrote:
>>> On 2020/4/8 0:37, James Morse wrote:
>>>> With that series, it runs in process-context as task-work. memory_failure() needs to
>>>> sleep, so it has to run in process-context. 

>>>> Doing it as task-work means it runs before the thread returns to user-space.
>>>
>>> Sorry, i don't understand this. i thought the task-work need to reschedule, and current thread should
>>> have returned to user-space before it.
>>
>> ret_to_user has a loop around do_notify_resume(), if the _TIF_NOTIFY_RESUME flag is set
>> and we call tracehook_notify_resume() which ends up in task_work_run()...
>>
>> That TIF flag effectively prevents this thread returning to user-space until that task
>> work has run.

> Got it. This function is great.

I think PeterZ pointed me at it,


> BTW, i have not found the place of setting the flag _TIF_NOTIFY_RESUME. Is it set by default for each thread?

With that series, APEI calls task_work_add(), which calls set_notify_resume() from
include/linux/tracehook.h
|	if (!test_and_set_tsk_thread_flag(task, TIF_NOTIFY_RESUME))


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
