Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4BD17A2F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjM7pZrF9+EBOD+fIYfqfWmsTAkxMTkB3ZmR7zUnSIg=; b=KyITL0DOEs3PZh
	c5MbRYB+tFCXDe2zpwcycHOzKLmsCsbEQwmKQBYf700xdGW7BI668txXp+qbpiHrU5/cPaIQFi37R
	8kcvSTXpOV3ztoKdFVdkpZ07ZejiiqmPFoLHUrh+U91jFd7FUkOv9vTCIzHebxOhV8ngqFITBQLpa
	8b1ioGrFlI6ALSLmck4HHNNT2Ug1SKH0IMI4HryX4nsBzUr5GlTDRSm7V7KpO08tTTYsiXUiKlnGR
	Tg+W5H/z2pgJLQbGkcYb4Fd7b3q48iHtLsQ7/BvAyWhPNf1I89zeVFXz57aBJnSlnjfK7jcK528mo
	VqMhxV8WqS6ppVTjQssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nWS-0001G0-5y; Thu, 05 Mar 2020 10:14:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nWG-0001Du-8J; Thu, 05 Mar 2020 10:14:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id a141so5037051wme.2;
 Thu, 05 Mar 2020 02:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ouu4WXxCaevxlmC9Uhz7tTOBhGUlnzRHTVeHp1aOhiI=;
 b=TaYxDEiehx09bbma3RrgW09W2c0LlA1BkOiJvjGkNPusdexeODgG4SuNhkwsrMwY0o
 4007WMrc/4m39OYw4UUkMcQLVpGdZn4c9jBY2o6By1cbNmG1Z9uVdbmAgVrsqfMxqqmW
 ZMkjrkmS0MwfFDQzyVrGWV3v1HB6q0WnW8LVg+iUXsC7ck7Y1I7myp0Ygg3nNArFQbSn
 v5nJAENj2gi81V077ki2FvmLt82EfVsLTSytj7KqD5d5XejoEzpIyQUFH/QofGhvwzeb
 usDNXUIu2OCq9K9SjznaVah+2+9KoN6CsvNnqeIep32vZvTKQtG2UG4e0mnYpBw9+Yxl
 2Giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ouu4WXxCaevxlmC9Uhz7tTOBhGUlnzRHTVeHp1aOhiI=;
 b=nEdDrLxRpbcrykEnQu6ULi5yUMPFz6wLzjmgiU4Th5bZxOFcS2GiW9gcJxldPEhFbY
 uAYWyA9hYXnFeV+s5HE+rF6rz09GpuIP7MhOAVmSKT4kW5ZgYeKtc3uBxnbqU3kNKO/u
 /kNwWuqfKQpD0CR3CH45E5kLV25CCrsOTf6N8xVW5nBHZ+i8EJ1Ca3e4gsJjrFd7nRP8
 jK8jy4IEVz20Pz27MmCfU0FZYR74X/EuQ+T5yvvhcLsflCg2nyiUwEjccXOaJgwYLjAk
 5uZZ8pLJuqASJdC5c3Bz8fgUf9oqhOsOcOBd2eyFV1BRBiGQZwZTvbqc7//EziIIylR/
 DBkg==
X-Gm-Message-State: ANhLgQ2rUcu1iawkXxYGfunKoAxDfbtTYozodP5qbozPhNW5lNviSA+b
 BubamcU+t2LTU9DBseyPcyScfPQhAhJtIatbtL4=
X-Google-Smtp-Source: ADFU+vtRnF/dXxex4bMtm9lMXct71zx/beWq0f7tsbHICcoY3Vly/IH9SaaT79t48a+UTI0DbFZr1itud86S+ZPQomM=
X-Received: by 2002:a05:600c:4108:: with SMTP id
 j8mr8669423wmi.188.1583403257961; 
 Thu, 05 Mar 2020 02:14:17 -0800 (PST)
