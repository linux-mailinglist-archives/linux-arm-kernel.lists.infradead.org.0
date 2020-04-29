Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39F21BE5D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtiEb60V1waJX6n7flXBv6TxFknF18mZE1UUhrQLCyg=; b=MLMCIout9mW4cq
	r04bbZ2uaBqAElQFbRdOpApi23T5pNaYjRysM+H9oWZ4KdD7SNWE2oYQprMEPHyysKcULbRmO+cOg
	FpLfl58srGPV5/Zpjf96xZfmI8fS9Y8YL3MAemE/xX1HZ4Fe5kehxiFiGaBre8ncTMOGyKMO0R4bc
	ii465KQ5CnM87qK7LQWhG7skPyV5v344pou6qxKJLS3bUoAkoerlEBQTMhL8PcroRBPlHsogyyOcG
	PdD7KK73n3EUSGiKCR5ihuRVr9VG6MxKMJC4eLiLBAWUsAcGw/bt1neZiQdpMW6dciLS3J8KWUjQA
	DQSQnK0vpN/WWnagtjrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTr8M-00017y-B8; Wed, 29 Apr 2020 18:08:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTr8B-000166-8V
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:08:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id f15so1131997plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jgBesrZnxL+kYNZAUBc2q+AIqwIcsT3SbcObjZ7pa0c=;
 b=BtnKVoGw4kWLf1dY5ZduBxtig5LWR/+sTfMaOBFb7ji6TCHMdWzbkCejWER0S+j3+M
 0KbT39v5FI1GqWAqgBt1a5pt8r7kBNANGTYOO0Z9FsNeE7aVu56ZIotcaii0lzzPOkq8
 fiMwloXlhwUl5/A3l1efDgqVkGIUqbvwKCF4gLAM1J21QirA23ksdEKRDzLeM/ne9HPW
 muSQY6CkBxeSN/6WR9uSsuK1ZSSW975apfCBU0ez259rvXb+K/NogBQgAFYDoFDFPT5H
 sMSXN+0EiL1JKooomEb8IMKO3OTVOOT7M/1zWIGSQIhJZBdTixGA3oAj+l2bgC3cpBWE
 Jx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jgBesrZnxL+kYNZAUBc2q+AIqwIcsT3SbcObjZ7pa0c=;
 b=sVXodLGdJaBOmzPRljt3HQsI1E3f8n/Whqo2O1ZipsJeUfRoUe6Vl7a/eDN0kD83YP
 4SZquj1rq7swFSbwt6P48KJ+2XcoBtnZYTYpmHm+9L6rxE2nfbRTILUC74J13WkEakGm
 YCq3+lX5aI8tu5UsOYGxJAQmVZTPGn73poEE3jJUZQihq3a09TNMgUnG8XoOhtiTllHA
 ajXMlVbsKsQWENLipX6tGkf7wSX2/lPAmnsEPvJYIxv3pyvT2empe3PSGbXyQH9sjJig
 5qBEbrZxgd5ITEc4xLtnyYH1hk085H61rODbReYZN3Do7DLAlBLWZd9VoH8WVL5cBLqw
 lBnw==
X-Gm-Message-State: AGi0PuZ1Ik3KwUihSMdAjBjfdURlRaoi0lMY3CQDjt/5GrmZTp4qt4iO
 TgYwlIkNEIb1Altvcjq9gCmjUg==
X-Google-Smtp-Source: APiQypIrICIQc3PhjIH1wr0MALmKG/hxL05bEOwS+tytX4MzkuSmDE71EzBQl9ILXyX0kZP0iWI4Kw==
X-Received: by 2002:a17:90b:34c:: with SMTP id
 fh12mr4640772pjb.134.1588183702070; 
 Wed, 29 Apr 2020 11:08:22 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 202sm1497020pgf.41.2020.04.29.11.08.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 11:08:21 -0700 (PDT)
Date: Wed, 29 Apr 2020 12:08:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 1/2] coresight: Include required headers in C files
Message-ID: <20200429180818.GA3062@xps15>
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-2-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428181010.170568-2-swboyd@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_110823_334913_ECFF138E 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Stephen,

On Tue, Apr 28, 2020 at 11:10:09AM -0700, Stephen Boyd wrote:
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
>  .../hwtracing/coresight/coresight-cti-platform.c    |  8 +++++++-
>  drivers/hwtracing/coresight/coresight-cti-sysfs.c   |  7 +++++++
>  drivers/hwtracing/coresight/coresight-cti.c         | 13 +++++++++++++
>  drivers/hwtracing/coresight/coresight-cti.h         |  8 +++++++-
>  4 files changed, 34 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index c6c0c9b4827e..ab3bd4ed0910 100644
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
> index aeea39cbd161..77e14e770806 100644
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

What is io.h and slab.h used for in coresight-cti-sysfs.c ?

>  
>  #include "coresight-cti.h"
>  
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 7fc1fc8d7738..be61c1705916 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -4,7 +4,20 @@
>   * Author: Mike Leach <mike.leach@linaro.org>
>   */
>  
> +#include <linux/amba/bus.h>
> +#include <linux/atomic.h>
> +#include <linux/bits.h>
> +#include <linux/coresight.h>
> +#include <linux/device.h>
> +#include <linux/io.h>

Same comment as above.

No need to send another version if these are mistakes - just let me know and
I'll do the adjustment.

Thanks,
Mathieu

> +#include <linux/kernel.h>
> +#include <linux/list.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/property.h>
> +#include <linux/spinlock.h>
> +
> +#include "coresight-priv.h"
>  #include "coresight-cti.h"
>  
>  /**
> diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
> index 004df3ab9dd0..acf7b545e6b9 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.h
> +++ b/drivers/hwtracing/coresight/coresight-cti.h
> @@ -7,8 +7,14 @@
>  #ifndef _CORESIGHT_CORESIGHT_CTI_H
>  #define _CORESIGHT_CORESIGHT_CTI_H
>  
> -#include <asm/local.h>
> +#include <linux/coresight.h>
> +#include <linux/device.h>
> +#include <linux/fwnode.h>
> +#include <linux/list.h>
>  #include <linux/spinlock.h>
> +#include <linux/sysfs.h>
> +#include <linux/types.h>
> +
>  #include "coresight-priv.h"
>  
>  /*
> -- 
> Sent by a computer, using git, on the internet
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
