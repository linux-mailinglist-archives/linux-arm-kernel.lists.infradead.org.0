Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD5F17E3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E839lu8tUZBUMXhI6ggZbuFze+goaFDXei/304yRQT4=; b=AY5ixn3mYbenGs
	fGhUhv3AJWuAagW+me82zPaJV2h1BxNV69+kUKj9k3uX1Qz91rySUPsLlc77MNUINGTFg7es6chKU
	k0jMgN85TtwuhxZmcJRxC4FL6BxgRHh/jX0UIyFkjl418ktJetmldkQdBwKmqqOChmLBI2ifHq7/C
	7BhwNl/98kg4qpbASrVcYpTBvEjrOt5MhkHCnTsbUcom2wq8G/QHd1aKPduKIo7UcnqNB26qCzl4I
	w9dE7Z2S9Ke/6zxuYVUUPMpuaXeKlXM6ZxnOlI8tfh1zxMdNovN8CRuILJmg0Xz9GhYM+L8Y0VlNZ
	sHwo4vxk0EN/DWWtvRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPbh-0003eU-70; Wed, 08 May 2019 16:39:49 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPba-0003e4-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:39:43 +0000
Received: by mail-io1-xd42.google.com with SMTP id m14so17606373ion.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xu3J6eI9YLyb944dtXSWpBpCLJN0nrV0r6Vm0VQQ9gQ=;
 b=T3t4EFADgm+deSPmD7ufZCY5hGmKwOgHct0KLcslcbnCkpC1AL67cQgdcIw9SW0FNZ
 hW4ZHC9W/BgoxLIsXc4egBsLd6KplP2uJDramkLPJ5iQipJzckhpceum3LKqwRA+cMDA
 /Rk1sDFN+OEueV7uiaCm8B4KHisDvDtunqANHv5C8RpeH2sgzGu1k2w03tYujkVEEJOS
 ivGM+zc6xb/g33h6073ueh2TI0wkAhlCDNAIEqIVwEugYVlXxtnqaHFYdBpr5t6vOCHj
 4ni/CXM33+/XefpawlCA2TkiV9yyo/rdZAC3XG0hIAhkMOntWo5Js0HVQoSpYcL/7rSS
 ve4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xu3J6eI9YLyb944dtXSWpBpCLJN0nrV0r6Vm0VQQ9gQ=;
 b=FuTGMvBbhkLNwWCSaQNo2/i/vJvyEYzJ4FSMvCxMw++A4+bqHmOYdqVInOqZQZAjx+
 0Pc7E7BRfXXpPWrviDzuxhBPdFkYsj4044+moX9VMb86faRA1uU/VeFrfScoEy19a2Ze
 9ksnok7vuYs88sp+xxot8NKICx2bdm0jHcgDyR4PNjxNr+ZBgBUeQKJOzMFI184KERbB
 dc959AXxF9yd8IwNCWnhKPAotQZsGdGDtHZgcraWJlVBtb0KUknCBFn1guCgFKCtK3SQ
 tCSimgGUC5WD9atv1USSTd8rkNTzaBVw4ySw+DTNMs+DvsEi9gBBPmyznKEvO2FWYDf+
 ibcw==
X-Gm-Message-State: APjAAAWbp2PVWyOTrjm3ICUtFfUC/dvyk0tImUypixSwxrsi4RU50DqJ
 W4VG/CFBuEkoE0qQp8rIMFkM5Fx9ZJD6rlUxIOGvIg==
X-Google-Smtp-Source: APXvYqznO+r3GY4eu2dyOQXLeapEbXWlznUlhxXvlK5nhKconmio83XGvtE2VgAT/1UhV6MP0P+4rJaLxXgPsMc+FAU=
X-Received: by 2002:a6b:6d06:: with SMTP id a6mr10717892iod.11.1557333580937; 
 Wed, 08 May 2019 09:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <1556899459-27785-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1556899459-27785-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 8 May 2019 10:39:30 -0600
Message-ID: <CANLsYkyxDY8g9zyhTyTqALgF5dmVX1F7DA_93ECpnvAaACYX8g@mail.gmail.com>
Subject: Re: [PATCH 1/2] coresight: Do not call smp_processor_id() from
 preemptible
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_093942_311727_716E0DB1 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Fri, 3 May 2019 at 10:04, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Instead of using smp_processor_id() to figure out the node,
> use the numa_node_id() for the current CPU node to avoid
> splats like :
>
>  BUG: using smp_processor_id() in preemptible [00000000] code: perf/1743
>  caller is alloc_etr_buf.isra.6+0x80/0xa0
>  CPU: 1 PID: 1743 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
>  Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
>   Call trace:
>    dump_backtrace+0x0/0x150
>    show_stack+0x14/0x20
>    dump_stack+0x9c/0xc4
>    debug_smp_processor_id+0x10c/0x110
>    alloc_etr_buf.isra.6+0x80/0xa0
>    tmc_alloc_etr_buffer+0x12c/0x1f0
>    etm_setup_aux+0x1c4/0x230
>    rb_alloc_aux+0x1b8/0x2b8
>    perf_mmap+0x35c/0x478
>    mmap_region+0x34c/0x4f0
>    do_mmap+0x2d8/0x418
>    vm_mmap_pgoff+0xd0/0xf8
>    ksys_mmap_pgoff+0x88/0xf8
>    __arm64_sys_mmap+0x28/0x38
>    el0_svc_handler+0xd8/0x138
>    el0_svc+0x8/0xc
>

That is very interesting...

> Fixes: 855ab61c16bf70b646 ("coresight: tmc-etr: Refactor function tmc_etr_setup_perf_buf()")
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 793639f..74578bd 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
>  tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
>                        int nr_pages, void **pages, bool snapshot)
>  {
> -       int node, cpu = event->cpu;
> +       int node;
>         struct etr_buf *etr_buf;
>         struct etr_perf_buffer *etr_perf;
>
> -       if (cpu == -1)
> -               cpu = smp_processor_id();
> -       node = cpu_to_node(cpu);
> +       node = (event->cpu == -1)? numa_node_id() : cpu_to_node(event->cpu);

Seems to me using numa_node_id() simply circumvent function
debug_smp_processor_id() and using get_cpu() and put_cpu() would be
more appropriate.  But I'll trust the NUMA people have thought about
this long before me.  Would you mind sending another revision that fix
the same code for ETB and ETF?

Thanks,
Mathieu

>
>         etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
>         if (!etr_perf)
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
