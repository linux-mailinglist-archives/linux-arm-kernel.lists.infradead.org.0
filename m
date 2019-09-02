Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95197A5D83
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jv7Vj9rQs+OfqpNI8UkiCq5plb31mQTgRaD77Ej26YE=; b=B1jbIIzTxdsFVu
	pGXN0dFTZHBqf6gZIy8h/sSkDu4BoGYgZcXnh8vpu6RSnhQJtbk9OJRaU5PaZXQgaupJuam+MOnwz
	4jx777SMUk1oBYDmzOR62Qh9aFI7XvtiikLYEs+CCeQOSwNXDw5rK7K0YN2Fo01kzo/mlE7r2nLZe
	DL8QkdkdsFBp+rzWLz/3wo30TWUVxCmSBxFrD8TzZMOSJekZaEKf3kAv+nueTo7LMH3O8OB6kCQvX
	s6zXuWZvZyW9G0ObQ0BcptQsCP2PhY5o3a82i21yvXie0uVr/MYQ4KsNc1ILKsyeRs21GUq6ZDhqL
	CtU5GB2mUs7Ccg2HdfgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tqT-0008HA-Nf; Mon, 02 Sep 2019 21:26:41 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tqG-0008Gj-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:26:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id g16so2837039otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 14:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=51bqbB4DvSXg4Ew2o4zqEia3sJ8jFJPwKkEVreoHOaQ=;
 b=SaO2hxjUwaCIlnO0UXCpgcX6w/Fbic8b2WraGpHBvFCaLwckIbok8Q9ZbDS/p48ZJV
 qqRywRHJ1KKQCKWJkFjkBJmdPUOV47f1V0477TXize/i4/cZNPUtcBSOaHRw2ioKD5Jf
 N4Rr6ETX2128vVzr1jUPDcHeU0GcOGwx03FDKoA9hccTKLie/0RX0zPMWRKgI1w0Miqc
 ac4XD35FMNZwjCdmJAuEY1e2jqLTRfQXPvUSDQTEnvs1sz3dTzWZ0YUQKLFmq6XEB5yi
 Tm+X7J/Yz8vy8F01nnfNDqWYdPJWl02zBFj6FfCkmkAag2lJtAX8q2Jm0aQ27EqfHz2C
 WGDw==
X-Gm-Message-State: APjAAAUGIf/87uFvbLc893DQ5y6PLLbNMAvH2aTU7pLVHfY7zXDuD6kb
 6TJ3J9dahPRhIPwfuyZvoRBrzg5Tez34F5aTFPY=
X-Google-Smtp-Source: APXvYqyUaffwR13IQSYSCljLxByT0+wOU3SzpStZdcxkTWgg2N0HBS0eY/sfMgMZHr4cE6nJGHZFFVvQMXyTWZcajro=
X-Received: by 2002:a9d:7411:: with SMTP id n17mr5844599otk.118.1567459587215; 
 Mon, 02 Sep 2019 14:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190821145242.2330-1-Jonathan.Cameron@huawei.com>
 <20190821145242.2330-2-Jonathan.Cameron@huawei.com>
In-Reply-To: <20190821145242.2330-2-Jonathan.Cameron@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 2 Sep 2019 23:26:16 +0200
Message-ID: <CAJZ5v0ie8s-Ye7PD=xj0nXL228WDqhjJPCs+eV3n6_SAeaQowg@mail.gmail.com>
Subject: Re: [PATCH 1/4] ACPI: Support Generic Initiator only domains
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>, 
 Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_142628_536715_56E051C6 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Jerome Glisse <jglisse@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 4:53 PM Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:
>
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

Dan, Keith, any comments?

AFAICS this clashes with the series from Dan that rearranges the ACPI
NUMA related code.

