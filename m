Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06479169FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r0FeyiEAN2KyUYZ6K2wu64W592TJl1ZxSYpG4q1um0w=; b=BxlrK224K8oqyMWuIWhCRTtdc
	6dk+AmyD3bNLPNpm7lTyMM5UBqow7PFwfO15sKmfb735HjjCYL/JXdJycDpk2OHN3fx2gjuO3pCu2
	09FlKmhLekkr0Pj0bT5ivMnPQ56/6SjfJ4Zfy3VSDfywFjqzwBQiYmGCleEnYWCZDcsgLYpfjqOmV
	UXMvzds3psqik/m6iiPZ/vKWzWgUax7DR5UDkfQRgpUv9jVjPceKZ2Xcf5nmpdHhFINYe4WT8YNXk
	aJVJTM741/9AGplz0ImnmLnKvA04GvdtBKvkGlj5li+dW+o+mRZACq8J/L7xMIM9iFxePhgmOSBDa
	8HA97UkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4an-0008IT-NW; Tue, 07 May 2019 18:13:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4af-0008I6-Ob
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:13:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2347DA78;
 Tue,  7 May 2019 11:13:21 -0700 (PDT)
Received: from [192.168.100.241] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 616863F5AF;
 Tue,  7 May 2019 11:13:19 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] ACPI/PPTT: Trivial, change the capitalization of
 CPU
