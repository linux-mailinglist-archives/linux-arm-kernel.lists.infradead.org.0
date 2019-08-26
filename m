Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D99D91C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 00:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWuH/3ZlArcL9fbWfQ92iHmPPQNWOL88wp1ujNT3jG8=; b=fwj/27/V/nzeBX
	83CoxFkY6snjIEa8dV+qEwcWlWCY1TvqW0qhslvAQx/HD7HgkeDmkvlHf3HEPeOsb82bmJpcoNgAZ
	1SDTwt87HFF8NYYdq9BA8Uut9SzlBJpZrFPeYaKQpjC7EwvlVNbnUubo5CISlJoXm7Xw4+RlGIdJL
	X4k0y2nPY/KktvVkvIZQUljhMUncgq/BOhoR08x/OhCLx24S2IhSP84JohY+nI0A271AniggCfF2L
	fZU3thkBN6u4s5TaiQUYcc37ZQkox7lVr4jNMAIhMvxvP0b+eFf4xItx6whNXEXaP3cefF0quCjS2
	BYVYWJEJdKON+XLtddjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NUQ-0007Me-Il; Mon, 26 Aug 2019 22:29:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NUC-0007MK-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 22:29:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so12692226pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 15:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2OBnpARfjQ0J/9nW4cJTwsZwJqtu0b2ynezQ4Q9DKfE=;
 b=GwnoZNOgsGObAY3hpC4oydxAm4B52C2Y6BMc+iHlcVlzesiTsm9HgWP8vLoK5d3+Ta
 hhAGq5SuUGO9z7cOzSuN5xwz5eABB0ApWo+WZARgpfoV+Bvwo/Okk99gdh0LCzzPwSCl
 TtzqWy3hegJUPeHnceXI93zKERjou6d7uncNBvVIRZ8spBKStTx+bsuE7qWKTifAMz3Z
 p5iRlFopasWBLi/mB9MDjIind3D1aaPwMJJcsDBipMwrI8Y5+FVrlEZXggbPt8tx+S+R
 DgFvnF++iQmg9DefEkVeSOTVzc0jz2p5LE/18Wj1ZQ3DAlySSUB5pDr5JJWALga5ct32
 eCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2OBnpARfjQ0J/9nW4cJTwsZwJqtu0b2ynezQ4Q9DKfE=;
 b=pt0yDVbtDwVtXF9Cvm/majUHrcj3FYqx6tqDDxoaT19xhZOqZkOPzwH8tWkMh9sjW4
 dsc0k+BvF1wNf35UJfGVBj5ebyeQyU9Tb65sG4tWyltn9mrVxdxGGJkvW6rE9WOpboy/
 QKPUfEG7N/VtgzxfpRC5RtdkmNr+Hqd9OrsrqxjnTK+Q4/MXFUq4xUjVbiMouZrUGEW5
 YMx0DUOdIkb9qqa17gls6k5pvHYD3MCVSH55X6XcMw+yXyvpepHZfQ0E0MC/leOeu3Nx
 FTblsrD0b+6cE0UILAe/AF/EenhHHpMyMsncBXBEF8nzely4P7IubEp9heOZU1sVS1kh
 wkoQ==
X-Gm-Message-State: APjAAAU/mbEZMLeMNWihO/dragNirHhr58jEGd/Nb7JsCeUDziooh//H
 e5wWryWJ6u9nEcdIwEuR1f3UWg==
X-Google-Smtp-Source: APXvYqyXr3jkFheyAKuMOywGw7V59eeVNWD6UWnURiOgWHKReYpQhS+4b9FNzEMwOxnMw88QsPFKQA==
X-Received: by 2002:aa7:842f:: with SMTP id q15mr22667960pfn.250.1566858555244; 
 Mon, 26 Aug 2019 15:29:15 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o130sm15657598pfg.171.2019.08.26.15.29.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 15:29:14 -0700 (PDT)
Date: Mon, 26 Aug 2019 16:29:12 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 2/8] coresight: etm4x: Fix input validation for sysfs.
Message-ID: <20190826222912.GB24690@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-3-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_152916_633011_8423EB1D 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 suzuki.poulose@arm.com
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

s/"must be  selected"/"must be selected"

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

With the above:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
