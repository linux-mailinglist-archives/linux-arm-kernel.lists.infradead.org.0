Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B6458140
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8wwvt8EMnZGNUJm1wb3n0Gjx6aPiKQmrjdRueDIgTQ=; b=PI/AAjF2nZoVKy
	j09kl+pV0EFoEQTx2fv2YqGREm6a3BNF9o4c/Uzz5k9o64k1j/7yEztl2XQCR6BdMZWPxqP5OR+4l
	ZK1GgMyKiOL58ZWP7iUskQHzQ9pB58teEOqhtzmrNR90UzP9OgsSdzpS58cufwV49quuhFrV2TNx9
	wce0HRaThquHJP5Rdz7Kkt3t5kS1g75yyeLFJfOhAHtKTpBNMySVwz69+4LCRi4eCNB4Ea2TjJB+W
	Mp/QbU/oQdHBGJCrmKbXvbrGn8t42EFugrXWFc5CGzHuzZXJIngbq8t3aIItdLZGeqO35ndIWTjFj
	JUI0LdEhxNyaEdZ4FaXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSNp-0007V9-5m; Thu, 27 Jun 2019 11:16:05 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSNN-0007Pp-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:15:39 +0000
Received: by mail-oi1-f196.google.com with SMTP id l12so1283294oil.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MCoUAfvQtoOdUQRzJp3YAxMM5z56DlV6XuvnfrWIxh8=;
 b=jw7SKSR6ZxHp2h+KuJkYS210jCEFkU0jBVm9+5cS6OlkjXwgdvrPJhlN0S6HKyJzi9
 jtGCPLxibZmyIh9ARUPbqkD3Sv+X1Sf8NAtlHhwQT2TDWBTFCurVQu/98XsaQA7ve1Y0
 gvjivLyG8jhELgNqdTKB6lsqZyxni2ofauhc4+d8/38hYb+AGf+7rYT/Rgh96EC30aPZ
 zeVhWkp/0nWo4/BGq/H/CPuOHvzLMfGCzu9biGe0axbP1coMz/6kttJFcWEtpDdukLer
 s42PGd+B2Ec4GyFA2SPRgS/HPBVHfARyEHHmAsd3osNd1H9zBtdWTOMNCQ4h44Be75E1
 65wA==
X-Gm-Message-State: APjAAAVaczG7r8OJGZQGUBaeg2pe2Gn9Y+lYo7+ul7unvxhjAlgPkGbF
 /+cKiFMMzgYP/+bt8HBEut5erjbitHabzYYl/E8=
X-Google-Smtp-Source: APXvYqwAWX+rdfzN6BS5NnzFFSQ0MP8VbFK4AUz0L4L0N3ZMcq/c/6idSpee191DuJWvyvA6pYrbJ3AK3fDg2yVWEnQ=
X-Received: by 2002:aca:d907:: with SMTP id q7mr1855837oig.68.1561634136962;
 Thu, 27 Jun 2019 04:15:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190626213718.39423-1-jeremy.linton@arm.com>
 <20190626213718.39423-3-jeremy.linton@arm.com>
In-Reply-To: <20190626213718.39423-3-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 27 Jun 2019 13:15:26 +0200
Message-ID: <CAJZ5v0hfHJ-L_ZqkvvVnj0TZqv0MEzMvcFiUetBeiKdjAfLVwg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] ACPI/PPTT: Add function to return ACPI 6.3
 Identical tokens
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_041537_724351_738F60EF 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Hanjun Gou <gouhanjun@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:37 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> ACPI 6.3 adds a flag to indicate that child nodes are all
> identical cores. This is useful to authoritatively determine
> if a set of (possibly offline) cores are identical or not.
>
> Since the flag doesn't give us a unique id we can generate
> one and use it to create bitmaps of sibling nodes, or simply
> in a loop to determine if a subset of cores are identical.
>
> Tested-by: Hanjun Gou <gouhanjun@huawei.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>

Assuming that the Tested-by tag will be fixed:

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  drivers/acpi/pptt.c  | 26 ++++++++++++++++++++++++++
>  include/linux/acpi.h |  5 +++++
>  2 files changed, 31 insertions(+)
>
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 05344413f199..1e7ac0bd0d3a 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -683,3 +683,29 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>         return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>                                           ACPI_PPTT_PHYSICAL_PACKAGE);
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
> +       return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
> +                                         ACPI_PPTT_ACPI_IDENTICAL);
> +}
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index d315d86844e4..5bcd23e5ccd6 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -1303,6 +1303,7 @@ static inline int lpit_read_residency_count_address(u64 *address)
>  #ifdef CONFIG_ACPI_PPTT
>  int find_acpi_cpu_topology(unsigned int cpu, int level);
>  int find_acpi_cpu_topology_package(unsigned int cpu);
> +int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
>  int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
>  #else
>  static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
> @@ -1313,6 +1314,10 @@ static inline int find_acpi_cpu_topology_package(unsigned int cpu)
>  {
>         return -EINVAL;
>  }
> +static inline int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
> +{
> +       return -EINVAL;
> +}
>  static inline int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>  {
>         return -EINVAL;
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
