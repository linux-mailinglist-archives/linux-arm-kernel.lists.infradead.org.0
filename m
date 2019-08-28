Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306539F8A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UN36zgaRLZpNsfv4CXRDiPjniXwH//5Zl2Rfdw+zR+s=; b=EY12Sf9Wg7NTBt
	A7qLgVdUFwkReCU9pK9hCfluvPsE1RN34G2E93qA/s0nTmax8bvqz67nppPZAs2r5FpPcE46LPGWd
	gB4VTbDkhwfQdKF+2+03SQ9dtuGrU5k+djU09xxtDz5hgAfpsauLS5wg+FYPWHOGh2ERoR7Tm/Ys3
	mBX5XGjt694QuhhahfVSc1wBUtTzXYUie21j/UPZ8pm9/rNhPpZLJnCdyHE0nodoEOHT0l2G6jh5O
	ojJ9vEpGa4TsLmpvRs9oWz2wHG7xfddqs/NsRUkUjVmMi29CG4S3ICIIPYoohIL3m4iQevG7JaxLe
	qeHgJ2X2k1Et+bHUIi2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oTQ-0000in-V7; Wed, 28 Aug 2019 03:18:17 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oTB-0000iH-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:18:03 +0000
Received: by mail-yb1-xb42.google.com with SMTP id o82so312196ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 20:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9u+vtYB5VPhs9kTVQJPGhvhCe0vC2nzVGVBWPxyuv08=;
 b=dfLPEar0VWMzdJArUXRkOoEWCjFNOL3GkTOeJkB2v/d3TLlKYvr1RIvRKJ19vZXX8D
 27sEBZHAQKG0KZvxaqQBOfrFaiYHCNqTfyTXquP4zjgPS0S8WMRQvsiTGx13fLR7gIBi
 Uz45wwg2xHjlzrv6Q75ySECjmDEe5HkopGTYWzb7b9+EkSQJ5/vbRi3Mg5ptlwBer0EK
 bjFMdLZhHaVfsEjsZ+D5cKVSsSjFot6PDfIq4Szqjawj4V9/L+I+3LpD/du2nhNKdF7M
 b5+H9e4yCKivdpHOk0k+IQSJbWxjzRhrP9RYcyNnj/lev1r5JQhr9x+uBVGFMGQzrXgT
 25Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9u+vtYB5VPhs9kTVQJPGhvhCe0vC2nzVGVBWPxyuv08=;
 b=Ex7FMUqEGNeoc7xJQOECKTGyEVjqLRT+WujtkCKMYYvVjzCDjBb/gS3ieyb738NARZ
 YVn94EvzzgeInV8hSHI9hW4nCo0apCkLV5hXWNETitjkFFHbPtzZlFnfANBn45xrscP/
 xQOA53S8i0D1ff0TNuCz+XvigJfRgfmcn4aHNb6Jhrz+k4hNN+IEBik8Ty0o06odG83E
 t7dGgnDpleUHaPfzzEhfq2NEs3qi+PGxAqSimW0dYuMJPb471fleqtWE9CKyWPi06XKY
 0VmTBk2uDU+co7Ob7iY5FmaPOtwnDs93TZrMAqQax7pw+lhY/oy0fq3nBoaQa5WQtS1M
 QLcQ==
X-Gm-Message-State: APjAAAWX2uyf0BeNcr2JOtvhvShhnI7bbzRJ/Apu7S06Q2V8Mz2oGEdU
 zVpfkS8QzrmUign9GAJHGIHEjg==
X-Google-Smtp-Source: APXvYqwMqylgI1ClH5kiJiFI0+fidbiEUNjpyscqlBT0fl3N1/ZU2/34J4M2MWpI8Br8rfra765Bnw==
X-Received: by 2002:a5b:307:: with SMTP id j7mr1445129ybp.316.1566962279678;
 Tue, 27 Aug 2019 20:17:59 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id 199sm326810ywo.95.2019.08.27.20.17.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 20:17:58 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:17:50 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 4/8] coresight: etm4x: Fix issues with start-stop logic.
