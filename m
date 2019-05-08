Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D0F175CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZPqlzHKR+1wakk7fyZmW5SyluDDuHCfZ5gdSQOMIGxE=; b=bksOCt0/6IVK5/
	DHS4jugko4c13JehuB8AyDG06Hz/180i47gxp8fv3qu645tT1looGiaFlDveN2a1QML1C8tbHvrrd
	gAAYDxrgkCTPZSP2VjSb5KCBgSUsf1rF3lx+oWTAMThKuxBmrehCUaOYH/SSOPHrLaOulGXHfPWo3
	frc4/nJOF1LIP6qza0EHTjHrCXa1lAhr/eSMT1hdtU+5wnIWFi/ebvyuWzkiUgojEU73UcxFsHbBe
	wbX2wuqJ4q8awk7w/sLk3z7FGOmMY7q/8OygYsPjPKlbMUktrXgsPfSq3r6xcGQbOM5/1w59aVzCX
	Dwp8m6CwSDHN2GRYaKOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJcV-0002UO-JE; Wed, 08 May 2019 10:16:15 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJcN-0002U0-FP
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:16:09 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 1AD5B8EA87B25B67F17B;
 Wed,  8 May 2019 11:16:01 +0100 (IST)
Received: from LHREML524-MBS.china.huawei.com ([169.254.2.137]) by
 lhreml703-cah.china.huawei.com ([10.201.108.44]) with mapi id 14.03.0415.000; 
 Wed, 8 May 2019 11:15:51 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>, "Anshuman
 Khandual" <anshuman.khandual@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, linux-mm <linux-mm@kvack.org>
Subject: [Question] Memory hotplug clarification for Qemu ARM/virt 
Thread-Topic: [Question] Memory hotplug clarification for Qemu ARM/virt 
Thread-Index: AdUFf3K/4T6J1HYjRj6wDE9hxn3APQ==
Date: Wed, 8 May 2019 10:15:50 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_031607_663143_3C72FEDD 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series here[0] attempts to add support for PCDIMM in QEMU for
ARM/Virt platform and has stumbled upon an issue as it is not clear(at least
from Qemu/EDK2 point of view) how in physical world the hotpluggable
memory is handled by kernel.

The proposed implementation in Qemu, builds the SRAT and DSDT parts
and uses GED device to trigger the hotplug. This works fine.

But when we added the DT node corresponding to the PCDIMM(cold plug
scenario), we noticed that Guest kernel see this memory during early boot
even if we are booting with ACPI. Because of this, hotpluggable memory
may end up in zone normal and make it non-hot-un-pluggable even if Guest
boots with ACPI.

Further discussions[1] revealed that, EDK2 UEFI has no means to interpret the
ACPI content from Qemu(this is designed to do so) and uses DT info to
build the GetMemoryMap(). To solve this, introduced "hotpluggable" property
to DT memory node(patches #7 & #8 from [0]) so that UEFI can differentiate
the nodes and exclude the hotpluggable ones from GetMemoryMap().

But then Laszlo rightly pointed out that in order to accommodate the changes
into UEFI we need to know how exactly Linux expects/handles all the 
hotpluggable memory scenarios. Please find the discussion here[2].

For ease, I am just copying the relevant comment from Laszlo below,

/******
"Given patches #7 and #8, as I understand them, the firmware cannot distinguish
 hotpluggable & present, from hotpluggable & absent. The firmware can only
 skip both hotpluggable cases. That's fine in that the firmware will hog neither
 type -- but is that OK for the OS as well, for both ACPI boot and DT boot?

Consider in particular the "hotpluggable & present, ACPI boot" case. Assuming
we modify the firmware to skip "hotpluggable" altogether, the UEFI memmap
will not include the range despite it being present at boot. Presumably, ACPI
will refer to the range somehow, however. Will that not confuse the OS?

When Igor raised this earlier, I suggested that hotpluggable-and-present should
be added by the firmware, but also allocated immediately, as EfiBootServicesData
type memory. This will prevent other drivers in the firmware from allocating AcpiNVS
or Reserved chunks from the same memory range, the UEFI memmap will contain
the range as EfiBootServicesData, and then the OS can release that allocation in
one go early during boot.

But this really has to be clarified from the Linux kernel's expectations. Please
formalize all of the following cases:

OS boot (DT/ACPI)  hotpluggable & ...  GetMemoryMap() should report as  DT/ACPI should report as
-----------------  ------------------  -------------------------------  ------------------------
DT                 present             ?                                ?
DT                 absent              ?                                ?
ACPI               present             ?                                ?
ACPI               absent              ?                                ?

Again, this table is dictated by Linux."

******/

Could you please take a look at this and let us know what is expected here from
a Linux kernel view point.

(Hi Laszlo/Igor/Eric, please feel free to add/change if I have missed any valid
points above).

Thanks,
Shameer
[0] https://patchwork.kernel.org/cover/10890919/
[1] https://patchwork.kernel.org/patch/10863299/
[2] https://patchwork.kernel.org/patch/10890937/



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
