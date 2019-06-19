Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE394B661
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rSRC0CgHL6eqGQzZ8BBnBmHvBPt9Uk+LQp1iA9FDBic=; b=elcpawXQsMbtTwe+DgkD6AimX
	5UD8imbzXczIfJq+DDtTzcxE9lZoK0ZtikDMLq8/a+viSiBpxiKyYdgp6/Pe1CZtWrG6cKYIdqJjs
	THOEnO8f7i+Z7HriyCom3dzukOfJdTnGoamQUyyP+si0NMNdgDxfwmpw1giblmAYZcugk4S8lR6Rc
	tQfuDxSpYNBj8McjDkw9FUfK+NrI9fqqcO8nKkLuaBEgVSnVn5SVrs0Jz4Z4W5u1QT1IMQlOEPRtI
	/a3v5Dq/uhoq1I6j0l37UXSy5eFi+skKIb397UKJNfDKn6wjMVk192ZphADwHYGPwt60wtVG+QVcH
	V0JdKduhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdY4T-0006C7-QT; Wed, 19 Jun 2019 10:44:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY4K-0006Bn-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:43:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6B1A360;
 Wed, 19 Jun 2019 03:43:55 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A51393F738;
 Wed, 19 Jun 2019 03:45:41 -0700 (PDT)
Subject: Re: [PATCH v1 3/5] coresight: etm4x: use octal permissions for
 module_params
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-4-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <df266416-99a9-b5f6-343f-9213f46c7665@arm.com>
Date: Wed, 19 Jun 2019 11:43:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618125433.9739-4-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_034356_643903_B6570B3E 
X-CRM114-Status: GOOD (  15.20  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18/06/2019 13:54, Andrew Murray wrote:
> Checkpatch indicates that octal permissions are preferred for
> module parameters. Let's use octal permissions instead.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index ae623415c431..885c4f2c691c 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -34,7 +34,7 @@
>   #include "coresight-etm-perf.h"
>   
>   static int boot_enable;
> -module_param_named(boot_enable, boot_enable, int, S_IRUGO);
> +module_param_named(boot_enable, boot_enable, int, 0444);

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
