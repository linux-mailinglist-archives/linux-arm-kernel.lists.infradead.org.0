Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585147F4F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xOzDae5OSx4VU1m8z+dVBUMPtI02xL9WspnNxntbA54=; b=t+tzWKhUrEw7cQ/kGQJIEUA2G
	3IHBidg1ziALJFqKnsK2DQPoetnHZcwuIUXrIiueopAxJL0WH6Q7BXNKmZDxOuL9tYmjioDA02az1
	aq2FeaBtDQP0J9LIZIVHGTqLapvOxyn9CvDcTPirfPqLQh2TDEVUGbNdgk7KDAMWAHYpcdGAJMMes
	o1ZDHKZrQNZzFbdDW1V/bRGJS+QSDCyURLFqTffHkuzPkvDsAw8SAiaNqJpHX4ZZr6jrCD5pvDPmF
	zMvwBhzYfriRPe9yqzuquTdjNP+LHXun7NSg+yQKzEYzYDgB3yJCFSXo/cYLP0g0Ew/b7xhzoiyU6
	e4Z4YHRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUid-0005oO-Ni; Fri, 02 Aug 2019 10:23:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htUiQ-0005nz-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:23:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B09A344;
 Fri,  2 Aug 2019 03:23:12 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 19F583F71F;
 Fri,  2 Aug 2019 03:23:10 -0700 (PDT)
Subject: Re: [PATCH v4 3/6] coresight: etm4x: use module_param instead of
 module_param_named
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-4-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <54e6c265-af92-ea58-1ce6-c426996c906a@arm.com>
Date: Fri, 2 Aug 2019 11:23:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730125157.884-4-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_032314_244732_363A2CE7 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, leo.yan@linaro.org,
 Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/07/2019 13:51, Andrew Murray wrote:
> Given that the user-exposed module parameter for 'boot_enable' matches
> the variable that it sets, let's use module_param instead of
> module_param_named.
> 
> Let's also use octal permissions (checkpatch recommends this) and
> provide a module parameter description.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index ec9468880c71..615bdbf7c9b7 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -34,7 +34,8 @@
>   #include "coresight-etm-perf.h"
>   
>   static int boot_enable;
> -module_param_named(boot_enable, boot_enable, int, S_IRUGO);
> +module_param(boot_enable, int, 0444);
> +MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
>   
>   /* The number of ETMv4 currently registered */
>   static int etm4_count;
> 

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
