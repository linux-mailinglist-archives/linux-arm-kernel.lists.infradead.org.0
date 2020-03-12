Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD4D182957
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 07:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uyhQIkuPWgkUBL7Y1AC4C5h0XMabjPSwhWxaZ3nbajQ=; b=bNYl5ui8G2qef0G4fjwhPauvl
	2brQlG94mseSxWGutcdisoiW8ggWOp5Ix3FH4UaJu6lxSWA5IUxz7fY1KYW+rIlSCgISu4EOWFcVv
	zJjNCfOGVHx8xMSfnAe+I6xZc/F5h3AgF7On5GyICvqxXZA88sOJad4EIZ7KOutSe8wqDkoj4PtSb
	F8FS6RZ7acffs8VuBQzN+yq8XGRH+IBoqovDywxmEXXoD0dCh3FkPnpp09IqjVc9xcfnSpj21DRrW
	40VjG4DUlETG0xZUMDTyUAzaoZaGXv4w62LTQWirsGxU721ub9xBkX7++QOh7BXHekJF87dYJsqRJ
	pe9gS4g1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHih-0004np-Jn; Thu, 12 Mar 2020 06:53:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHiZ-0004n1-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 06:53:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD3CA30E;
 Wed, 11 Mar 2020 23:53:14 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADAC33F534;
 Wed, 11 Mar 2020 23:57:09 -0700 (PDT)
Subject: Re: [PATCH v6 00/18] arm64: return address signing
To: James Morse <james.morse@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
Date: Thu, 12 Mar 2020 12:23:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_235319_451753_BD6D412C 
X-CRM114-Status: GOOD (  15.81  )
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

On 3/11/20 2:58 PM, James Morse wrote:
> Hi Amit,
> 
> (CC: +Marc)
> 
> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>> This series improves function return address protection for the arm64 kernel, by
>> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
>> ptrauth hereafter). This should help protect the kernel against attacks using
>> return-oriented programming.
> 
> (as it looks like there may be another version of this:)
> 
> Am I right in thinking that after your patch 10 changing
> cpu_switch_to(), only the A key is live during kernel execution?

Yes

> 
> KVM is still save/restoring 4 extra keys around guest-entry/exit. As you
> restore all the keys on return to user-space, is this still necessary?

Yes Its a good optimization to skip 4 non-A keys. I was wondering 
whether to do it in this series or send it separately.

Cheers,
Amit Daniel

> 
> (insert cross-tree headache here)
> 
> 
> Thanks,
> 
> James
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
