Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AE66C088
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/s5RjQsVw59pcd+ZeZhD8IEKKAvivzAbreL7/19ZiuE=; b=dddT0Qbxo+jmfo
	IihXUZtW7iXJoR8TiPHGg8brGTX5gSqGDMtifahz+G7u/37f2sJwjd9f9lHB8eo3NhXc2QYP6eoP4
	WPaFqjUo+BP/mHb2K5IvqkL+d3uCno8RSkVZ/8cQOUVqBrjRnGGS2TzRux/lKcgfPhWJsGU3LD6Q4
	tIb4wKAt0FjDlYuLcrn6M+KVSpL8ByfbEzCWqdakGq145CjRF75Yv5AryW4uPSWbkzmVMweDUtmn3
	zTHZvPGys1x9AXAaTclcGBipFhla9+6JqKCItXWvBbNmBZvnZgNQmLclSFSWQ0iDEqwCZoM8pBQFt
	38zy4krg0S/QlSXsw/pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnwR-0005tK-C4; Wed, 17 Jul 2019 17:42:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnw7-0005sK-54
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:41:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C29328;
 Wed, 17 Jul 2019 10:41:50 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A26D43F71F;
 Wed, 17 Jul 2019 10:41:47 -0700 (PDT)
Subject: Re: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register
 check to SEA handling
To: Tyler Baicar OS <baicar@os.amperecomputing.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
 <1562086280-5351-3-git-send-email-baicar@os.amperecomputing.com>
 <df262b97-eda2-0556-d6ef-532a0d697131@arm.com>
 <BYAPR01MB39754DFAF8130743448FDEC6E3F00@BYAPR01MB3975.prod.exchangelabs.com>
 <BYAPR01MB3975FB635454503D3BFBBD53E3F30@BYAPR01MB3975.prod.exchangelabs.com>
From: James Morse <james.morse@arm.com>
Message-ID: <80d7ad43-5426-3117-0445-0add5bc008f5@arm.com>
Date: Wed, 17 Jul 2019 18:41:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <BYAPR01MB3975FB635454503D3BFBBD53E3F30@BYAPR01MB3975.prod.exchangelabs.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_104151_284776_53A4E460 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "Matteo.Carlini@arm.com" <Matteo.Carlini@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "tony.luck@intel.com" <tony.luck@intel.com>, "bp@alien8.de" <bp@alien8.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "Andrew.Murray@arm.com" <Andrew.Murray@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tyler,

On 11/07/2019 05:14, Tyler Baicar OS wrote:
> On Tue, Jul 9, 2019 at 8:52 PM Tyler Baicar OS <baicar@os.amperecomputing.com> wrote:
>> On Mon, Jul 8, 2019 at 10:10 AM James Morse <james.morse@arm.com> wrote:
>>> On 02/07/2019 17:51, Tyler Baicar OS wrote:
>>>> @@ -632,6 +633,8 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
>>>>
>>>>       inf = esr_to_fault_info(esr);
>>>>
>>>> +     arch_arm_ras_report_error();
>>>> +
>>>>       /*
>>>>        * Return value ignored as we rely on signal merging.
>>>>        * Future patches will make this more robust.
>>>>
>>>
>>> If we interrupted a preemptible context, do_sea() is preemptible too... This means we
>>> can't know if we're still running on the same CPU as the one that took the external-abort.
>>> (until this series, it hasn't mattered).
>>>
>>> Fixing this means cramming something into entry.S's el1_da, as this may unmask interrupts
>>> before calling do_mem_abort(). But its going to be ugly because some of do_mem_abort()s
>>> ESR values need to be preemptible because they sleep, e.g. page-faults calling
>>> handle_mm_fault().
>>> For do_sea(), do_exit() will 'fix' the preempt count if we kill the thread, but if we
>>> don't, it still needs to be balanced. Doing all this in assembly is going to be unreadable!
>>>
>>> Mark Rutland has a series to move the entry assembly into C [0]. Based on that that it
>>> should be possible for the new el1_abort() to spot a Synchronous-External-Abort ESR, and
>>> wrap the do_mem_abort() with preempt enable/disable, before inheriting the flags. (which
>>> for synchronous exceptions, I think we should always do)
>>>
>>> [0] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm

>> Good catch! I didn't think the synchronous route was preemptible.

>> I wasn't seeing this issue when testing this on emulation, but I was able to
>> test and prove the issue on a Neoverse N1 SDP:
>>
>> root@genericarmv8:~# echo 0x100000000 > /proc/cached_read
>> [   42.985622] Reading from address 0x100000000
>> [   42.989893] WARNING: CPU: 0 PID: 2812 at /home/tyler/neoverse/arm-reference-
>> platforms/linux/arch/arm64/kernel/cpufeature.c:1940 this_cpu_has_cap+0x68/0x78

[...]

>> [   43.175647] Internal error: synchronous external abort: 96000410 [#1]
>> PREEMPT SMP

[...]

>> I'll pull Mark's series in and add the preempt enable/disable around the call
>> to do_mem_abort() in el1_abort() and test that out!
> 
> I was able to pull in the series mentioned [0] and add a patch to wrap
> do_mem_abort with preempt disable/enable and the warning has gone away.

Great.

I spoke to Mark who commented he hadn't had the time to finish rebasing it onto
for-next/core. (which I guess is why it didn't get posted!).

I've taken a stab at picking out the 'synchronous' parts and rebasing it onto arm64's
for-next/core. That tree is here:
http://www.linux-arm.org/git?p=linux-jm.git;a=shortlog;h=refs/heads/deasm_sync_only/v0

(this should save you doing the rebase)

I'll aim to rebase/retest and post it next week.


> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> index 43aa78331e72..26cdf7db511a 100644
> --- a/arch/arm64/kernel/entry-common.c
> +++ b/arch/arm64/kernel/entry-common.c
> @@ -118,7 +118,25 @@ static void el1_abort(struct pt_regs *regs, unsigned long esr)

el0_ia/da will have the same problem.


>  	unsigned long far = read_sysreg(far_el1);
>  	local_daif_inherit(regs);
>  	far = untagged_addr(far);
> -	do_mem_abort(far, esr, regs);
> +
> +	switch (esr & ESR_ELx_FSC) {
> +	case ESR_ELx_FSC_EXTABT:	// Synchronous External Abort
> +	case 0x14:			// SEA level 0 translation table walk
> +	case 0x15:			// SEA level 1 translation table walk
> +	case 0x16:			// SEA level 2 translation table walk
> +	case 0x17:			// SEA level 3 translation table walk
> +	case 0x18:			// Synchronous ECC error
> +	case 0x1c:			// SECC level 0 translation table walk
> +	case 0x1d:			// SECC level 1 translation table walk
> +	case 0x1e:			// SECC level 2 translation table walk
> +	case 0x1f:			// SECC level 3 translation table walk

Hex numbers, lovely. KVM has a helper for this, can we move/clean that so we can use it here?


> +		preempt_disable();

This is still too late. You can take an interrupt between local_daif_inherit() and be
migrated, before you call preempt_disable() here.

The local_daif_inherit() may need to move into the switch() too.

It may be simpler to fold the 'is_extabt(esr)' check into el1_sync, so that these bypass
el1_abort() and call do_sea() directly, which could then handle the far-read,
preempt-count and daif-inherit itself. I prefer ... whichever looks cleanest!


> +		do_mem_abort(far, esr, regs);
> +		preempt_enable();
> +		break;
> +	default:
> +		do_mem_abort(far, esr, regs);
> +	};
>  }


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
