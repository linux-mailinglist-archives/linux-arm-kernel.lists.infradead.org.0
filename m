Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9C1107651
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 18:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7peqBxrOUdLc5QRy1ujIkz8r/KQjWsaWuZU+U0SfSNQ=; b=b7tZ88scdnZRFV
	1CWYERopE9h4fk10BeRRAbW0jWsH5B8yLQIz/4NHRtGUABXot0OzUzZaT37JnPrOf1OLwY0i0qZxs
	rMieftk99U/NleA/kO0/C+8WmYDkMRJlIvIjQ80BsyeUYiYZPwYCSaID9LH/1U9Tg9kKbCgamhzhe
	WGr2ZLP+pGzCVzA8b5nfwx74Xo9CJ88EUO9TOAgYFWJsAvyFsyHA5rPfundUba4D6HLVDWBHp89Ye
	hr1qhwhlKKGGatEhy/AwYE9JAtrKdjVqiSmL56J5wwwim504U2bxSl1q2TkemsCE5pvPZOtU2YIE8
	+7qzM5uQQE5flKNSG4KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCbK-0000w3-EC; Fri, 22 Nov 2019 17:20:10 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCb4-0000vh-M0
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 17:19:56 +0000
Received: by mail-pj1-x1044.google.com with SMTP id v93so39632pjb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 09:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q6BlYT6/Z4tSjKr/kNllhAtnAKd8iVSV2iEUROLqPI8=;
 b=ELi7O8YUvk4UeiMsi97t5rySbf3MeMQpU40ZfilxIwysZPVt0iMiXTHBYH7tWqWUHK
 DiK6SlEe46Nbs2F4Sg5q7RNIMawIhdYfwmSm1nZq2lte6oZdommCecGC9bCqDnvJhw9v
 Bzk4hRMz1IFsG5s2flsmQ8f8897JbAZGpNraVUlyu27VD3ICoo39dD0EFC7IZZMyaxFd
 01p5sS+p6jXleCyJKz9YM+FbHPGL6qK3dMcqg93fiSrUKrPCiEGORDq+dBIrjXLUkxO9
 cucdn2ONlNaQ8QyNuo8c3JWyrIfbN5t4XKcmHKOEgpvj+kwE9d9+RGqmhDmUW6mwzSMV
 hyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q6BlYT6/Z4tSjKr/kNllhAtnAKd8iVSV2iEUROLqPI8=;
 b=e27HuayfMx0TCo2zHS7gbJV5wnS0LJXIO8uIEDvJTlx9VmntCNoppBg3pfdr5Eeebg
 GqOa4cAapb15p4e/DImatwxW4Qb3Jg25gN0ddrJr/AX/tHME2RK3FpCeidJKgIb/0rGe
 izcrO4IUPpFuUNQA23lQgI4HHboHCbfnBf01zSuYNy9qQn4YJtSv4/f9s2gstWdypkun
 JWMBNCLZKW6+vPuJVdggxykTYtiiBYFNLKVYwP6tVDawGI+oygYlIoYzq4RVJnWOddDn
 fYDtzFnZ7baz1749v6O+dV9jxUOtYKpLH2rD4BWE3F7LjCDNb2p6Z19fKEXmOw6WK+BG
 TfQw==
X-Gm-Message-State: APjAAAUdBXGEWy7oEMMcEBcBaIqRo8w+VWW/xLrqJP80+0NpkkVkc3X2
 JLZRqB8B//eycNYZdj0ysYv1CA==
X-Google-Smtp-Source: APXvYqwss35cdEVoof9/JF38V2dzqPfgSmlyObJ0V3lQBa4vCUR86x9K77SIdHdEoTSPOZ/XapIXXA==
X-Received: by 2002:a17:90a:7784:: with SMTP id
 v4mr20673851pjk.74.1574443192905; 
 Fri, 22 Nov 2019 09:19:52 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y1sm8286433pfq.138.2019.11.22.09.19.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 22 Nov 2019 09:19:51 -0800 (PST)
Date: Fri, 22 Nov 2019 10:19:50 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 02/14] coresight: cti: Add sysfs coresight mgmt reg
 access.
