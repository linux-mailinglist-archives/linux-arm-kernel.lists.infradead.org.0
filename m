Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241A91BF8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 00:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KdN6lZsLM/3aQO5sBzIdII7evMQUqXaaqX3hElOZ/M=; b=HuIvl0epln/twb
	ivthD4f4LrY1bjcvha6jCUhXmLvPe9M2S9jt+ElyYdzMNLkNhNUF994Av+BYSzbZKf2Rai+A9BbMK
	yP7c6DuePtFmMGSP9IE6etzrjgYoyPIA1G8hGkMVfR6fxfIVK0apvlRkT9xdosX/LISqZovR4tbYL
	+WByzMvcGGY6nzoq8D3SuCrGyA0UyyeCVRO1j+epaHGalIaSq8CYVKVhVBLiiHyEbK9MEiPo8fZFn
	0rMKJp0bDXRBT2+VkF4mtHD4Rlv6OSaipob5OP/SX/xFJQINxifuVWf8usJB/dLFTUldsY/LfiF92
	bBXeZhXZt5RnsKOvzppA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJcu-00071Z-Nw; Mon, 13 May 2019 22:40:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJcn-00071F-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 22:40:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id f12so5163271plt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 15:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EdQpkIBMeg4fTDKNyi5MjhyUlXbVXsSFmE+0/z8UItw=;
 b=lS3HEhp3gUZ5YyfTIvZFJnJB013CIBUI0rwppPYyaTsdYh8HDrQxWVPyh+VSkcvm+E
 CWLJkdCkAkvnBs3XXcp+QkX4rNbizoodcDtvNjnglYeqzoQKUk2XBbjV3DmqLbIx9KsH
 ODLdnXEiKPEVaIUV9SHgvcv2Ez9HvoSvRcEj8HtQdHYfmq8bVBlbMxiCEcJp9/ak2Agm
 B+IjyoTJTepX1RXqXG6nL8syvaev3QF0GU6QCzFiSGG6t5ExNL/H8KHDX67oNfO2jAu7
 5PQM1Xb4NRbcEw2rAR47CeiJdHdPYtuyvQyqzuoa4xzNfQ4ji56+OcJL3OzNAd+rEJN5
 7sjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EdQpkIBMeg4fTDKNyi5MjhyUlXbVXsSFmE+0/z8UItw=;
 b=dZewl5VYyJYyokCwEJ/hOMASxHJS7fKpWDcJ1FFjUdbrHmeCiZo9gPyWfQHjrh7CpN
 GJXnsyAJb26j8rs0Drl4QXCEqtmmtz3roYMBXo9MH5PcProezZ5mZI1ofWvdxMeXNzUM
 gzVMWGIvmL0kUFRENPNBZAzLzSm/piM8nJ82YRIrALuGE+nK+T6F59rtpR1BdMzeQfUl
 q/ukC9DWMZ2f7uHW3vZF3Q2X1SA9Aq5VqF8dI1wRtKlJyTpcanZ7U81CMl4Lq5QhtVdD
 ZgvaR05JydlqDX0cfrqR6NbIBrQFzgaNsNLBFCIq3i3iGrVa/nESd1eRZ5zydFbtfLuv
 8LKA==
X-Gm-Message-State: APjAAAX9/jC1tqAxzmqAbsEnDwfSzxrJeQDwRNVu7KGyZyVYDF0540FE
 7dMs6tNbOSoYWYJIDJhajvIzZA==
X-Google-Smtp-Source: APXvYqw0QV9Wrd/7bDYqoV0GRLJZB9DgR5yUeK57Tng47+bb/tycDqkWQ7YQ4sX4tWCofscUrQLR+A==
X-Received: by 2002:a17:902:46a:: with SMTP id 97mr6029286ple.66.1557787248550; 
 Mon, 13 May 2019 15:40:48 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id n26sm22109920pfi.165.2019.05.13.15.40.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 15:40:48 -0700 (PDT)
Date: Mon, 13 May 2019 16:40:46 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 23/30] coresight: Add support for releasing platform
 specific data
Message-ID: <20190513224046.GH16162@xps15>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
 <1557226378-10131-24-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557226378-10131-24-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154049_480507_947BF94B 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:52:50AM +0100, Suzuki K Poulose wrote:
> Add a helper to clean up the platform specific data provided
> by the firmware. This will be later used for dropping the necessary
> references when we switch to the fwnode handles for tracking
> connections.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 6 +++++-
>  drivers/hwtracing/coresight/coresight-priv.h     | 4 ++++
>  drivers/hwtracing/coresight/coresight.c          | 3 +++
>  3 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index f500de6..53d6eed 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -17,6 +17,7 @@
>  #include <linux/cpumask.h>
>  #include <asm/smp_plat.h>
>  
> +#include "coresight-priv.h"
>  /*
>   * coresight_alloc_conns: Allocate connections record for each output
>   * port from the device.
> @@ -311,7 +312,7 @@ struct coresight_platform_data *
>  coresight_get_platform_data(struct device *dev)
>  {
>  	int ret = -ENOENT;
> -	struct coresight_platform_data *pdata;
> +	struct coresight_platform_data *pdata = NULL;
>  	struct fwnode_handle *fwnode = dev_fwnode(dev);
>  
>  	if (IS_ERR_OR_NULL(fwnode))
> @@ -329,6 +330,9 @@ coresight_get_platform_data(struct device *dev)
>  	if (!ret)
>  		return pdata;
>  error:
> +	if (!IS_ERR_OR_NULL(pdata))
> +		/* Cleanup the connection information */
> +		coresight_release_platform_data(pdata);
>  	return ERR_PTR(ret);
>  }
>  EXPORT_SYMBOL_GPL(coresight_get_platform_data);
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index e0684d0..c216421 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -200,4 +200,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
>  	return 0;
>  }
>  
> +static inline void
> +coresight_release_platform_data(struct coresight_platform_data *pdata)
> +{}
> +
>  #endif
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 96e1515..526141c 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -1250,6 +1250,8 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>  err_free_csdev:
>  	kfree(csdev);
>  err_out:
> +	/* Cleanup the connection information */
> +	coresight_release_platform_data(desc->pdata);
>  	return ERR_PTR(ret);
>  }
>  EXPORT_SYMBOL_GPL(coresight_register);
> @@ -1259,6 +1261,7 @@ void coresight_unregister(struct coresight_device *csdev)
>  	etm_perf_del_symlink_sink(csdev);
>  	/* Remove references of that device in the topology */
>  	coresight_remove_conns(csdev);
> +	coresight_release_platform_data(csdev->pdata);
>  	device_unregister(&csdev->dev);
>  }
>  EXPORT_SYMBOL_GPL(coresight_unregister);

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
