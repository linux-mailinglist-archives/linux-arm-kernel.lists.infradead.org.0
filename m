Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7641185CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=khH81otLrReeg7DvSUWzQbBPTwcBorbzsI8e+P+B/rw=; b=nkQ4OBFmv1a315N4zXElTdqqv
	sXysl6dZlDvTNJtSjxKuSOgKQq0WoB2dvc3qSWC0UlVFZOxITppaF522VyylQ2zleMo4zU4hBcsvL
	VY1UR7FOOEdS5+KetXVSp/BFBxmuWQP/y3xnHHOZYRRPzqjINbt+IL9zH466jfXKICxKibaW5cAdG
	YKbK5ZVh0oTe+NcMuqOy/eqbH3oI0MiPqFlh++D22TQVYaGCWqCFvpLl05up870KBW47MQXSqf/NZ
	EMKxux4+4gvJZDPltY6YshtdedfCgMU4SMV9UBuxTqLakyMt6mWm4hv3YlxvtbPjHztEHWMrcbJJZ
	WA7QlwULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedK4-0004X7-Q6; Tue, 10 Dec 2019 11:04:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedJo-0004OB-CC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:04:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 246AA1FB;
 Tue, 10 Dec 2019 03:04:38 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15EF83F6CF;
 Tue, 10 Dec 2019 03:04:36 -0800 (PST)
Subject: Re: [PATCH] perf/smmuv3: Remove the leftover put_cpu() in error path
To: Hanjun Guo <guohanjun@huawei.com>, Mark Rutland <mark.rutland@arm.com>,
 Will Deacon <will@kernel.org>
References: <1575974784-55046-1-git-send-email-guohanjun@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9b32a687-5553-dc3f-da6c-2d5c88b7e311@arm.com>
Date: Tue, 10 Dec 2019 11:04:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1575974784-55046-1-git-send-email-guohanjun@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_030440_458644_6062688D 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 10:46 am, Hanjun Guo wrote:
> In smmu_pmu_probe(), there is put_cpu() in the error path,
> which is wrong because we use raw_smp_processor_id() to
> get the cpu ID, not get_cpu(), remove it.

Bah, somehow that slipped through the last round of review :)

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>   drivers/perf/arm_smmuv3_pmu.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index 773128f..fd1d46a 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -834,7 +834,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>   out_unregister:
>   	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
>   out_cpuhp_err:
> -	put_cpu();
>   	return err;
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
