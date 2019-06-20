Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D4D4C711
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWH1kztRDXDEMITXU4LIEmoSSZbUJmLXzWI1sywUE00=; b=HnmqteGTn8eaET
	uX67zXVK/Mwafapv2pIbRj52To6ch1zepqGonYbapZlFiN6ruvl+IpG4ucTAqA4ABswuu/RF+lq3w
	Co6vYO7LiTZJaa0k7ir/rqepqIuRPEkhT7JnK0hP23nfqLocpltTvndQW+wlL/NXnnfdTb/dU8ImR
	Poq6rM3qxP6vT6Kq4INHHbEPYA7dUD6pibvRYKgVSdpk+azCSx8cVkG4T5oEUuT3BR3FiAgJ3hNGg
	e9hBG6cK77hDyoGoGOYhMt0GfsD0S/S0yY7kGl7i7KmPeMF9MKFHxmkwBBvAvTAcRBeRuS8Tz/5Nh
	Hv94794u6C5Xhb1QwVLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqBA-0000UW-BJ; Thu, 20 Jun 2019 06:04:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqAt-0000Sp-Vp
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:03:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3739620B1F;
 Thu, 20 Jun 2019 06:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561010635;
 bh=3tLj7KMg7uloh2M/EzZn36qxGObqjDmU7drGoKWrpu0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GvK+yUtBGl+8QqV0jcF2mVqMqMbI5n+O1pmS0yW9ythfqfKMFilP+mwtAmoYVt02f
 3hFUdkM8ectPPl2gfh18zjQ0TlprT5Lw8c6rETRtxb9p1J3Z7JSGKOorQgnnmnLFx+
 /ZvBZKsYQNYa9EmX/HUPWwdaPqUuNfoSryFltw/c=
Date: Thu, 20 Jun 2019 08:03:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 22/28] coresight: tmc-etf: Do not call smp_processor_id
 from preemptible
Message-ID: <20190620060353.GC26319@kroah.com>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-23-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619195318.19254-23-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_230356_076966_8B864F33 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:53:12PM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> During a perf session we try to allocate buffers on the "node" associated
> with the CPU the event is bound to. If it is not bound to a CPU, we
> use the current CPU node, using smp_processor_id(). However this is unsafe
> in a pre-emptible context and could generate the splats as below :
> 
>  BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
>  caller is tmc_alloc_etf_buffer+0x5c/0x60
>  CPU: 2 PID: 2544 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
>  Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
>  Call trace:
>   dump_backtrace+0x0/0x150
>   show_stack+0x14/0x20
>   dump_stack+0x9c/0xc4
>   debug_smp_processor_id+0x10c/0x110
>   tmc_alloc_etf_buffer+0x5c/0x60
>   etm_setup_aux+0x1c4/0x230
>   rb_alloc_aux+0x1b8/0x2b8
>   perf_mmap+0x35c/0x478
>   mmap_region+0x34c/0x4f0
>   do_mmap+0x2d8/0x418
>   vm_mmap_pgoff+0xd0/0xf8
>   ksys_mmap_pgoff+0x88/0xf8
>   __arm64_sys_mmap+0x28/0x38
>   el0_svc_handler+0xd8/0x138
>   el0_svc+0x8/0xc
> 
> Use NUMA_NO_NODE hint instead of using the current node for events
> not bound to CPUs.
> 
> Fixes: 2e499bbc1a929ac ("coresight: tmc: implementing TMC-ETF AUX space API")
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

And again, should go into 5.2-final and stable.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
