Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8069E410
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1EHwK7g1HE8jPuYDUSEJXTywcdg2aeyBg/3CobBrmc=; b=RFILxJTEgQiGHh
	eAh8nylRSLLfG5g3BrdWwLFk1kB7hcS3zVodwfkGmvBDEG0uKqoDs/SftHyjbSJtKoIC/9Gp7R2A1
	ZO/+Tg4Awx7zzlm96tNTrkoyr3Q8+cbIq6XX/D3rNP70fPsE87fm8I4MVSKhHhUdBbDLpv2NiTfg7
	KXLQIN0mquYRvWJuYJcH2/KyvDK/u/BuAc7R3+zz7oRUNZ/ZlZ3dH+A1IsVYs7frpFJNfhXTuJum7
	uWRaF0Ecpg7QowsmYEq9IJMzIMO7skalGpwfZ+IcoztFT6nYni7ua52cJH3T6bCwc8z2BuEGwDHGZ
	VZ61QIRvkjP7gM4JFgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XiJ-0001wN-Uu; Tue, 27 Aug 2019 09:24:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Xhz-0001ur-N7; Tue, 27 Aug 2019 09:24:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FFB3337;
 Tue, 27 Aug 2019 02:24:10 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 508D93F718; Tue, 27 Aug 2019 02:24:09 -0700 (PDT)
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
 <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
 <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
 <CA+CK2bAk4Xb_hxh2KLxWKa8ogM-jO1MpREmc02TmUMpdJ2ZbSA@mail.gmail.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <86282c48-bc69-f745-92c2-9df2b92ad6bd@kernel.org>
Date: Tue, 27 Aug 2019 10:24:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAk4Xb_hxh2KLxWKa8ogM-jO1MpREmc02TmUMpdJ2ZbSA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_022411_842975_B5EE5D92 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/08/2019 09:53, Pavel Tatashin wrote:
>>> Running Linux without EFI is common, and there are scenarios which
>>> make it appropriate. As I understand most of embedded linux do not
>>> have EFI enabled, and thus I do not see a reason why we would not
>>> support a first class feature of Linux (kexec) on non-EFI bootloaders.
>>
>> Define "most". All the arm64 systems I have around (and trust me, that's
>> quite a number of them) can either use u-boot, which has more than
>> enough EFI support to use this functionality, or use EDK-II natively.
> 
> OK. Is this the most common configuration in the embedded ARM64
> devices currently deployed: phones, cameras, consoles, players, etc?

Which one of these has kexec as a requirement?

>>> We (Microsoft) have a small highly secure device with a high uptime
>>> requirement. The device also has PCIe and thus GICv3. The update for
>>
>> PCIe doesn't imply GICv3 at all.
> 
> My impression was that without PCIe GICv3 is rarely used, and this
> could be the reason why this problem is not seen outside of larger
> machines which normally have EFI enabled.

Wong impression. All the combinations exist and are wildly deployed.

>>> this device relies on kexec. For a number of reasons, it was decided
>>> to use U-Boot and Linux without EFI enabled. One of those reasons is
>>> to improve boot performance, enabling EFI in U-Boot alone reduces the
>>> boot performance by half a second. Our total reboot budget is under a
>>> second which makes that half a second unacceptable. Also, adding EFI
>>> support to kernel increases its size and there are security
>>> implications from enabling more code both in U-Boot and Linux.
>>
>> You're are missing the point. kexec with EFI has 0 overhead (no
>> non-kernel EFI code gets executed), doesn't impact your time budget, and
>> only relies on a single in-memory table. This can be pretty trivially
>> provided by the dumbest EFI shim.
> 
> Thanks, this makes sense that the Linux boot time won't be affected. I
> have not tested how u-boot was affected, but was told 0.5 second
> longer to start.

So you haven't even tried? :-(

> 
>> All you are describing above is a set of self imposed limitations in
>> your bootloader, which you are fully in control of. So instead of
>> reinventing a square wheel, I suggest you adopt the existing implementation.
> 
> I am not sure this analogy is correct, I do not think that non-EFI
> enabled kernels became legacy.

non-EFI systems always had reduced functionality, such as not being able
to use runtime services.

> 
>> Another reason not to do this is interoperability: I want to be able to
>> kexec whatever Linux kernel I want, without having to cope with all
>> flavours of the same functionality. Effectively, the EFI table is a
>> private ABI between two Linux kernels. We're not changing it.
> 
> This is exactly the problem: by having this region defined in signed
> DTB file we reduce the amount of communication between the kernels.
> Passing modified EFI Table causes us to pass more information from the
> first kernel indefinitely through updates. Thus, increases a chance
> for a security compromise.

Nothing says that it has to be modified. For what it's worth, you could
perform the allocation in your bootloader once and for all, configure
the GIC redistributors and enable LPIs there, and pass the EFI
reservation to the first kernel. The security argument is a fallacy.

> We are not changing EFI ABI between
> kernels, it will stay as is. All this code does is enables kernels
> that do not have EFI table communication between them a way to do
> kexec updates with reduced amount of data exchange.

And to do that, you're adding yet another ABI we have to support, and
creating havoc in the kexec chain (kernel 1 knows about the DT hack,
kernel 2 doesn't, panic follows). My answer to this is *no*. We already
have a flexible interface that allows you to do what you want, and I'm
not adding another one.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
