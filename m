Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2E21BAA21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atiaKW61sXTPE8L+VdYIp/ByTakzzdF0wv16xF8oi34=; b=gfvLJRQotJx2gS
	Q6GnDnwHdwmeQ8w4ykkXFw7CpCD6A1jiKJ42C6S1Xyq3qE6/wAp9VWMqw9nlvG89BIppYGmnQzNKH
	kWBNlqFFw9U+4OIa03AfO4TPnBCad5suP+Cfs8TFTBHVQAQJQqY1WeKHlfaEu0n3vKQwmyJaj2YZT
	y0D2CoKCFcxUuBLD2fSC5fwwYagyZLAuDmR56t383rbMWa/gc42Pv65mmMy5wcETNsYUbAdYseSok
	yNsvC3T6CPS49m/WIB2wUMGtHhh0lW6+pfHfO4GKys0FER0LxvuWPlH3va5W4OSlIsFfLl4pVSK1t
	UP0b3AElRarqyPv6vD8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6ih-0002Ub-6Y; Mon, 27 Apr 2020 16:34:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6iX-0002TS-Vb
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:34:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id x77so9261090pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dH5N2+Bi4maNV3TmI71q19uFU+pmI9F59AU5vH4JkGo=;
 b=KgTIBTlEkl4brC9BVI6m48Hr6lFrINQSdl/vtD1d1TG9HjjiP1rV9LlZkFEY97lryv
 FpdoVukZ0PTdSO0bT9R9ppDktjJ5bKAWrFSrIIeL62AZWdBl+tPJotIxlbFf/nhoEys/
 8MtPXxtQTh65nhszKqT1ldyWDzOCPXbR7uhwZiTbXlrB7HPMinpQQ+S8wXSzrGwC5a0u
 fT8tY1Ge0/Qi4xNL+YQXJuPPaQfTTBSv233LH2/1H2OStjLWj+fxMvowEBMKEZ3VHrkV
 1a93tU0BtHcgapnwu37dHt4/sPW49DAFDhwMTYtEswJNG+jqyj6lzwMJcURIr0TXA7U3
 qp3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dH5N2+Bi4maNV3TmI71q19uFU+pmI9F59AU5vH4JkGo=;
 b=I0schkQ+QoAwWMwpm5CukBpuTPbOKjTA7otPZ7ZqVhAkQI4dL2RKPkbalruzMld1/O
 bpqkP+WjCNIxuP63Qe+FnjapKLGMA/x4/0sNnXcgYrqV4oLw6hLhA4Kuw4cVtuGy3OAt
 JKw6lC6IBfQX8SusCNh5H+e9pUpMHc+fgvgQp9/Vg2PN1kYMAlnwuaa/wc7e+bfvei8Z
 JTxdiETGDkQySQS8s1tcMejqBEhW4hTAdRSrsXHf3HeL/OTtB1wwEn1x+CoKicbCjXqy
 F2qYgYJI3+uoQgjStG1BvHs0EHKQc1N9Cjf8siJ9+RFGvlqb6Rd4a2i/hAXfM0I0Zq+p
 HyFA==
X-Gm-Message-State: AGi0PuZuZIsfVNnSlZCyYGGx11jzdSSMqLIiPd9NwGn++OywDUog9c44
 mhGWxNbE1S5bosuqVt9esQb6OA==
X-Google-Smtp-Source: APiQypLQHB4CFaWth/CqHFeb7GtkoQ9f+Z/YV/uWim5iFdQkxhpFtCKNB5qi1Wi4AJ6tYvRUkvgWmA==
X-Received: by 2002:a63:1845:: with SMTP id 5mr19348310pgy.69.1588005288806;
 Mon, 27 Apr 2020 09:34:48 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id fy21sm11457036pjb.25.2020.04.27.09.34.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 09:34:48 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:34:46 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 1/5] coresight: Include required headers in C files
Message-ID: <20200427163446.GB10601@xps15>
References: <20200426185805.14923-1-swboyd@chromium.org>
 <20200426185805.14923-2-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426185805.14923-2-swboyd@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_093450_011845_51F17804 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 11:58:01AM -0700, Stephen Boyd wrote:
> We should include headers that C files use in the C files that use them
> and avoid relying on implicit includes as much as possible. This helps
> avoid compiler errors in the future about missing declarations when
> header files change includes in the future.
> 
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/hwtracing/coresight/coresight-cti-platform.c |  8 +++++++-
>  drivers/hwtracing/coresight/coresight-cti-sysfs.c    |  7 +++++++
>  drivers/hwtracing/coresight/coresight-cti.h          | 10 +++++++++-
>  3 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index b44d83142b62..245f16c61af8 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
> @@ -2,11 +2,17 @@
>  /*
>   * Copyright (c) 2019, The Linaro Limited. All rights reserved.
>   */
> +#include <linux/coresight.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/of.h>
> +#include <linux/property.h>
> +#include <linux/slab.h>
>  
>  #include <dt-bindings/arm/coresight-cti-dt.h>
> -#include <linux/of.h>
>  
>  #include "coresight-cti.h"
> +#include "coresight-priv.h"
>  
>  /* Number of CTI signals in the v8 architecturally defined connection */
>  #define NR_V8PE_IN_SIGS		2
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index 1f8fb7c15e80..bed460541f15 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -4,7 +4,14 @@
>   * Author: Mike Leach <mike.leach@linaro.org>
>   */
>  
> +#include <linux/atomic.h>
>  #include <linux/coresight.h>
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +#include <linux/sysfs.h>
>  
>  #include "coresight-cti.h"
>  
> diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
> index 004df3ab9dd0..d80123b905a8 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.h
> +++ b/drivers/hwtracing/coresight/coresight-cti.h
> @@ -7,8 +7,10 @@
>  #ifndef _CORESIGHT_CORESIGHT_CTI_H
>  #define _CORESIGHT_CORESIGHT_CTI_H
>  
> -#include <asm/local.h>
> +#include <linux/list.h>
>  #include <linux/spinlock.h>
> +#include <linux/types.h>
> +
>  #include "coresight-priv.h"
>  
>  /*
> @@ -52,6 +54,12 @@
>   */
>  #define CTIINOUTEN_MAX		32
>  
> +struct attribute;
> +struct attribute_group;
> +struct coresight_device;
> +struct device;
> +struct fwnode_handle;
> +

I would prefer adding the headers rather than forward declarations, it scales
better.

Thanks,
Mathieu

>  /**
>   * Group of related trigger signals
>   *
> -- 
> Sent by a computer, using git, on the internet
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
