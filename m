Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D9C4CFAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gkJvWIZVYFgL4axxH7vPkF6O+S6kFL9NhWvJ4cFtenQ=; b=kIRaZnx5GQdpOuz0W5O2CEtzT
	fZPGsS0yDyyCwSj515mVYkMqSWAxo7AjLBLZw1WylzHY2bCOI2venv1uo/FzystufBuAEsgoliqSt
	5wzhFppXAzCJ6DTnwExD0ISm7trPpwiWxN5RuQNKf9V3ZQA/K6jPJKJCqfhaBJB41rO6R0wcVPmV5
	oSQTr9SzuOrelbkB0nO3Ux4wqJQe4M/L0dKnYSOaycyEHYYE5G/pZvVcFXpzjjC8wcgL0OdDIqQcc
	jIWSLQ6IvChV0jJTU/Denu/OyZDA8/Nv7VsfzM3fdIiS+4IkoTMCg0Qhy9ICCEZxywtbYD3anKHoc
	cCrhE8MDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxXL-0007lC-PL; Thu, 20 Jun 2019 13:55:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxXA-0007kr-LG
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:55:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2D90344;
 Thu, 20 Jun 2019 06:55:22 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55DE23F718;
 Thu, 20 Jun 2019 06:55:21 -0700 (PDT)
Subject: Re: [PATCH 1/2] coresight: Set affinity to invalid for missing CPU
 phandle
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 andy.gross@linaro.org, david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f7a3592b-7ed7-b011-9ae1-dc2ca0e49ae4@arm.com>
Date: Thu, 20 Jun 2019 14:55:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_065524_745485_C6232049 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Sai,

Thanks for the patch. Please could you change the subject to :

"coresight: Do not default to CPU0 for missing CPU phandle"

On 20/06/2019 14:45, Sai Prakash Ranjan wrote:
> Affinity defaults to CPU0 in case of missing CPU phandle
> and this leads to crashes in some cases because of such
> wrong assumption. Fix this by returning -ENODEV in

Thats not the right justification. Causing crashes is due to
bad DT/firmware. I would be happy with something like :

"Coresight platform support assumes that a missing \"cpu\" phandle
defaults to CPU0. This could be problematic and unnecessarily binds
components to CPU0, where they may not be. Let us make the DT binding
rules a bit stricter by not defaulting to CPU0 for missing "cpu"
affinity information."

Also, you must

1) update the devicetree/bindings document to reflect the same.
2) update the drivers to take appropriate action on the missing CPU
    where they are expected (e.g, CPU-debug, etm*), to prevent
    breaking a bisect.


> coresight platform for such cases and then handle it
> in the coresight drivers.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/hwtracing/coresight/coresight-platform.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5ceda8db24..b1ea60c210e1 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -160,15 +160,17 @@ static int of_coresight_get_cpu(struct device *dev)
>   
>   	if (!dev->of_node)
>   		return 0;
> +
>   	dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -	/* Affinity defaults to CPU0 */
> +
> +	/* Affinity defaults to invalid if no cpu nodes are found*/

The code is self explanatory here. You could drop the comment.

>   	if (!dn)
> -		return 0;
> +		return -ENODEV;
> +
>   	cpu = of_cpu_node_to_id(dn);
>   	of_node_put(dn);
>   
> -	/* Affinity to CPU0 if no cpu nodes are found */
> -	return (cpu < 0) ? 0 : cpu;
> +	return cpu;
>   }
>   

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
