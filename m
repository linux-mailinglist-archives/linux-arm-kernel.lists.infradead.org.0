Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633F7182A77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 09:06:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hJh2j+Bsb9Bvg7WfBGcI7kR1zFE1j1/UjBOtEUVdVyA=; b=uj/HBCQFuzvhF3RcnmUHF9rFw
	0bZsKw1z7u0RGip6dKV2RIOcvJBaRKjv1ezMHLah6AgOk3JtqFFVV+GL5I+apJOXWpaGsQwpooPXY
	FkygwcVcZzwjuqAARXIvsBJJuu3zjMNDOc26kTY4+nSzw4CJu5KNMdhl3Arcq41ESi5Hcm1Dzevdn
	JqA/hXlZ3zlF8i2bK0Exc4lxjvbOyJiTkwzuhGxO+bEeccQjngn4aXJSY7XxLSRc/Vy+QlZXcIr7/
	DSxONiAhLaG9LNbAlv4q/MgpDnLNUmeklRyCOVhAUhYO2tLFiPhiQtP50IXsskeOhmthUV+QzoVKz
	CrVvR9ohg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIrO-0000C2-6H; Thu, 12 Mar 2020 08:06:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIrE-0000BD-Lu
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 08:06:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80B1F30E;
 Thu, 12 Mar 2020 01:06:18 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8AE83F534;
 Thu, 12 Mar 2020 01:06:14 -0700 (PDT)
Subject: Re: [PATCH v6 00/18] arm64: return address signing
From: Amit Kachhap <amit.kachhap@arm.com>
To: James Morse <james.morse@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
 <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
Message-ID: <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
Date: Thu, 12 Mar 2020 13:36:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_010620_760657_022F3D21 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kees Cook <keescook@chromium.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 3/12/20 12:23 PM, Amit Kachhap wrote:
> Hi James,
> 
> On 3/11/20 2:58 PM, James Morse wrote:
>> Hi Amit,
>>
>> (CC: +Marc)
>>
>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>> This series improves function return address protection for the arm64 
>>> kernel, by
>>> compiling the kernel with ARMv8.3 Pointer Authentication instructions 
>>> (referred
>>> ptrauth hereafter). This should help protect the kernel against 
>>> attacks using
>>> return-oriented programming.
>>
>> (as it looks like there may be another version of this:)
>>
>> Am I right in thinking that after your patch 10 changing
>> cpu_switch_to(), only the A key is live during kernel execution?
> 
> Yes
> 
>>
>> KVM is still save/restoring 4 extra keys around guest-entry/exit. As you
>> restore all the keys on return to user-space, is this still necessary?
> 
> Yes Its a good optimization to skip 4 non-A keys. I was wondering 
> whether to do it in this series or send it separately.

I suppose we can only skip non-A keys save/restore for host context. If
we skip non-A keys for guest context then guest with old implementation
will break. Let me know your opinion.

//Amit
> 
> Cheers,
> Amit Daniel
> 
>>
>> (insert cross-tree headache here)
>>
>>
>> Thanks,
>>
>> James
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
