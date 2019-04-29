Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68CDE89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arWdKBai6POM0GOPPbdMzLozYHgTkyeLalVBSvDXVo0=; b=sfsgFsds35kWU5
	fc+j/P3e6MuWTa4RxHJTo3oGmTSBaMyRYhkk+jDEDEjptIwEfkPw7DciA1RRMRZ4CNEjVfmbmjj3m
	zz9PyiatrnyNs3imVr7jZDNlxJM1dBOeDxsaJsgtV3GBgedK1yHUmuYXbZYnAuO9aWFE/bXctm/Sl
	hL49QIJc9uIH6PkL5q6C2NBBgBqmQF1c5+ON1NlAn8XZYnCzUV8zeC4muYAc/tAI0jH18I3tSLBne
	Egj44Y9UPE/D5kRvn7sNlStBaT8NDB4ZqK10xlQSY0oE9jGpfCYofjQe7ke0Hj46EFqwo04Q0Zrm9
	E2DMTQshOW1yGNPhZWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL292-000219-14; Mon, 29 Apr 2019 09:00:16 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL28t-0001Ti-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:00:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id f23so7912296otl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 02:00:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=crSkA8XNd3z0SC+KxAVvI8kflKvVvG+Q7xkpAUf78qw=;
 b=AZarfeCL/fGnRguAWIxooPn5hbrfhH35RlgoMog9bR1TwwjH+4I1Quqa4++w6eXfuM
 O+n91hK2n+HetN9jk8uiBbFLxR0WbW8eMk26mwGdzJZgNZM1tjPNbGxiuMwtbpD3MB2U
 JN7S3CMqZf0LCItuN8rKEo9PQ03DqVQ8lTvDawPjUqKljjCVji0C2DRd4XA0ya/8QyYa
 arZrbKyJlDI17Xcq333kmVYf8LupFVYkqm1U9ZPTftFkTAAYObtcx8zo03GHgk1vc4CU
 xiO/D4lQjwhdkIYbPF18AtD6VUsirNSkLJf8/1kPq2yUI1PZKaBLXCqfYsz/biQE4tTO
 /xqQ==
X-Gm-Message-State: APjAAAVZm8FzdDPcWS/ihJ+3DygltD2Q7yk2EufZbBGyqdpPrpKUqx68
 1apACAh0Fu4WaWDamKe3zQYzptCCuF6yDQTcHMc=
X-Google-Smtp-Source: APXvYqzESzMlKhAVGvillydRVRAF1i1rYc4aXzXRSW9mYwgisPfJumgIQTSeuJS5LNJ/d49p/LeMpAsMrcLJyO7nXRw=
X-Received: by 2002:a05:6830:20cd:: with SMTP id
 z13mr8216752otq.168.1556528404498; 
 Mon, 29 Apr 2019 02:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190426220309.55654-1-jeremy.linton@arm.com>
 <20190426220309.55654-4-jeremy.linton@arm.com>
In-Reply-To: <20190426220309.55654-4-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 29 Apr 2019 10:59:53 +0200
Message-ID: <CAJZ5v0huzpGwVTwp7rWU5bo4ziP3oRrjoW2cz+KU+A7XfiDwVA@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_020007_573301_DA3687C5 
X-CRM114-Status: GOOD (  25.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 12:03 AM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> The ACPI specification implies that the IDENTICAL flag should be
> set on all non leaf nodes where the children are identical.
> This means that we need to be searching for the last node with
> the identical flag set rather than the first one.
>
> To achieve this with the existing code we need to pass a
> function through the tree traversal logic so we can check
> the next node to assure that IDENTICAL isn't set before returning
> a node with IDENTICAL set.
>
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c | 62 +++++++++++++++++++++++++++++++++++----------
>  1 file changed, 48 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 1865515297ca..39f660d8be0a 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -432,17 +432,51 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
>         }
>  }
>
> +
> +typedef bool (*node_check)(struct acpi_table_header *table_hdr,
> +                          struct acpi_pptt_processor *cpu);

I would just use a function pointer with the entire arg list in the
function header(s).  Using this just makes things harder to follow
IMO.

