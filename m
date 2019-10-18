Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C78DC2AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrUajJ2mD/RaN6gfWrnxiem7H8jNCelKMgN6WvBsSN0=; b=D07hDDSywfcC6h
	La2iSZE3PVelkiCmd0emnP0Tc3bdZuY0WWqNplIN3WcuBa+ok2UUpNeJeaHYb/US6TWDZM1M7CfTj
	rIzq9XRvp1hFG9ucAPV0VLV0PxJq6XnF8V39X8eB47T4uyrB4lppjG/GzpxXUjA+XQqwgFONHJ4UE
	8hybCAwrjDXpvgKX4vT7BpmVgLJLw2n54GlyGoQlolXWRYbnFNllfN0i6CuLXjjX3QCNaRfpG+EvQ
	sELMd8a/mGRrhP37VFlMT3RtJnJ0bqWUdQq1oindqmuEJ11ZPHRjoPy4vIBR4bNFq94p2jm+Nb2JE
	OkJjw1SCcCceEoF3JgQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPNJ-0000ey-Tv; Fri, 18 Oct 2019 10:20:49 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPLH-0006Dy-1F
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:18:45 +0000
Received: from 79.184.255.51.ipv4.supernova.orange.pl (79.184.255.51) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id 2fe1e6cc54d2dbbb; Fri, 18 Oct 2019 12:18:33 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
Date: Fri, 18 Oct 2019 12:18:33 +0200
Message-ID: <1895971.7mY3IlW731@kreacher>
In-Reply-To: <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_031843_271331_106F3149 
X-CRM114-Status: GOOD (  21.79  )
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
Cc: linux-acpi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, October 4, 2019 1:43:27 PM CEST Jonathan Cameron wrote:
> Generic Initiators are a new ACPI concept that allows for the
> description of proximity domains that contain a device which
> performs memory access (such as a network card) but neither
> host CPU nor Memory.
> 
> This patch has the parsing code and provides the infrastructure
> for an architecture to associate these new domains with their
> nearest memory processing node.
> 
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

This depends on the series from Dan at:

https://lore.kernel.org/linux-acpi/CAPcyv4gBSX58CWH4HZ28w0_cZRzJrhgdEFHa2g8KDqyv8aFqZQ@mail.gmail.com/T/#m1acce3ae8f29f680c0d95fd1e840e703949fbc48

AFAICS, so please respin when that one hits the Linus' tree.

