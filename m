Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FAA135721
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e584ctexpTQPXJhHxAnhVBNuxpMCCmPUd82EOK3XysE=; b=e0Rzej7xb4MOP+XKNyyhTUNsx
	B4XJ4Nnwk/ui6urhzCuq932NjjQ8RnDbE0AW8gyWoljJlA/SMtwrC1jsQFo4PtwnXagW9S2tk7/Ag
	BJRk1hZB893LjCzp76UX7t7iVaiLng2ai++ch7bPij98xQuk3aZDFsaJG2fGNH3PcEUT06c2H+w70
	iHtXWY5JIttW3KTT1zpVyS/YJiEaTOgRCxhpVyqh2Ubwj15lWguQdJrK7IckCyPld+S11miKKukPT
	aNZi6eed9v0YGOKUXp+OFpeTFGGTIQPp7XneLr17zq3WXXFWdlqBe9G3vv2Uy++4IBQQTwPSZMRgc
	ci+T3aEVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVCV-0002Qo-7G; Thu, 09 Jan 2020 10:38:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVCA-0002Ke-RP; Thu, 09 Jan 2020 10:37:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7852E31B;
 Thu,  9 Jan 2020 02:37:41 -0800 (PST)
Received: from [10.37.12.111] (unknown [10.37.12.111])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD0053F6C4;
 Thu,  9 Jan 2020 02:37:37 -0800 (PST)
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
To: Chanwoo Choi <cw00.choi@samsung.com>, robh+dt@kernel.org,
 krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <b9a1ebe5-e114-3a6b-6081-c794e1341329@arm.com>
Date: Thu, 9 Jan 2020 10:37:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220002430.11995-3-cw00.choi@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_023743_002631_2CB47D2B 
X-CRM114-Status: GOOD (  20.12  )
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
> Previously, devfreq core support 'devfreq' property in order to get
> the devfreq device by phandle. But, 'devfreq' property name is not proper
> on devicetree binding because this name doesn't mean the any h/w attribute.
> 
> The devfreq core hand over the right to decide the property name
> for getting the devfreq device on devicetree. Each devfreq driver
> will decide the property name on devicetree binding and then get
> the devfreq device by using devfreq_get_devfreq_by_node().
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>   drivers/devfreq/devfreq.c    | 35 -----------------------------------
>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>   include/linux/devfreq.h      |  8 --------
>   3 files changed, 11 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index cb8ca81c8973..c3d3c7c802a0 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>   
>   	return ERR_PTR(-ENODEV);
>   }
> -
> -/*
> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
> - * @dev - instance to the given device
> - * @index - index into list of devfreq
> - *
> - * return the instance of devfreq device
> - */
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
> -{
> -	struct device_node *node;
> -	struct devfreq *devfreq;
> -
> -	if (!dev)
> -		return ERR_PTR(-EINVAL);
> -
> -	if (!dev->of_node)
> -		return ERR_PTR(-EINVAL);
> -
> -	node = of_parse_phandle(dev->of_node, "devfreq", index);
> -	if (!node)
> -		return ERR_PTR(-ENODEV);
> -
> -	devfreq = devfreq_get_devfreq_by_node(node);
> -	of_node_put(node);
> -
> -	return devfreq;
> -}
> -
>   #else
>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>   {
>   	return ERR_PTR(-ENODEV);
>   }
> -
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
> -{
> -	return ERR_PTR(-ENODEV);
> -}
>   #endif /* CONFIG_OF */
>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>   
>   /**
>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index 7f5917d59072..1bc4e3c81115 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>   	return ret;
>   }
>   
> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
> +{
> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
> +
> +	if (!node)
> +		return ERR_PTR(-ENODEV);
> +
> +	return devfreq_get_devfreq_by_node(node);
> +}
> +
>   /*
>    * devfreq function for both simple-ondemand and passive governor
>    */
> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>   	profile->exit = exynos_bus_passive_exit;
>   
>   	/* Get the instance of parent devfreq device */
> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
> +	parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>   	if (IS_ERR(parent_devfreq))
>   		return -EPROBE_DEFER;
>   

These changes won't apply, probably I need some base for it.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
