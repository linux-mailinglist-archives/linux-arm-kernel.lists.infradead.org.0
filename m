Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0181AD041
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAA0VYczZ6dDu3kvpZ2L/k5BFy99SH3BS2j7dPVtcsw=; b=kfksXL8tM8/MiB
	5+gcb5eDYxRuAkGvzZe8boE9CK3zpUHp8fZx6LhUTIH2CSpcI96XcOIFwS21NjipJINSh1HMhoIFf
	8SJ4GaweTZtiH+71ZrQvjQerg6SjoMWWopvOe833NN4ECtgD5bd2MjuoR9obzbmV4wjzdRxvIRkqN
	DxYJeXlAvJP+6I+PnH7K89Msy5QCWFiaTLKh4puL5/njVI1ww1Bm/GihCX8pP5PGP5vf/u1Re/Qmo
	nhYAFJlCtxp2u0bgC4RPZ/Zo5Ji+danMcPKT+vfSQ1SThJRt78rE82+upQoD5Y1O9mO2VQNVF82t9
	B7XfXt0URdFtYtv3KE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA7J-0003Is-Ax; Thu, 16 Apr 2020 19:24:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA78-0003IK-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:23:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id n24so1685139plp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aKFYVYQ9OYxfkj6UtWE/c0zee6GGkl7hN2RiXbrSsVQ=;
 b=wOOCNhaQsoosxHRpdTHfDHxWt+3yGUwtdVHwF/2+AdpJ85PsC8MarhgRu+8jev/fUw
 guZPcEBfiQibYkIVoTbLyaM6Sn0VMko49d/uKZC4KFoRxdN0drDm372VeGsWO4MMzNbH
 IBIx/jZz+pr/4Cwst1GDcrnoY+ozXV3t+DzKHxanKWTIp51IsQSu4wvgiLJJlokx4nQH
 0Acdma8hyGFfKiB55qOrNPYc42ho6XiVtd+wmAkwGZp0UA9JevcXfDYt2Qi4c1jRtYnG
 MONrmuHqYbLHEaHlcRMW9p065LGFFAkDU/brduXXVkgSUPt9l1yml2c5mpbucPCRPhtU
 CuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aKFYVYQ9OYxfkj6UtWE/c0zee6GGkl7hN2RiXbrSsVQ=;
 b=B74h58A4srdGuRBTutRGfdWTuWtQLtsHW5rIbeZMGIQtQgkSePZjmzgsrVZvBiSwkq
 FqLZG+PDSY1vtdI+X6sM6shz8j3/1TzZTSCSTDEMWLZWpg4YIgQIOLPGQFf5uT8lhoNl
 /amI6PBQwNEyaGaWyuU7by3cznK3mJWAwUJHAG3xnLvwrT6nN34FFBcj62uC+tvRW2Ee
 w9yuI9K/LHAaopsdkS5DubxR7XF5rLcu6oqwCufYxGGaa5jAKpS09otiEONe7AnwX9Of
 /WE4N0Ka/gPQKfMeB/nEqLrRmAmNrAaG7UdW0RwABf1UYsR1J9/M7wOO9d2QcqvzHLWM
 rY2w==
X-Gm-Message-State: AGi0PubUw7r8HH7buQ9mn6Hy+gCwLpHRciycwnV2GP4jneyzljtOLRrI
 pID0k2weltLVMlQ5AGSku5zhFA==
X-Google-Smtp-Source: APiQypK0eaYot0thKROCDeMzMTdcPgMIkES3AeLNRv813IJwsbnRKl5Rw9PycXGl/pCuoTqlxZH3aw==
X-Received: by 2002:a17:90b:3691:: with SMTP id
 mj17mr6924777pjb.114.1587065032831; 
 Thu, 16 Apr 2020 12:23:52 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p8sm3465938pjd.10.2020.04.16.12.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 12:23:52 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:23:50 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 1/2] remoteproc: core: Add an API for changing
 firmware name
Message-ID: <20200416192350.GA29577@xps15>
References: <1586384305-7825-1-git-send-email-sidgup@codeaurora.org>
 <1586384305-7825-2-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586384305-7825-2-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122355_096249_FEAF05C4 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Siddharth,

On Wed, Apr 08, 2020 at 03:18:24PM -0700, Siddharth Gupta wrote:
> Add an API which allows to change the name of the firmware to be booted on
> the specified rproc. This change gives us the flixibility to change the
> firmware at run-time depending on the usecase. Some remoteprocs might use
> a different firmware for testing, production and development purposes,
> which may be selected based on the fuse settings during bootup.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/remoteproc_core.c | 43 ++++++++++++++++++++++++++++++++++++
>  include/linux/remoteproc.h           |  1 +
>  2 files changed, 44 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index fb9c813..9f99fe2 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1796,6 +1796,49 @@ int rproc_boot(struct rproc *rproc)
>  EXPORT_SYMBOL(rproc_boot);
>  
>  /**
> + * rproc_set_firmware_name() - change the firmware name for specified remoteproc
> + * @rproc: handle of a remote processor
> + * @firmware: name of the firmware to boot with
> + *
> + * Change the name of the firmware to be loaded to @firmware in the rproc
> + * structure. We should ensure that the remoteproc is not running.
> + *
> + * Returns 0 on success, and an appropriate error value otherwise.
> + */
> +int rproc_set_firmware_name(struct rproc *rproc, const char *firmware)
> +{
> +	int len, ret = 0;
> +	char *p;
> +
> +	if (!rproc || !firmware)
> +		return -EINVAL;
> +
> +	len = strcspn(firmware, "\n");
> +	if (!len)
> +		return -EINVAL;
> +
> +	mutex_lock(&rproc->lock);
> +
> +	if (rproc->state != RPROC_OFFLINE) {
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	p = kstrndup(firmware, len, GFP_KERNEL);
> +	if (!p) {
> +		ret = -ENOMEM;
> +		goto out;
> +	}
> +
> +	kfree(rproc->firmware);
> +	rproc->firmware = p;
> +out:
> +	mutex_unlock(&rproc->lock);
> +	return ret;
> +}
> +EXPORT_SYMBOL(rproc_set_firmware_name);
> +

This is much better, thanks for cleaning things up. Keep in mind that when you
do resend this rproc->firmware will likely have become a "const char *",
requiring the use of kstrndup_const()...  But that is for a later time.  

Mathieu

> +/**
>   * rproc_shutdown() - power off the remote processor
>   * @rproc: the remote processor
>   *
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 9c07d79..c5d36e6 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -613,6 +613,7 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
>  			     u32 da, const char *name, ...);
>  
>  int rproc_boot(struct rproc *rproc);
> +int rproc_set_firmware_name(struct rproc *rproc, const char *firmware);
>  void rproc_shutdown(struct rproc *rproc);
>  void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type);
>  int rproc_coredump_add_segment(struct rproc *rproc, dma_addr_t da, size_t size);
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
