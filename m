Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9553ED2BFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 16:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpRg3VX2ID4i77B9KH57tOf5/aJ4bB9hiU5l7fIGu4Y=; b=ZSoJjvMlIp7uYS
	rxvbW9FIw83OOYtf2L6HMNRTebHUpuZhgfb4r7uueDqiRN8QZjTVpZxZ6DsrZcwJ4NrNr9pH0/1l8
	If18QEyrF4z1MrkBAhY/roM9kK9qSqzbloqUfy3Mfep9zOXbYp4wGLfC/82cpB+CvJkjLe9kcq/FV
	xVZACtXnFsexuCtq5YZ3YXznA9uXK3z0QE4Sn6+ve2YoY2699IM7WECafnaw6ylbaA4oEYjCW4cg3
	TvpoyfdbHzDUQMWC7yqgZCxpZw8mtkW0e/5mm6ZCZNx+azs53WjTSPCNT403CFxrzVm6gK+vIyTRL
	pOZoCHRo3bxKAfQKd1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZ0w-00058c-I4; Thu, 10 Oct 2019 14:01:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZ0o-000581-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 14:01:51 +0000
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF9702A09B1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 14:01:49 +0000 (UTC)
Received: by mail-qt1-f198.google.com with SMTP id h20so5838432qto.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 07:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qVAAqrz8NImQua1Z+MPnnhld52fQmUNm5/UzIy85cAw=;
 b=KFv4N8RgxbfniR5qR+/883fY8eTKD2ffQPnzM6Dhclc36v00oh2KnA6YQDhTwJLqt7
 aJ3IhKCwRhiXEKMaLJ6oumgq6xIZ6GMIRyP1a4lWuMLdkg5/3Z99ykW+IjNVg0pas1TC
 yNiubiVd0lyiz5z8GBAQ6nXU5AwFaVbmOfojbbwyQWVgIxKSXX26Rsi3ZDz9uVLgQklV
 r4xhrt/9z0IOaxDTLK53YHd1Ul4aTEOtR1hk1Y+qe9cprMEA4C2JiSipzurEbh032+XZ
 f7V37+qDrSvquGvOImyppfWpQ/+oUK2SndoEd1lcYg3eS61S05LfFoUf1mdWz6KIWzxd
 J82A==
X-Gm-Message-State: APjAAAVXXrVHwNho6fBEzbz7YHqt5ecM+MapmjsCAmKMz/mrSq1HI0jx
 1j1tw+Go1Znv6QmK9tu1srWPi4X+KfYDoe/mAd7nbN7s1QTAEHhFmSonloxqu2Gig4nf35hDJDR
 dPnYIVjN6PixNJcQP9AWwBqn2poABfrrh44k=
X-Received: by 2002:ad4:4cd2:: with SMTP id i18mr10049270qvz.179.1570716109095; 
 Thu, 10 Oct 2019 07:01:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYqCELGRxeh3CQ+BFJgenfbvye6L7ylSnPky4UXagpA1ByKmXrLmgDow8lDw+zIeO6sIjvOA==
X-Received: by 2002:ad4:4cd2:: with SMTP id i18mr10049239qvz.179.1570716108835; 
 Thu, 10 Oct 2019 07:01:48 -0700 (PDT)
Received: from redhat.com (bzq-79-176-10-77.red.bezeqint.net. [79.176.10.77])
 by smtp.gmail.com with ESMTPSA id
 z6sm2312398qkf.125.2019.10.10.07.01.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 07:01:48 -0700 (PDT)
Date: Thu, 10 Oct 2019 10:01:42 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Heyi Guo <guoheyi@huawei.com>
Subject: Re: [RFC PATCH 12/12] virt/acpi: add SDEI table if SDEI is enabled
Message-ID: <20191010100107-mutt-send-email-mst@kernel.org>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-13-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569338511-3572-13-git-send-email-guoheyi@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_070150_499545_EDEBF96F 
X-CRM114-Status: GOOD (  20.09  )
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
 Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 qemu-devel@nongnu.org, Dave Martin <Dave.Martin@arm.com>,
 Shannon Zhao <shannon.zhaosl@gmail.com>, qemu-arm@nongnu.org,
 James Morse <james.morse@arm.com>, Igor Mammedov <imammedo@redhat.com>,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:21:51PM +0800, Heyi Guo wrote:
> Add SDEI table if SDEI is enabled, so that guest OS can get aware and
> utilize the interfaces.
> 
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Peter Maydell <peter.maydell@linaro.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Shannon Zhao <shannon.zhaosl@gmail.com>
> Cc: "Michael S. Tsirkin" <mst@redhat.com>
> Cc: Igor Mammedov <imammedo@redhat.com>
> ---
>  hw/arm/virt-acpi-build.c    | 16 ++++++++++++++++
>  include/hw/acpi/acpi-defs.h |  5 +++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/hw/arm/virt-acpi-build.c b/hw/arm/virt-acpi-build.c
> index 6cdf156..1088214 100644
> --- a/hw/arm/virt-acpi-build.c
> +++ b/hw/arm/virt-acpi-build.c
> @@ -32,6 +32,7 @@
>  #include "trace.h"
>  #include "hw/core/cpu.h"
>  #include "target/arm/cpu.h"
> +#include "target/arm/sdei.h"
>  #include "hw/acpi/acpi-defs.h"
>  #include "hw/acpi/acpi.h"
>  #include "hw/nvram/fw_cfg.h"
> @@ -475,6 +476,16 @@ build_iort(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
>  }
>  
>  static void
> +build_sdei(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
> +{
> +    int sdei_start = table_data->len;
> +
> +    (void)acpi_data_push(table_data, sizeof(AcpiSdei));
> +    build_header(linker, table_data, (void *)(table_data->data + sdei_start),
> +                 "SDEI", table_data->len - sdei_start, 1, NULL, NULL);
> +}
> +

Please quote the relevant spec, earliest version that includes
this table, and chapter in that spec.

> +static void
>  build_spcr(GArray *table_data, BIOSLinker *linker, VirtMachineState *vms)
>  {
>      AcpiSerialPortConsoleRedirection *spcr;
> @@ -796,6 +807,11 @@ void virt_acpi_build(VirtMachineState *vms, AcpiBuildTables *tables)
>      acpi_add_table(table_offsets, tables_blob);
>      build_spcr(tables_blob, tables->linker, vms);
>  
> +    if (sdei_enabled) {
> +        acpi_add_table(table_offsets, tables_blob);
> +        build_sdei(tables_blob, tables->linker, vms);
> +    }
> +
>      if (ms->numa_state->num_nodes > 0) {
>          acpi_add_table(table_offsets, tables_blob);
>          build_srat(tables_blob, tables->linker, vms);
> diff --git a/include/hw/acpi/acpi-defs.h b/include/hw/acpi/acpi-defs.h
> index 57a3f58..0a2265d 100644
> --- a/include/hw/acpi/acpi-defs.h
> +++ b/include/hw/acpi/acpi-defs.h
> @@ -634,4 +634,9 @@ struct AcpiIortRC {
>  } QEMU_PACKED;
>  typedef struct AcpiIortRC AcpiIortRC;
>  
> +struct AcpiSdei {
> +    ACPI_TABLE_HEADER_DEF     /* ACPI common table header */
> +} QEMU_PACKED;
> +typedef struct AcpiSdei AcpiSdei;
> +
>  #endif
> -- 
> 1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
