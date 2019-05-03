Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E5D130F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=riakeMO+0K8etP3JtPDO6YoshVSEGJiVCTHCB5SC+E4=; b=KhiRAwnT7n2+ba07FKwtRVFsK
	7yRlnBADpi6UVVQJaGXKQ7aLuSVo1jNxsibZFa179X+Qzo5tQJJNbSSf8BeXlpghRY/ENmljAYLgq
	LmAihpmiNwCZ79tx4XwNCOdOXkRSvHdVhkO0DfRFvAIhH+79a81NkL5cDJM3O8Quz/OdCPuDQtfvF
	2dR2nAGDPFip6nmf+3mFp31or/F5Q9aob89bvim85sQOpB/BIJZdTS5CZUV35Og4cabVDMeWK25O7
	ljHv2fVcRixIl1IpLg0ndyOkB9PBhWU63ogbg6BzdBoW26KxRfyKplCbsWll2r5W2yOqFb2wJRukW
	e2nsvIkjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZr1-0003HG-UQ; Fri, 03 May 2019 15:12:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZqu-0003G6-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:11:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BECA7374;
 Fri,  3 May 2019 08:11:53 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 33D903F557;
 Fri,  3 May 2019 08:11:52 -0700 (PDT)
Subject: Re: [PATCH v5 4/4] coresight: funnel: Support static funnel
To: leo.yan@linaro.org, mathieu.poirier@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20190412102738.12679-1-leo.yan@linaro.org>
 <20190412102738.12679-5-leo.yan@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <16ae9127-b282-e6b8-3a6c-5165c8618bb4@arm.com>
Date: Fri, 3 May 2019 16:11:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190412102738.12679-5-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_081156_458712_504C1034 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: shiwanglai@hisilicon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Leo,


On 12/04/2019 11:27, Leo Yan wrote:
> Since CoreSight hardware topology can use a 'hidden' funnel in the
> trace data path, this kind funnel doesn't have register for accessing
> and is used by default from hardware design perspective.  Below is an
> example for related hardware topology:
> 
>    +------+  +------+
>    | cpu0 |->| ETM  |-\
>    +------+  +------+  \-> +--------+  +-----+
>     ......                 | Funnel |->| ETF |-\    Hidden funnel
>    +------+  +------+  /-> +--------+  +-----+  \        |
>    | cpu3 |->| ETM  |-/                          \       V
>    +------+  +------+                             \-> +--------+
>                                                       | Funnel |-> ...
>    +------+  +------+                             /-> +--------+
>    | cpu4 |->| ETM  |-\                          /
>    +------+  +------+  \-> +--------+  +-----+  /
>     ......                 | Funnel |->| ETF |-/
>    +------+  +------+  /-> +--------+  +-----+
>    | cpu7 |->| ETM  |-/
>    +------+  +------+
> 
> The CoreSight funnel driver only supports dynamic funnel with
> registration register resource, thus it cannot support for the static
> funnel case and it's impossible to create trace data path for this case.
> 
> This patch is to extend CoreSight funnel driver to support both for
> static funnel and dynamic funnel.  For the dynamic funnel it reuses the
> code existed in the driver, for static funnel the driver will support
> device probe if without providing register resource and the driver skips
> registers accessing when detect the register base is NULL.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Wanglai Shi <shiwanglai@hisilicon.com>
> Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

>   
> +	if (of_device_is_compatible(np, "arm,coresight-funnel"))
> +		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
> +

Given that we now warn about OBSOLETE bindings, please could you fix
the existing DTS in the kernel source tree to use the new binding ?
Similarly for the replicator.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
