Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C485F13561D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TIFiZHncW47Pnk9RQYXbeSF8HJ8vdzGkCueeEg2FbhU=; b=QWGgUzbQldFB/6t8maSL4qOJy
	BhDmALG0YLP+BTYl3eEDtl7JkYe80j1+CEmNB6mv9Hu3G+krS4GaY7Uh+XKR6Yu9SD+coTz2rehLB
	a3ECMEw6O5bV6RGrrH08sfYMBJ6jHbwQu7tCaljxD6L2jOMQo7GIj8LuYi4WN3Cqrm18zFYgyV9ml
	NNAZvHkGb8BgbNTw8/+dISSRPYkNKGsfhlvzwjSHpQGTzXuhbJqb/JBggyGeiMjCu3FV2Gl9kmuMm
	+bg7PydoYopwOT74wkxwbwSK4IGGKVT/j1DDDgkJMJ2l81Y5WYbikNcJhOWAjAFocuJVy8GNiPZAt
	ChOgn4L5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUPv-0001nx-9k; Thu, 09 Jan 2020 09:47:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUPj-0001m2-TB; Thu, 09 Jan 2020 09:47:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB55D31B;
 Thu,  9 Jan 2020 01:47:36 -0800 (PST)
Received: from [10.37.12.111] (unknown [10.37.12.111])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 399463F6C4;
 Thu,  9 Jan 2020 01:47:33 -0800 (PST)
Subject: Re: [PATCH v2 01/11] PM / devfreq: Add devfreq_get_devfreq_by_node
 function
To: Chanwoo Choi <cw00.choi@samsung.com>, robh+dt@kernel.org,
 krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405@epcas1p4.samsung.com>
 <20191220002430.11995-2-cw00.choi@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <71da0ef9-1e72-dddc-dcb4-e4cb28b67183@arm.com>
Date: Thu, 9 Jan 2020 09:47:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220002430.11995-2-cw00.choi@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_014740_034440_CC32F0F9 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chanwoo,


On 12/20/19 12:24 AM, Chanwoo Choi wrote:
> From: Leonard Crestez <leonard.crestez@nxp.com>
> 
> Split off part of devfreq_get_devfreq_by_phandle into a separate
> function. This allows callers to fetch devfreq instances by enumerating
> devicetree instead of explicit phandles.
> 
> [lkp: Reported the build error]
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> [cw00.choi: Export devfreq_get_devfreq_by_node function and
>   add function to devfreq.h when CONFIG_PM_DEVFREQ is enabled.]
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>   drivers/devfreq/devfreq.c | 46 +++++++++++++++++++++++++++++----------
>   include/linux/devfreq.h   |  6 +++++
>   2 files changed, 41 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 89260b17598f..cb8ca81c8973 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -966,6 +966,32 @@ struct devfreq *devm_devfreq_add_device(struct device *dev,
>   EXPORT_SYMBOL(devm_devfreq_add_device);
>   
>   #ifdef CONFIG_OF
> +/*
> + * devfreq_get_devfreq_by_node - Get the devfreq device from devicetree
> + * @node - pointer to device_node
> + *
> + * return the instance of devfreq device
> + */
> +struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	struct devfreq *devfreq;
> +
> +	if (!node)
> +		return ERR_PTR(-EINVAL);
> +
> +	mutex_lock(&devfreq_list_lock);
> +	list_for_each_entry(devfreq, &devfreq_list, node) {
> +		if (devfreq->dev.parent
> +			&& devfreq->dev.parent->of_node == node) {
> +			mutex_unlock(&devfreq_list_lock);
> +			return devfreq;
> +		}
> +	}
> +	mutex_unlock(&devfreq_list_lock);
> +
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   /*
>    * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
>    * @dev - instance to the given device
> @@ -988,26 +1014,24 @@ struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>   	if (!node)
>   		return ERR_PTR(-ENODEV);
>   
> -	mutex_lock(&devfreq_list_lock);
> -	list_for_each_entry(devfreq, &devfreq_list, node) {
> -		if (devfreq->dev.parent
> -			&& devfreq->dev.parent->of_node == node) {
> -			mutex_unlock(&devfreq_list_lock);
> -			of_node_put(node);
> -			return devfreq;
> -		}
> -	}
> -	mutex_unlock(&devfreq_list_lock);
> +	devfreq = devfreq_get_devfreq_by_node(node);
>   	of_node_put(node);
>   
> -	return ERR_PTR(-EPROBE_DEFER);
> +	return devfreq;
>   }
> +
>   #else
> +struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>   {
>   	return ERR_PTR(-ENODEV);
>   }
>   #endif /* CONFIG_OF */
> +EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>   
>   /**
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index c6f82d4bec9f..1dccc47acbce 100644
> --- a/include/linux/devfreq.h
> +++ b/include/linux/devfreq.h
> @@ -253,6 +253,7 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>   				struct devfreq *devfreq,
>   				struct notifier_block *nb,
>   				unsigned int list);
> +extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);

It can go without 'extern' in the header.

>   extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>   						int index);
>   
> @@ -407,6 +408,11 @@ static inline void devm_devfreq_unregister_notifier(struct device *dev,
>   {
>   }
>   
> +static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>   							int index)
>   {
> 

Apart from this minor thing, looks good to me.
When you fix it, feel free to add

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
