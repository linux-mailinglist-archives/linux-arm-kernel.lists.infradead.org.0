Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B5B3879B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Su2gk6ObJHYPc67I2WXRJNFO0WYsUt/oyY0/o8/t7E0=; b=h+LNPLwBAIwAze
	ok6GIsheiAie0Lcb2t9iw1iW1VnZC+ySra8Z61L2YB8rjgy2m6R5Q7leAOrE3vv6/eoi3mjpCvnoH
	zBFSAVEbEFeWSLyQlaCYQDaBANpvy7d72W+VMUCD4OdhBsjzYVPSv8sF1v7OmU48z209bhvuNQaCa
	/Ecd6M1o3t1DbGlMtB06P27Vpczzny3vFG+zVuawpNjf2YANXnAfIdLTqGbXZd8qxfupLMMh1kcgm
	KrCNoZzbiW1jwA5V2hcRwGf6qLWFhWoVI93GeY5iGUX9N1gIiZjnFzntugUoj9E14pFj7Z4b5oO7b
	I0/BrR+NSJWC266x5suw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBiW-0001pP-HT; Fri, 07 Jun 2019 10:03:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBiL-0001p3-Pm
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:03:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A12E28;
 Fri,  7 Jun 2019 03:03:13 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B24E3F96A;
 Fri,  7 Jun 2019 03:04:52 -0700 (PDT)
Date: Fri, 7 Jun 2019 11:03:09 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Message-ID: <20190607100309.GE2429@e107155-lin>
References: <20190523224015.56270-1-jeremy.linton@arm.com>
 <20190523224015.56270-2-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523224015.56270-2-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_030313_932746_CBED22B5 
X-CRM114-Status: GOOD (  22.31  )
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
Cc: will.deacon@arm.com, Sudeep Holla <sudeep.holla@arm.com>, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:40:14PM -0500, Jeremy Linton wrote:
> ACPI 6.3 adds a flag to the CPU node to indicate whether
> the given PE is a thread. Add a function to return that
> information for a given linux logical CPU.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c  | 53 +++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/acpi.h |  5 +++++
>  2 files changed, 57 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index b72e6afaa8fb..6f43a0c05f61 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -517,6 +517,43 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>  	return retval;
>  }
>  
> +/**
> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> + * @cpu: Kernel logical CPU number
> + * @rev: The PPTT revision defining the flag
> + * @flag: The flag itself
> + *
> + * Check the node representing a CPU for a given flag.
> + *
> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> + *	   the table revision isn't new enough.
> + * Otherwise returns flag value
> + */
> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)

Initially, I thought we already have similar function, but I was wrong.

> +{
> +	struct acpi_table_header *table;
> +	acpi_status status;
> +	u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
> +	struct acpi_pptt_processor *cpu_node = NULL;
> +	int ret = -ENONET;


Unfortunately even ENONET is defined and will silently compile fine, but
I assume you need ENOENT as mentioned in the comment/doc.
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
> +		ret = cpu_node->flags & flag;
> +
> +	acpi_put_table(table);
> +
> +	return ret;
> +}
> +
>  /**
>   * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
>   * @cpu: Kernel logical CPU number
> @@ -581,6 +618,21 @@ int cache_setup_acpi(unsigned int cpu)
>  	return status;
>  }
>  
> +/**
> + * acpi_pptt_cpu_is_thread() - Determine if logical CPU is a thread
> + * @cpu: Kernel logical CPU number
> + *
> + *
> + * Return: 1, a thread
> + *         0, not a thread
> + *         -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> + *         the table revision isn't new enough.
> + */
> +int acpi_pptt_cpu_is_thread(unsigned int cpu)
> +{
> +	return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
> +}
> +
>  /**
>   * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
>   * @cpu: Kernel logical CPU number
> @@ -641,7 +693,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>  	return ret;
>  }
>  
> -

Spurious ?

>  /**
>   * find_acpi_cpu_topology_package() - Determine a unique CPU package value
>   * @cpu: Kernel logical CPU number
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 98440df7fe42..513833233c65 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -1314,10 +1314,15 @@ static inline int lpit_read_residency_count_address(u64 *address)
>  #endif
>  
>  #ifdef CONFIG_ACPI_PPTT
> +int acpi_pptt_cpu_is_thread(unsigned int cpu);
>  int find_acpi_cpu_topology(unsigned int cpu, int level);
>  int find_acpi_cpu_topology_package(unsigned int cpu);
>  int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
>  #else
> +static inline int acpi_pptt_cpu_is_thread(unsigned int cpu)
> +{
> +	return -EINVAL;
> +}
>  static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
>  {
>  	return -EINVAL;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
