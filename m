Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2F019BC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ahiq09plkTl/WOw/ToYv5mRxZsAUxEnPHB97LCrPuxM=; b=W/Y/RBW3XwcJbwEhRmaPid8bN
	MajYN8fkU/DaqAdyULgnmLCc2NIWc9LqCqc3x8E92JQi/deJ4PPYLuTIB78Acn0ZUY5wKweR7HU24
	Jgb3hFjJrq0wJrW3g/qLqPRkE49+WyK0HD7qwB7F3HNjljgNwFQcCUyAruBBPzK/wxG3rVq7/EOx2
	HPv2rrbeSA5TXREglrPruzAcmSF5UyjvLnliVPSooSODeKyyzMxMk3vocoPTfOTjbVMpFzbsaCfY3
	mMKr+R7aCGjZfywfnyGDD8k6qUiy6/OajlH72JOq8XdFUL4SBLNpOb2f+tOyKDclLbGM2HIvgWySr
	ZF93uMUZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2vI-0007vz-Iw; Fri, 10 May 2019 10:38:40 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2vB-0007vD-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:38:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6C88374;
 Fri, 10 May 2019 03:38:30 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A42723F738;
 Fri, 10 May 2019 03:38:29 -0700 (PDT)
Subject: Re: [PATCH 1/4] coresight: tmc-etr: Do not call smp_processor_id()
 from preemptible
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org
References: <1557480663-16759-1-git-send-email-suzuki.poulose@arm.com>
 <1557480663-16759-2-git-send-email-suzuki.poulose@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <319d4d63-326b-9bb5-6a24-f7aa8ec549f9@arm.com>
Date: Fri, 10 May 2019 11:38:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557480663-16759-2-git-send-email-suzuki.poulose@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_033833_680726_D93965CA 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 10/05/2019 10:31, Suzuki K Poulose wrote:
> Instead of using smp_processor_id() to figure out the node,
> use the numa_node_id() for the current CPU node to avoid
> splats like :
> 
>   BUG: using smp_processor_id() in preemptible [00000000] code: perf/1743
>   caller is alloc_etr_buf.isra.6+0x80/0xa0
>   CPU: 1 PID: 1743 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
>   Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
>    Call trace:
>     dump_backtrace+0x0/0x150
>     show_stack+0x14/0x20
>     dump_stack+0x9c/0xc4
>     debug_smp_processor_id+0x10c/0x110
>     alloc_etr_buf.isra.6+0x80/0xa0
>     tmc_alloc_etr_buffer+0x12c/0x1f0
>     etm_setup_aux+0x1c4/0x230
>     rb_alloc_aux+0x1b8/0x2b8
>     perf_mmap+0x35c/0x478
>     mmap_region+0x34c/0x4f0
>     do_mmap+0x2d8/0x418
>     vm_mmap_pgoff+0xd0/0xf8
>     ksys_mmap_pgoff+0x88/0xf8
>     __arm64_sys_mmap+0x28/0x38
>     el0_svc_handler+0xd8/0x138
>     el0_svc+0x8/0xc
> 
> Fixes: 855ab61c16bf70b646 ("coresight: tmc-etr: Refactor function tmc_etr_setup_perf_buf()")
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 793639f..cae9d8a 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
>   tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
>   		       int nr_pages, void **pages, bool snapshot)
>   {
> -	int node, cpu = event->cpu;
> +	int node;
>   	struct etr_buf *etr_buf;
>   	struct etr_perf_buffer *etr_perf;
>   
> -	if (cpu == -1)
> -		cpu = smp_processor_id();
> -	node = cpu_to_node(cpu);
> +	node = (event->cpu == -1) ? numa_node_id() : cpu_to_node(event->cpu);

If cpu == -1 represents a "don't care" scenario, it might be clearer to 
just use NUMA_NO_NODE instead, and let the allocator handle it.

Robin.

>   
>   	etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
>   	if (!etr_perf)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
