Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220757DF89
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1WEwq1tpWbj5frFCJoc94j5D8XdyNL6CqTuNCTd/sg=; b=bCThkAs95tjBwO
	c5ZNP5TgH5eScM4hEGxWVMGtYwun0pJCOPUM0UnDtiBpmyN4/ByyDN9pTLKZeU10hwroEJPozw4Q2
	eOffHzNyUDaWfEdXyzUFg6hudMTIT3o3n7dPTr2poD0so+hMhkD6T/ebZzltKlnohv/Vr5ADCPTjp
	4DzUptImjH2VPNjizTyh6BGMoEWqYpk52cLsAMyEXHJC91Qh+tGChI8DIjlFvZBr++3M/YYQosncN
	9TCNy/j27o3JQ1tPBXmxuOAltVEYSWg9j0QUB7WambEymlYSaygcuPKLzqYr/sX3dkkOBzELsJAEY
	zsFeof8a1l4ITZxgFg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDSf-0000Fx-3U; Thu, 01 Aug 2019 15:57:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDSX-0000Fc-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:57:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E59A337;
 Thu,  1 Aug 2019 08:57:40 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D96B73F694;
 Thu,  1 Aug 2019 08:57:38 -0700 (PDT)
Date: Thu, 1 Aug 2019 16:57:36 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Message-ID: <20190801155736.GD23424@e107155-lin>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-2-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801034634.26913-2-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_085741_292489_57B1A864 
X-CRM114-Status: GOOD (  21.34  )
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Jeremy,

On Wed, Jul 31, 2019 at 10:46:33PM -0500, Jeremy Linton wrote:
> ACPI 6.3 adds a flag to the CPU node to indicate whether
> the given PE is a thread. Add a function to return that
> information for a given linux logical CPU.
>

Apart from few minor nits,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c  | 54 +++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/acpi.h |  5 ++++
>  2 files changed, 58 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 1e7ac0bd0d3a..84718f6cb741 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -540,6 +540,44 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>  	return retval;
>  }
>
> +/**
> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> + * @cpu: Kernel logical CPU number
> + * @rev: The PPTT revision defining the flag

[nit] I would rather put it as minimum PPTT revision that supports the
flag. It aligns with the code too as we are not looking for exact match.

> + * @flag: The flag itself
> + *
> + * Check the node representing a CPU for a given flag.
> + *
> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> + *	   the table revision isn't new enough.
> + *	   1, any passed flag set
> + *	   0, flag unset
> + */
> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
> +{
> +	struct acpi_table_header *table;
> +	acpi_status status;
> +	u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
> +	struct acpi_pptt_processor *cpu_node = NULL;
> +	int ret = -ENOENT;
> +
> +	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
> +	if (ACPI_FAILURE(status)) {
> +		acpi_pptt_warn_missing();
> +		return ret;
> +	}
> +
> +	if (table->revision >= rev)
> +		cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
> +
> +	if (cpu_node)
> +		ret = (cpu_node->flags & flag) != 0;
> +
> +	acpi_put_table(table);
> +
> +	return ret;
> +}
> +
>  /**
>   * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
>   * @cpu: Kernel logical CPU number
> @@ -604,6 +642,21 @@ int cache_setup_acpi(unsigned int cpu)
>  	return status;
>  }
>
> +/**
> + * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
> + * @cpu: Kernel logical CPU number
> + *

[nit] If you spin the patch again, you can drop extra line space here.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
