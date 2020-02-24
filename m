Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6D416AF3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4kvkukhwLMw0Jz9wxsaN6yzc+2cSh1tu2BiybkfuEc=; b=Bu17MwxhBBQs0x
	FayQtoxWa1aZ+vnI9LqhPYD2xdSMaA35k1F1acsMp8bQveSo6EeMklT9MD+KUJJDMq5eOVYUqwn1x
	YnWBzbKwPgFGo77/bFpXE6qCtKFSGlYNNHIO3Y+yByYB58bwmdJgwL3MBCgWURByE3McmR2r+gZYk
	R6g7CJndRa01MoHTmyVCR0w8JY0ju6jvsjOUJTIWvJvLe1pNGXOPhf9ryypB6ZY43uRXpGlWiRazs
	RpF6PIqWQyFA46xjM8U21iXMHOEzPCqh01xscQjJSK1l0kvpJMKC7TgJ58vMyePn0QiKy65Bm/xn9
	tErKACsA1OvWHHTFEAhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IYD-00087l-HD; Mon, 24 Feb 2020 18:33:53 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IVD-00051R-MO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:30:49 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 12so118577pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eB+RF5Mh4FenHE6w3IEcxS14k96bS8yZIKZCBidnPPI=;
 b=J38ofieDuZwieGmCqkTF7yAGdU9ZfG6J4h1Oex9EJi2MJ7UiXHedPEZIWhorABF9w1
 4LjBAflwCt5SlXeCaH6i5WilMtAyA6OV/uYRzixRdSSUTOzx6mnQgRWR4HMbDigZPqzn
 TFC07Pp933b4ftOkv9QPDT7GtUKAVRlKgyHDA4mw/6HVEeKspQjfkn5RzIqTCcdYIKPw
 diVTC03tNk5VYl0qckRql0EFXLRnSwMQ/ecb+6mEDjIWOsELPf61faJslWaJBAEE6ZO1
 e2MzZ/CTAAZ8wNUNAsYLwhXhxMZhXhkPw9ZC+f2YHLq/tRNNOyT8lwq3Ec3miG2/kYqJ
 CffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eB+RF5Mh4FenHE6w3IEcxS14k96bS8yZIKZCBidnPPI=;
 b=Wvn/1lOr/DG2dqemIcbFJulikn46XmYdAUfYoZhNJyhKUk3IFMUGT+1EN6Y82W6U5d
 63ViNuz2JXSJ1TvEVj1QHDR62kftznUvPhwzjrD0PZ6jw5CQ4fSRaaJDlQOSGcvG/SKu
 l+TP54lym+YkI3etHiw/FyUx/ZFjN+mKkVHXxSMsrKph/dPJfHK43vhkr1Jof10zlCpX
 /ADCbtWL+VxkK7900AJ7HW0HpsLL7kD6oBHOwk8EbHrdlthyXY4xOD5L3P7WaUNu6kN5
 njr5hAvp9frfdUQFYtIx0dHMNA0i/SwpWFjjlQNm9buBfSbUO2namRN1UWG2I3r1YvOj
 DIug==
X-Gm-Message-State: APjAAAUqcWZwh7DpMjUQ/LJJZTvrvNlvz/VNjoPgtEl/mKPBN1aFRy3A
 04NZTsv/HIx4CIMC2JKxDP2UGQ==
X-Google-Smtp-Source: APXvYqzGmaiP+bNpfJzHNfdIjk0x3NvdHLNFE+Z3xk6uvxo4EuiAxTQRcX9CZ1rdWNGXWJprqyebRQ==
X-Received: by 2002:a17:902:401:: with SMTP id
 1mr50094099ple.177.1582569046452; 
 Mon, 24 Feb 2020 10:30:46 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q7sm13363109pgk.62.2020.02.24.10.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:30:45 -0800 (PST)
Date: Mon, 24 Feb 2020 11:30:43 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 1/2] remoteproc: core: Add an API for booting with
 firmware name
Message-ID: <20200224183043.GA9477@xps15>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-2-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582164713-6413-2-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_103047_811089_E3FE2E68 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, Feb 19, 2020 at 06:11:52PM -0800, Siddharth Gupta wrote:
> Add an API which allows to change the name of the firmware to be booted on
> the specified rproc. This change gives us the flixibility to change the
> firmware at run-time depending on the usecase. Some remoteprocs might use
> a different firmware for testing, production and development purposes,
> which may be selected based on the fuse settings during bootup.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/remoteproc_core.c | 34 ++++++++++++++++++++++++++++++++++
>  include/linux/remoteproc.h           |  1 +
>  2 files changed, 35 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 097f33e..5ab65a4 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1779,6 +1779,40 @@ int rproc_boot(struct rproc *rproc)
>  EXPORT_SYMBOL(rproc_boot);
>  
>  /**
> + * rproc_boot_with_fw() - boot a remote processor with the specified firmware
> + * @rproc: handle of a remote processor
> + * @firmware: name of the firmware to boot with
> + *
> + * Change the name of the firmware to be loaded to @firmware in the rproc
> + * structure, and call rproc_boot().
> + *
> + * Returns 0 on success, and an appropriate error value otherwise.
> + */
> +int rproc_boot_with_fw(struct rproc *rproc, const char *firmware)
> +{
> +	char *p;
> +
> +	if (!rproc) {
> +		pr_err("invalid rproc handle\n");
> +		return -EINVAL;
> +	}

        if (!rproc || !firmware)
                return -EINVAL;

There is no user involved here so no point in printing anything.  If @rproc or
@firmware is NULL than callers should be smart enough to figure it out from the
error code.

> +
> +	if (firmware) {
> +		p = kstrdup(firmware, GFP_KERNEL);
> +		if (!p)
> +			return -ENOMEM;

As in firmware_store() I think it is a good idea to mandate the MCU be offline
before changing the firmware name.  That way we avoid situations where what is
running on the MCU is not what gets reported in sysfs.

> +
> +		mutex_lock(&rproc->lock);
> +		kfree(rproc->firmware);
> +		rproc->firmware = p;

> +		mutex_unlock(&rproc->lock);
> +	}
> +
> +	return rproc_boot(rproc);

Function rproc_boot() is also an exported symbol and belongs in the caller -
please move it out of here.  When that is done rproc_boot_with_fw() can become
rproc_set_firmware_name() and concentrate on doing just that.

> +}
> +EXPORT_SYMBOL(rproc_boot_with_fw);

Although choosing the firmware image to boot without user involvement seems like
a valid scenario to me, this can't be added until there is an actual user of
this API.

> +
> +/**
>   * rproc_shutdown() - power off the remote processor
>   * @rproc: the remote processor
>   *
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 16ad666..e2eaba9 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -609,6 +609,7 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
>  			     u32 da, const char *name, ...);
>  
>  int rproc_boot(struct rproc *rproc);
> +int rproc_boot_with_fw(struct rproc *rproc, const char *firmware);
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
