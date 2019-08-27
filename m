Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759F9F524
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4VaUH7VYHZaFDe6zHVVe66R1BlPbbW4CM0FaVwsV/g=; b=nseoxYTlGnOwt7
	PZ+n54SXJl7G9o4487xRaLUD79iD8CgVHvK16HuOT7lZ+nSlmzp60b63uSvfLz5x9T5jhtDF+J7kv
	YT3KzWt543tw9VxBF2vSTiB6SK/XjGyH9M4RxrLd3fZ1w1yNc3QFIz70M7orJI4WtHYbricFXz3xz
	z3tLVwxt+LKYZhcOy0VqOIqx/7vqIBWsJlT806kXSGnzKxaEGfTEwNIZUKLxJ74hOj3bpo9Y5s4B3
	fLNWPSrIJDwKEgMeCvH4lD11j4+edWMvhfejyXKXiktLYlLf/ZNDoyMpYTHdoR1+pmvJ43+j83ROi
	NgmV8vNmUoxtw034tKmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2j7q-00067d-1k; Tue, 27 Aug 2019 21:35:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2j7W-00067I-Go
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:35:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id b24so249364pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 14:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l70ZgsP2mnXdT9SYR6IvKx4JGktbp4mEedinyBTMsL4=;
 b=GAg6CTde31oBMKepzCzeb0NU/KXAxyR8FRwwOUuq4tG5SobYlB4hAdIw0Ft7UKPdlD
 pYIXjXIQy/AwCRjT/UOV5uMdmz+oVBiP5UY1ACUHRc5H+Zuwnx02sITlhBcE7V94YCSL
 /LUFmWVTIW2F+H27rRF6atXXKrKtdUeSIfLHIGA+GVzAwPz+6LVyINnva0shCj85RGhD
 a5OM4OEaxLZrRVR5EJXePnQwvgb0tR7nk7wcr1YUzldM6FIzrafpV2rdEWcph47v+qBa
 gRvf+hNL93xHHZTeiqgTQxseNlA7gQWMlvaQ6KG76HVE52YSXCqvJwKIo2W7+gwLzwg3
 dnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l70ZgsP2mnXdT9SYR6IvKx4JGktbp4mEedinyBTMsL4=;
 b=Br4mgjQ3d1rVtt1PbpRAZscwPpOcdJ2I1sF/Dx/Om57zoXUQBDjFFBQVghWQhg0AJL
 UwozBFtGiHRUdz8NmDTkvvL8joscESVUuq5hCd5n8nvY2lUsCJy8Z7ldck/5ek6Hweyd
 UiDzXIE91xxTwzSVMZ9hijgF8qEUaNy5dgtGWvMbR/8l/ISmi128rEk6IhhmZaebFq0j
 O67UCvTxATIObOWYrPfrNXXJNcife8g0ITFDIRT2kcVtQKmRGAx559cNM9RSD/urVLwW
 9SQDNumzmUOe//GPmelC79xgrb1S52ikQ2+QL+YNrs5GaHVcXT04/Zv+uhQwREG9+1Zv
 OqLQ==
X-Gm-Message-State: APjAAAUxVpJFIX1DLNj4FjrdMrgDFi+e7mfvialZRUVcQErnksnpPUb3
 klJZJsrY/0b5Xkh3g8HXSFl6LIzhwH8=
X-Google-Smtp-Source: APXvYqxU+o5Slz8Flqp7z82sGdTkOEKM/EA8yBlSMRTOKpOOlTJrdyzobWmhnkaD1gGkgrfTGQk3PA==
X-Received: by 2002:a17:90a:24cc:: with SMTP id
 i70mr932113pje.12.1566941716522; 
 Tue, 27 Aug 2019 14:35:16 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id ce20sm166334pjb.16.2019.08.27.14.35.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 14:35:16 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:35:14 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 5/8] coresight: etm4x: Improve usability of sysfs API.
Message-ID: <20190827213514.GA14958@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-6-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-6-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_143518_599130_AD1ED856 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:57:17PM +0100, Mike Leach wrote:
> Some changes to make the sysfs programming more intuitive.
> 
> 1) Setting include / exclude on a range had to be done by setting
> the bit in 'mode' before setting the range. However, setting this
> bit also had the effect of altering the current range as well.
> 
> Changed to only set include / exclude setting of a range at the point of
> setting that range. Either use a 3rd input parameter as the include exclude
> value, or if not present use the current value of 'mode'. Do not change
> current range when 'mode' changes.
> 
> 2) Context ID and VM ID masks required 2 value inputs, even when the
> second value is ignored as insufficient CID / VMID comparators are
> implemented.
> Permit a single value to be used if that is sufficient to cover all
> implemented comparators.

Please split in two patches.  With that:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 24 +++++++++++++------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 3bcc260c9e55..baac5b48b7ac 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -297,8 +297,6 @@ static ssize_t mode_store(struct device *dev,
>  
>  	spin_lock(&drvdata->spinlock);
>  	config->mode = val & ETMv4_MODE_ALL;
> -	etm4_set_mode_exclude(drvdata,
> -			      config->mode & ETM_MODE_EXCLUDE ? true : false);
>  
>  	if (drvdata->instrp0 == true) {
>  		/* start by clearing instruction P0 field */
> @@ -972,8 +970,12 @@ static ssize_t addr_range_store(struct device *dev,
>  	unsigned long val1, val2;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int elements, exclude;
>  
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	elements = sscanf(buf, "%lx %lx %x", &val1, &val2, &exclude);
> +
> +	/*  exclude is optional, but need at least two parameter */
> +	if (elements < 2)
>  		return -EINVAL;
>  	/* lower address comparator cannot have a higher address value */
>  	if (val1 > val2)
> @@ -1001,9 +1003,11 @@ static ssize_t addr_range_store(struct device *dev,
>  	/*
>  	 * Program include or exclude control bits for vinst or vdata
>  	 * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
> +	 * use supplied value, or default to bit set in 'mode'
>  	 */
> -	etm4_set_mode_exclude(drvdata,
> -			      config->mode & ETM_MODE_EXCLUDE ? true : false);
> +	if (elements != 3)
> +		exclude = config->mode & ETM_MODE_EXCLUDE;
> +	etm4_set_mode_exclude(drvdata, exclude ? true : false);
>  
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
> @@ -1787,6 +1791,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
>  	unsigned long val1, val2, mask;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int nr_inputs;
>  
>  	/*
>  	 * Don't use contextID tracing if coming from a PID namespace.  See
> @@ -1802,7 +1807,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
>  	 */
>  	if (!drvdata->ctxid_size || !drvdata->numcidc)
>  		return -EINVAL;
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	/* one mask if < 4 comparators, two for up to 8 */
> +	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> +	if ((drvdata->numcidc > 4) && (nr_inputs != 2))
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
> @@ -1976,6 +1983,7 @@ static ssize_t vmid_masks_store(struct device *dev,
>  	unsigned long val1, val2, mask;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int nr_inputs;
>  
>  	/*
>  	 * only implemented when vmid tracing is enabled, i.e. at least one
> @@ -1983,7 +1991,9 @@ static ssize_t vmid_masks_store(struct device *dev,
>  	 */
>  	if (!drvdata->vmid_size || !drvdata->numvmidc)
>  		return -EINVAL;
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	/* one mask if < 4 comparators, two for up to 8 */
> +	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> +	if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
