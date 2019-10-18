Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82A7DBE39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 09:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l1CfjfUc4CRf7IVQmhCyELsnkMPCHlJfIxtRe8VTf3s=; b=NyLTIsVwG0DIKktZrI1ymYKrJ
	eMSXjNzIDLAFfAjg10w8XEdr+v9jZZsTBR4I2Dqi+MrOLpTbvH5kMYer0lyBGy8L9A1xH3MZJuRKa
	DHBrkzzFIoYpEyHT70oBi2u4qYgwlggGUdvbWH73xGPKRdlX8kzYUY0cUgZrhuaBy2dvqz5LJTtGi
	NaVNZGpWLbJf4rRTau4giSrW3qpWbTa/Pm5XyhoazEUy9G7cX/T8YmTTcrrrx3zS5ISYNNLHsXzJn
	e/Hw9M5N1iPtwwsvL353V4sY0JJuz6cZjzW46YXO/lQMn0Qu5YIJ01qrbmqbdfyORky0cni328R3A
	mq+2o/Vtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLMZV-0006dP-4Q; Fri, 18 Oct 2019 07:21:13 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLMZL-0006cY-Go; Fri, 18 Oct 2019 07:21:05 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iLMZE-0002Pk-F0; Fri, 18 Oct 2019 09:20:56 +0200
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 18 Oct 2019 08:20:56 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <7910f428bd96834c15fb56262f3c10f8@codeaurora.org>
 <20191011143442.515659f4@why>
 <ac7599b30461d6a814e4f36d68bba6c2@codeaurora.org>
 <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
Message-ID: <c9285391dbbe936d3f242bdd0d226b93@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: swboyd@chromium.org, saiprakash.ranjan@codeaurora.org,
 mark.rutland@arm.com, rnayak@codeaurora.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-arm-kernel-bounces@lists.infradead.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, marc.w.gonzalez@free.fr
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_002103_712490_0F5902A3 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, rnayak@codeaurora.org,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-17 21:00, Stephen Boyd wrote:
> Quoting Sai Prakash Ranjan (2019-10-11 06:40:13)
>> On 2019-10-11 19:04, Marc Zyngier wrote:
>> > On Fri, 11 Oct 2019 18:47:39 +0530
>> > Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org> wrote:
>> >
>> >> Hi Mark,
>> >>
>> >> Thanks a lot for the detailed explanations, I did have a look at 
>> all
>> >> the variations before posting this.
>> >>
>> >> On 2019-10-11 16:20, Mark Rutland wrote:
>> >> > Hi,
>> >> >
>> >> > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan 
>> wrote:
>> >> >> On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE 
>> arch, below
>> >> >> warnings are observed during bootup of big cpu cores.
>> >> >
>> >> > For reference, which CPUs are in those SoCs?
>> >> >
>> >>
>> >> SM8150 is based on Cortex-A55(little cores) and Cortex-A76(big 
>> cores).
>> >> I'm afraid I cannot give details about SC7180 yet.
>> >>
>> >> >> SM8150:
>> >> >> >> [    0.271177] CPU features: SANITY CHECK: Unexpected 
>> variation in
>> >> >> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: >> 
>> 0x00000011111112
>> >> >
>> >> > The differing fields are EL3, EL2, and EL1: the boot CPU 
>> supports
>> >> > AArch64 and AArch32 at those exception levels, while the 
>> secondary only
>> >> > supports AArch64.
>> >> >
>> >> > Do we handle this variation in KVM?
>> >>
>> >> We do not support KVM.
>> >
>> > Mainline does. You don't get to pick and choose what is supported 
>> or
>> > not.
>> >
>>
>> Ok thats good.
>>
>
> I want KVM on sc7180. How do I get it? Is something going to not 
> work?

If this SoC is anythinig like SM8150, 32bit guests will be hit and 
miss,
depending on the CPU your guest runs on, or is migrated to. We need to
either drop capabilities from the 32bit-capable CPU, or prevent the
non-32bit capable CPU from booting if a 32bit guest has been started.

You just have to hope that the kernel is entered at EL2, and that QC's
"value add" has been moved somewhere else...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
