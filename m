Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5206AD2BE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTsz3YQRXW/YxYmCQeRvx258btDR4NEZ3s93HHGTKLg=; b=lhfQsWNLbqfu2U
	HeAHIf6ZGit1O4hQDyNUqtrZghCek2WKBrZlf3vPZIKxHnVYRYrK4/b63JQUajSERzNP/wforhoxK
	9w5LhGFj039DhVp5Xpo5XHG9tli+YcOWRz00idTJAQk448yl7yKQxny+qKBD285C7HknJJO0BC2P0
	aPfQUViLp5Xud1FumO71QqptNOR8uMWzl9xbyh5fA4ZQUw/0wGDv1gpNxrT7SDi7UvD2rZnTi1FzC
	u/hGb1jLd/jbAo5iqzpKjFM9mr6a9a0sfTcK/0CznAJs1i1sbkYCjtSWWWW6XdK7QbrDpc/a0eWyO
	kqn/K572aSWIFpgrrPfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYwp-0002rm-8n; Thu, 10 Oct 2019 13:57:43 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYwd-0002qn-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:57:33 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 434418372F2;
 Thu, 10 Oct 2019 13:57:31 +0000 (UTC)
Received: from localhost (unknown [10.43.2.182])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 80CE16012A;
 Thu, 10 Oct 2019 13:57:25 +0000 (UTC)
Date: Thu, 10 Oct 2019 15:57:23 +0200
From: Igor Mammedov <imammedo@redhat.com>
To: Guoheyi <guoheyi@huawei.com>
Subject: Re: [RFC PATCH 12/12] virt/acpi: add SDEI table if SDEI is enabled
Message-ID: <20191010155723.24acb321@redhat.com>
In-Reply-To: <3e889d37-b877-f7b5-7ee3-70cef6d8e9c1@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-13-git-send-email-guoheyi@huawei.com>
 <20191010111537.5e2dd584@redhat.com>
 <3e889d37-b877-f7b5-7ee3-70cef6d8e9c1@huawei.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 10 Oct 2019 13:57:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_065732_061034_ECE7667A 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 21:08:10 +0800
Guoheyi <guoheyi@huawei.com> wrote:

> Thanks for your comments.
> 
> On 2019/10/10 17:15, Igor Mammedov wrote:
> > On Tue, 24 Sep 2019 23:21:51 +0800
> > Heyi Guo <guoheyi@huawei.com> wrote:
> >  
> >> Add SDEI table if SDEI is enabled, so that guest OS can get aware and
> >> utilize the interfaces.
> >>
> >> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> >> Cc: Peter Maydell <peter.maydell@linaro.org>
> >> Cc: Dave Martin <Dave.Martin@arm.com>
> >> Cc: Marc Zyngier <marc.zyngier@arm.com>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> >> Cc: James Morse <james.morse@arm.com>
> >> Cc: Shannon Zhao <shannon.zhaosl@gmail.com>
> >> Cc: "Michael S. Tsirkin" <mst@redhat.com>
> >> Cc: Igor Mammedov <imammedo@redhat.com>
> >> ---
> >>   hw/arm/virt-acpi-build.c    | 16 ++++++++++++++++
> >>   include/hw/acpi/acpi-defs.h |  5 +++++
> >>   2 files changed, 21 insertions(+)
> >>
> >> diff --git a/hw/arm/virt-acpi-build.c b/hw/arm/virt-acpi-build.c
> >> index 6cdf156..1088214 100644
> >> --- a/hw/arm/virt-acpi-build.c
> >> +++ b/hw/arm/virt-acpi-build.c
> >> @@ -32,6 +32,7 @@
> >>   #include "trace.h"
> >>   #include "hw/core/cpu.h"
> >>   #include "target/arm/cpu.h"
> >> +#include "target/arm/sdei.h"
> >>   #include "hw/acpi/acpi-defs.h"
> >>   #include "hw/acpi/acpi.h"
> >>   #include "hw/nvram/fw_cfg.h"
> >> @@ -475,6 +476,16 @@ build_iort(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
> >>   }
> >>     
> > here should be a comment describing purpose with a reference to spec  
> OK.
> 
> >  
> >>   static void
> >> +build_sdei(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
> >> +{
> >> +    int sdei_start = table_data->len;
> >> +
> >> +    (void)acpi_data_push(table_data, sizeof(AcpiSdei));
> >> +    build_header(linker, table_data, (void *)(table_data->data + sdei_start),
> >> +                 "SDEI", table_data->len - sdei_start, 1, NULL, NULL);
> >> +}  
> > that's dummy table and doesn't match what spec describes,
> > It doesn't look correct SDEI table.  
> 
> Refer to below document, Appendix C, I see the definition of SDEI is 
> really a dummy table, also it is said in the document: The table 
> consists only of a basic header with revision 1.
> 
> http://infocenter.arm.com/help/topic/com.arm.doc.den0054a/ARM_DEN0054A_Software_Delegated_Exception_Interface.pdf
> 
> Do I miss anything?
No you are right and I was mistaken.
It's pretty waste-full way to communicate to OS a Boolean flag
that a new GHEST event is supported. But since they managed to make
it a spec, it should be coded as such.


> 
> >  
> >> +
> >> +static void
> >>   build_spcr(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
> >>   {
> >>       AcpiSerialPortConsoleRedirection *spcr;
> >> @@ -796,6 +807,11 @@ void virt_acpi_build(VirtMachineState *vms, AcpiBuildTables *tables)
> >>       acpi_add_table(table_offsets, tables_blob);
> >>       build_spcr(tables_blob, tables->linker, vms);
> >>   
> >> +    if (sdei_enabled) {
> >> +        acpi_add_table(table_offsets, tables_blob);
> >> +        build_sdei(tables_blob, tables->linker, vms);
> >> +    }
> >> +
> >>       if (ms->numa_state->num_nodes > 0) {
> >>           acpi_add_table(table_offsets, tables_blob);
> >>           build_srat(tables_blob, tables->linker, vms);
> >> diff --git a/include/hw/acpi/acpi-defs.h b/include/hw/acpi/acpi-defs.h
> >> index 57a3f58..0a2265d 100644
> >> --- a/include/hw/acpi/acpi-defs.h
> >> +++ b/include/hw/acpi/acpi-defs.h
> >> @@ -634,4 +634,9 @@ struct AcpiIortRC {
> >>   } QEMU_PACKED;
> >>   typedef struct AcpiIortRC AcpiIortRC;
> >>   
> >> +struct AcpiSdei {
> >> +    ACPI_TABLE_HEADER_DEF     /* ACPI common table header */
> >> +} QEMU_PACKED;
> >> +typedef struct AcpiSdei AcpiSdei;  
> > we don't use packed structures for ACPI anymore, see build_rsdp() for
> > example of how tables are composed and comment style required for each field.  
> Sure; will fix it in v2.
> 
> Thanks,
> 
> Heyi
> 
> >  
> >>   #endif  
> >
> > .
> >  
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