> ---
>  drivers/acpi/numa/srat.c       | 62 +++++++++++++++++++++++++++++++++-
>  drivers/base/node.c            |  3 ++
>  include/asm-generic/topology.h |  3 ++
>  include/linux/nodemask.h       |  1 +
>  include/linux/topology.h       |  7 ++++
>  5 files changed, 75 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/numa/srat.c b/drivers/acpi/numa/srat.c
> index eadbf90e65d1..fe34315a9234 100644
> --- a/drivers/acpi/numa/srat.c
> +++ b/drivers/acpi/numa/srat.c
> @@ -170,6 +170,38 @@ acpi_table_print_srat_entry(struct acpi_subtable_header *header)
>  		}
>  		break;
>  
> +	case ACPI_SRAT_TYPE_GENERIC_AFFINITY:
> +	{
> +		struct acpi_srat_generic_affinity *p =
> +			(struct acpi_srat_generic_affinity *)header;
> +		char name[9] = {};
> +
> +		if (p->device_handle_type == 0) {
> +			/*
> +			 * For pci devices this may be the only place they
> +			 * are assigned a proximity domain
> +			 */
> +			pr_debug("SRAT Generic Initiator(Seg:%u BDF:%u) in proximity domain %d %s\n",
> +				 *(u16 *)(&p->device_handle[0]),
> +				 *(u16 *)(&p->device_handle[2]),
> +				 p->proximity_domain,
> +				 (p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> +				"enabled" : "disabled");
> +		} else {
> +			/*
> +			 * In this case we can rely on the device having a
> +			 * proximity domain reference
> +			 */
> +			memcpy(name, p->device_handle, 8);
> +			pr_info("SRAT Generic Initiator(HID=%.8s UID=%.4s) in proximity domain %d %s\n",
> +				(char *)(&p->device_handle[0]),
> +				(char *)(&p->device_handle[8]),
> +				p->proximity_domain,
> +				(p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> +				"enabled" : "disabled");
> +		}
> +	}
> +	break;
>  	default:
>  		pr_warn("Found unsupported SRAT entry (type = 0x%x)\n",
>  			header->type);
> @@ -378,6 +410,32 @@ acpi_parse_gicc_affinity(union acpi_subtable_headers *header,
>  	return 0;
>  }
>  
> +static int __init
> +acpi_parse_gi_affinity(union acpi_subtable_headers *header,
> +		       const unsigned long end)
> +{
> +	struct acpi_srat_generic_affinity *gi_affinity;
> +	int node;
> +
> +	gi_affinity = (struct acpi_srat_generic_affinity *)header;
> +	if (!gi_affinity)
> +		return -EINVAL;
> +	acpi_table_print_srat_entry(&header->common);
> +
> +	if (!(gi_affinity->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED))
> +		return -EINVAL;
> +
> +	node = acpi_map_pxm_to_node(gi_affinity->proximity_domain);
> +	if (node == NUMA_NO_NODE || node >= MAX_NUMNODES) {
> +		pr_err("SRAT: Too many proximity domains.\n");
> +		return -EINVAL;
> +	}
> +	node_set(node, numa_nodes_parsed);
> +	node_set_state(node, N_GENERIC_INITIATOR);
> +
> +	return 0;
> +}
> +
>  static int __initdata parsed_numa_memblks;
>  
>  static int __init
> @@ -433,7 +491,7 @@ int __init acpi_numa_init(void)
>  
>  	/* SRAT: System Resource Affinity Table */
>  	if (!acpi_table_parse(ACPI_SIG_SRAT, acpi_parse_srat)) {
> -		struct acpi_subtable_proc srat_proc[3];
> +		struct acpi_subtable_proc srat_proc[4];
>  
>  		memset(srat_proc, 0, sizeof(srat_proc));
>  		srat_proc[0].id = ACPI_SRAT_TYPE_CPU_AFFINITY;
> @@ -442,6 +500,8 @@ int __init acpi_numa_init(void)
>  		srat_proc[1].handler = acpi_parse_x2apic_affinity;
>  		srat_proc[2].id = ACPI_SRAT_TYPE_GICC_AFFINITY;
>  		srat_proc[2].handler = acpi_parse_gicc_affinity;
> +		srat_proc[3].id = ACPI_SRAT_TYPE_GENERIC_AFFINITY;
> +		srat_proc[3].handler = acpi_parse_gi_affinity;
>  
>  		acpi_table_parse_entries_array(ACPI_SIG_SRAT,
>  					sizeof(struct acpi_table_srat),
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 296546ffed6c..e5863baa8cb6 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -977,6 +977,8 @@ static struct node_attr node_state_attr[] = {
>  #endif
>  	[N_MEMORY] = _NODE_ATTR(has_memory, N_MEMORY),
>  	[N_CPU] = _NODE_ATTR(has_cpu, N_CPU),
> +	[N_GENERIC_INITIATOR] = _NODE_ATTR(has_generic_initiator,
> +					   N_GENERIC_INITIATOR),
>  };
>  
>  static struct attribute *node_state_attrs[] = {
> @@ -988,6 +990,7 @@ static struct attribute *node_state_attrs[] = {
>  #endif
>  	&node_state_attr[N_MEMORY].attr.attr,
>  	&node_state_attr[N_CPU].attr.attr,
> +	&node_state_attr[N_GENERIC_INITIATOR].attr.attr,
>  	NULL
>  };
>  
> diff --git a/include/asm-generic/topology.h b/include/asm-generic/topology.h
> index 238873739550..54d0b4176a45 100644
> --- a/include/asm-generic/topology.h
> +++ b/include/asm-generic/topology.h
> @@ -71,6 +71,9 @@
>  #ifndef set_cpu_numa_mem
>  #define set_cpu_numa_mem(cpu, node)
>  #endif
> +#ifndef set_gi_numa_mem
> +#define set_gi_numa_mem(gi, node)
> +#endif
>  
>  #endif	/* !CONFIG_NUMA || !CONFIG_HAVE_MEMORYLESS_NODES */
>  
> diff --git a/include/linux/nodemask.h b/include/linux/nodemask.h
> index 27e7fa36f707..1aebf766fb52 100644
> --- a/include/linux/nodemask.h
> +++ b/include/linux/nodemask.h
> @@ -399,6 +399,7 @@ enum node_states {
>  #endif
>  	N_MEMORY,		/* The node has memory(regular, high, movable) */
>  	N_CPU,		/* The node has one or more cpus */
> +	N_GENERIC_INITIATOR,	/* The node is a GI only node */
>  	NR_NODE_STATES
>  };
>  
> diff --git a/include/linux/topology.h b/include/linux/topology.h
> index eb2fe6edd73c..05ccf011e489 100644
> --- a/include/linux/topology.h
> +++ b/include/linux/topology.h
> @@ -140,6 +140,13 @@ static inline void set_numa_mem(int node)
>  }
>  #endif
>  
> +#ifndef set_gi_numa_mem
> +static inline void set_gi_numa_mem(int gi, int node)
> +{
> +	_node_numa_mem_[gi] = node;
> +}
> +#endif
> +
>  #ifndef node_to_mem_node
>  static inline int node_to_mem_node(int node)
>  {
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
