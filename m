Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DB717A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m2I9CsMedBlFgJXfm8DJMswDVFyEJxwqvUEFT92e7ws=; b=W4CAaZTVJEnLeMi9nBphhYbrl
	hOcEEEBzTli8nb0EJz4Z859UpsznR3YWH4fNQ7HXAa63LoKD1FRDXKbjROyksMceO8D5i1pkkdnUT
	gW/3ZzU7G0KScZkutPWHNAQAwynwBZPbziCwrAAw4kzJcqhinN4sRU0GS90wUN6lg4aqIybIo4d3j
	N0gmYzru3zGavF1G9Ql1YpkPRO6TBD8uw/e4+SiAU8vinMdzewW8KgsspKWG/LzqIhCOx5qbOkEYF
	/EIaRDWNKC2fTo+CGyW1OZ166GhAR7J6midI20Xnuy5awlmkcM93eV6YYVKmnAe3KnosMOGE6PBw6
	DpPt/VxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptUx-000216-N8; Tue, 23 Jul 2019 12:02:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hptUl-00020m-T6
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:02:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 263FF337;
 Tue, 23 Jul 2019 05:02:15 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 210993F71A;
 Tue, 23 Jul 2019 05:02:14 -0700 (PDT)
Subject: Re: [PATCH] dma: qcom: hidma_mgmt: Add of_node_put() before goto
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, okaya@kernel.org,
 agross@kernel.org, vkoul@kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org
References: <20190723103543.7888-1-nishkadg.linux@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
Date: Tue, 23 Jul 2019 13:02:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723103543.7888-1-nishkadg.linux@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_050215_988052_197F1ACE 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 11:35, Nishka Dasgupta wrote:
> Each iteration of for_each_available_child_of_node puts the previous
> node, but in the case of a goto from the middle of the loop, there is
> no put, thus causing a memory leak. Add an of_node_put before the
> goto in 4 places.

Why not just add it once at the "out" label itself? (Consider the 
conditions for the loop terminating naturally)

And if you're cleaning up the refcounting here anyway then I'd also note 
that the reference held by the loop iterator makes the extra get/put 
inside that loop entirely redundant. It's always worth taking a look at 
the wider context rather than just blindly focusing on what a given 
script picks up - it's fairly rare that a piece of code has one obvious 
issue but is otherwise perfect.

Robin.

> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>   drivers/dma/qcom/hidma_mgmt.c | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma/qcom/hidma_mgmt.c b/drivers/dma/qcom/hidma_mgmt.c
> index 3022d66e7a33..209adc6ceabe 100644
> --- a/drivers/dma/qcom/hidma_mgmt.c
> +++ b/drivers/dma/qcom/hidma_mgmt.c
> @@ -362,16 +362,22 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
>   		struct platform_device *new_pdev;
>   
>   		ret = of_address_to_resource(child, 0, &res[0]);
> -		if (!ret)
> +		if (!ret) {
> +			of_node_put(child);
>   			goto out;
> +		}
>   
>   		ret = of_address_to_resource(child, 1, &res[1]);
> -		if (!ret)
> +		if (!ret) {
> +			of_node_put(child);
>   			goto out;
> +		}
>   
>   		ret = of_irq_to_resource(child, 0, &res[2]);
> -		if (ret <= 0)
> +		if (ret <= 0) {
> +			of_node_put(child);
>   			goto out;
> +		}
>   
>   		memset(&pdevinfo, 0, sizeof(pdevinfo));
>   		pdevinfo.fwnode = &child->fwnode;
> @@ -386,6 +392,7 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
>   		new_pdev = platform_device_register_full(&pdevinfo);
>   		if (IS_ERR(new_pdev)) {
>   			ret = PTR_ERR(new_pdev);
> +			of_node_put(child);
>   			goto out;
>   		}
>   		of_node_get(child);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
