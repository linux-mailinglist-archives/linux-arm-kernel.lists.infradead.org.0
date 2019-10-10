Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFCCD2A62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JOc12oq2oIVHlqu0s03Uxk8SZE+DMEf+WPYDXPMvzFo=; b=DjkcmXQWqzGd78jMxitTbbVYz
	dHO+0O5wrzKpdHQk1lNF3/jIxWhztb3y91Vcs+VB9+1k9hvYc6zWnyS6tMUuq4VfOwKfv1nOnPR34
	k7ulNUs0rmxZEUfKg5n2HXQR+EAAGBjxzzP0h0GO0o/Dr7wOhKVn5s5OwTDsvfUcCgdQFJUrQ8M7p
	06FhKP3LvSN03kG/PD6yUwwDJG055qRhZRNYvzmonH3DrFDOlOLf+ksYGQUfOZz7oKuCrvJ4paIb0
	f1t3A+lyN9+iSfASAJpxfbELG9Ml2LAJL67vb9GkXR0+I0OhprZ9HVYbAZj2BSA5rPa7n4uOYr6IA
	5IGbPyF1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYBX-0004nN-AY; Thu, 10 Oct 2019 13:08:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYBP-0004mL-N9
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:08:45 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AF8AC4877A4713569682;
 Thu, 10 Oct 2019 21:08:28 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 10 Oct 2019
 21:08:22 +0800
Subject: Re: [RFC PATCH 12/12] virt/acpi: add SDEI table if SDEI is enabled
To: Igor Mammedov <imammedo@redhat.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-13-git-send-email-guoheyi@huawei.com>
 <20191010111537.5e2dd584@redhat.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <3e889d37-b877-f7b5-7ee3-70cef6d8e9c1@huawei.com>
Date: Thu, 10 Oct 2019 21:08:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20191010111537.5e2dd584@redhat.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_060843_921393_CB612D21 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>,
 "Michael S. Tsirkin" <mst@redhat.com>, Marc Zyngier <marc.zyngier@arm.com>,
 qemu-devel@nongnu.org, Dave Martin <Dave.Martin@arm.com>,
 Shannon Zhao <shannon.zhaosl@gmail.com>, qemu-arm@nongnu.org,
 James Morse <james.morse@arm.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for your comments.

On 2019/10/10 17:15, Igor Mammedov wrote:
> On Tue, 24 Sep 2019 23:21:51 +0800
> Heyi Guo <guoheyi@huawei.com> wrote:
>
>> Add SDEI table if SDEI is enabled, so that guest OS can get aware and
>> utilize the interfaces.
>>
>> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
>> Cc: Peter Maydell <peter.maydell@linaro.org>
>> Cc: Dave Martin <Dave.Martin@arm.com>
>> Cc: Marc Zyngier <marc.zyngier@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Shannon Zhao <shannon.zhaosl@gmail.com>
>> Cc: "Michael S. Tsirkin" <mst@redhat.com>
>> Cc: Igor Mammedov <imammedo@redhat.com>
>> ---
>>   hw/arm/virt-acpi-build.c    | 16 ++++++++++++++++
>>   include/hw/acpi/acpi-defs.h |  5 +++++
>>   2 files changed, 21 insertions(+)
>>
>> diff --git a/hw/arm/virt-acpi-build.c b/hw/arm/virt-acpi-build.c
>> index 6cdf156..1088214 100644
>> --- a/hw/arm/virt-acpi-build.c
>> +++ b/hw/arm/virt-acpi-build.c
>> @@ -32,6 +32,7 @@
>>   #include "trace.h"
>>   #include "hw/core/cpu.h"
>>   #include "target/arm/cpu.h"
>> +#include "target/arm/sdei.h"
>>   #include "hw/acpi/acpi-defs.h"
>>   #include "hw/acpi/acpi.h"
>>   #include "hw/nvram/fw_cfg.h"
>> @@ -475,6 +476,16 @@ build_iort(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
>>   }
>>   
> here should be a comment describing purpose with a reference to spec
OK.

>
>>   static void
>> +build_sdei(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
>> +{
>> +    int sdei_start = table_data->len;
>> +
>> +    (void)acpi_data_push(table_data, sizeof(AcpiSdei));
>> +    build_header(linker, table_data, (void *)(table_data->data + sdei_start),
>> +                 "SDEI", table_data->len - sdei_start, 1, NULL, NULL);
>> +}
> that's dummy table and doesn't match what spec describes,
> It doesn't look correct SDEI table.

Refer to below document, Appendix C, I see the definition of SDEI is 
really a dummy table, also it is said in the document: The table 
consists only of a basic header with revision 1.

http://infocenter.arm.com/help/topic/com.arm.doc.den0054a/ARM_DEN0054A_Software_Delegated_Exception_Interface.pdf

Do I miss anything?

>
>> +
>> +static void
>>   build_spcr(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
>>   {
>>       AcpiSerialPortConsoleRedirection *spcr;
>> @@ -796,6 +807,11 @@ void virt_acpi_build(VirtMachineState *vms, AcpiBuildTables *tables)
>>       acpi_add_table(table_offsets, tables_blob);
>>       build_spcr(tables_blob, tables->linker, vms);
>>   
>> +    if (sdei_enabled) {
>> +        acpi_add_table(table_offsets, tables_blob);
>> +        build_sdei(tables_blob, tables->linker, vms);
>> +    }
>> +
>>       if (ms->numa_state->num_nodes > 0) {
>>           acpi_add_table(table_offsets, tables_blob);
>>           build_srat(tables_blob, tables->linker, vms);
>> diff --git a/include/hw/acpi/acpi-defs.h b/include/hw/acpi/acpi-defs.h
>> index 57a3f58..0a2265d 100644
>> --- a/include/hw/acpi/acpi-defs.h
>> +++ b/include/hw/acpi/acpi-defs.h
>> @@ -634,4 +634,9 @@ struct AcpiIortRC {
>>   } QEMU_PACKED;
>>   typedef struct AcpiIortRC AcpiIortRC;
>>   
>> +struct AcpiSdei {
>> +    ACPI_TABLE_HEADER_DEF     /* ACPI common table header */
>> +} QEMU_PACKED;
>> +typedef struct AcpiSdei AcpiSdei;
> we don't use packed structures for ACPI anymore, see build_rsdp() for
> example of how tables are composed and comment style required for each field.
Sure; will fix it in v2.

Thanks,

Heyi

>
>>   #endif
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