Message-ID: <20190828031750.GD26133@leoy-ThinkPad-X240s>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-5-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-5-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_201801_589632_3A3BC52F 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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

Hi Mike,

On Mon, Aug 19, 2019 at 09:57:16PM +0100, Mike Leach wrote:
> Fixes the following issues when using the ETMv4 start-stop logic.
> 
> 1) Setting a start or a stop address should not automatically set the
> start-stop status to 'on'. The value set by the user in 'mode' must
> be respected or start instances could be missed.
> 2) Missing API for controlling TRCVIPCSSCTLR - start stop control by
> PE comparators.
> 3) Default ETM configuration sets a trace all range, and correctly sets
> the start-stop status bit. This was not being correctly reflected in
> the 'mode' parameter.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++--
>  drivers/hwtracing/coresight/coresight-etm4x.c |  1 +
>  2 files changed, 36 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 7eab5d7d0b62..3bcc260c9e55 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -217,6 +217,7 @@ static ssize_t reset_store(struct device *dev,
>  
>  	/* No start-stop filtering for ViewInst */
>  	config->vissctlr = 0x0;
> +	config->vipcssctlr = 0x0;
>  
>  	/* Disable seq events */
>  	for (i = 0; i < drvdata->nrseqstate-1; i++)
> @@ -1059,8 +1060,6 @@ static ssize_t addr_start_store(struct device *dev,
>  	config->addr_val[idx] = (u64)val;
>  	config->addr_type[idx] = ETM_ADDR_TYPE_START;
>  	config->vissctlr |= BIT(idx);
> -	/* SSSTATUS, bit[9] - turn on start/stop logic */
> -	config->vinst_ctrl |= BIT(9);
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
>  }
> @@ -1116,8 +1115,6 @@ static ssize_t addr_stop_store(struct device *dev,
>  	config->addr_val[idx] = (u64)val;
>  	config->addr_type[idx] = ETM_ADDR_TYPE_STOP;
>  	config->vissctlr |= BIT(idx + 16);
> -	/* SSSTATUS, bit[9] - turn on start/stop logic */
> -	config->vinst_ctrl |= BIT(9);
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
>  }
> @@ -1271,6 +1268,39 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(addr_exlevel_s_ns);
>  
> +static ssize_t vinst_pe_cmp_start_stop_show(struct device *dev,
> +					    struct device_attribute *attr,
> +					    char *buf)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (!drvdata->nr_pe_cmp)
> +		return -EINVAL;
> +	val = config->vipcssctlr;
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +static ssize_t vinst_pe_cmp_start_stop_store(struct device *dev,
> +					     struct device_attribute *attr,
> +					     const char *buf, size_t size)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 16, &val))
> +		return -EINVAL;
> +	if (!drvdata->nr_pe_cmp)
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	config->vipcssctlr = val;
> +	spin_unlock(&drvdata->spinlock);

I don't find the code to set 'config->vipcssctlr' into hardware register
TRCVIPCSSCTLR.

And based on the register definition, here we also should clamp the
value for START/STOP?

Thanks,
Leo Yan

> +	return size;
> +}
> +static DEVICE_ATTR_RW(vinst_pe_cmp_start_stop);
> +
>  static ssize_t seq_idx_show(struct device *dev,
>  			    struct device_attribute *attr,
>  			    char *buf)
> @@ -2077,6 +2107,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
>  	&dev_attr_addr_ctxtype.attr,
>  	&dev_attr_addr_context.attr,
>  	&dev_attr_addr_exlevel_s_ns.attr,
> +	&dev_attr_vinst_pe_cmp_start_stop.attr,
>  	&dev_attr_seq_idx.attr,
>  	&dev_attr_seq_state.attr,
>  	&dev_attr_seq_event.attr,
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 52b8876de157..d8b078d0cc7f 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -868,6 +868,7 @@ static void etm4_set_default_filter(struct etmv4_config *config)
>  	 * in the started state
>  	 */
>  	config->vinst_ctrl |= BIT(9);
> +	config->mode |= ETM_MODE_VIEWINST_STARTSTOP;
>  
>  	/* No start-stop filtering for ViewInst */
>  	config->vissctlr = 0x0;
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
