Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAEBD40E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ihj3RR2cQFwKNSPMKD+cHDk+jVp6r0ErAgWqetpbSR4=; b=fGqelCnPhANhOLRvh2/HYtK1F
	UdZ6C+cIBuOH17+Jphk29e3y5cOY6fBvOjJZgCEx5W5g32gaw6O7azPd8iD1yY/HbG1HwOethJJ2u
	NQXOXHbKxWx8Ms+6S5kaZza9U0NyNAduHAbM2xi0Og3jEUNODf45I6F2Rn5vuQVfG7pbPPO2tUwB0
	JG7Ej5VCOXgYOpXZLXSGQ4nX06LGiL035e2Zdo+q0jTvWynwWRf7CmXOdJS2RvU72/NKuCq1IrbEs
	ktQy/zrAKCpVhA0m98v8fZggzdIpUecq6PUO8qJQDkw18J6syzRtak/RZZvYAcl8b3nQD8QOKPE83
	Bz+8AfAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuny-0007Wx-28; Fri, 11 Oct 2019 13:18:02 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIunh-0007WE-BF; Fri, 11 Oct 2019 13:17:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DB36361A77; Fri, 11 Oct 2019 13:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570799864;
 bh=ApcidzUpaRnePiIu2HzOkqsyS7w6fPauS8WsJ34U4WE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GV4vk4R3opnvjFafz4HVpuYfdP6l2CbY96iUGy1FEqpRbsyPHN+mKQ30L/yQC814e
 pALgMsm1OLh7oOPcgqV43/b47p1Wkm7IHz4ppq8cI9lOChGVQ9R0ecmYJHb91xDpWg
 PojnFzxyuUEggn5jBE3RK+85HhuiuoB07cLbuvPg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id D8CC660CEC;
 Fri, 11 Oct 2019 13:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570799860;
 bh=ApcidzUpaRnePiIu2HzOkqsyS7w6fPauS8WsJ34U4WE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KI/k2pT/FxwgM6kFOq8NKcpwtXVF4QTFXdOFrFwDDNaimvmq+jb+a3dEkoLHuAIhM
 hJuNn/FrDmusw94bBcaz3vmC4NYU5LbAdM0ulx1/scyki9pvdZMoCTUZkqHemy1oZF
 RhSoQ+CpMrXAPyNX4TNi4hnQoaqgTSmcvmV+s7Yo=
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 18:47:39 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
In-Reply-To: <20191011105010.GA29364@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
X-Priority: 1 (Highest)
Message-ID: <7910f428bd96834c15fb56262f3c10f8@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061745_432756_55A95E93 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: rnayak@codeaurora.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thanks a lot for the detailed explanations, I did have a look at all the 
variations before posting this.

On 2019-10-11 16:20, Mark Rutland wrote:
> Hi,
> 
> On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
>> On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
>> warnings are observed during bootup of big cpu cores.
> 
> For reference, which CPUs are in those SoCs?
> 

SM8150 is based on Cortex-A55(little cores) and Cortex-A76(big cores). 
I'm afraid I cannot give details about SC7180 yet.

>> SM8150:
>> 
>> [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 
>> 0x00000011111112
> 
> The differing fields are EL3, EL2, and EL1: the boot CPU supports
> AArch64 and AArch32 at those exception levels, while the secondary only
> supports AArch64.
> 
> Do we handle this variation in KVM?

We do not support KVM.

> 
>> [    0.271184] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU4: 0x00000000010142
> 
> The differing field is (AArch32) SMC: present on the boot CPU, but
> missing on the secondary CPU.
> 
> This is mandated to be zero when AArch32 isn' implemented at EL1.
> 

So this need not be strict?

>> [    0.271189] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU4: 0x00000010010000
> 
> The differing fields are (AArch32) Virtualization, Security, and
> ProgMod: all present on the boot CPU, but missing on the secondary
> CPU.
> 
> All mandated to be zero when AArch32 isn' implemented at EL1.
> 

Same here, this need not be strict?

>> SC7180:
>> 
>> [    0.812770] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_CTR_EL0. Boot CPU: 0x00000084448004, CPU6: 0x0000009444c004
> 
> The differing fields are:
> 
> * IDC: present only on the secondary CPU. This is a worrying mismatch
>   because it could mean that required cache maintenance is missed in
>   some cases. Does the secondary CPU definitely broadcast PoU
>   maintenance to the boot CPU that requires it?
> 

I will get some more details from internal cpu team about this one.

> * L1Ip: VIPT on the boot CPU, PIPT on the secondary CPU.
> 
>> [    0.812838] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_AA64MMFR2_EL1. Boot CPU: 0x00000000001011, CPU6: 
>> 0x00000000000011
> 
> The differing field is IESB: presend on the boot CPU, missing on the
> secondary CPU.
> 
>> [    0.812876] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU6:
> 0x1100000011111112
>> [    0.812924] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU6: 0x00000000010142
>> [    0.812950] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_PFR0_EL1. Boot CPU: 0x00000010000131, CPU6: 0x00000010010131
>> [    0.812977] CPU features: SANITY CHECK: Unexpected variation in
>> SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU6: 0x00000010010000
> 
> These are the same story as for SM8150.
> 
>> Can we relax some sanity checking for these by making it FTR_NONSTRICT
> or by
>> some other means? I just tried below roughly for SM8150 but I guess 
>> this
> is
>> not correct,
>> maybe for ftr_generic_32bits we should be checking bootcpu and nonboot
> cpu
>> partnum(to identify big.LITTLE) and then make it nonstrict?
>> These are all my wild assumptions, please correct me if I am wrong.
> 
> Before we make any changes, we need to check whether we do actually
> handle this variation in a safe way, and we need to consider what this
> means w.r.t. late CPU hotplug.
> 
> Even if we can handle variation at boot time, once we've determined the
> set of system-wide features we cannot allow those to regress, and I
> believe we'll need new code to enforce that. I don't think it's
> sufficient to mark these as NONSTRICT, though we might do that with
> other changes.
> 
> We shouldn't look at the part number at all here. We care about
> variation across CPUs regardless of whether this is big.LITTLE or some
> variation in tie-offs, etc.
> 

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
