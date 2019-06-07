Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089C738757
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKV+PabDbgGw1dCFmYZMIPLKXBC85wXnk8OtGGxdMNA=; b=dni0bbLxfykXxD
	/Wu2a6MxGbQXMHgOiZDJeGr180g9xf/iFNz2r1XLt7N3M20/0XBbyWIqtq1zcy9azQo6fzx9w+mYQ
	N0rtPtYfA/LD63pVrVJgQfAV135R8qj+tnwXaU+BQ169f1eAHybI/6VRBKHhGJaBViWkzEW5V34YV
	Zz74Cbyp0C/c031YkF25swNt4uh/AmdmtKbDw7dplDl7jQGSNtgzMC87Cj7t4eHBGTOj6nHL50W2z
	CVjC6KE9i3zCBB+dz+F72POkvhTUVBF2mtwHDjnTfnAbsZMsvZgPWoLpe1N849GvH2zI+umWQNo4P
	9EPOVwTYVt38q0uHzkSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBUy-0005AV-RP; Fri, 07 Jun 2019 09:49:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBUn-00059r-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:49:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84F99337;
 Fri,  7 Jun 2019 02:49:11 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59F643F96A;
 Fri,  7 Jun 2019 02:50:50 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:49:07 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v3 2/5] ACPI/PPTT: Add function to return ACPI 6.3
 Identical tokens
Message-ID: <20190607094907.GB2429@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-3-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503232407.37195-3-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024913_094159_1A0C490D 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 06:24:04PM -0500, Jeremy Linton wrote:
> ACPI 6.3 adds a flag to indicate that child nodes are all
> identical cores. This is useful to authoritatively determine
> if a set of (possibly offline) cores are identical or not.
> 
> Since the flag doesn't give us a unique id we can generate
> one and use it to create bitmaps of sibling nodes, or simply
> in a loop to determine if a subset of cores are identical.
>

If possible reorder this patch with next just to be sure.
I know the user is not introduced until 4/5, but 3/5 kind of fixes
the implementation.


Apart from that, this looks fine to me.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c  | 26 ++++++++++++++++++++++++++
>  include/linux/acpi.h |  5 +++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 83a026765faa..1865515297ca 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -660,3 +660,29 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>  	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>  					  ACPI_PPTT_PHYSICAL_PACKAGE);
>  }
> +
> +/**
> + * find_acpi_cpu_topology_hetero_id() - Get a core architecture tag
> + * @cpu: Kernel logical CPU number
> + *
> + * Determine a unique heterogeneous tag for the given CPU. CPUs with the same
> + * implementation should have matching tags.
> + *
> + * The returned tag can be used to group peers with identical implementation.
> + *
> + * The search terminates when a level is found with the identical implementation
> + * flag set or we reach a root node.
> + *
> + * Due to limitations in the PPTT data structure, there may be rare situations
> + * where two cores in a heterogeneous machine may be identical, but won't have
> + * the same tag.
> + *

Indeed, it's unfortunate. I gave some thoughts if we can find ways to
avoid this. Hope we don't have to see such weird combinations with ACPI
based systems.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
