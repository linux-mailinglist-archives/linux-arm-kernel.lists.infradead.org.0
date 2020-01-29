Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6520314C9E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 12:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q1d21aMczhZZG7nzyxgD1h0oECWRLaU4PbPl9XNTtzc=; b=JpkeJGM+a10vRMRZ0RTMhbk2k
	jBbcVa0XrVgulFagpHhbymsD4cHFmS8E1wrC/2t9VzeVKlRnoo0KVyYerXhKPwCIoWuFUS/R2r+Bs
	5ydS3F2Rq+g8wksLnKjodhQH4LFKtZUiXlpbQFiuB8q+29MIlK3glMKY5tFVA2Jd1nUn0uyN7cN/F
	h68Jf6QV9q9lTmG7iaLxfyMr8tBe1MZhQHi+OWEYZlj95BRwGj/CBoVbQ4iKIwjYu6FxNRx/MNlb+
	VROuYe8xlJy2YAqr+YCqYKAje4zVhaQWU/b/hAZC73ls+Cn8KDqc5uxPj7Zk16PfsTaK2hDFqcCjv
	1qZku8JxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwlqL-0007Vl-CP; Wed, 29 Jan 2020 11:49:13 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlqD-0007VD-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 11:49:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580298545; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=7ZWaYAxSy8lntsFBFvZAXk81ogRHgObujRrr9xFKq2Y=;
 b=PU78b82HCCDHjcfPcaN9t1ooxM+w+SZ5MshKLFF/fLk28Njiqt0OU3icxBEyBcxAWa5CBdFV
 XvUW9vFnoYuRsJsBiZmqPukDAVxdW+4QHHHEZu5ma2ziAUgU4o2YKeowydqIST7wqcyKwFgR
 pJvb/nr3CDQmChZrQ9ZsHMnAU+o=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e31712b.7f63b5735618-smtp-out-n03;
 Wed, 29 Jan 2020 11:48:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A6DA3C433A2; Wed, 29 Jan 2020 11:48:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.204.79.159]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sramana)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 40D9EC43383;
 Wed, 29 Jan 2020 11:48:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 40D9EC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sramana@codeaurora.org
Subject: Re: [PATCH] arm64: Set SSBS for user threads while creation
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
 <20200102180145.GE27940@arrakis.emea.arm.com>
From: Srinivas Ramana <sramana@codeaurora.org>
Message-ID: <0c5cd234-5cfb-d093-06e4-a0edb5c68bf8@codeaurora.org>
Date: Wed, 29 Jan 2020 17:18:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200102180145.GE27940@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_034905_691166_AC77C070 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: maz@kernel.org, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/2/2020 11:31 PM, Catalin Marinas wrote:
> On Mon, Dec 23, 2019 at 06:32:26PM +0530, Srinivas Ramana wrote:
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
>>
>> Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
>> Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>
> 
> I suppose the parent process cleared SSBS explicitly. Isn't the child

Actually we observe that parent(in case of android, zygote that launches 
the app) does have SSBS bit set. However child doesn't have the bit set.

> after fork() supposed to be nearly identical to the parent? If we did as
> you suggest, someone else might complain that SSBS has been set in the
> child after fork().

I am also wondering why would a userspace process clear SSBS bit loosing 
the performance benefit.
> 
> I think the fix is for user space to set SSBS in the child if it no
> longer needs it.
> 

Sorry for the late response on this.

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
