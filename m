Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94FFD2C7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 16:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lQZB7Z9vzBnTzQSk0HHaTOYAGX1WA0NOG5D95mt6jc=; b=Ndm/iaUoIjO0P4rKeai/ar5/n
	88MaLmMryXeIuRWM5tgknN6GdzVONBH2FbBXVM9vdAOLT52swYt0/Rc0frkv/P91Y/nIxUnRlT64N
	FabycK8hMNAQlkMBuV3hnUT1HEU8SH+aa0o6BX46vwKr2DSzjJrIOyYej6m0eRUEBd5E5+66Ly03U
	2pyWmMlq94HO0I63s21tqneO4LVVS0f2pRrmjpH5VgZf/0G94i2uzgcbYQ/bykX20VIjTFl1yQcXx
	jFFEbX660ytj7WjBVMa6gbAF3zMqsgunPjSnl+W/+tRJj3PTRYNEh7l1e+3S4zYRR0PzFkm/oAMmI
	J0PFxL1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZR9-0008F7-VL; Thu, 10 Oct 2019 14:29:03 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZR2-0008EW-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 14:28:58 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B0170D9F904E22620CC3;
 Thu, 10 Oct 2019 22:28:52 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 10 Oct 2019 22:28:43 +0800
Subject: Re: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields in
 Processor Structure Flags
To: "Moore, Robert" <robert.moore@intel.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "lenb@kernel.org" <lenb@kernel.org>, 
 "Schmauss, Erik" <erik.schmauss@intel.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "rrichter@marvell.com" <rrichter@marvell.com>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>
References: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
 <1570714192-236724-2-git-send-email-john.garry@huawei.com>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9691ADA@ORSMSX110.amr.corp.intel.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <efd1203b-ef81-a27e-8681-6eeabab75f8e@huawei.com>
Date: Thu, 10 Oct 2019 15:28:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9691ADA@ORSMSX110.amr.corp.intel.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_072856_887692_0D2BC564 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "wanghuiqiang@huawei.com" <wanghuiqiang@huawei.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/10/2019 15:22, Moore, Robert wrote:
> John,
> These #defines are all already in actbl2.h. Perhaps they didn't make it into Linux.
> Bob

Hi Bob,

Yes, they are in the latest linux mainline release.

But this patch is just a preview to backport them to an earlier kernel 
version.

Thanks,
John

>
>
> -----Original Message-----
> From: John Garry <john.garry@huawei.com>
> Sent: Thursday, October 10, 2019 6:30 AM
> To: catalin.marinas@arm.com; will@kernel.org; rjw@rjwysocki.net; lenb@kernel.org; Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; sudeep.holla@arm.com; rrichter@marvell.com; jeremy.linton@arm.com
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-acpi@vger.kernel.org; linuxarm@huawei.com; gregkh@linuxfoundation.org; guohanjun@huawei.com; wanghuiqiang@huawei.com; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; John Garry <john.garry@huawei.com>
> Subject: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields in Processor Structure Flags
>
> From: Erik Schmauss <erik.schmauss@intel.com>
>
> Commit b5eab512e7cffb2bb37c4b342b5594e9e75fd486 upstream.
>
> ACPICA commit c736ea34add19a3a07e0e398711847cd6b95affd
>
> Link: https://github.com/acpica/acpica/commit/c736ea34
> Signed-off-by: Erik Schmauss <erik.schmauss@intel.com>
> Signed-off-by: Bob Moore <robert.moore@intel.com>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  include/acpi/actbl2.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h index c50ef7e6b942..1d4ef0621174 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h
> @@ -1472,8 +1472,11 @@ struct acpi_pptt_processor {
>
>  /* Flags */
>
> -#define ACPI_PPTT_PHYSICAL_PACKAGE          (1)	/* Physical package */
> -#define ACPI_PPTT_ACPI_PROCESSOR_ID_VALID   (2)	/* ACPI Processor ID valid */
> +#define ACPI_PPTT_PHYSICAL_PACKAGE          (1)
> +#define ACPI_PPTT_ACPI_PROCESSOR_ID_VALID   (1<<1)
> +#define ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD  (1<<2)	/* ACPI 6.3 */
> +#define ACPI_PPTT_ACPI_LEAF_NODE            (1<<3)	/* ACPI 6.3 */
> +#define ACPI_PPTT_ACPI_IDENTICAL            (1<<4)	/* ACPI 6.3 */
>
>  /* 1: Cache Type Structure */
>
> --
> 2.17.1
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
