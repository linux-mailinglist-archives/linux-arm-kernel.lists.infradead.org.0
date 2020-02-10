Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D08157F61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8u8Xal06baFtaZZH+30Coy9igIs+kqpt6hjrgxeGPhc=; b=YKhy2XTNlOW7ey
	L6L03goPgvVfpD7LU4jLjDKmhaL6XFBlhedCWshy4m56yeztQLrKQtUsOGy4v8hE/tccfWVfBvii/
	LrJso9lIJJTGT+i+Jpyz3e0pZ4yOKJMyLqkuK3bMznBLQTokgSJCS6SqfhMZbQEayx/z2LdaPitnM
	VNy8T4JA56NEYogHVsUhlsYz2xNNz9SXJor8m95tmrc2r2KBuW2c1ljIxbX9qBI76skLCSGr73rTZ
	3bFHXdcVjcrflYd440cRU8/z6VJ0jlY1xHDCRfQ7+a5tF/k8MdBsDcXP00xxLgSGyVkHARFG1uSYO
	6xP6+mrqyKaTT9CjpvIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BWb-0006Vg-Ts; Mon, 10 Feb 2020 16:03:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BWR-0006VN-Oe
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:02:57 +0000
Received: from localhost (unknown [104.132.1.111])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D901F20714;
 Mon, 10 Feb 2020 16:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581350574;
 bh=Q1XxZ284hQvopL8PCMcaI9qTASKF2EAuLbBnEBfyQnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KH79nf1ri/XHVY4R08gLMdl57id1OmMitFv2f+ol0fy7pY7cWZ3eP/UroEDbgXJKC
 skHb6ZOkWkdrSCibg/ncszrU/hE5GupyfQkgS7OsiL/+ezry2keuJql93DC2kWK1BG
 DM7mu/rpb+He9yFdZBNE3M7KXS9hCm7Hndj7d1Io=
Date: Mon, 10 Feb 2020 08:02:52 -0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
Message-ID: <20200210160252.GA702121@kroah.com>
References: <20200210152420.10608-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210152420.10608-1-dietmar.eggemann@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_080255_828575_AA80B998 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:24:20PM +0100, Dietmar Eggemann wrote:
> The sched domain pointer argument from topology_get_freq_scale() and
> topology_get_cpu_scale() got removed by commit 7673c8a4c75d
> ("sched/cpufreq: Remove arch_scale_freq_capacity()'s 'sd' parameter")
> and commit 8ec59c0f5f49 ("sched/topology: Remove unused 'sd' parameter
> from arch_scale_cpu_capacity()").
> 
> So the 'struct sched_domain' forward declaration is no longer needed.
> Remove it.
> 
> W/o the sched domain pointer argument the storage class and inline
> definition as well as the return type, function name and parameter list
> fit all into one line.
> 
> Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  include/linux/arch_topology.h | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
> index 3015ecbb90b1..c507e9ddd909 100644
> --- a/include/linux/arch_topology.h
> +++ b/include/linux/arch_topology.h
> @@ -16,9 +16,7 @@ bool topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu);
>  
>  DECLARE_PER_CPU(unsigned long, cpu_scale);
>  
> -struct sched_domain;
> -static inline
> -unsigned long topology_get_cpu_scale(int cpu)
> +static inline unsigned long topology_get_cpu_scale(int cpu)
>  {
>  	return per_cpu(cpu_scale, cpu);
>  }
> @@ -27,8 +25,7 @@ void topology_set_cpu_scale(unsigned int cpu, unsigned long capacity);
>  
>  DECLARE_PER_CPU(unsigned long, freq_scale);
>  
> -static inline
> -unsigned long topology_get_freq_scale(int cpu)
> +static inline unsigned long topology_get_freq_scale(int cpu)

You are doing two different things in this patch :(

Reformatting the function names are fine, but that has nothing to do
with dropping the "struct sched_domain;" line.  Please split into 2
different patches.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
