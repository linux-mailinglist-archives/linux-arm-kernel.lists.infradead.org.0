Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852EE140
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWa89Q/qCMwOjQxhmx7Dtbhhb9s6YjU4/XbaPZHRfJ4=; b=OFtnIJPX7J9bEo
	KmUJwKy79sUE+9r9eKe7F49XJovnHZqrJwutmFYJ+IRshsuI3x1iHn1kn7xP7Ry0Wox9+U4bkg/Qb
	Qd9TtkoFXh+Q4/UPx5Nm8ofb9Y9Gcb6mwYWO96rsFh5A24h01v5h2mSlvJeUwTlQG7uOVAY1RkZax
	8LxiP1MQo4zbBW0vmEFr00yg/qnAJB7W0PQC/QJh50DxcImLDBNnLxFw65oQR1/OFFp5bsNbVVESu
	Rpm+CzqBMckbPXII37RofmEXIj/I0xtH/XgWlGxOJLy0yV1dP4SoEIfShiY5aYBmYvy4ACIAWNrko
	VPsr/MldAPxyI1WF0IhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4R1-0007rM-W2; Mon, 29 Apr 2019 11:27:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Qt-0007qs-Nm
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:26:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DDE980D;
 Mon, 29 Apr 2019 04:26:50 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F61E3F5AF;
 Mon, 29 Apr 2019 04:26:48 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:26:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 1/2] ACPI/PPTT: Add variable to record max cache line size
Message-ID: <20190429112645.GC23929@e107155-lin>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <ec06edc0-f1ec-ef8e-78ad-7bef7ae79931@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec06edc0-f1ec-ef8e-78ad-7bef7ae79931@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_042651_794294_898FE4CC 
X-CRM114-Status: GOOD (  26.64  )
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
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 12:02:45PM -0500, Jeremy Linton wrote:
> Hi,
>
>
> On 4/25/19 8:40 PM, Shaokun Zhang wrote:
> > Add coherency_max_size variable to record the maximum cache line size
> > detected from PPTT information for different cache levels. We will
> > synchronize it with CTR_EL0.CWG reporting in cache_line_size() for arm64.
>
> Is the expectation that the largest cache line size will differ from the LLC
> line size?
>

It's always better to assume so. If we are sure that LLC has max cache line
size, then we can simplify, but I don't think we can assure that :)

> Also, will it remain consistent across all PE's? I believe this is required,
> Yes?
>

It would be same as heterogeneous systems, we just choose max value for
the system.

>
> >
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > Cc: Len Brown <lenb@kernel.org>
> > Cc: Jeremy Linton <jeremy.linton@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > To: linux-acpi@vger.kernel.org
> > Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> > ---
> >   drivers/acpi/pptt.c  | 7 ++++++-
> >   include/linux/acpi.h | 1 +
> >   2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> > index 065c4fc245d1..3998621e00ce 100644
> > --- a/drivers/acpi/pptt.c
> > +++ b/drivers/acpi/pptt.c
> > @@ -341,6 +341,8 @@ static struct acpi_pptt_cache *acpi_find_cache_node(struct acpi_table_header *ta
> >   	return found;
> >   }
> > +unsigned int coherency_max_size;
> > +
> >   /**
> >    * update_cache_properties() - Update cacheinfo for the given processor
> >    * @this_leaf: Kernel cache info structure being updated
> > @@ -360,8 +362,11 @@ static void update_cache_properties(struct cacheinfo *this_leaf,
> >   	this_leaf->fw_token = cpu_node;
> >   	if (found_cache->flags & ACPI_PPTT_SIZE_PROPERTY_VALID)
> >   		this_leaf->size = found_cache->size;
> > -	if (found_cache->flags & ACPI_PPTT_LINE_SIZE_VALID)
> > +	if (found_cache->flags & ACPI_PPTT_LINE_SIZE_VALID) {
> >   		this_leaf->coherency_line_size = found_cache->line_size;
> > +		coherency_max_size = this_leaf->coherency_line_size > coherency_max_size ?
> > +			this_leaf->coherency_line_size : coherency_max_size;
> > +	}
> >   	if (found_cache->flags & ACPI_PPTT_NUMBER_OF_SETS_VALID)
> >   		this_leaf->number_of_sets = found_cache->number_of_sets;
> >   	if (found_cache->flags & ACPI_PPTT_ASSOCIATIVITY_VALID)
> > diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> > index d5dcebd7aad3..199cde875d5b 100644
> > --- a/include/linux/acpi.h
> > +++ b/include/linux/acpi.h
> > @@ -315,6 +315,7 @@ static inline bool acpi_sci_irq_valid(void)
> >   extern int sbf_port;
> >   extern unsigned long acpi_realmode_flags;
> > +extern unsigned int coherency_max_size;
>
> Assuming that the LLC doesn't reflect the max cache line size, and it can't
> be pulled directly from the cpu_cacheinfo, I don't think this is the ideal
> place for this code. Given that DT has a cache line property as well, I
> suspect cache_shared_cpu_map_setup() may be a better place. Although, that
> isn't ideal either, as both these pieces of code have the pretense of being
> architecture neutral. Maybe a new call into arch/arm64/cacheinfo.c?
>

Indeed, we need to consider DT systems too. We can just solve the issue
for ACPI based systems.

Or drivers/base/cacheinfo.c if other architectures are also interested or
doesn't affect them if we add one :), but I don't count too much on this
though as it may end up breaking some other archs.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
