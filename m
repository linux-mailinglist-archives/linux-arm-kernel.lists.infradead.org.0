Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D5D13E13
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 09:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63880QERXIZw1o4K/9WdJW5YJd0rSVxPJrAR2/UScrw=; b=GUSi+IzGm/gzAN
	55aR8XG/1N5GLyxPfBlnCOTbGD6BQd+EAHbWWGHlWgXM+31ceObzhmAuijaT3ti0cshRzjM8K7Tnl
	OxTJN++jH24vVq8OoHNjQwoBq00Oe6ybiHVYWcC7b7W08P4Ci2DJWAh7I06Px7QK9A2DWzA8O6G60
	z2Y4/or626EMdSYMI1nE8GSxpbNwOvO3m6DtIUXo2/tOjsnAITDlLyi93h73USP+AXnRnPwYXEw0I
	dWc2PTKnhM66DbcU7H2cx+WenFIf7EzoCB9s7ythxFZexWkmee7h27ZVOzhwI1pqNit3qACiYQZ2u
	B4Rs6EEXL56F0H63n0sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBIo-00068E-Cy; Sun, 05 May 2019 07:11:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBIZ-000673-80
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 07:11:00 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0CDC92711EA03533A31B;
 Sun,  5 May 2019 15:10:42 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.180) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Sun, 5 May 2019
 15:10:33 +0800
Subject: Re: [PATCH v3 2/5] ACPI/PPTT: Add function to return ACPI 6.3
 Identical tokens
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-3-jeremy.linton@arm.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <b52d15ab-de9c-8aa4-d2a4-dacdcb9d137e@huawei.com>
Date: Sun, 5 May 2019 15:09:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <20190503232407.37195-3-jeremy.linton@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.19.180]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_001059_531948_C21C9CC4 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/5/4 7:24, Jeremy Linton wrote:
> ACPI 6.3 adds a flag to indicate that child nodes are all
> identical cores. This is useful to authoritatively determine
> if a set of (possibly offline) cores are identical or not.
>
> Since the flag doesn't give us a unique id we can generate
> one and use it to create bitmaps of sibling nodes, or simply
> in a loop to determine if a subset of cores are identical.
>
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
> + * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
> + * Otherwise returns a value which represents a group of identical cores
> + * similar to this CPU.
> + */
> +int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
> +{
> +	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
> +					  ACPI_PPTT_ACPI_IDENTICAL);
> +}
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index d5dcebd7aad3..1444fb042898 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -1309,6 +1309,7 @@ static inline int lpit_read_residency_count_address(u64 *address)
>  #ifdef CONFIG_ACPI_PPTT
>  int find_acpi_cpu_topology(unsigned int cpu, int level);
>  int find_acpi_cpu_topology_package(unsigned int cpu);
> +int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
>  int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
>  #else
>  static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
> @@ -1319,6 +1320,10 @@ static inline int find_acpi_cpu_topology_package(unsigned int cpu)
>  {
>  	return -EINVAL;
>  }
static inline int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
> +static int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
> +{
> +	return -EINVAL;
> +}
>  static inline int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>  {
>  	return -EINVAL;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
