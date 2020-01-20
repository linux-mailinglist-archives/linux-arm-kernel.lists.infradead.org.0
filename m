Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06D1421A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 03:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J7oRe7QWeox5rqJdUYtMSWvcccxa2TJFW6kPU64QHqE=; b=StVM1Cvb8L8UbaYx8lqMBk6mD
	UgLAHT5X66DIvB5Tvftp881FaiVKip9XLseqUooHjWjpUVjcdlJCamPzhDn9cnUhsE0a4mNkwmt/4
	HlDLzXj3GaUePQezLOjRImMZGmYubTlpwI18lAtZhTAt3gq0PBOoupK9wd9/cMgH/icpHGiSNUYK4
	0jJ962we3GJXGyInXiWMqCo8z87xbtT6K618f452y/PzMLENkgCvBhVghCLcnl/vkx/x+0J1iOY+S
	1+lCWd69nUU2XSAJOw69xVIEZwday/q5jctNh57Ls0lgoLMk7yyGXGL1c/y2+cvg/Kd/pCyBMcGs4
	5pVFzIsmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itN6C-0000zk-0A; Mon, 20 Jan 2020 02:47:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itN65-0000zF-3L
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 02:47:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579488444; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=VMIU6qr3Wgt3xkflneQ7e/aD1ybOQyncDm4GEzhwaY8=;
 b=c2P7nNmUVb18ocIFU7G/zhmKwKhvbr98DoTkjsoXyPOea4fSY4j50ewmDIYs7YMEfjk6juYY
 8nNkInEKbhXGbx9g2Z7tUiFNnHQQiwUwP+k2JcuVj/1/5b/0NNlK1R1On3mbCOdR0rX9/Nd+
 7jnYiGj5DNbMk6XlJyEIPDLMJRo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2514b8.7ff5c365a928-smtp-out-n01;
 Mon, 20 Jan 2020 02:47:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9EAFAC433CB; Mon, 20 Jan 2020 02:47:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9620CC43383;
 Mon, 20 Jan 2020 02:47:17 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 08:17:17 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 catalin.marinas@arm.com
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
In-Reply-To: <20191011135431.GB33537@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <20191011143343.541da66c@why>
 <20191011135431.GB33537@lakrids.cambridge.arm.com>
Message-ID: <a6987e0c5a1c986a962fec282dac690d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_184725_205592_8460A0A9 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: Douglas Anderson <dianders@chromium.org>, suzuki.poulose@arm.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, bjorn.andersson@linaro.org, andrew.murray@arm.com,
 Stephen Boyd <swboyd@chromium.org>, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2019-10-11 19:24, Mark Rutland wrote:
> On Fri, Oct 11, 2019 at 02:33:43PM +0100, Marc Zyngier wrote:
>> On Fri, 11 Oct 2019 11:50:11 +0100
>> Mark Rutland <mark.rutland@arm.com> wrote:
>> 
>> > Hi,
>> >
>> > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
>> > > On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
>> > > warnings are observed during bootup of big cpu cores.
>> >
>> > For reference, which CPUs are in those SoCs?
>> >
>> > > SM8150:
>> > >
>> > > [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
>> > > SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112
>> >
>> > The differing fields are EL3, EL2, and EL1: the boot CPU supports
>> > AArch64 and AArch32 at those exception levels, while the secondary only
>> > supports AArch64.
>> >
>> > Do we handle this variation in KVM?
>> 
>> We do, at least at vcpu creation time (see kvm_reset_vcpu). But if one
>> of the !AArch32 CPU comes in late in the game (after we've started a
>> guest), all bets are off (we'll schedule the 32bit guest on that CPU,
>> enter the guest, immediately take an Illegal Exception Return, and
>> return to userspace with KVM_EXIT_FAIL_ENTRY).
> 
> Ouch. We certainly can't remove the warning untill we deal with that
> somehow, then.
> 
>> Not sure we could do better, given the HW. My preference would be to
>> fail these CPUs if they aren't present at boot time.
> 
> I agree; I think we need logic to check the ID register fields against
> their EXACT, {LOWER,HIGHER}_SAFE, etc rules regardless of whether we
> have an associated cap. That can then abort a late onlining of a CPU
> which violates those rules w.r.t. the finalised system value.
> 
> I suspect that we may want to split the notion of
> safe-for-{user,kernel-guest} in the feature tables, as if nothing else
> it will force us to consider those cases separately when adding new
> stuff.
> 

I can help with testing these if you have any sample patches.

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
