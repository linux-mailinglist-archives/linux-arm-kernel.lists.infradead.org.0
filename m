Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5235E72C68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5pFdYmIpDkuoLLdfRqY8hK3lK52Nrvk2l5XbUu/ztp8=; b=cPE3Nb1ua0tLEoWcS7UXihH4P
	Bwu0MfIUaWWi2hKwkHlAXAxlaFYLqNeGdWJ1Cre6t2aDXUVQqeCA1qk7XF5/dkywLbr0zUIDxifVg
	scY0z7NyahVBps0iGgI4DdaSEV1+xpVXcWugXvIokPd5gemnUIyf2gUoyOS+XAwZVRFeHHMjXVDf4
	UCwXvuzTmm55mqWym7NvqpJQRbCLZw+ZGuMmpt1b+8nZ81QjqC18TcNlwgAczOfyBZncqgMO+L9Fr
	Jhxi5TGcZIPyJT1jRwuV4wl0LhrL7+U0nWQysVqMGRu4fYJjfSiLB0PJroxQ+wjHyYz+aB40Hlwkx
	iFSKeWueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEdY-0002ow-Dn; Wed, 24 Jul 2019 10:36:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEdI-0002nx-1B
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:36:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B27A7337;
 Wed, 24 Jul 2019 03:36:25 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0961E3F71F;
 Wed, 24 Jul 2019 03:36:24 -0700 (PDT)
Subject: Re: [PATCH] coresight: fix typos
To: pavel@ucw.cz, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190724100335.GA7373@amd>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <7ae7157b-1336-f4a6-59a3-b1ac6307bd8d@arm.com>
Date: Wed, 24 Jul 2019 11:36:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724100335.GA7373@amd>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_033628_115668_A2EFE076 
X-CRM114-Status: GOOD (  15.15  )
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



On 24/07/2019 11:03, Pavel Machek wrote:
> 
> Fix typos in comments.
> 
> Signed-off-by: Pavel Machek <pavel@denx.de>
> 
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 55db77f641..1d66191 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -1001,7 +1001,7 @@ static int coresight_orphan_match(struct device *dev, void *data)
>   	if (!i_csdev->orphan)
>   		return 0;
>   	/*
> -	 * Circle throuch all the connection of that component.  If we find
> +	 * Circle through all the connections of that component.  If we find
>   	 * an orphan connection whose name matches @csdev, link it.

We have stopped using name to match the csdev and switched to fwnode handles. 
Please could you update the comment to reflect this, while you are at it ?
Otherwise looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
