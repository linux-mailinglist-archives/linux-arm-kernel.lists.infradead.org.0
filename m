Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F39EE95F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS575M06070UPGOMNeJgAiuYefv33544QIDxK8DAgLs=; b=CRaa/p2BfOStmR
	iM2v3nuNC2mzoPv8snjC26unYSz1EIi+HgQ46010p9E5k8MCPi/Zb6FIQ6dFyJG5iJlwAIQjhBVur
	f03Ie9T/iWQ/m139ZlOl35KwYvNlIgnynayCOdpsfGdkkKIk91ZN4V+I5+bYLG4leRodJyQ5lwQSb
	Vs2He/CAIEPnUXAHmIIXYEe6O/cVZHOXW/dGxQoh8naOKjs1HnbzDJHdLDT6xCV51xiRtrXwV92Va
	0DqHYof+jNWMX5/44icO59p3un3kGMmLTgpo5zLp65qCkbcu8MwWtcmQ+6ggsOdbANCDoemVTbfI5
	vXfBjPgx8mA44Y7XfJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAGw-0007Nq-0m; Mon, 29 Apr 2019 17:40:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAGn-0007NI-Ms
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:40:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id e92so5405152plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yqGrP/Pk5Od/q2uuVdzkrCCm4fxm4ySCvMrxHSCLMNo=;
 b=sVljXjmKJtnEXliXKxkwebq5xKfTy86uAnBoTrm5UVWXLWu8WrQ3SrYgV9EGtIXjtL
 W73E9/Psz+SllzCOMkxV5kZ8dJ0wUPbhyuXPzsmzQhWsmoPyJKcQulOLPk6AlKrKcOud
 jqC3nxlZGeC2LQRiZTV2cyoFv3ql5WS/FVYxxL7z3icYl7Dro6nbsb8Mei8gr/DJ8E6I
 UGfjSoYFgwb5fbJ1LSWwXVM0hQKgbJ9/XAUuP9V3/KY/FnXnayOgBnYSCteYMdg8eTB+
 wRqHnpgR7sJ1bcgGz2JoX/aYnT/SrJxC9euNnSP5LQgG4cx+uEVE7OvHR2R1ZBdLkKfv
 5G1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yqGrP/Pk5Od/q2uuVdzkrCCm4fxm4ySCvMrxHSCLMNo=;
 b=XLOkrHsCo9pDZP777T9TqWQs1QvI60F8FlVih3WT85F8ETUTOgyBcQYYqenS7c+wjF
 vEv76HV0TsRh7HFxF3cQCiQaPa6upxy0mhXeVFJZPKW5SEwk31WxNPrX55+So90mB3GF
 LTMmOKIWOUjPYzFMhxwrBRUbH5BAQ+y9j7VZxdNfAoQwFG4DoAWj3jnrGuy8BjlFSGzA
 zY8qU5ZhtqE4n6mAvwSb7iO4XklTzdgK76/v6tHZ8SBTLv3agCFgx2rU4pxN1XV0kEdf
 qsbnLIzYZIVkHEvT40d0s6L2mw20Hx4jsRMrUI6q/8maVHTziTLV/+QKdOnZknkkvGQx
 TfOQ==
X-Gm-Message-State: APjAAAV3IgL1CSNc5OMEId5Nqw+i9q1ukUQo8BHK3htnkLRPd7ff7eaG
 igAxBLCBrcW2Md/HnjGpHkqsjQ==
X-Google-Smtp-Source: APXvYqyZ9ch1mDN02UpHm9ZqpChoV/x4Wmqk7ltEjarIJPQP5WhnR/4J923deaX6hVmv7nBhjjxS2Q==
X-Received: by 2002:a17:902:e00e:: with SMTP id
 ca14mr21797793plb.317.1556559648152; 
 Mon, 29 Apr 2019 10:40:48 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t5sm43838317pfh.141.2019.04.29.10.40.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:40:47 -0700 (PDT)
Date: Mon, 29 Apr 2019 11:40:45 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 34/36] [RFC] coresight: Pass coresight_device for
 coresight_release_platform_data
Message-ID: <20190429174045.GA18807@xps15>
References: <1555344260-12375-1-git-send-email-suzuki.poulose@arm.com>
 <1555344260-12375-35-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555344260-12375-35-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104049_758513_D8120C2A 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 robert.walker@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 05:04:17PM +0100, Suzuki K Poulose wrote:
> As we prepare to expose the links between the devices in
> sysfs, pass the coresight_device instance to the
> coresight_release_platform_data in order to free up the connections
> when the device is removed.
> 
> No functional changes as such in this patch.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 2 +-
>  drivers/hwtracing/coresight/coresight-priv.h     | 3 ++-
>  drivers/hwtracing/coresight/coresight.c          | 7 ++++---
>  3 files changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 224f698..6559c49 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -734,7 +734,7 @@ coresight_get_platform_data(struct device *dev)
>  		return pdata;
>  
>  	/* Cleanup the connection information */
> -	coresight_release_platform_data(pdata);
> +	coresight_release_platform_data(NULL, pdata);
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(coresight_get_platform_data);
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 61d7f9f..bf28ca9 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -200,6 +200,7 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
>  	return 0;
>  }
>  
> -void coresight_release_platform_data(struct coresight_platform_data *pdata);
> +void coresight_release_platform_data(struct coresight_device *csdev,
> +				     struct coresight_platform_data *pdata);
>  
>  #endif
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index e3b9321..010bc86 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -1173,7 +1173,8 @@ postcore_initcall(coresight_init);
>   * coresight_release_platform_data: Release references to the devices connected
>   * to the output port of this device.
>   */
> -void coresight_release_platform_data(struct coresight_platform_data *pdata)
> +void coresight_release_platform_data(struct coresight_device *csdev,
> +				     struct coresight_platform_data *pdata)
>  {
>  	int i;
>  
> @@ -1275,7 +1276,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>  	kfree(csdev);
>  err_out:
>  	/* Cleanup the connection information */
> -	coresight_release_platform_data(desc->pdata);
> +	coresight_release_platform_data(NULL, desc->pdata);
>  	return ERR_PTR(ret);
>  }
>  EXPORT_SYMBOL_GPL(coresight_register);
> @@ -1285,7 +1286,7 @@ void coresight_unregister(struct coresight_device *csdev)
>  	etm_perf_del_symlink_sink(csdev);
>  	/* Remove references of that device in the topology */
>  	coresight_remove_conns(csdev);
> -	coresight_release_platform_data(csdev->pdata);
> +	coresight_release_platform_data(csdev, csdev->pdata);
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
