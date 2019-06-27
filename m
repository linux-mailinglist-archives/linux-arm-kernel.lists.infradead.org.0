Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981F45813F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPVu0reuynW7NWmi05By0u4XFcgcHeTESiyknGK7jfk=; b=YZAGJUTQXzTgLL
	RSsL5i7nm8oJovPLPUTjCY9Bvql1Ewwz8rPlusbe8LwUFNcW/GQ4IPZA2UCI0RIyUWb7Q/sCUj4Tx
	PwqYAlwN/z3LJxwAhlh/Ls1cWx8wLZli5uCKBICalJLMuK7oE6QVpEWTFoySPVw9PvJhMt+UBQGcG
	rW4uMPES0jf25knnDMamRjbvmVCz0GN2iP+nKwZZn71BZfJEcnEdY3ojw3oe5eEmTbsWzk6YVlUU1
	gj/MEPA11BGJ9V4Ol+R06mh0WWZsboWUkDhP0Kd2sqDxovIONFIuRkYVlbXbtBptglRXyDnxAMPAL
	Z04h/aQ8c+la9F6Nr1mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSNO-0007CN-K0; Thu, 27 Jun 2019 11:15:38 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSMy-00071x-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:15:14 +0000
Received: by mail-oi1-f196.google.com with SMTP id w7so1280901oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vkwo17Jxfe5H5nbAVTLEzuj/Ttfe2mfI+ZP3IgtJV0U=;
 b=igVbF50KmQ5b9K3aO5n0ii9gtaBqOt42OF0oU5EZjioolw1uP+4zn88f70Bt+3c69P
 XwobduBDvdaNSMX9bQm0PwWXLFEVPinSW6Dk0YdGL1qbcxMpGWfto+BuUw6i0vXpNBRt
 hTT0EXf2fPo4Kl7lKYkEYPsx08wHC08loma3SnEpt4dqKbN3BKJ48W8dPtYQUVLIp9Mp
 brA/zpR+TzrAZZdhzuZszscUH1Kxxrv3d5wuXKtOK8CTbvfCySRSYqpTr88AI6+FhCzV
 jnQbEUSE4aqK2pesHzJCQ/RVU1nhIVF/8NNHWvG/4Zh7RNVY8CB8eMToiEtx929yZACg
 /E9A==
X-Gm-Message-State: APjAAAVG9PSQcs5LtkZwhBBeL0IvZRo5IpEUGiP2e46xVpwKWpg0QPCs
 TuN7WdpIVUDHXtGUnj04240GC6z1w8Yl2Rl2B1E=
X-Google-Smtp-Source: APXvYqyNtP3I+OQkcwTXLakewZWO7PdxVHYhHgXqYPHJVPHIo+HivWejz3S0mN7DzNENmB04FtX/QkK8MfHFVJJiFRY=
X-Received: by 2002:aca:edc8:: with SMTP id l191mr1874535oih.103.1561634111149; 
 Thu, 27 Jun 2019 04:15:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190626213718.39423-1-jeremy.linton@arm.com>
 <20190626213718.39423-2-jeremy.linton@arm.com>
In-Reply-To: <20190626213718.39423-2-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 27 Jun 2019 13:15:00 +0200
Message-ID: <CAJZ5v0hqDwEAuJ6rk5yBd7_OCW71Y5ihHHNDUUiW6a3wvWOuGg@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_041512_809323_FB765CC8 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
> The ACPI specification implies that the IDENTICAL flag should be
> set on all non leaf nodes where the children are identical.
> This means that we need to be searching for the last node with
> the identical flag set rather than the first one.
>
> Since this flag is also dependent on the table revision, we
> need to add a bit of extra code to verify the table revision,
> and the next node's state in the traversal. Since we want to
> avoid function pointers here, lets just special case
> the IDENTICAL flag.
>
> Tested-by: Hanjun Gou <gouhanjun@huawei.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>

Assuming that the Tested-by tag will be fixed:

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  drivers/acpi/pptt.c | 35 +++++++++++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index b72e6afaa8fb..05344413f199 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -432,17 +432,40 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
>         }
>  }
>
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
>  /* Passing level values greater than this will result in search termination */
>  #define PPTT_ABORT_PACKAGE 0xFF
>
> -static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
> -                                                                 struct acpi_pptt_processor *cpu,
> -                                                                 int level, int flag)
> +static struct acpi_pptt_processor *acpi_find_processor_tag(struct acpi_table_header *table_hdr,
> +                                                          struct acpi_pptt_processor *cpu,
> +                                                          int level, int flag)
>  {
>         struct acpi_pptt_processor *prev_node;
>
>         while (cpu && level) {
> -               if (cpu->flags & flag)
> +               /* special case the identical flag to find last identical */
> +               if (flag == ACPI_PPTT_ACPI_IDENTICAL) {
> +                       if (flag_identical(table_hdr, cpu))
> +                               break;
> +               } else if (cpu->flags & flag)
>                         break;
>                 pr_debug("level %d\n", level);
>                 prev_node = fetch_pptt_node(table_hdr, cpu->parent);
> @@ -480,8 +503,8 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>
>         cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>         if (cpu_node) {
> -               cpu_node = acpi_find_processor_package_id(table, cpu_node,
> -                                                         level, flag);
> +               cpu_node = acpi_find_processor_tag(table, cpu_node,
> +                                                  level, flag);
>                 /*
>                  * As per specification if the processor structure represents
>                  * an actual processor, then ACPI processor ID must be valid.
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
