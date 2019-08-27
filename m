Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD919E1E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMhmWJ/BVVuWw9e/8OA3ch2K+QO+Hw0RQ+rXwuWmOGg=; b=Wd1Fzn/TvbSgN0
	Y0QXax1PlATMfy2MG1zNEbQRoIhLO0agvyJXz0x+Yiji4f3ujW1jwP8k8MP2oV0ksNgCfWIuARp1f
	s/hPs4DXWnDc7HCOYcSJTLf9or3UcInryOog0rSssbm/PD92jZVosE9wY6vJXIt7hzZk8DdBA3omC
	CBVOVJ42c8CNUHs+U98x3vtqoWozTW7MSJOCUGVqfPoOkzUII8Npsvct21WcBfSi9b4C0fDztMj1V
	S9fac/qLV2YxbxXfvFLTYIYWYLWDbfCz1pe912iw8AnDTrkqcpVZeR/6p0NFDOTqMeJdZQkPqUpXk
	xD5yl98VBRrQxQFLye5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2We4-0005ZA-D6; Tue, 27 Aug 2019 08:16:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Wdo-0005Xl-I4; Tue, 27 Aug 2019 08:15:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A82337;
 Tue, 27 Aug 2019 01:15:45 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 61C483F246; Tue, 27 Aug 2019 01:15:44 -0700 (PDT)
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
 <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
Date: Tue, 27 Aug 2019 09:15:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_011548_686193_D5C22C82 
X-CRM114-Status: GOOD (  22.41  )
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

On 26/08/2019 22:25, Pavel Tatashin wrote:
> On Mon, Aug 26, 2019 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>>
>> On Mon, 26 Aug 2019 15:00:50 -0400
>> Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>>
>>> Marc Zyngier added the support for kexec and GICv3 for EFI based systems.
>>> However, it is still not possible todo on systems with device trees.
>>>
>>> Here is EFI fixes from Marc:
>>> https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com
>>>
>>> For Device Tree variant: lets allow reserve a memory region in interrupt
>>> controller node, and use this property to allocate interrupt tables.
>>
>> There is no such thing as a "device tree variant". As long as your
>> bootloader implements EFI, everything will work correctly, whether
>> you're using DT, ACPI, or the anything else.
>>
>> This already works today, without any need to add anything to the
>> kernel (I have systems using EDK II and u-boot, both implementing EFI,
>> and I'm able to kexec without any issue). If your bootloader doesn't
>> support EFI, here's a good opportunity to implement it!
> 
> Hi Marc,
> 
> Thank you very much for looking at this work.
> 
> Running Linux without EFI is common, and there are scenarios which
> make it appropriate. As I understand most of embedded linux do not
> have EFI enabled, and thus I do not see a reason why we would not
> support a first class feature of Linux (kexec) on non-EFI bootloaders.

Define "most". All the arm64 systems I have around (and trust me, that's
quite a number of them) can either use u-boot, which has more than
enough EFI support to use this functionality, or use EDK-II natively.

> We (Microsoft) have a small highly secure device with a high uptime
> requirement. The device also has PCIe and thus GICv3. The update for

PCIe doesn't imply GICv3 at all.

> this device relies on kexec. For a number of reasons, it was decided
> to use U-Boot and Linux without EFI enabled. One of those reasons is
> to improve boot performance, enabling EFI in U-Boot alone reduces the
> boot performance by half a second. Our total reboot budget is under a
> second which makes that half a second unacceptable. Also, adding EFI
> support to kernel increases its size and there are security
> implications from enabling more code both in U-Boot and Linux.

You're are missing the point. kexec with EFI has 0 overhead (no
non-kernel EFI code gets executed), doesn't impact your time budget, and
only relies on a single in-memory table. This can be pretty trivially
provided by the dumbest EFI shim.

All you are describing above is a set of self imposed limitations in
your bootloader, which you are fully in control of. So instead of
reinventing a square wheel, I suggest you adopt the existing implementation.

Another reason not to do this is interoperability: I want to be able to
kexec whatever Linux kernel I want, without having to cope with all
flavours of the same functionality. Effectively, the EFI table is a
private ABI between two Linux kernels. We're not changing it.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