Message-ID: <20191122171950.GA23396@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-3-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_091954_729664_FEC10216 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:19:00PM +0000, Mike Leach wrote:
> Adds sysfs access to the coresight management registers.
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Tags added to a patch are like a chain of custody and should be added in order
they were published.  In this case you wrote the patch so your SoB goes first.
Then Suzuki and I have reviewed your patch and as such, our RB come _after_ your
SoB.  When I add the patch to my tree I'll add my SoB after that and when Greg
picks it up in his, he will do the same.  Please re-order the tags in this patch
and the other ones in this set to reflect the chronology of events.

> ---
>  .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-priv.h  |  1 +
>  2 files changed, 54 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index a832b8c6b866..507f8eb487fe 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -62,11 +62,64 @@ static struct attribute *coresight_cti_attrs[] = {
>  	NULL,
>  };
>  
> +/* register based attributes */
> +
> +/* macro to access RO registers with power check only (no enable check). */
> +#define coresight_cti_reg(name, offset)			\
> +static ssize_t name##_show(struct device *dev,				\
> +			   struct device_attribute *attr, char *buf)	\
> +{									\
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
> +	u32 val = 0;							\
> +	pm_runtime_get_sync(dev->parent);				\
> +	spin_lock(&drvdata->spinlock);					\
> +	if (drvdata->config.hw_powered)					\
> +		val = readl_relaxed(drvdata->base + offset);		\
> +	spin_unlock(&drvdata->spinlock);				\
> +	pm_runtime_put_sync(dev->parent);				\
> +	return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);		\
> +}									\
> +static DEVICE_ATTR_RO(name)
> +
> +/* coresight management registers */
> +coresight_cti_reg(devaff0, CTIDEVAFF0);
> +coresight_cti_reg(devaff1, CTIDEVAFF1);
> +coresight_cti_reg(authstatus, CORESIGHT_AUTHSTATUS);
> +coresight_cti_reg(devarch, CORESIGHT_DEVARCH);
> +coresight_cti_reg(devid, CORESIGHT_DEVID);
> +coresight_cti_reg(devtype, CORESIGHT_DEVTYPE);
> +coresight_cti_reg(pidr0, CORESIGHT_PERIPHIDR0);
> +coresight_cti_reg(pidr1, CORESIGHT_PERIPHIDR1);
> +coresight_cti_reg(pidr2, CORESIGHT_PERIPHIDR2);
> +coresight_cti_reg(pidr3, CORESIGHT_PERIPHIDR3);
> +coresight_cti_reg(pidr4, CORESIGHT_PERIPHIDR4);
> +
> +static struct attribute *coresight_cti_mgmt_attrs[] = {
> +	&dev_attr_devaff0.attr,
> +	&dev_attr_devaff1.attr,
> +	&dev_attr_authstatus.attr,
> +	&dev_attr_devarch.attr,
> +	&dev_attr_devid.attr,
> +	&dev_attr_devtype.attr,
> +	&dev_attr_pidr0.attr,
> +	&dev_attr_pidr1.attr,
> +	&dev_attr_pidr2.attr,
> +	&dev_attr_pidr3.attr,
> +	&dev_attr_pidr4.attr,
> +	NULL,
> +};
> +
>  static const struct attribute_group coresight_cti_group = {
>  	.attrs = coresight_cti_attrs,
>  };
>  
> +static const struct attribute_group coresight_cti_mgmt_group = {
> +	.attrs = coresight_cti_mgmt_attrs,
> +	.name = "mgmt",
> +};
> +
>  const struct attribute_group *coresight_cti_groups[] = {
>  	&coresight_cti_group,
> +	&coresight_cti_mgmt_group,
>  	NULL,
>  };
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 82e563cdc879..aba6b789c969 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -22,6 +22,7 @@
>  #define CORESIGHT_CLAIMCLR	0xfa4
>  #define CORESIGHT_LAR		0xfb0
>  #define CORESIGHT_LSR		0xfb4
> +#define CORESIGHT_DEVARCH	0xfbc
>  #define CORESIGHT_AUTHSTATUS	0xfb8
>  #define CORESIGHT_DEVID		0xfc8
>  #define CORESIGHT_DEVTYPE	0xfcc
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
