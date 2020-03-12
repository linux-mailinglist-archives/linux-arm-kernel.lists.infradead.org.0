Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BF3183763
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:26:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6zDd/aCfud7yHgYRFRLton6d6fcihLsRKOh/bt/Y2I=; b=p2Vlw+BSGTSZdS
	FmwaYCeJp8z8dVMqcbJHMQ318wA7qko7Pnc08Zd59fPiCH5cWGPw6K7RpOZ7NMEN/CUhkzWRtGVtO
	JY6gkQY+r/zSpgByB1+4McRGbJGB8aU7s7RGXyksbdF4chITMSgAgD3qaTdKk8hlOxBLvegM1VCzU
	1iFB/ykExZt7LrlpouQUM5msx+8d6ibuJ7GXLGxJRC3FBd0Lx0fzr0Q8NFU9wagcnlkZcOzKIo7zw
	aqDgE4zfvT8c3B/NmTOzs4nNAX4xE5PxGGHIA6+nPjOF39fBpQ48T2P3mAwD/3YGWZLkHrCs+ss+t
	MJ6C4islFGEc2wEAZDMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRb8-0006Jp-C8; Thu, 12 Mar 2020 17:26:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRb2-0006JS-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:26:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D56A30E;
 Thu, 12 Mar 2020 10:26:10 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C107D3F6CF;
 Thu, 12 Mar 2020 10:26:08 -0700 (PDT)
Subject: Re: [PATCH v6 00/18] arm64: return address signing
To: Marc Zyngier <maz@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
 <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
 <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
 <b5ca043cfaca30435957974d0f58524e@kernel.org>
 <7ba381f0-095d-6994-bb6d-12b2665b4a8e@arm.com>
 <c5889c07a559426798ed508da5755d9e@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <bd76de32-12c5-fcbe-25d2-c501f9491bee@arm.com>
Date: Thu, 12 Mar 2020 17:26:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c5889c07a559426798ed508da5755d9e@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_102612_989689_F4633DBE 
X-CRM114-Status: GOOD (  18.56  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit, Marc,

On 12/03/2020 15:05, Marc Zyngier wrote:
> On 2020-03-12 13:21, Amit Kachhap wrote:
>> On 3/12/20 6:17 PM, Marc Zyngier wrote:
>>> On 2020-03-12 08:06, Amit Kachhap wrote:
>>>> On 3/12/20 12:23 PM, Amit Kachhap wrote:
>>>>> On 3/11/20 2:58 PM, James Morse wrote:
>>>>>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>>>>>> This series improves function return address protection for the arm64 kernel, by
>>>>>>> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
>>>>>>> ptrauth hereafter). This should help protect the kernel against attacks using
>>>>>>> return-oriented programming.
>>>>>>
>>>>>> (as it looks like there may be another version of this:)
>>>>>>
>>>>>> Am I right in thinking that after your patch 10 changing
>>>>>> cpu_switch_to(), only the A key is live during kernel execution?
>>>>>
>>>>> Yes

>>>>>> KVM is still save/restoring 4 extra keys around guest-entry/exit. As you
>>>>>> restore all the keys on return to user-space, is this still necessary?
>>>>>
>>>>> Yes Its a good optimization to skip 4 non-A keys. I was wondering whether to do it in
>>>>> this series or send it separately.
>>>>
>>>> I suppose we can only skip non-A keys save/restore for host context. If
>>>> we skip non-A keys for guest context then guest with old implementation
>>>> will break. Let me know your opinion.
>>>
>>> I don't think you can skip anything as far as the guest is concerned.
>>> But being able to skip the B keys (which is what I expect you call the
>>> non-A keys) on the host would certainly be useful.

> But if KVM doesn't save/restore the host's B-keys in the world switch,
> then you must make sure that no host userspace can make use of them,
> as they would be the guest's keys.

Yes, the arch code entry.S changes cover this with ptrauth_keys_install_user. It restores
4 keys, and the generic key.


We always need to save/restore all the guest keys (as we do today).
But when ptrauth_restore_state restores the host keys, it only needs to restore the one
the kernel uses. (possibly using the same macro's so it stays up to date?!)

If we return to user-space, the arch code's entry code does the right thing.
KVM's user-space peeking at the keys will see the saved values.


My original question was more around: do we need to do this now, or can we clean it up in
a later kernel version?

(and a sanity check that it doesn't lead to a correctness problem)



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