> +static bool flag_package(struct acpi_table_header *table_hdr,
> +                        struct acpi_pptt_processor *cpu)
> +{
> +       return cpu->flags & ACPI_PPTT_PHYSICAL_PACKAGE;
> +}
> +
> +static bool flag_identical(struct acpi_table_header *table_hdr,
> +                          struct acpi_pptt_processor *cpu)
> +{
> +       struct acpi_pptt_processor *next;
> +
> +       /* heterogeneous machines must use PPTT revision > 1 */
> +       if (table_hdr->revision < 2)
> +               return false;
> +
> +       /* Locate the last node in the tree with IDENTICAL set */
> +       if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
> +               next = fetch_pptt_node(table_hdr, cpu->parent);
> +               if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
> +                       return true;
> +       }
> +
> +       return false;
> +}
> +
> +static bool flag_none(struct acpi_table_header *table_hdr,
> +                     struct acpi_pptt_processor *cpu)
> +{
> +       return false;
> +}
> +
>  /* Passing level values greater than this will result in search termination */
>  #define PPTT_ABORT_PACKAGE 0xFF
>
> -static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
> -                                                                 struct acpi_pptt_processor *cpu,
> -                                                                 int level, int flag)
> +static struct acpi_pptt_processor *acpi_find_processor_tag_id(struct acpi_table_header *table_hdr,
> +                                                             struct acpi_pptt_processor *cpu,
> +                                                             int level, node_check chk)
>  {
>         struct acpi_pptt_processor *prev_node;
>
>         while (cpu && level) {
> -               if (cpu->flags & flag)
> +               if (chk(table_hdr, cpu))
>                         break;
>                 pr_debug("level %d\n", level);
>                 prev_node = fetch_pptt_node(table_hdr, cpu->parent);
> @@ -473,15 +507,15 @@ static void acpi_pptt_warn_missing(void)
>   * Return: Unique value, or -ENOENT if unable to locate CPU
>   */
>  static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
> -                                    unsigned int cpu, int level, int flag)
> +                                    unsigned int cpu, int level, node_check chk)
>  {
>         struct acpi_pptt_processor *cpu_node;
>         u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>
>         cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>         if (cpu_node) {
> -               cpu_node = acpi_find_processor_package_id(table, cpu_node,
> -                                                         level, flag);
> +               cpu_node = acpi_find_processor_tag_id(table, cpu_node,
> +                                                         level, chk);
>                 /*
>                  * As per specification if the processor structure represents
>                  * an actual processor, then ACPI processor ID must be valid.
> @@ -498,7 +532,7 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>         return -ENOENT;
>  }
>
> -static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
> +static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, node_check chk)
>  {
>         struct acpi_table_header *table;
>         acpi_status status;
> @@ -509,7 +543,7 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>                 acpi_pptt_warn_missing();
>                 return -ENOENT;
>         }
> -       retval = topology_get_acpi_cpu_tag(table, cpu, level, flag);
> +       retval = topology_get_acpi_cpu_tag(table, cpu, level, chk);
>         pr_debug("Topology Setup ACPI CPU %d, level %d ret = %d\n",
>                  cpu, level, retval);
>         acpi_put_table(table);
> @@ -601,7 +635,7 @@ int cache_setup_acpi(unsigned int cpu)
>   */
>  int find_acpi_cpu_topology(unsigned int cpu, int level)
>  {
> -       return find_acpi_cpu_topology_tag(cpu, level, 0);
> +       return find_acpi_cpu_topology_tag(cpu, level, flag_none);
>  }
>
>  /**
> @@ -658,7 +692,7 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>  int find_acpi_cpu_topology_package(unsigned int cpu)
>  {
>         return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
> -                                         ACPI_PPTT_PHYSICAL_PACKAGE);
> +                                         flag_package);
>  }
>
>  /**
> @@ -670,8 +704,8 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>   *
>   * The returned tag can be used to group peers with identical implementation.
>   *
> - * The search terminates when a level is found with the identical implementation
> - * flag set or we reach a root node.
> + * The search terminates when a level is found without the identical
> + * implementation flag set following a node with it set, or we reach the root.
>   *
>   * Due to limitations in the PPTT data structure, there may be rare situations
>   * where two cores in a heterogeneous machine may be identical, but won't have
> @@ -684,5 +718,5 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>  int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
>  {
>         return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
> -                                         ACPI_PPTT_ACPI_IDENTICAL);
> +                                         flag_identical);
>  }
> --

I'm not a super big fan of passing function pointers in general.

I kind of see how this works for you, but why exactly the flag
(ACPI_PPTT_ACPI_IDENTICAL in this case) is not sufficient to
distinguish between the cases?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
