Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571B2179BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 14:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AntwtAUSCs2zLag/Aqec0jg2WX6zXM4WDQDHb9929WU=; b=h48vuanMXRO2LUNk8GmsAZdK3
	LW56+mRQI/oKRXjzw7r0NPmRcCEBfKKBKkS4t8uNQH2UGowZ0x6fJJl0hIXfG2OGnncsCbmqtzviS
	JYLTEQpDBlBzZ0vPW5eCWz4nCQDqcrdGngevuGpC75v98YkTGCXuDiZKWk6K2Vzlmy3fmGOA+nRBI
	wuLNM0Y8F/ytK2oetCzY5iNZM65CeTUe93GgoG2NN7w4t+icOcoHn51aMoDg+ePHcPXGOMLnlY5tM
	/YKOgSDHhW7S2oJouypeD59cc9q7xaAzrDfoqeD5ha5ZGeS9qo7BxlFEwlvlXnUJOfzwFsheF/VTE
	RmyMSd/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOM21-0003r0-8L; Wed, 08 May 2019 12:50:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOM1t-0003qK-Fd
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 12:50:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6F5380D;
 Wed,  8 May 2019 05:50:33 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2459A3F575;
 Wed,  8 May 2019 05:50:30 -0700 (PDT)
Subject: Re: [Question] Memory hotplug clarification for Qemu ARM/virt
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, linux-mm <linux-mm@kvack.org>
References: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
Date: Wed, 8 May 2019 13:50:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_055037_536781_2BC80550 
X-CRM114-Status: GOOD (  29.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "peter.maydell@linaro.org" <peter.maydell@linaro.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "qemu-devel@nongnu.org" <qemu-devel@nongnu.org>,
 Linuxarm <linuxarm@huawei.com>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "qemu-arm@nongnu.org" <qemu-arm@nongnu.org>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Igor Mammedov <imammedo@redhat.com>, Laszlo Ersek <lersek@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 08/05/2019 11:15, Shameerali Kolothum Thodi wrote:
> Hi,
> 
> This series here[0] attempts to add support for PCDIMM in QEMU for
> ARM/Virt platform and has stumbled upon an issue as it is not clear(at least
> from Qemu/EDK2 point of view) how in physical world the hotpluggable
> memory is handled by kernel.
> 
> The proposed implementation in Qemu, builds the SRAT and DSDT parts
> and uses GED device to trigger the hotplug. This works fine.
> 
> But when we added the DT node corresponding to the PCDIMM(cold plug
> scenario), we noticed that Guest kernel see this memory during early boot
> even if we are booting with ACPI. Because of this, hotpluggable memory
> may end up in zone normal and make it non-hot-un-pluggable even if Guest
> boots with ACPI.
> 
> Further discussions[1] revealed that, EDK2 UEFI has no means to interpret the
> ACPI content from Qemu(this is designed to do so) and uses DT info to
> build the GetMemoryMap(). To solve this, introduced "hotpluggable" property
> to DT memory node(patches #7 & #8 from [0]) so that UEFI can differentiate
> the nodes and exclude the hotpluggable ones from GetMemoryMap().
> 
> But then Laszlo rightly pointed out that in order to accommodate the changes
> into UEFI we need to know how exactly Linux expects/handles all the
> hotpluggable memory scenarios. Please find the discussion here[2].
> 
> For ease, I am just copying the relevant comment from Laszlo below,
> 
> /******
> "Given patches #7 and #8, as I understand them, the firmware cannot distinguish
>   hotpluggable & present, from hotpluggable & absent. The firmware can only
>   skip both hotpluggable cases. That's fine in that the firmware will hog neither
>   type -- but is that OK for the OS as well, for both ACPI boot and DT boot?
> 
> Consider in particular the "hotpluggable & present, ACPI boot" case. Assuming
> we modify the firmware to skip "hotpluggable" altogether, the UEFI memmap
> will not include the range despite it being present at boot. Presumably, ACPI
> will refer to the range somehow, however. Will that not confuse the OS?
> 
> When Igor raised this earlier, I suggested that hotpluggable-and-present should
> be added by the firmware, but also allocated immediately, as EfiBootServicesData
> type memory. This will prevent other drivers in the firmware from allocating AcpiNVS
> or Reserved chunks from the same memory range, the UEFI memmap will contain
> the range as EfiBootServicesData, and then the OS can release that allocation in
> one go early during boot.
> 
> But this really has to be clarified from the Linux kernel's expectations. Please
> formalize all of the following cases:
> 
> OS boot (DT/ACPI)  hotpluggable & ...  GetMemoryMap() should report as  DT/ACPI should report as
> -----------------  ------------------  -------------------------------  ------------------------
> DT                 present             ?                                ?
> DT                 absent              ?                                ?
> ACPI               present             ?                                ?
> ACPI               absent              ?                                ?
> 
> Again, this table is dictated by Linux."
> 
> ******/
> 
> Could you please take a look at this and let us know what is expected here from
> a Linux kernel view point.

For arm64, so far we've not even been considering DT-based hotplug - as 
far as I'm aware there would still be a big open question there around 
notification mechanisms and how to describe them. The DT stuff so far 
has come from the PowerPC folks, so it's probably worth seeing what 
their ideas are.

ACPI-wise I've always assumed/hoped that hotplug-related things should 
be sufficiently well-specified in UEFI that "do whatever x86/IA-64 do" 
would be enough for us.

Robin.

> (Hi Laszlo/Igor/Eric, please feel free to add/change if I have missed any valid
> points above).
> 
> Thanks,
> Shameer
> [0] https://patchwork.kernel.org/cover/10890919/
> [1] https://patchwork.kernel.org/patch/10863299/
> [2] https://patchwork.kernel.org/patch/10890937/
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
