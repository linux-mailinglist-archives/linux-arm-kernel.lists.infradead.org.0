Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BFCA9E0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqU3ViXM2xZVVJ+gp5Uqb0s/NPvOn+H988VO5yzSKfg=; b=IElCYN+f4BT75J
	HPTOFSta6FYZ5Q8gU0RDqGFcqnKf4yqblz4MezQwuWpBuvLdLhORVhHru9J7hJvfSyC0ZT6BKh0zA
	W3fqn7nt5Q70wfcI43meKD1HcWOsFf1OjznbLzkXd+TPar2RzkzwhUjmPNN+jqoBMWg9xvUZdraxn
	nN6gWrMfmbic1RU41oenl7fotfnz1H6J1UMbklZQCLYqdzv4PPEROTWcsvyJdL2E3f6wTWGeyMlLK
	tGXT4K7OmBc2PbiDBwRO/Nh7I6rhT1uqXupo9hBFb8xxi4qG9hSF9+3VWrKnI5fTk9LOrqqrXKzfz
	nhr79P7/D5WFf77oksdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ntM-0001lb-WE; Thu, 05 Sep 2019 09:17:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nsb-0001VR-JW
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:16:44 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0F65B44412C63457D230;
 Thu,  5 Sep 2019 17:16:32 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Sep 2019
 17:16:25 +0800
Date: Thu, 5 Sep 2019 10:16:14 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH 1/4] ACPI: Support Generic Initiator only domains
Message-ID: <20190905101614.00002323@huawei.com>
In-Reply-To: <CAJZ5v0ie8s-Ye7PD=xj0nXL228WDqhjJPCs+eV3n6_SAeaQowg@mail.gmail.com>
References: <20190821145242.2330-1-Jonathan.Cameron@huawei.com>
 <20190821145242.2330-2-Jonathan.Cameron@huawei.com>
 <CAJZ5v0ie8s-Ye7PD=xj0nXL228WDqhjJPCs+eV3n6_SAeaQowg@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_021638_230288_2D740187 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>, Linuxarm <linuxarm@huawei.com>,
 Keith Busch <keith.busch@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Jerome Glisse <jglisse@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 23:26:16 +0200
"Rafael J. Wysocki" <rafael@kernel.org> wrote:

> On Wed, Aug 21, 2019 at 4:53 PM Jonathan Cameron
> <Jonathan.Cameron@huawei.com> wrote:
> >
> > Generic Initiators are a new ACPI concept that allows for the
> > description of proximity domains that contain a device which
> > performs memory access (such as a network card) but neither
> > host CPU nor Memory.
> >
> > This patch has the parsing code and provides the infrastructure
> > for an architecture to associate these new domains with their
> > nearest memory processing node.
> >
> > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>  
> 
> Dan, Keith, any comments?
> 
> AFAICS this clashes with the series from Dan that rearranges the ACPI
> NUMA related code.

Seems that one is going forwards now which is great. I'll rebase this on
top of Dan's series and send a v5 sometime soon.

Thanks,

Jonathan