MIME-Version: 1.0
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
In-Reply-To: <20191223152349.180172-3-chenzhou10@huawei.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 5 Mar 2020 15:43:40 +0530
Message-ID: <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
To: Chen Zhou <chenzhou10@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_021420_297914_6A1CA1DB 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: horms@verge.net.au,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Will Deacon <will@kernel.org>, xiexiuqi@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mingo@redhat.com,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 dyoung@redhat.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>
> Crashkernel=X tries to reserve memory for the crash dump kernel under
> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
> size low memory for crash kdump kernel devices firstly and then reserve
> memory above 4G.
>
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>  arch/arm64/kernel/setup.c |  8 +++++++-
>  arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>  2 files changed, 36 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 56f6645..04d1c87 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
>                     kernel_data.end <= res->end)
>                         request_resource(res, &kernel_data);
>  #ifdef CONFIG_KEXEC_CORE
> -               /* Userspace will find "Crash kernel" region in /proc/iomem. */
> +               /*
> +                * Userspace will find "Crash kernel" region in /proc/iomem.
> +                * Note: the low region is renamed as Crash kernel (low).
> +                */
> +               if (crashk_low_res.end && crashk_low_res.start >= res->start &&
> +                               crashk_low_res.end <= res->end)
> +                       request_resource(res, &crashk_low_res);
>                 if (crashk_res.end && crashk_res.start >= res->start &&
>                     crashk_res.end <= res->end)
>                         request_resource(res, &crashk_res);
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index b65dffd..0d7afd5 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
>  {
>         unsigned long long crash_base, crash_size;
>         int ret;
> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
>
>         ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>                                 &crash_size, &crash_base);
> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
>         if (ret || !crash_size)
>                 return;
>
> +       ret = reserve_crashkernel_low();
> +       if (!ret && crashk_low_res.end) {
> +               /*
> +                * If crashkernel=X,low specified, there may be two regions,
> +                * we need to make some changes as follows:
> +                *
> +                * 1. rename the low region as "Crash kernel (low)"
> +                * In order to distinct from the high region and make no effect
> +                * to the use of existing kexec-tools, rename the low region as
> +                * "Crash kernel (low)".
> +                *
> +                * 2. change the upper bound for crash memory
> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
> +                *
> +                * 3. mark the low region as "nomap"
> +                * The low region is intended to be used for crash dump kernel
> +                * devices, just mark the low region as "nomap" simply.
> +                */
> +               const char *rename = "Crash kernel (low)";
> +
> +               crashk_low_res.name = rename;
> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
> +               memblock_mark_nomap(crashk_low_res.start,
> +                                   resource_size(&crashk_low_res));
> +       }
> +
>         crash_size = PAGE_ALIGN(crash_size);
>
>         if (crash_base == 0) {
>                 /* Current arm64 boot protocol requires 2MB alignment */
> -               crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
> -                               crash_size, SZ_2M);
> +               crash_base = memblock_find_in_range(0, crash_max, crash_size,
> +                               SZ_2M);
>                 if (crash_base == 0) {
>                         pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>                                 crash_size);
> --

I tested this patch series on ARM64-ThunderX2 with no issue with
bootargs crashkenel=X@Y crashkernel=250M,low

$ dmesg | grep crash
[    0.000000] crashkernel reserved: 0x0000000b81200000 -
0x0000000c81200000 (4096 MB)
[    0.000000] Kernel command line:
BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
[   29.310209]     crashkernel=250M,low

$  kexec -p -i /boot/vmlinuz-`uname -r`
--initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
$ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger

But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
Kernel is not able to allocate memory.
[    0.000000] cannot allocate crashkernel (size:0x100000000)
[    0.000000] Kernel command line:
BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
crashkernel=250M,low nowatchdog
[   29.332081]     crashkernel=250M,low

does crashkernel=X@Y mandatory to get allocated beyond 4G?
am I missing something?

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
