Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069329F877
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 04:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0edF4s+gaA+dOVrXqaSnoDkr6G2IWMEv8fKw9nv1DQ=; b=gPkLu3/WEPEs1W
	nlJnPmKOvW2e3o27HmsaHJMpydHsGKznigV3+ruPm5wHbRNtwgHCjx+V9aAKVovXV0qxV4FCgfEBv
	zw8wNgiv3pabhnigaUtj1DDGkB2bYKfh1IQyKKxf6HEfn3tjYa/D5HQvvtY9KoZX7UO5RLWSn9Dl7
	Eaizp1YxoOoY4tLXDucZSMJ1r2Urw1H6Zs+to8GdQgR0M2fDsJ/qow+FtTefKmBWBOVjx3ReNyyUJ
	9ug3Rpy30zMArmMBZf9IleG3Hzhi69cUNWbGLiIakN9toMplBuSQ9ZAC4izJblWoqKfUncxYDu+Eb
	ZxHWUVxz/Hx14wNc83rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2o5c-0000Ff-Pq; Wed, 28 Aug 2019 02:53:40 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2o5M-0000FH-At
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 02:53:26 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n205so279497ywb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 19:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GwHk7S7Mu71121vbGfRvfJOXyD5jjXwqxSFDpLsJs40=;
 b=FCFiOF2LK83QlEP5/Ult5KEET+EDaQOwhQ4n5Jqa5APUnaaWBfWudTdwZBZFEbhOGz
 3+GKNMpBaGAD9VP88AKzvYeynwZhXSyvTygr2rQfG2GIIb4nBWGvjXip3U7SCYDY2+Im
 aObSO7NqkjN/aFYmW0m9MCz27C6QINbvnccU7vahnovg8GbhDtlMmHO9wBg4nwdR5oCS
 opkEmEL0OQsJS4npXSDABqirt7oAWadQWwXIMY5Cyje2RQp9FigvK9bwhiNmdPSau6cQ
 fZ2uJj01KmuVdMIQZSqGJtsh4MIfX8ATvEoe8TbgKi6xDpL9X+LfvWsLw0pq8owD2z+a
 6hpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GwHk7S7Mu71121vbGfRvfJOXyD5jjXwqxSFDpLsJs40=;
 b=q36ZC56oojAqxw1RSAwwyQS1I7m/cQ1V7fwVYKd+hDWG7rfUt1kZC95I6QzUdNrGz1
 YIrcaEC9DauNv9QsfrW6mz9+UxYiC8k6RjZAGwC2uFRcryL/2+F16cjNMAIdhx5z7JKM
 CJ2Q6HU2gPDXrFj9vlqFQhblccqYL1xXmm3fXGUfFSL5dzQA4XkYLysJIFq8ZnKCOxyy
 AV2NbxVz2+b0jWqp7pWm1/hZDCZ1AwINPRW2u7FGrxTBDMPMPNW2RE8xxKtup/0TaWI3
 QD5CASIje8Lyp+4bH4bbSJ85faSCrHMjNnFy6539sEaZJKpmMPNA9sDDsOERMLMIcX/H
 tJqQ==
X-Gm-Message-State: APjAAAUX8sf9oX4C8YyXYpSjhA/znFvrb+TjuFqhd3EHMmqgEt/hh5X+
 ALQve72YaZ4gnKI8EBxPG+2VOw==
X-Google-Smtp-Source: APXvYqyuR4K/65ftAYtkv+uwEkE2XV5TstEMG6lRV4k4Q5pyzZ6qYMfodYoaJuDMRFeZwKomZhi+uQ==
X-Received: by 2002:a81:9945:: with SMTP id q66mr1534774ywg.47.1566960801545; 
 Tue, 27 Aug 2019 19:53:21 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id 193sm272903ywh.89.2019.08.27.19.53.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 19:53:20 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:53:13 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
Message-ID: <20190828025313.GC26133@leoy-ThinkPad-X240s>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-4-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-4-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_195324_439747_5A9B470F 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

I think it needs to check if 'val' is out of bound, which only can have
value which is less than 7 bits (finally set for bit 8 to bit 14).

Just curious, if the CPU runs in non-secure mode (e.g. NS-EL1 in
kernel mode), does it have permission to access EXLEVEL_S field?  I
don't see the spec give info for this.

Thanks,
Leo Yan

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
