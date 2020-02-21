Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38101686E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doxOKHZIeV3+DZsSa61dclAq78dPse50fqPp+GNB1o0=; b=j+aLvGt3DPBPA/
	AF9F4h4oA4rf2B6xaTbfbubgMi9MP1s9GBxjo5ips7dUt2zS318bPaFy1dPY1Na0QPbTfssvVE+6A
	rM7T6GRcHC7rAYXhFlTIm8vU/efWeoVfQWSf8UJNYXgUOM8/DkoUbU1fxSRFL9UqilCfrujXd1EcP
	+XGMo2nGmbvl/uGhZMFpyt4/Va5/Odq/5u5Fa5j1luGPsIUUvmKqA+FKOUQ5f5cnEtNcf67BL5wR9
	dfuO3Ng1hDiyfswHTXj5KCK7jA3sV6ee0bQ0RzOvumcjTQDjCUX3DyzNYpl61AfUXIgqm3qCgbwK7
	DHusYGvKhIPHMKCaOqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5DGD-0001Gb-MP; Fri, 21 Feb 2020 18:42:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5DG4-0001GF-HW
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:42:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so1684294pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 10:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/zFjPXs4Y0NII72nGSRDk19t/a2aSWdxIBmz8i14jj8=;
 b=hCV5wWMM4cj4NHSEYugwASyRMDbDo8/O1XzigZpry9yvw78/0/WW0Zb/+PByjS+dnS
 t39vasXj+xV1yHSE5KV+Xg0cfO2Sh4INtkPkmpucjn6/cXEqrtlimCp6n6sEJ9UD9HQK
 9+RCkL9Bk6a166KPk86lHBeTL5ZnN6W+l3Lt/VmwoKdM/Amn8yACwR6D3ArLlzj+wceT
 8RX1nmyINH2kFfdrrhn3gBMqlirmWfIpji+GYK7I3GEelOiJ/2fb6BMG+Uu/h/5WFl7z
 EMJ60wbsOd5mb5AqH/XDNafeGkYZ9BZP9EMQTkCX3JZvQDa4Yx0MXubWmu/hWJ6pIhLu
 1Vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/zFjPXs4Y0NII72nGSRDk19t/a2aSWdxIBmz8i14jj8=;
 b=q648+Y7nhbkIgp04DgeOCBX+BWbzMycDGvV4ibAX/dgjCUdYnugRBe2xCgsoFn70LP
 F0vHfZIFYL66PE3S/uvHEDiCDaqjC/qy2xudT3WuEogZ2nOiSrkfMElN63afkP3eaOw0
 cNIcDv2q5b9Oaci2xuEMAlgma1pOx6WF0U6Xyx+vo1+bscAD6RzNitJMaNhILPIwwSga
 mOrLNYMjIxAOstjLYkx6ZKNF/zzukxzzO1ovVc4gETgY8G1Nwssc312Lpj70XW5/XL5u
 eWzB13xsVQ6Ce0DUZlpagZx0i227KLGS14uV1wnJ+KGJ0dQGwAs2MfBsb+NKejkWDU56
 5MjQ==
X-Gm-Message-State: APjAAAWvsbKglaEgo6jrytwg6mR/lLvSAMfwWt6Z9wx4j1s/rDnNNBza
 TA3w+7a35ncpV1cs+RCfPvEE4g==
X-Google-Smtp-Source: APXvYqwFclKSbXXs14coB+cqHxC3U5IbNr0OkYond0+G3XM8i02Nr2HaYjczAmI5EBskNHRghc+wiQ==
X-Received: by 2002:a63:fe4d:: with SMTP id x13mr38950714pgj.147.1582310559562; 
 Fri, 21 Feb 2020 10:42:39 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x28sm3181371pgc.83.2020.02.21.10.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 10:42:38 -0800 (PST)
Date: Fri, 21 Feb 2020 11:42:36 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Message-ID: <20200221184236.GA10368@xps15>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-4-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582097265-20170-4-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_104240_617791_918BAF63 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, Feb 19, 2020 at 03:27:39PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Remote processor such as M4 inside i.MX8QXP is not handled by Linux
> when it is configured to run inside its own hardware partition by
> system control unit(SCU). So even remote processor crash reset, it is
> handled by SCU, not linux. To such case, firmware load should be
> ignored, So introduce skip_fw_load_recovery and platform driver
> should set it if needed.

For now I will not comment on the code - I just need clarifications on the
scenario.

In the specific case you are trying to address here, I understand that when the
M4 crashes, the SCU will recognize that and reload the MCU firmware. Does the
SCU also start the MCU or is that left to the remoteproc subsystem?

Thanks,
Mathieu

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 19 +++++++++++--------
>  include/linux/remoteproc.h           |  1 +
>  2 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 876b5420a32b..ca310e3582bf 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1678,20 +1678,23 @@ int rproc_trigger_recovery(struct rproc *rproc)
>  	if (ret)
>  		goto unlock_mutex;
>  
> -	/* generate coredump */
> -	rproc_coredump(rproc);
> +	if (!rproc->skip_fw_load_recovery) {
> +		/* generate coredump */
> +		rproc_coredump(rproc);
>  
> -	/* load firmware */
> -	ret = request_firmware(&firmware_p, rproc->firmware, dev);
> -	if (ret < 0) {
> -		dev_err(dev, "request_firmware failed: %d\n", ret);
> -		goto unlock_mutex;
> +		/* load firmware */
> +		ret = request_firmware(&firmware_p, rproc->firmware, dev);
> +		if (ret < 0) {
> +			dev_err(dev, "request_firmware failed: %d\n", ret);
> +			goto unlock_mutex;
> +		}
>  	}
>  
>  	/* boot the remote processor up again */
>  	ret = rproc_start(rproc, firmware_p);
>  
> -	release_firmware(firmware_p);
> +	if (!rproc->skip_fw_load_recovery)
> +		release_firmware(firmware_p);
>  
>  unlock_mutex:
>  	mutex_unlock(&rproc->lock);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 4fd5bedab4fa..fe6ee253b385 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -514,6 +514,7 @@ struct rproc {
>  	bool has_iommu;
>  	bool auto_boot;
>  	bool skip_fw_load;
> +	bool skip_fw_load_recovery;
>  	struct list_head dump_segments;
>  	int nb_vdev;
>  };
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