> ---
>  drivers/acpi/numa.c            | 62 +++++++++++++++++++++++++++++++++-
>  drivers/base/node.c            |  3 ++
>  include/asm-generic/topology.h |  3 ++
>  include/linux/nodemask.h       |  1 +
>  include/linux/topology.h       |  7 ++++
>  5 files changed, 75 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/numa.c b/drivers/acpi/numa.c
> index eadbf90e65d1..fe34315a9234 100644
> --- a/drivers/acpi/numa.c
> +++ b/drivers/acpi/numa.c
> @@ -170,6 +170,38 @@ acpi_table_print_srat_entry(struct acpi_subtable_header *header)
>                 }
>                 break;
>
> +       case ACPI_SRAT_TYPE_GENERIC_AFFINITY:
> +       {
> +               struct acpi_srat_generic_affinity *p =
> +                       (struct acpi_srat_generic_affinity *)header;
> +               char name[9] = {};
> +
> +               if (p->device_handle_type == 0) {
> +                       /*
> +                        * For pci devices this may be the only place they
> +                        * are assigned a proximity domain
> +                        */
> +                       pr_debug("SRAT Generic Initiator(Seg:%u BDF:%u) in proximity domain %d %s\n",
> +                                *(u16 *)(&p->device_handle[0]),
> +                                *(u16 *)(&p->device_handle[2]),
> +                                p->proximity_domain,
> +                                (p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> +                               "enabled" : "disabled");
> +               } else {
> +                       /*
> +                        * In this case we can rely on the device having a
> +                        * proximity domain reference
> +                        */
> +                       memcpy(name, p->device_handle, 8);
> +                       pr_info("SRAT Generic Initiator(HID=%.8s UID=%.4s) in proximity domain %d %s\n",
> +                               (char *)(&p->device_handle[0]),
> +                               (char *)(&p->device_handle[8]),
> +                               p->proximity_domain,
> +                               (p->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED) ?
> +                               "enabled" : "disabled");
> +               }
> +       }
> +       break;
>         default:
>                 pr_warn("Found unsupported SRAT entry (type = 0x%x)\n",
>                         header->type);
> @@ -378,6 +410,32 @@ acpi_parse_gicc_affinity(union acpi_subtable_headers *header,
>         return 0;
>  }
>
> +static int __init
> +acpi_parse_gi_affinity(union acpi_subtable_headers *header,
> +                      const unsigned long end)
> +{
> +       struct acpi_srat_generic_affinity *gi_affinity;
> +       int node;
> +
> +       gi_affinity = (struct acpi_srat_generic_affinity *)header;
> +       if (!gi_affinity)
> +               return -EINVAL;
> +       acpi_table_print_srat_entry(&header->common);
> +
> +       if (!(gi_affinity->flags & ACPI_SRAT_GENERIC_AFFINITY_ENABLED))
> +               return -EINVAL;
> +
> +       node = acpi_map_pxm_to_node(gi_affinity->proximity_domain);
> +       if (node == NUMA_NO_NODE || node >= MAX_NUMNODES) {
> +               pr_err("SRAT: Too many proximity domains.\n");
> +               return -EINVAL;
> +       }
> +       node_set(node, numa_nodes_parsed);
> +       node_set_state(node, N_GENERIC_INITIATOR);
> +
> +       return 0;
> +}
> +
>  static int __initdata parsed_numa_memblks;
>
>  static int __init
> @@ -433,7 +491,7 @@ int __init acpi_numa_init(void)
>
>         /* SRAT: System Resource Affinity Table */
>         if (!acpi_table_parse(ACPI_SIG_SRAT, acpi_parse_srat)) {
> -               struct acpi_subtable_proc srat_proc[3];
> +               struct acpi_subtable_proc srat_proc[4];
>
>                 memset(srat_proc, 0, sizeof(srat_proc));
>                 srat_proc[0].id = ACPI_SRAT_TYPE_CPU_AFFINITY;
> @@ -442,6 +500,8 @@ int __init acpi_numa_init(void)
>                 srat_proc[1].handler = acpi_parse_x2apic_affinity;
>                 srat_proc[2].id = ACPI_SRAT_TYPE_GICC_AFFINITY;
>                 srat_proc[2].handler = acpi_parse_gicc_affinity;
> +               srat_proc[3].id = ACPI_SRAT_TYPE_GENERIC_AFFINITY;
> +               srat_proc[3].handler = acpi_parse_gi_affinity;
>
>                 acpi_table_parse_entries_array(ACPI_SIG_SRAT,
>                                         sizeof(struct acpi_table_srat),
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 75b7e6f6535b..6f60689af5f8 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -980,6 +980,8 @@ static struct node_attr node_state_attr[] = {
>  #endif
>         [N_MEMORY] = _NODE_ATTR(has_memory, N_MEMORY),
>         [N_CPU] = _NODE_ATTR(has_cpu, N_CPU),
> +       [N_GENERIC_INITIATOR] = _NODE_ATTR(has_generic_initiator,
> +                                          N_GENERIC_INITIATOR),
>  };
>
>  static struct attribute *node_state_attrs[] = {
> @@ -991,6 +993,7 @@ static struct attribute *node_state_attrs[] = {
>  #endif
>         &node_state_attr[N_MEMORY].attr.attr,
>         &node_state_attr[N_CPU].attr.attr,
> +       &node_state_attr[N_GENERIC_INITIATOR].attr.attr,
>         NULL
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
>  #endif /* !CONFIG_NUMA || !CONFIG_HAVE_MEMORYLESS_NODES */
>
> diff --git a/include/linux/nodemask.h b/include/linux/nodemask.h
> index 27e7fa36f707..1aebf766fb52 100644
> --- a/include/linux/nodemask.h
> +++ b/include/linux/nodemask.h
> @@ -399,6 +399,7 @@ enum node_states {
>  #endif
>         N_MEMORY,               /* The node has memory(regular, high, movable) */
>         N_CPU,          /* The node has one or more cpus */
> +       N_GENERIC_INITIATOR,    /* The node is a GI only node */
>         NR_NODE_STATES
>  };
>
> diff --git a/include/linux/topology.h b/include/linux/topology.h
> index 47a3e3c08036..2f97754e0508 100644
> --- a/include/linux/topology.h
> +++ b/include/linux/topology.h
> @@ -125,6 +125,13 @@ static inline void set_numa_mem(int node)
>  }
>  #endif
>
> +#ifndef set_gi_numa_mem
> +static inline void set_gi_numa_mem(int gi, int node)
> +{
> +       _node_numa_mem_[gi] = node;
> +}
> +#endif
> +
>  #ifndef node_to_mem_node
>  static inline int node_to_mem_node(int node)
>  {
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
