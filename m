Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C286C9F864
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 04:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BFToX7IaE0Gbn9IurJ0HEBOt3TaWvLu3a98vBGktRc=; b=GSm0SjO7/aE0JH
	Iwy6gbm88ue20x1IrVXzo5Avcl96WNMcE/2sxWhR8pu87VfOSononVsXlNUoxxsNeNW40/MBetdiz
	bHeoMRU8kBNtb+Khacp9wHFRk4qlA2zwbpi4ZIr1D5ajnHwcx/fLtyeFGfZrjEcXJM8k3qppwf8La
	97LS3WnbYwQupVSD4NwbmpjY0Amj7cHXc0sRuCZxbo8QC+K0QwCLXXeJzhJ8HlQ5ZsJyhbGBnmBCd
	A/vZ0wQ79Fn8ATJpdbtqRm6AC1+QeSl6ngtOCU4NgYMVzBSN3WEPKBBltQYQAG4TgNj+wpoPLI3G8
	G22AFsuq7Xx+7Y2Jmjrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2nvU-0005Sb-Ou; Wed, 28 Aug 2019 02:43:12 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2nv7-0005S7-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 02:42:51 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y194so283600ybe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 19:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pz50zgGdNoFLNfy2DVM2gmVCncnZeKedwK1iMGWEcqo=;
 b=GGVJE303NAwbyribf4Yzb2KzKRbs8qetxz4zkRiy6jB0+Wv5jEb2boUCXUc+pmP27h
 BvqXWCHBiZAK6SyorcfQuTqUszhwZEjU3qykUGUgmQYmyai0+N5fG1e/0k2V1h6xc9nb
 IZdlhva522CGuoUAfXWyZkr/E/Rmh+Bg481TI6V/ud5MEFDBuE+NoLxUXbG+yvIwi+Rs
 azvWZWanQCcYydXP0Z9SJopziNW2nsjrXuVeCnGuUccXWZJ5yiiuulvUt4CWAmc4ToT2
 C7I8XUF8GV8JBHzP++iogr8P7fGZuU3QLVULv3dWg3zXlx1kdBR8NNlrWWUBKQ4E4rfl
 1Vww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pz50zgGdNoFLNfy2DVM2gmVCncnZeKedwK1iMGWEcqo=;
 b=cReHQ/uulLfYavk+/UxhZIhwnOUdXa1cNAk5th41MGCXMB2tCsUJg7TSS/0ziot2n8
 ED3iwE3Il0dW/QqnZRERmyGTuUaJHQyz7hfaHv8cAiCwduTRSmgF0QS3Lmn1s6oNELaX
 swJQE+CpG732z9ubxhNSTZo5NB8LkPhp+yChV4mm6z8tSCnGUjaSiBWHUUCJrTKoZE9G
 /B6ki7iPJxy2hWGDTxVwqyqOeQH5WU85cl2OxZIng/uE3SNTYwNoVd5HDb9dTzLz6m+y
 Xfh3hk3VjRFcreO9OsdZyRP5+trFzmgJhxxEkdhZf6Hl0RZ/u97h65cnP7U0GhASPt/O
 xxlA==
X-Gm-Message-State: APjAAAUvyD1dgSJqeLl5DxAzljOAYDPPrMwFYANky0iX4kVgR7Tftn1X
 5H/gq5GVGrddD1fHw4h6MuvPxQ==
X-Google-Smtp-Source: APXvYqyTZ9o75Rsi3kik4icgIiJaMjFwYOm+MWrGSh+3vIgIcBcXJoSujGAmJ8c2FlIm85KpPWy69w==
X-Received: by 2002:a25:c486:: with SMTP id u128mr1368423ybf.428.1566960164635; 
 Tue, 27 Aug 2019 19:42:44 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id r193sm244911ywe.8.2019.08.27.19.42.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 19:42:43 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:42:37 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 2/8] coresight: etm4x: Fix input validation for sysfs.
Message-ID: <20190828024237.GB26133@leoy-ThinkPad-X240s>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-3-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_194249_692879_BCF8D00F 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:57:14PM +0100, Mike Leach wrote:
> A number of issues are fixed relating to sysfs input validation:-
> 
> 1) bb_ctrl_store() - incorrect compare of bit select field to absolute
> value. Reworked per ETMv4 specification.
> 2) seq_event_store() - incorrect mask value - register has two
> event values.
> 3) cyc_threshold_store() - must mask with max before checking min
> otherwise wrapped values can set illegal value below min.
> 4) res_ctrl_store() - update to mask off all res0 bits.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 21 ++++++++++++-------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index b6984be0c515..fa1d6a938f6c 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -652,10 +652,13 @@ static ssize_t cyc_threshold_store(struct device *dev,
>  
>  	if (kstrtoul(buf, 16, &val))
>  		return -EINVAL;
> +
> +	/* mask off max threshold before checking min value */
> +	val &= ETM_CYC_THRESHOLD_MASK;
>  	if (val < drvdata->ccitmin)
>  		return -EINVAL;
>  
> -	config->ccctlr = val & ETM_CYC_THRESHOLD_MASK;
> +	config->ccctlr = val;
>  	return size;
>  }
>  static DEVICE_ATTR_RW(cyc_threshold);
> @@ -686,14 +689,16 @@ static ssize_t bb_ctrl_store(struct device *dev,
>  		return -EINVAL;
>  	if (!drvdata->nr_addr_cmp)
>  		return -EINVAL;
> +
>  	/*
> -	 * Bit[7:0] selects which address range comparator is used for
> -	 * branch broadcast control.
> +	 * Bit[8] controls include(1) / exclude(0), bits[0-7] select
> +	 * individual range comparators. If include then at least 1
> +	 * range must be  selected.
>  	 */
> -	if (BMVAL(val, 0, 7) > drvdata->nr_addr_cmp)
> +	if ((val & BIT(8)) && (BMVAL(val, 0, 7) == 0))
>  		return -EINVAL;
>  
> -	config->bb_ctrl = val;
> +	config->bb_ctrl = val & GENMASK(8, 0);
>  	return size;
>  }
>  static DEVICE_ATTR_RW(bb_ctrl);
> @@ -1324,8 +1329,8 @@ static ssize_t seq_event_store(struct device *dev,
>  
>  	spin_lock(&drvdata->spinlock);
>  	idx = config->seq_idx;
> -	/* RST, bits[7:0] */
> -	config->seq_ctrl[idx] = val & 0xFF;
> +	/* Seq control has two masks B[15:5] F[7:0] */

s/B[15:5]/B[15:8]

With this change and Mathieu mentioned redundant space:

Reviewed-by: Leo Yan <leo.yan@linaro.org>

> +	config->seq_ctrl[idx] = val & 0xFFFF;
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
>  }
> @@ -1580,7 +1585,7 @@ static ssize_t res_ctrl_store(struct device *dev,
>  	if (idx % 2 != 0)
>  		/* PAIRINV, bit[21] */
>  		val &= ~BIT(21);
> -	config->res_ctrl[idx] = val;
> +	config->res_ctrl[idx] = val & GENMASK(21, 0);
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
>  }
> -- 
> 2.17.1
> 
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
