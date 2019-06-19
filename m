Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C444B66E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z4lC3NFwqLKLmBzrCIH6Tj5HAd4X1K6eVGX6O6JV8IE=; b=Sjb9iJPmFWxyspT4ka8sPjzuN
	cqt1y/kHIpKyxd6TQSgFilStBEDyYNHxO7tDDndHLS0FNZbfxd2RV7+vJf1eBBkTNRBM4MkMumyyW
	h15b57O65WjytT07DgZFbKD0JLwcZYV6elMELs44gRgLdEO70GA5iXhkS1ksbH5rlXlGF5HzlZ11r
	cryFFlUpMgsrCLDIIs7PnZVf3rWLtuz8pfA32I6hlWFsgnxlZGGMxCDESAIvUss3rC0HLQdtpMQCI
	6ifZMD6GUj79v6gzUm1Z8nr7zmnT3hulWlRXYdwdbUezj4c6lxCR1MxY9pRPqbfY1arG3cK9f5Kzx
	o1v47sw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdY6c-0007pV-E5; Wed, 19 Jun 2019 10:46:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY6T-0007p4-Bs
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:46:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3690C0A;
 Wed, 19 Jun 2019 03:46:08 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 714213F738;
 Wed, 19 Jun 2019 03:47:54 -0700 (PDT)
Subject: Re: [PATCH v1 4/5] coresight: etm4x: improve clarity of
 etm4_os_unlock comment
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-5-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c4064f38-9699-219e-706e-2fdfa8277a62@arm.com>
Date: Wed, 19 Jun 2019 11:46:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618125433.9739-5-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_034609_452526_210405E1 
X-CRM114-Status: GOOD (  17.58  )
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
> To improve clarity, let's update the comment for etm4_os_unlock
> to use the name of the register as per the ETM architecture
> specification.

nit: It also "fixes" the comment. Writing any value doesn't unlock
the trace unit. It must be "0".

> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 885c4f2c691c..bda90d4cd62b 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -47,7 +47,7 @@ static enum cpuhp_state hp_online;
>   
>   static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
>   {
> -	/* Writing any value to ETMOSLAR unlocks the trace registers */
> +	/* Writing 0 to TRCOSLAR unlocks the trace registers */
>   	writel_relaxed(0x0, drvdata->base + TRCOSLAR);
>   	drvdata->os_unlock = true;
>   	isb();

With the above :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
