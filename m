Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA96457F14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cjGupCyEeBITH9yYMw7c8GGnPxC/gThf88Vyo59qk/4=; b=A3/tU245XMl3+N/OALA3s0Tra
	6B0OSMMMQzmAGY6QyvHMqxYMT/AIvhDLtjTWoVwyMT0pD6HpRAQd8kDv9+FAhVyoTmxs75mSb+N7X
	fHhRqrLzeSYdEUq/xMjkm61r/Wgk8CLlFJ9eW4P4/bKh0sFufiXJiDTyvPXdqKeYVpqVraQMFq0C+
	rVTUQke4VpNxSmUVEGPkzpXpKBAmDxAUuWngtDEdWAWtsKW/hQgFjB3V2HF6pkpRAb+1puw/5VDdp
	DuCj6F3oGlpy2N9/NYLJPOkAEciDxi/tjWcP61F1DZxXXT/B/FTdKY+x93KjkxXna53FNeza//tRE
	FEp3CWuLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQWg-0006QO-B8; Thu, 27 Jun 2019 09:17:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQVy-0006Py-0m
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:16:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D4DA2B;
 Thu, 27 Jun 2019 02:16:19 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C58C3F718;
 Thu, 27 Jun 2019 02:16:18 -0700 (PDT)
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <adf74525-faa7-0fd6-7ea9-6377e782b4b6@arm.com>
Date: Thu, 27 Jun 2019 10:16:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190627083525.37463-3-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_021622_135428_76DCFA3F 
X-CRM114-Status: GOOD (  22.27  )
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
Cc: coresight@lists.linaro.org, Sudeep.Holla@arm.com, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 27/06/2019 09:35, Andrew Murray wrote:
> Synchronization is recommended before disabling the trace registers
> to prevent any start or stop points being speculative at the point
> of disabling the unit (section 7.3.77 of ARM IHI 0064D).
> 
> Synchronization is also recommended after programming the trace
> registers to ensure all updates are committed prior to normal code
> resuming (section 4.3.7 of ARM IHI 0064D).
> 
> Let's ensure these syncronization points are present in the code
> and clearly commented.

Please could you also mention why we switched from mb() ?

> 
> Note that we could rely on the barriers in CS_LOCK and
> coresight_disclaim_device_unlocked or the context switch to user
> space - however coresight may be of use in the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> CC: stable@vger.kernel.org



> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index c89190d464ab..68e8e3954cef 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -188,6 +188,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>   		dev_err(etm_dev,
>   			"timeout while waiting for Idle Trace Status\n");
>   
> +	/* As recommended by 4.3.7 of ARM IHI 0064D */

nit: It would be good to mention the "section name" to help the reader
find the same on a different version of the document. Also within the same
version, this is listed in the subsection:
"Synchronization when using the memory-mapped interface"

Please could you update the comment to reflect the same ?

> +	dsb(sy);
> +	isb();
> +
>   done:
>   	CS_LOCK(drvdata->base);
>   
> @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
>   	control &= ~0x1;
>   
>   	/* make sure everything completes before disabling */
> -	mb();
> +	/* As recommended by 7.3.77 of ARM IHI 0064D */

Nit: This refers to completely unrelated section. Shouldn't this be the same
as above ?

With the above fixed:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
