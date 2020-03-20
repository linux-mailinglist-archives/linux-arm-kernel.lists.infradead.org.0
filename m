Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCEC18C9F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG8DkuKWc30oqhoIzNcFf14nwOB/6wu5AyqYeoOVqUA=; b=VgQsuUuqfG24ab
	DA9LxURZCc+kpzNyr+lNLFTVXipipLCz87E/5VGcVmoBkL0Y/vzb8iHUpVoDgduJXn5wZtD1v2Qju
	ODaRsrOFmqQgyQE62iKLFzgoFOqZ2v2e8uhzgkanZTr1WZTFnBbVomQNm4nHnL9T7tXFb3bd/7ARI
	a2R8nbvJJolAM0jIjfuKD4GTYFjuPPUP8B5Opu4cV8+MK4gBXsDOc8d2a98o7+otrTPHq5iBMbn7S
	epTKJ7dOITmZtWciXSsUaJ7rnXrAE8QpVqe9Ns4M25luqcjQjXS1+FZr1GPZBwFxBblKcioSk9tcY
	Ox+pbx1feJLmzpmBMnIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDkL-0001TE-De; Fri, 20 Mar 2020 09:15:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDjx-0000ae-O0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:14:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F326830E;
 Fri, 20 Mar 2020 02:14:50 -0700 (PDT)
Received: from [192.168.0.106] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB82B3F305;
 Fri, 20 Mar 2020 02:14:49 -0700 (PDT)
Subject: Re: [PATCH kvmtool v3] Add emulation for CFI compatible flash memory
To: Will Deacon <will@kernel.org>, Andre Przywara <andre.przywara@arm.com>
References: <20200221165532.90618-1-andre.przywara@arm.com>
 <20200318215847.GC8477@willie-the-truck>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <1a9578a8-8907-94f6-0f8f-ad8ff08b5028@arm.com>
Date: Fri, 20 Mar 2020 09:15:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318215847.GC8477@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021453_825838_A6066358 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Sami Mujawar <sami.mujawar@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 3/18/20 9:58 PM, Will Deacon wrote:

> On Fri, Feb 21, 2020 at 04:55:32PM +0000, Andre Przywara wrote:
>> From: Raphael Gault <raphael.gault@arm.com>
>>
>> The EDK II UEFI firmware implementation requires some storage for the EFI
>> variables, which is typically some flash storage.
>> Since this is already supported on the EDK II side, we add a CFI flash
>> emulation to kvmtool.
>> This is backed by a file, specified via the --flash or -F command line
>> option. Any flash writes done by the guest will immediately be reflected
>> into this file (kvmtool mmap's the file).
>> The flash will be limited to the nearest power-of-2 size, so only the
>> first 2 MB of a 3 MB file will be used.
>>
>> This implements a CFI flash using the "Intel/Sharp extended command
>> set", as specified in:
>> - JEDEC JESD68.01
>> - JEDEC JEP137B
>> - Intel Application Note 646
>> Some gaps in those specs have been filled by looking at real devices and
>> other implementations (QEMU, Linux kernel driver).
>>
>> At the moment this relies on DT to advertise the base address of the
>> flash memory (mapped into the MMIO address space) and is only enabled
>> for ARM/ARM64. The emulation itself is architecture agnostic, though.
>>
>> This is one missing piece toward a working UEFI boot with kvmtool on
>> ARM guests, the other is to provide writable PCI BARs, which is WIP.
>>
>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>> [Andre: rewriting and fixing]
>> Signed-off-by: Andre Przywra <andre.przywara@arm.com>
>> ---
>> Hi,
>>
>> an update fixing Alexandru's review comments (many thanks for those!)
>> The biggest change code-wise is the split of the MMIO handler into three
>> different functions. Another significant change is the rounding *down* of
>> the present flash file size to the nearest power-of-two, to match flash
>> hardware chips and Linux' expectations.
> Alexandru -- are you happy with this now?

I really appreciate taking the time to look at it, but at the moment I'm busy
testing v3 of the reassignable BARs and PCIE support [1]. I'll try to send the
patches as soon as possible, then I'll review this patch.

[1] https://www.spinics.net/lists/kvm/msg204878.html

Thanks,
Alex
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
