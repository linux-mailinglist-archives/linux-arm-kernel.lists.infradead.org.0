Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584255E0F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmgsR8Ig3ZjxDEtfBEmJ8X+lcFrowo+ci2sPEItW5sQ=; b=Eb+tgEaxGjGwfB
	mpk3MvPrfRnv43cg1DN2qi0QyN+3w0kWZ4XlrTEX0rdSXhQCe4LjPeHAeA/RqNESJyO0mlPcZtQ1M
	LG+YMzm2Xw2uuXBeF0bMOUh8G+1iiiHtpC4Y+HDJ/RKYKAftrcGhTwZ7l+X+VNTHxuimnQk4HyW15
	qzBivgmkhbhHsFf4S8V/qm48sabS/W8Leu5wlGxYnwcjpywJX6+CUQ6iLkmo9gUc+RMjXmK2O1Lms
	+q3bNq1Uzyhwef477vO7kMEzNQLSGUFd2uTp/YDGtL5/SgGVQri/m3bS6DhlWMmWRqdJ5+wuTP7sz
	jjH4s7MUbJ4ZK5deoPqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibVJ-0007ip-NB; Wed, 03 Jul 2019 09:24:41 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibV7-0007hg-49
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 09:24:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id q20so1664091otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 02:24:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EBhmRSqcGt6U+/+6SrB3QnpytzlXPZrpz69HxBg2hsg=;
 b=nyh1vWhse1NZ0fY02gpamhs3GV7TT0a5pEFghJMdzfG/3Hg1OFUKGyREjW26om02pn
 EjilUB4T/o1KxRXdYkhoTYufYPUxVFb9VhTxMwgK31i2zg8BpKuObrpMheNVMCPbM4XE
 cRPfvjIwp0eqz7euPD5sChqrIIjXV53fcOxN9p+4A+38ALohLxuNpD2fR4W79PH+xjxN
 syzNK8K4NcEWeQ1xPhkOufPjN8Ac+ZGScgB3mVZjA1atWdEbH7u+txVeNH5mBHg5Hmss
 6W5KO4k6B1hgG+/7HOmXBHciaafYrWfvqAvaIn44WA9XpvJyvWWZn5A8Fv9qkUQZb/5c
 j86A==
X-Gm-Message-State: APjAAAV3JxZeFfV7j0PDw11L6a60tO0Er/zLS3YtuPF7CqI1H5QKgQMM
 94aUAFdplDKSQ7IuBNzpXuh+S/62Bk+b7j4oF+E=
X-Google-Smtp-Source: APXvYqwH9zCLqJlnGt5u/c7J6cKx3OsJTsiyJ5TpKXpL84k8XVze9/mDmIxzNPZPqiuF/Z0KXnrEIZ6ZvWcHWgckC5g=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr8259609otp.189.1562145866135; 
 Wed, 03 Jul 2019 02:24:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
In-Reply-To: <20190628181457.6609-2-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jul 2019 11:24:14 +0200
Message-ID: <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_022429_176460_764A30B0 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 8:15 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> ACPI 6.3 adds a flag to the CPU node to indicate whether
> the given PE is a thread. Add a function to return that
> information for a given linux logical CPU.
>
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/acpi.h |  5 ++++
>  2 files changed, 66 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index b72e6afaa8fb..bb6196422fad 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>         return retval;
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
> + *        the table revision isn't new enough.
> + *        1, any passed flag set
> + *        0, flag unset
> + */
> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)

Why not bool?

> +{
> +       struct acpi_table_header *table;
> +       acpi_status status;
> +       u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
> +       struct acpi_pptt_processor *cpu_node = NULL;
> +       int ret = -ENOENT;
> +       static int saved_pptt_rev = -1;
> +
> +       /* Cache the PPTT revision to avoid repeat table get/put on failure */

This is a rather questionable optimization.

Does the extra table get/put really matter?

> +       if (saved_pptt_rev > -1 && saved_pptt_rev < rev)
> +               return -ENOENT;

It should be fine to return 'false' here, shouldn't it?

> +
> +       status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
> +       if (ACPI_FAILURE(status)) {
> +               saved_pptt_rev = 0;
> +               acpi_pptt_warn_missing();
> +               return ret;

And here?

> +       }
> +
> +       saved_pptt_rev = table->revision;
> +
> +       if (saved_pptt_rev >= rev)
> +               cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
> +
> +       if (cpu_node)
> +               ret = (cpu_node->flags & flag) != 0;

And this can be

ret = !!(cpu_node->flags & flag);

> +
> +       acpi_put_table(table);
> +
> +       return ret;
> +}
> +
>  /**
>   * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
>   * @cpu: Kernel logical CPU number
> @@ -581,6 +627,21 @@ int cache_setup_acpi(unsigned int cpu)
>         return status;
>  }
>
> +/**
> + * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
> + * @cpu: Kernel logical CPU number
> + *
> + *
> + * Return: 1, a thread
> + *         0, not a thread
> + *         -ENOENT ,if the PPTT doesn't exist, the CPU cannot be found or
> + *         the table revision isn't new enough.
> + */
> +int acpi_pptt_cpu_is_thread(unsigned int cpu)
> +{
> +       return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
> +}
> +
>  /**
>   * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
>   * @cpu: Kernel logical CPU number
> @@ -641,7 +702,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>         return ret;
>  }
>
> -
>  /**
>   * find_acpi_cpu_topology_package() - Determine a unique CPU package value
>   * @cpu: Kernel logical CPU number
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index d315d86844e4..3e339375e213 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -1301,10 +1301,15 @@ static inline int lpit_read_residency_count_address(u64 *address)
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
> +       return -EINVAL;
> +}
>  static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
>  {
>         return -EINVAL;
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
