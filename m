Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7FECC042
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MpWJsJDTvje00BCMPcKObzGTMHz0vGyxaBx8Dh1KyM=; b=m5BV6TOXO3bzfA
	lvQxGNTfjevSYB1WtsGLKy5ZvP4F/6evI7qg4qgMwgZLwyFmXuP4iiKdF85m8W7mqtXA1HL1yQyDj
	i8iuY7z/M74VKcE59D6U9VIrujx/jkBt//TQEswhwos2VFvX2g5QzN24pO1EISyPLkHhBnBLw0yJu
	m79536dEAJb0YKN/Jg/SJ/a5PCrqm8aEML469up0xzsIwEXPmQiXzdhV3sL4hcCuD+chqcyDpcuIy
	TMUdtgOcgmFh9FmZ7pXbrqqwnNJxkAjNygCfh0v/8WeN9V0tkX/6gxpuXnb5ttiFCVo3apkYmSmUs
	ahjI23OkpPxvfCNVA5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ9L-0007IS-Rd; Fri, 04 Oct 2019 16:09:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ98-0007I8-Ck
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:09:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D354E1597;
 Fri,  4 Oct 2019 09:09:33 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 126DD3F68E;
 Fri,  4 Oct 2019 09:09:32 -0700 (PDT)
Subject: Re: [PATCH 6/8] arm64: entry: convert el0_sync to C
To: Mark Rutland <mark.rutland@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-7-james.morse@arm.com>
 <20191004125746.GE34756@lakrids.cambridge.arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b2a62a69-a82a-90ba-9546-1392ca37a3c2@arm.com>
Date: Fri, 4 Oct 2019 17:09:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004125746.GE34756@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090934_479346_2EC8CA06 
X-CRM114-Status: GOOD (  14.64  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 04/10/2019 13:57, Mark Rutland wrote:
> On Thu, Oct 03, 2019 at 06:16:40PM +0100, James Morse wrote:
>> From: Mark Rutland <mark.rutland@arm.com>
>>
>> This is largely a 1-1 conversion of asm to C, with a couple of caveats.
>>
>> The el0_sync{_compat} switches explicitly handle all the EL0 debug
>> cases, so el0_dbg doesn't have to try to bail out for unexpected EL1
>> debug ESR values. This also means that an unexpected vector catch from
>> AArch32 is routed to el0_inv.
>>
>> We *could* merge the native and compat switches, which would make the
>> diffstat negative, but I've tried to stay as close to the existing
>> assembly as possible for the moment.

>> +static void notrace el0_dbg(struct pt_regs *regs, unsigned long esr)
>> +{
>> +	unsigned long addr_if_watchpoint = read_sysreg(far_el1);
>> +
>> +	if (system_uses_irq_prio_masking())
>> +		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
>> +
>> +	user_exit_irqoff();
>> +	do_debug_exception(addr_if_watchpoint, esr, regs);
>> +	local_daif_restore(DAIF_PROCCTX_NOIRQ);
>> +}
>> +NOKPROBE_SYMBOL(el0_dbg);
> 
> I think that it'd be best to stick with 'far' here, and only have the
> 'addr_if_watchpoint' name within do_debug_exception(), where it used to
> be 'addr'. That way all of this code consistently uses 'far'.

I'm nervous reading junk into a variable called 'far'... someone might assume its an address.

Of the exceptions that come through here, FAR_EL1 is only written by the CPU for a
watchpoint, for all the others its UNKNOWN.


> Otherwise this all looks good to me:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>

I'll leave this for now, let me know if my paranoia needs re-tuning!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
