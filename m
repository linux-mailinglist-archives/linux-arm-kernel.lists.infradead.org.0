Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEDF1A6491
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eOBwwmayJp7rdoC8xhCvkc6qHRBv6rFJ4fcuI0Hd4QM=; b=KpPEhLCw4Co0lbpcsdZvNOahNX
	blOt477hBNbqfQS2SvIzbDB8VDMM6FBHaC/8BFz6LWWA/gYirTSVQ5UHqfiSTVgDoI1Tx6DmWtpl9
	b9HNirOf51CK8gIEF5RE05Gia/9JSo2Ytf57ahLO6oZdxksQS/zwB4TDP0S/61TrxxT1aiSvwwPly
	YPVYfkxMXyAwb7k/rZXW+6GoTy6504E2gNUJ9gxWOA1MPgRO8Sx391jQYFiI794oWzacIzV1YHDe+
	GA2C7jk9sLU05JR6Upz5rBS+SGz5j50rlux65Kc5Q6oFOc6FkVm84hilQgzb/RwZq5IFayeVLBrRo
	/A3JJ4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvJa-0002Lr-PD; Mon, 13 Apr 2020 09:23:38 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvJR-0002Ky-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:23:32 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id B6290262307;
 Mon, 13 Apr 2020 17:23:13 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, wangqing@vivo.com
Subject: RE:[PATCH] ARM64: fixed dump_backtrace() when task running on another
 cpu
Date: Mon, 13 Apr 2020 17:23:08 +0800
Message-Id: <1586769788-5954-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
References: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSlVCTkNCQkJCQkpPSk1CSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OSI6HAw*Tjg1MAsfSTQNKhQ9
 CwgwFBRVSlVKTkNNTE1CTEJIQklIVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUhISUM3Bg++
X-HM-Tid: 0a7172d993279375kuwsb6290262307
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_022330_596372_1C816B9A 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [59.111.176.17 listed in wl.mailspike.net]
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
Cc: opensource.kernel@vivo.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>Hi,
>
>On Thu, Apr 09, 2020 at 05:38:16PM +0800, Wang Qing wrote:
>> We cannot get FP and PC when the task is running on another CPU,
>> task->thread.cpu_context is the last time the task was switched out,
>> it's better to give a reminder than to provide wrong information.
>> 
>> Signed-off-by: Wang Qing <wangqing@vivo.com>
>
>Are you seeing this happen anywhere in particular today?

This problem is not so obvious, because it will not cause any exceptions
but will show "old" stack always ending with switch_to, I finally confirmed
the problem through debugging.

For example:Task blocked in spinlock/interrupt/busy loop, I want to print
the backtrace when detected(like PSI in Android), the printing is wrong(old).

>
>> ---
>>  arch/arm64/kernel/traps.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>> 
>> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
>> index cf402be..c04e3e8 100644
>> --- a/arch/arm64/kernel/traps.c
>> +++ b/arch/arm64/kernel/traps.c
>> @@ -106,6 +106,14 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>>  		start_backtrace(&frame,
>>  				(unsigned long)__builtin_frame_address(0),
>>  				(unsigned long)dump_backtrace);
>> +	} else if (tsk->on_cpu) {
>> +		/*
>> +		 * The task is running in another cpu, so the call stack
>> +		 * is changing and we cannot get it.
>> +		 */
>> +		pr_warn("tsk: %s is running in CPU%d, Don't call trace!\n",
>> +			tsk->comm, tsk->cpu);
>
>I believe that we can race with a concurrent write to tsk->cpu in both
>cases above. We could use READ_ONCE() to get a snapshot, but we can
>still race and miss cases where the task was runnning as we backtrace
>it.
>
>Thanks,
>Mark.

I will use task_cpu(tsk) instead of tsk->cpu, and add task_running_oncpu() in
include/linux/sched.h instead of tsk->on_cpu, but as you said, by this patch,
we can still race and miss cases where the task was runnning as we backtrace.

But from the user's perspective, printing wrong backtrace is confused when
we call this function while task already running. However, it's reasonable to
print the last backtrace when task enter running during the function is called.

Thanks,
Wang Qing.

>
>> +		return;
>>  	} else {
>>  		/*
>>  		 * task blocked in __switch_to
>> -- 
>> 2.7.4
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
