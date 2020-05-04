Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E521C41E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgEGLAu24f+oFlRICvKMVMIBRTSOT/RGBkWQj905rM8=; b=LhlmLGk7wszQhL
	O+02L2m64ptw3v2rMzUJLjbDHNt+eM3xxlgDN7A6TdK92dCpY9liYApCnoR8mE942pXegIPJJmEpp
	/ZhWF7Py+XMrrph/gOMqlgOr0yiRYqfNOEzNqi/oO0PQFooRh3BL5UcAkPKS10oS8PGr7xZ+AR046
	ySjvDV/Nj8gwRQw15r51xDYw8v0oYdRNnYMt49zVsIuLnXfZBcT+8w7lrcgTnvNcnKsis9tQ6mhSw
	trCS2izLFQBIlLH1fOQhiACnYIJ9gjimV3Sbfb1jpHAcAwaxTtVa1LmuqrbdrZIZKujLwsaBxx0s4
	a2IjP7TqSY/YFZgg23wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeg6-0007WD-8A; Mon, 04 May 2020 17:14:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVefx-0007SH-MV
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:14:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 506D2101E;
 Mon,  4 May 2020 10:14:39 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B128A3F68F;
 Mon,  4 May 2020 10:14:38 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_sdei: remove unused interfaces
To: Christoph Hellwig <hch@lst.de>
References: <20200504164224.2842960-1-hch@lst.de>
From: James Morse <james.morse@arm.com>
Message-ID: <7c127e49-b1c6-c7ac-69bf-9fc0a6dba4c4@arm.com>
Date: Mon, 4 May 2020 18:14:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200504164224.2842960-1-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_101441_821393_E67B9F6F 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wangxiongfeng2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

(CC: +Xiongfeng)

Thanks for the reminder - I was just searching for who was using this.

On 04/05/2020 17:42, Christoph Hellwig wrote:
> The export symbols to register/unregister and enable/disable events
> aren't ever used outside of arm_sdei.c, so mark them static.

Xiongfeng, you have drivers using this, could they be posted upstream. Or can we stop
exporting these?


(they were originally added for the GHES RAS thing, but by the time it was all merged
upstream, it wasn't possible to build it as a module)

Thanks,

James


> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
> index 334c8be0c11fb..bdd6461647d74 100644
> --- a/drivers/firmware/arm_sdei.c
> +++ b/drivers/firmware/arm_sdei.c
> @@ -400,7 +400,7 @@ static void _local_event_enable(void *data)
>  	sdei_cross_call_return(arg, err);
>  }
>  
> -int sdei_event_enable(u32 event_num)
> +static int sdei_event_enable(u32 event_num)
>  {
>  	int err = -EINVAL;
>  	struct sdei_event *event;
> @@ -429,7 +429,6 @@ int sdei_event_enable(u32 event_num)
>  
>  	return err;
>  }
> -EXPORT_SYMBOL(sdei_event_enable);
>  
>  static int sdei_api_event_disable(u32 event_num)
>  {
> @@ -447,7 +446,7 @@ static void _ipi_event_disable(void *data)
>  	sdei_cross_call_return(arg, err);
>  }
>  
> -int sdei_event_disable(u32 event_num)
> +static int sdei_event_disable(u32 event_num)
>  {
>  	int err = -EINVAL;
>  	struct sdei_event *event;
> @@ -471,7 +470,6 @@ int sdei_event_disable(u32 event_num)
>  
>  	return err;
>  }
> -EXPORT_SYMBOL(sdei_event_disable);
>  
>  static int sdei_api_event_unregister(u32 event_num)
>  {
> @@ -502,7 +500,7 @@ static int _sdei_event_unregister(struct sdei_event *event)
>  	return sdei_do_cross_call(_local_event_unregister, event);
>  }
>  
> -int sdei_event_unregister(u32 event_num)
> +static int sdei_event_unregister(u32 event_num)
>  {
>  	int err;
>  	struct sdei_event *event;
> @@ -533,7 +531,6 @@ int sdei_event_unregister(u32 event_num)
>  
>  	return err;
>  }
> -EXPORT_SYMBOL(sdei_event_unregister);
>  
>  /*
>   * unregister events, but don't destroy them as they are re-registered by
> @@ -603,7 +600,8 @@ static int _sdei_event_register(struct sdei_event *event)
>  	return err;
>  }
>  
> -int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
> +static int sdei_event_register(u32 event_num, sdei_event_callback *cb,
> +		void *arg)
>  {
>  	int err;
>  	struct sdei_event *event;
> @@ -643,7 +641,6 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
>  
>  	return err;
>  }
> -EXPORT_SYMBOL(sdei_event_register);
>  
>  static int sdei_reregister_event_llocked(struct sdei_event *event)
>  {
> diff --git a/include/linux/arm_sdei.h b/include/linux/arm_sdei.h
> index 0a241c5c911d8..5f9fb1d95d515 100644
> --- a/include/linux/arm_sdei.h
> +++ b/include/linux/arm_sdei.h
> @@ -22,21 +22,6 @@
>   */
>  typedef int (sdei_event_callback)(u32 event, struct pt_regs *regs, void *arg);
>  
> -/*
> - * Register your callback to claim an event. The event must be described
> - * by firmware.
> - */
> -int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg);
> -
> -/*
> - * Calls to sdei_event_unregister() may return EINPROGRESS. Keep calling
> - * it until it succeeds.
> - */
> -int sdei_event_unregister(u32 event_num);
> -
> -int sdei_event_enable(u32 event_num);
> -int sdei_event_disable(u32 event_num);
> -
>  /* GHES register/unregister helpers */
>  int sdei_register_ghes(struct ghes *ghes, sdei_event_callback *normal_cb,
>  		       sdei_event_callback *critical_cb);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