To: linux-arm-kernel@lists.infradead.org
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-2-jeremy.linton@arm.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <b9ddf347-53ec-c2d1-595e-11723d1259d4@arm.com>
Date: Tue, 7 May 2019 13:12:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190503232407.37195-2-jeremy.linton@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_111321_808565_F5F1B9A7 
X-CRM114-Status: GOOD (  28.39  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, john.garry@huawei.com,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 5/3/19 6:24 PM, Jeremy Linton wrote:
> CPU is an acronym and customarily capitalized. Much of the
> commenting in the PPTT code has been using "cpu" rather
> than "CPU". Correct that, and other human readable strings.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Looks like a similar patch (covering more than this file) landed as 
603fadf33604a, so this patch should be dropped.



> ---
>   drivers/acpi/pptt.c | 48 ++++++++++++++++++++++-----------------------
>   1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 065c4fc245d1..83a026765faa 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -164,7 +164,7 @@ static struct acpi_pptt_cache *acpi_find_cache_level(struct acpi_table_header *t
>   }
>   
>   /**
> - * acpi_count_levels() - Given a PPTT table, and a cpu node, count the caches
> + * acpi_count_levels() - Given a PPTT table, and a CPU node, count the caches
>    * @table_hdr: Pointer to the head of the PPTT table
>    * @cpu_node: processor node we wish to count caches for
>    *
> @@ -235,7 +235,7 @@ static int acpi_pptt_leaf_node(struct acpi_table_header *table_hdr,
>   /**
>    * acpi_find_processor_node() - Given a PPTT table find the requested processor
>    * @table_hdr:  Pointer to the head of the PPTT table
> - * @acpi_cpu_id: cpu we are searching for
> + * @acpi_cpu_id: CPU we are searching for
>    *
>    * Find the subtable entry describing the provided processor.
>    * This is done by iterating the PPTT table looking for processor nodes
> @@ -456,21 +456,21 @@ static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_ta
>   
>   static void acpi_pptt_warn_missing(void)
>   {
> -	pr_warn_once("No PPTT table found, cpu and cache topology may be inaccurate\n");
> +	pr_warn_once("No PPTT table found, CPU and cache topology may be inaccurate\n");
>   }
>   
>   /**
>    * topology_get_acpi_cpu_tag() - Find a unique topology value for a feature
>    * @table: Pointer to the head of the PPTT table
> - * @cpu: Kernel logical cpu number
> + * @cpu: Kernel logical CPU number
>    * @level: A level that terminates the search
>    * @flag: A flag which terminates the search
>    *
> - * Get a unique value given a cpu, and a topology level, that can be
> - * matched to determine which cpus share common topological features
> + * Get a unique value given a CPU, and a topology level, that can be
> + * matched to determine which CPUs share common topological features
>    * at that level.
>    *
> - * Return: Unique value, or -ENOENT if unable to locate cpu
> + * Return: Unique value, or -ENOENT if unable to locate CPU
>    */
>   static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>   				     unsigned int cpu, int level, int flag)
> @@ -510,7 +510,7 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>   		return -ENOENT;
>   	}
>   	retval = topology_get_acpi_cpu_tag(table, cpu, level, flag);
> -	pr_debug("Topology Setup ACPI cpu %d, level %d ret = %d\n",
> +	pr_debug("Topology Setup ACPI CPU %d, level %d ret = %d\n",
>   		 cpu, level, retval);
>   	acpi_put_table(table);
>   
> @@ -519,9 +519,9 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>   
>   /**
>    * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
> - * @cpu: Kernel logical cpu number
> + * @cpu: Kernel logical CPU number
>    *
> - * Given a logical cpu number, returns the number of levels of cache represented
> + * Given a logical CPU number, returns the number of levels of cache represented
>    * in the PPTT. Errors caused by lack of a PPTT table, or otherwise, return 0
>    * indicating we didn't find any cache levels.
>    *
> @@ -534,7 +534,7 @@ int acpi_find_last_cache_level(unsigned int cpu)
>   	int number_of_levels = 0;
>   	acpi_status status;
>   
> -	pr_debug("Cache Setup find last level cpu=%d\n", cpu);
> +	pr_debug("Cache Setup find last level CPU=%d\n", cpu);
>   
>   	acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>   	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
> @@ -551,14 +551,14 @@ int acpi_find_last_cache_level(unsigned int cpu)
>   
>   /**
>    * cache_setup_acpi() - Override CPU cache topology with data from the PPTT
> - * @cpu: Kernel logical cpu number
> + * @cpu: Kernel logical CPU number
>    *
>    * Updates the global cache info provided by cpu_get_cacheinfo()
>    * when there are valid properties in the acpi_pptt_cache nodes. A
>    * successful parse may not result in any updates if none of the
>    * cache levels have any valid flags set.  Futher, a unique value is
>    * associated with each known CPU cache entry. This unique value
> - * can be used to determine whether caches are shared between cpus.
> + * can be used to determine whether caches are shared between CPUs.
>    *
>    * Return: -ENOENT on failure to find table, or 0 on success
>    */
> @@ -567,7 +567,7 @@ int cache_setup_acpi(unsigned int cpu)
>   	struct acpi_table_header *table;
>   	acpi_status status;
>   
> -	pr_debug("Cache Setup ACPI cpu %d\n", cpu);
> +	pr_debug("Cache Setup ACPI CPU %d\n", cpu);
>   
>   	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
>   	if (ACPI_FAILURE(status)) {
> @@ -582,8 +582,8 @@ int cache_setup_acpi(unsigned int cpu)
>   }
>   
>   /**
> - * find_acpi_cpu_topology() - Determine a unique topology value for a given cpu
> - * @cpu: Kernel logical cpu number
> + * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
> + * @cpu: Kernel logical CPU number
>    * @level: The topological level for which we would like a unique ID
>    *
>    * Determine a topology unique ID for each thread/core/cluster/mc_grouping
> @@ -596,7 +596,7 @@ int cache_setup_acpi(unsigned int cpu)
>    * other levels beyond this use a generated value to uniquely identify
>    * a topological feature.
>    *
> - * Return: -ENOENT if the PPTT doesn't exist, or the cpu cannot be found.
> + * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
>    * Otherwise returns a value which represents a unique topological feature.
>    */
>   int find_acpi_cpu_topology(unsigned int cpu, int level)
> @@ -606,12 +606,12 @@ int find_acpi_cpu_topology(unsigned int cpu, int level)
>   
>   /**
>    * find_acpi_cpu_cache_topology() - Determine a unique cache topology value
> - * @cpu: Kernel logical cpu number
> + * @cpu: Kernel logical CPU number
>    * @level: The cache level for which we would like a unique ID
>    *
>    * Determine a unique ID for each unified cache in the system
>    *
> - * Return: -ENOENT if the PPTT doesn't exist, or the cpu cannot be found.
> + * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
>    * Otherwise returns a value which represents a unique topological feature.
>    */
>   int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
> @@ -643,17 +643,17 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>   
>   
>   /**
> - * find_acpi_cpu_topology_package() - Determine a unique cpu package value
> - * @cpu: Kernel logical cpu number
> + * find_acpi_cpu_topology_package() - Determine a unique CPU package value
> + * @cpu: Kernel logical CPU number
>    *
> - * Determine a topology unique package ID for the given cpu.
> + * Determine a topology unique package ID for the given CPU.
>    * This ID can then be used to group peers, which will have matching ids.
>    *
>    * The search terminates when either a level is found with the PHYSICAL_PACKAGE
>    * flag set or we reach a root node.
>    *
> - * Return: -ENOENT if the PPTT doesn't exist, or the cpu cannot be found.
> - * Otherwise returns a value which represents the package for this cpu.
> + * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
> + * Otherwise returns a value which represents the package for this CPU.
>    */
>   int find_acpi_cpu_topology_package(unsigned int cpu)
>   {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