> 
> > ---
> >  drivers/acpi/numa.c            | 62 +++++++++++++++++++++++++++++++++-
> >  drivers/base/node.c            |  3 ++
> >  include/asm-generic/topology.h |  3 ++
> >  include/linux/nodemask.h       |  1 +
> >  include/linux/topology.h       |  7 ++++
> >  5 files changed, 75 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/acpi/numa.c b/drivers/acpi/numa.c
> > index eadbf90e65d1..fe34315a9234 100644
> > --- a/drivers/acpi/numa.c
> > +++ b/drivers/acpi/numa.c
> > @@ -170,6 +170,38 @@ acpi_table_print_srat_entry(struct acpi_subtable_header *header)
> >                 }
> >                 break;
> >
> > +       case ACPI_SRAT_TYPE_GENERIC_AFFINITY:
> > +       {
> > +               struct acpi_srat_generic_affinity *p =
> > +                       (struct acpi_srat_generic_affinity *)header;
> > +               char name[9] = {};
> > +
> > +               if (p->device_handle_type == 0) {
> > +                       /*
> > +                        * For pci devices this may be the only place they
> > +                        * are assigned a proximity domain
> > +                        */
> > +                       pr_debug("SRAT Generic Initiator(Seg:%u BDF:%u) in proximity domain %d %s\n",
> > +                                *(u16 *)(&p->device_handle[0]),
> > +                                *(u16 *)(&p->device_handle[2]),
> > +                                p->proximity_domain,
> > +                                (p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> > +                               "enabled" : "disabled");
> > +               } else {
> > +                       /*
> > +                        * In this case we can rely on the device having a
> > +                        * proximity domain reference
> > +                        */
> > +                       memcpy(name, p->device_handle, 8);
> > +                       pr_info("SRAT Generic Initiator(HID=%.8s UID=%.4s) in proximity domain %d %s\n",
> > +                               (char *)(&p->device_handle[0]),
> > +                               (char *)(&p->device_handle[8]),
> > +                               p->proximity_domain,
> > +                               (p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> > +                               "enabled" : "disabled");
> > +               }
> > +       }
> > +       break;
> >         default:
> >                 pr_warn("Found unsupported SRAT entry (type = 0x%x)\n",
> >                         header->type);
> > @@ -378,6 +410,32 @@ acpi_parse_gicc_affinity(union acpi_subtable_headers *header,
> >         return 0;
> >  }
> >
> > +static int __init
> > +acpi_parse_gi_affinity(union acpi_subtable_headers *header,
> > +                      const unsigned long end)
> > +{
> > +       struct acpi_srat_generic_affinity *gi_affinity;
> > +       int node;
> > +
> > +       gi_affinity = (struct acpi_srat_generic_affinity *)header;
> > +       if (!gi_affinity)
> > +               return -EINVAL;
> > +       acpi_table_print_srat_entry(&header->common);
> > +
> > +       if (!(gi_affinity->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED))
> > +               return -EINVAL;
> > +
> > +       node = acpi_map_pxm_to_node(gi_affinity->proximity_domain);
> > +       if (node == NUMA_NO_NODE || node >= MAX_NUMNODES) {
> > +               pr_err("SRAT: Too many proximity domains.\n");
> > +               return -EINVAL;
> > +       }
> > +       node_set(node, numa_nodes_parsed);
> > +       node_set_state(node, N_GENERIC_INITIATOR);
> > +
> > +       return 0;
> > +}
> > +
> >  static int __initdata parsed_numa_memblks;
> >
> >  static int __init
> > @@ -433,7 +491,7 @@ int __init acpi_numa_init(void)
> >
> >         /* SRAT: System Resource Affinity Table */
> >         if (!acpi_table_parse(ACPI_SIG_SRAT, acpi_parse_srat)) {
> > -               struct acpi_subtable_proc srat_proc[3];
> > +               struct acpi_subtable_proc srat_proc[4];
> >
> >                 memset(srat_proc, 0, sizeof(srat_proc));
> >                 srat_proc[0].id = ACPI_SRAT_TYPE_CPU_AFFINITY;
> > @@ -442,6 +500,8 @@ int __init acpi_numa_init(void)
> >                 srat_proc[1].handler = acpi_parse_x2apic_affinity;
> >                 srat_proc[2].id = ACPI_SRAT_TYPE_GICC_AFFINITY;
> >                 srat_proc[2].handler = acpi_parse_gicc_affinity;
> > +               srat_proc[3].id = ACPI_SRAT_TYPE_GENERIC_AFFINITY;
> > +               srat_proc[3].handler = acpi_parse_gi_affinity;
> >
> >                 acpi_table_parse_entries_array(ACPI_SIG_SRAT,
> >                                         sizeof(struct acpi_table_srat),
> > diff --git a/drivers/base/node.c b/drivers/base/node.c
> > index 75b7e6f6535b..6f60689af5f8 100644
> > --- a/drivers/base/node.c
> > +++ b/drivers/base/node.c
> > @@ -980,6 +980,8 @@ static struct node_attr node_state_attr[] = {
> >  #endif
> >         [N_MEMORY] = _NODE_ATTR(has_memory, N_MEMORY),
> >         [N_CPU] = _NODE_ATTR(has_cpu, N_CPU),
> > +       [N_GENERIC_INITIATOR] = _NODE_ATTR(has_generic_initiator,
> > +                                          N_GENERIC_INITIATOR),
> >  };
> >
> >  static struct attribute *node_state_attrs[] = {
> > @@ -991,6 +993,7 @@ static struct attribute *node_state_attrs[] = {
> >  #endif
> >         &node_state_attr[N_MEMORY].attr.attr,
> >         &node_state_attr[N_CPU].attr.attr,
> > +       &node_state_attr[N_GENERIC_INITIATOR].attr.attr,
> >         NULL
> >  };
> >
> > diff --git a/include/asm-generic/topology.h b/include/asm-generic/topology.h
> > index 238873739550..54d0b4176a45 100644
> > --- a/include/asm-generic/topology.h
> > +++ b/include/asm-generic/topology.h
> > @@ -71,6 +71,9 @@
> >  #ifndef set_cpu_numa_mem
> >  #define set_cpu_numa_mem(cpu, node)
> >  #endif
> > +#ifndef set_gi_numa_mem
> > +#define set_gi_numa_mem(gi, node)
> > +#endif
> >
> >  #endif /* !CONFIG_NUMA || !CONFIG_HAVE_MEMORYLESS_NODES */
> >
> > diff --git a/include/linux/nodemask.h b/include/linux/nodemask.h
> > index 27e7fa36f707..1aebf766fb52 100644
> > --- a/include/linux/nodemask.h
> > +++ b/include/linux/nodemask.h
> > @@ -399,6 +399,7 @@ enum node_states {
> >  #endif
> >         N_MEMORY,               /* The node has memory(regular, high, movable) */
> >         N_CPU,          /* The node has one or more cpus */
> > +       N_GENERIC_INITIATOR,    /* The node is a GI only node */
> >         NR_NODE_STATES
> >  };
> >
> > diff --git a/include/linux/topology.h b/include/linux/topology.h
> > index 47a3e3c08036..2f97754e0508 100644
> > --- a/include/linux/topology.h
> > +++ b/include/linux/topology.h
> > @@ -125,6 +125,13 @@ static inline void set_numa_mem(int node)
> >  }
> >  #endif
> >
> > +#ifndef set_gi_numa_mem
> > +static inline void set_gi_numa_mem(int gi, int node)
> > +{
> > +       _node_numa_mem_[gi] = node;
> > +}
> > +#endif
> > +
> >  #ifndef node_to_mem_node
> >  static inline int node_to_mem_node(int node)
> >  {
> > --
> > 2.20.1
> >  
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
