Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0D633916
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bYQBXmefNp0oLYgCxI3vIlZBl9lCnv/e0cbWJn0Feo=; b=XgoW9pfDiQg5OP
	lLVN5w/92tnOji68acvJqPM5HU68+uMRDbaeTdY8BNRISgJ3VdSDEO1g62lRxUUBNT+nvAesvZIIS
	vwAqxbZ7mYkCkwa2weZ15KQnZSKAPNEZIEwEeAIr8i4oUl7k7UUaxKD4N+hHUSqbETGAXkrpw0npC
	H1UD8KmtjqxeJWyuz3rC0r3jG+NW8RJB/x1QOJOimfPha6iuFbgYx/XktYc7MzYGaaqJevyKXRwTq
	FQ5QqDwIxSn1rbMlRZVIBdJZAUH+vz/wgcHG12Mt3Z0TIqU4+7hNRO3+Q6CW6JhceOSycd4K/x2en
	wq0dDyaeJBcnfg33RU5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsds-0003Xp-El; Mon, 03 Jun 2019 19:29:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsdm-0003XS-Ci
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:29:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id g69so7360701plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 12:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XjbgWtoecpGGajCSSxHkoYg0HmkkYE0g6rtDFZJfqLM=;
 b=aVXt972j+L4QJiEfQu9yr9mHi5NHN1WOMWIQZ0VhO/k4Y+NVMjTZKbIZQ9w+A3J55Y
 BQSwuX/Jvgk2KwytF567CvYv4/bqZ8+E4IW0GXiLmpdt3lGZ1AMIF6ZQxiH6IiacZKRh
 QFDE+hIpEw0KQDaoFae4M/TDkVXeFYx4CkYNzcFASTDTkE6cniX/id0RMVqNVocpTj0c
 wsFYEFub/ywol1MOSNLsQVTN750ucmNxYvoDpKis8RQmY59V5+AnW6xdXlFnEUDNVBBc
 EArKbtntvQk1kG9VOjhbRMMPGSreb0hekgCqKWxpH0hL1RsNBwrvaYKpqUSgjMQ753yI
 /AWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XjbgWtoecpGGajCSSxHkoYg0HmkkYE0g6rtDFZJfqLM=;
 b=XXIJnXwhZeh1hDqzXQLTBfpXZLsEztQBmBSBW3iVNEWzF7auPQMwax88qN1n1B+z3g
 CJ7dzfdeHVi7rYx3FeQsqONbRl0e8ABp+HtBDxpxFmdhEXANURS3YoUG2nhtHsHvHzrv
 FMK5GCI99tihic0BOpWpS9mPRl/w7mrZK6dUIcCstEhGrPpeIHkysxvHOpNe4oZPXRO0
 dQ6gOm6pVP8502IX5cWTLEKb0zs292XcVpGi0Qs9Vp+F4Z3LoMWBOPWPgjGvOHx8FV/l
 yvV0U76BF8hW/12HgNQBTdniqqOeKMKr79lRVUvLgenYa5U7x3x4GVjG/kcpE8lW+06x
 iGwQ==
X-Gm-Message-State: APjAAAXYBeTeIfcRN9HHlgUYTNYmDrYvx9j4uoMbEWA8DhBX9WQwqyte
 NulxfgxAp/jn50P6b8UQiuFQHg==
X-Google-Smtp-Source: APXvYqytyDKluUAQxYCRbUH9nLXS/merzNWi5SCHyS7kQ56eMr5A31BrUtpLE/l2IiEjLGoxkEEOvA==
X-Received: by 2002:a17:902:728b:: with SMTP id
 d11mr2108640pll.78.1559590145287; 
 Mon, 03 Jun 2019 12:29:05 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id n35sm14099984pgl.44.2019.06.03.12.29.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 12:29:04 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:29:02 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 1/4] coresight: tmc-etr: Do not call
 smp_processor_id() from preemptible
Message-ID: <20190603192902.GB20462@xps15>
References: <1559235267-25232-1-git-send-email-suzuki.poulose@arm.com>
 <1559235267-25232-2-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559235267-25232-2-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_122906_431844_AB1DA29A 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 05:54:24PM +0100, Suzuki K Poulose wrote:
> Instead of using smp_processor_id() to figure out the node,
> use the numa_node_id() for the current CPU node to avoid
> splats like :

I was in the process of applying this set when I noticed the changelogs are
still referring to numa_node_id(), which is not part of the solution anymore.
Please address in all 4 patches.

Mathieu

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
> Fixes: 855ab61c16bf70b646 ("coresight: tmc-etr: Refactor function tmc_etr_setup_perf_buf()")
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index ce0114a..7c81f63 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
>  tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
>  		       int nr_pages, void **pages, bool snapshot)
>  {
> -	int node, cpu = event->cpu;
> +	int node;
>  	struct etr_buf *etr_buf;
>  	struct etr_perf_buffer *etr_perf;
>  
> -	if (cpu == -1)
> -		cpu = smp_processor_id();
> -	node = cpu_to_node(cpu);
> +	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
>  
>  	etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
>  	if (!etr_perf)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
