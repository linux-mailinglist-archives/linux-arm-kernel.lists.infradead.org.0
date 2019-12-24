Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83976129EF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 09:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nAhcpnUunGWt7Q252tZzYKi+6u8KPoqh6HVXbuICitE=; b=EZGr0EYYiVHt9wWs0Dy+ZR+Xe
	xtCCXuDZ9vCZFDqKdZWJZZ80wtZeKy5oNVcCwPMTUj9oWSnCgRnWqblSCMC1aJERv0LKWtSBa29h/
	QNZkSC93/bafqGr4eKth8W3lye7FtPz/5JOyiQzXU0oojEIYH5l7qzJXDtXf86ljP874zU7YCNvUN
	sn3r7uZL/B3HhBkGHm6bmgEz4HZtsIqu21W0Aw0glcWGrOK2tOyMoBYc2H/Dvqiygh0ge/cKZFMiq
	WngdFP3UrHq0Gn5HmEL1Pv4Y6KNRbH3pUJ23SHzIDwtszQi7llrRqFmJuJ8dGupPhYUCHBvlqWitf
	o4OH2Fk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfaG-0006rz-S7; Tue, 24 Dec 2019 08:30:28 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfa7-0006r6-07
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 08:30:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577176219; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=ZRku7WBdBHXtA+hx/XFQP6Kg96ShJ6vt8/K+Drr0o4M=;
 b=fUF/vdyOHC5GgdoU6iBqtE7IWt1BW3BtIE9jq70uyfSR+XuRRjNyidY1+WOS8G4xC0lsItRP
 BK+FRnQSF1G8dOJfpv4OHa0f3NSfNQQvq6aZpKHD3IaDr4xc6reFEi2ib9zGBpqY54JtOkp1
 CX5br4inuAB38w+9fF2LBUG8UoU=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e01cc93.7fb68e583998-smtp-out-n01;
 Tue, 24 Dec 2019 08:30:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 58673C4479C; Tue, 24 Dec 2019 08:30:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.204.79.159]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sramana)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 65DB0C43383;
 Tue, 24 Dec 2019 08:30:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 65DB0C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sramana@codeaurora.org
Subject: Re: [PATCH] arm64: Set SSBS for user threads while creation
To: Anshuman Khandual <anshuman.khandual@arm.com>, will@kernel.org,
 catalin.marinas@arm.com, maz@kernel.org, will.deacon@arm.com
References: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
 <d490d6ce-8b07-ce79-4580-ac80f239312a@arm.com>
From: Srinivas Ramana <sramana@codeaurora.org>
Message-ID: <3a50c921-b37b-ea3d-1b9e-87113d3d3fd3@codeaurora.org>
Date: Tue, 24 Dec 2019 14:00:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d490d6ce-8b07-ce79-4580-ac80f239312a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_003020_026552_45395967 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/24/2019 12:36 PM, Anshuman Khandual wrote:
> 
> 
> On 12/23/2019 06:32 PM, Srinivas Ramana wrote:
>> Current SSBS implementation takes care of setting the
>> SSBS bit in start_thread() for user threads. While this works
>> for tasks launched with fork/clone followed by execve, for cases
>> where userspace would just call fork (eg, Java applications) this
>> leaves the SSBS bit unset. This results in performance
>> regression for such tasks.
>>
>> It is understood that commit cbdf8a189a66 ("arm64: Force SSBS
>> on context switch") masks this issue, but that was done for a
>> different reason where heterogeneous CPUs(both SSBS supported
>> and unsupported) are present. It is appropriate to take care
>> of the SSBS bit for all threads while creation itself.
> 
> So this fixes the situation (i.e low performance) from the creation time
> of a task with fork() which will never see a subsequent execve, till it
> gets context switched for the very first time ?
> 
Yes, that is correct.

>>
>> Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
>> Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>
>> ---
>>   arch/arm64/kernel/process.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
>> index 71f788cd2b18..a8f05cc39261 100644
>> --- a/arch/arm64/kernel/process.c
>> +++ b/arch/arm64/kernel/process.c
>> @@ -399,6 +399,13 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>>   		 */
>>   		if (clone_flags & CLONE_SETTLS)
>>   			p->thread.uw.tp_value = childregs->regs[3];
>> +
>> +		if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE) {
>> +			if (is_compat_thread(task_thread_info(p)))
>> +				set_compat_ssbs_bit(childregs);
>> +			else
>> +				set_ssbs_bit(childregs);
>> +		}
>>   	} else {
>>   		memset(childregs, 0, sizeof(struct pt_regs));
>>   		childregs->pstate = PSR_MODE_EL1h;
>>

Thanks,
-- Srinivas R

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation
Center, Inc., is a member of Code Aurora Forum, a Linux Foundation
Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
