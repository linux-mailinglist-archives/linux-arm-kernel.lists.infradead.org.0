Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB89D9B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 01:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REk/qrq5oojuoAZcVMdoFyE5mgGWN4siYxAyoVvgkB4=; b=GQrbbvrWHUwNaV
	buR64kSAzUuKy+cm/65FvYS/JFs9p0pGgsvXzXyftRRaBIfrpktQTzqPhpwqZHlukppHhxW2ymBPc
	g5/STDcuOtJ6kENpxF1aBo6G6Oa+EHHpYb9fpm5BOHLYhqpaUr1isPkgzu8tz4zpn5tEBhOLibTFV
	cvKwy1NxDBaADGhSCx/LmjwsXS5otmhzdOFIMTxlLxVhLc2xgFsYzceA7JWjpEJGnG3VGjofrVWnj
	M6mbbcagVq1Ls3hzme5kqZkM9AVhSorSQZkpgT0SE/kDpRO0gmaWbhZhL7m0H/5nd/79hWs/Uujk1
	qTap3aWhlTiNb6YumFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Ny0-0002QW-KV; Mon, 26 Aug 2019 23:00:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Nxo-0002QC-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 22:59:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id w26so12735952pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 15:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CgfL9em55pskgYqafEMjkjXApm1UUMRf3KrL/Bg/a7g=;
 b=EpUyev0Dmp60q+5DbW+HgJkbEd/Cp/VbCz1JdRzPjjyQR3zrYuViJkv/jkQJflhfLG
 UoWZCnLR7XaMykxiIIbybVhc5mWoqwvmklCh4+xOZAxBfk045vZqxDLtuMpNYnusbM31
 WB84PvEv4FmzEqvhk+83ByG9aBTgWq0BKqXTUnwN0mgU+S0IDEh6I2mqL6PBO+cZU8+x
 dbMM50tAJ90CkrF2RjjhbZgC4ogIrRu2dhTGMvM00F3XtIsvN12p341yjp8VtnpJQD/Q
 fFTNI89DM/4Z1S/mU4nV1B45qvkXvXzVug3WenYyxw8AXsRhf7EwdNAlQ5ou/mqxM6U2
 dwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CgfL9em55pskgYqafEMjkjXApm1UUMRf3KrL/Bg/a7g=;
 b=rQm8oEK13ppVTQpUg5w8DaH8r7eAZzzGC2bzQugz5c8OdB3Vm/u22fdC8uDlZEa/ym
 rSm9/cfYuzGCnWReLkMrRsF+aBc+buq+x8eqTosACLtudNUCzScAPgscRImVrAilbKV3
 Ph4tIBpMFDzxNUF9MJyYUeyNhOJPbMN8HmVLBMYIeJa4/eMrinJUqtpL6a2V46oEy3/G
 AYHDBcGfgAZpOweGd+rlGjeYkG47K3ZVKbqxPLWe6KZos+4gjFT7jTSzzVfKIjPJIXFQ
 326SN4zLh6l7wjQG8TCJQ3A4jSTO6hdzVWfcdOslWlY1ciXdIwb0QCj1QolprhaOwEtb
 ufRA==
X-Gm-Message-State: APjAAAXK7szSkVCWaLBNkh3zfTD+oRw95gCmBiAmZhHY3IUkxLcYLpgo
 xhjXfIu1CmYR8m8JkLy/Oy31Ag==
X-Google-Smtp-Source: APXvYqw5iQK0ic2g0BWsOcbpiUfcmQ0df8BTuwrTOFDPthzbQTF2+gGA7NdW2SXhWQPcQBRq7OZIBw==
X-Received: by 2002:a65:4243:: with SMTP id d3mr8670220pgq.119.1566860391791; 
 Mon, 26 Aug 2019 15:59:51 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s186sm18547979pfb.126.2019.08.26.15.59.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 15:59:51 -0700 (PDT)
Date: Mon, 26 Aug 2019 16:59:49 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
Message-ID: <20190826225949.GC24690@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-4-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-4-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_155952_915976_8BD259A7 
X-CRM114-Status: GOOD (  18.29  )
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

On Mon, Aug 19, 2019 at 09:57:15PM +0100, Mike Leach wrote:
> TRCACATRn registers have match bits for secure and non-secure exception
> levels which are not accessible by the sysfs API.
> This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index fa1d6a938f6c..7eab5d7d0b62 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -1233,6 +1233,44 @@ static ssize_t addr_context_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(addr_context);
>  
> +static ssize_t addr_exlevel_s_ns_show(struct device *dev,
> +				      struct device_attribute *attr,
> +				      char *buf)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->addr_idx;
> +	val = BMVAL(config->addr_acc[idx], 14, 8);
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +
> +static ssize_t addr_exlevel_s_ns_store(struct device *dev,
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t size)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 16, &val))
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->addr_idx;
> +	/* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8] */
> +	config->addr_acc[idx] &= ~(GENMASK(14, 8));
> +	config->addr_acc[idx] |= (val << 8);
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> +
>  static ssize_t seq_idx_show(struct device *dev,
>  			    struct device_attribute *attr,
>  			    char *buf)
> @@ -2038,6 +2076,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
>  	&dev_attr_addr_stop.attr,
>  	&dev_attr_addr_ctxtype.attr,
>  	&dev_attr_addr_context.attr,
> +	&dev_attr_addr_exlevel_s_ns.attr,
>  	&dev_attr_seq_idx.attr,
>  	&dev_attr_seq_state.attr,
>  	&dev_attr_seq_event.attr,

I'm ok with this patch but the new entry needs to be documented in [1].  But
before moving forward with that I'm wondering if this is the way to go.  Would
it be better to consolidate type, ctxtype, context and exlevel_s_ns in a single
entry, say addr_acc_type?  We'd shed a fair amount of code and make it more
simple for users to configure.


[1]. Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
