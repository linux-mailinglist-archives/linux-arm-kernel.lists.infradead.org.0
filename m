Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F491A78FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YkNuW9ebF1Xf1f9Au4NJysjfjD5Uz+bDFakL2CV7ddc=; b=cFjeSnUMzp+XgqmVhqlpOSsga
	6ScSse1/pMC5tIX3R9M298Kay7l6bjTvk8JnZq9mnXhC59a+9BEcZ0XgQMrOdHUl3ZILuw1pf+UE6
	LKvCy/2NzNOzeXQSHeB5SIyhU/oRLkZO2cd2Cs66PW4pXhhI6KNvBK7rSU+kH8mSN6EIvuqQnxMf1
	5+JY7tpO+6oFAVG4KqOx2wcrSL0feepLsn6GXyAXbL3DBQqS7xdl/ALZ9f5K7GPhjeEq8Z19HJ/N+
	vuKkH1SAzrjB7mZNvQsHqhMzPGWTfeIn7ps3yEV5nBgIwpNpMkva2i6vj1gAA9WYOf8Eg0JH1I7um
	5yQtWVdnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJGv-0003wI-Lw; Tue, 14 Apr 2020 10:58:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJGo-0003vx-Il
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:58:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 078C21FB;
 Tue, 14 Apr 2020 03:58:22 -0700 (PDT)
Received: from [10.57.26.12] (unknown [10.57.26.12])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F0403F6C4;
 Tue, 14 Apr 2020 03:58:18 -0700 (PDT)
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <72cc9678-1583-6282-b86f-d7963898488c@arm.com>
Date: Tue, 14 Apr 2020 16:28:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200414101649.GC1278@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_035822_663337_8AE1B353 
X-CRM114-Status: GOOD (  16.63  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

On 4/14/20 3:46 PM, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 11:00:33AM +0100, Will Deacon wrote:
>> On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
>>> Compilers are optimized to not store the stack frame record for the leaf
>>> function in the stack so applying pointer authentication in the leaf
>>> function is not useful from security point of view.
>>
>> I'm missing the reasoning here -- why don't we care about leaf functions?
>>
>> Sounds like there's a performance/security trade-off that needs spelling
>> out and justifying with some numbers, or is it clear-cut and I'm missing
>> something?
> 
> I believe this is because leaf functions don't store the LR to the stack
> (as they don't create a frame record), so it cannot be modified by a
> stray memory write.
> 
> Amit, if you create a leaf function like:
> 
> void leaf_function(void)
> {
> 	asm volatile("" : : : "x30");
> }
> 
> ... what assembly does the compiler generate when passed
> `-msign-return-address=non-leaf` ?

This is the assembly generated in this case,
       80:       d503233f        paciasp
       84:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
       88:       910003fd        mov     x29, sp
         asm volatile("" : : : "x30");
}
       8c:       a8c17bfd        ldp     x29, x30, [sp], #16
       90:       d50323bf        autiasp
       94:       d65f03c0        ret


> 
> * Does the compiler create a stack-frame for this function?
> * Where does the compiler spill x30?
> * Does the compiler sign the LR?

Yes here the compiler creates stack frame and pushes signed lr in the stack.
Probably this situation with x30 as clobber registers breaks this patch.

Cheers,
Amit

> 
> Thanks,
> Mark.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
