Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29E51189C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vin0Wl6A3jgoGWmr8P5XXkwpxgmdQnsvlCTmDXwbO64=; b=ZtnOJMflZ0z00V
	0LzthxQfrrtnl67F4XadQ3DRhypxbMHlJ/Z6HEt5zb21ySlFREUAY4bFwSFEnsiFZvydb0fBoVRFV
	i8m7+YQbD2uN1n4GgiS5oXYY2DQMQ1A3Buj1xie/ZY2hBCVCwKK58D3HdUpBF7pPrzOF76nRpL3CX
	QZTN/IXtNC2mhNR29emw6Esg1p0R26BxrFocv9NljO9yguRFSx8giORadYr/FUO0Z5VJs0n3GyhP1
	esX6Nu5OVQTURD+cc02q3AqPSXAahwshXKfCIAGs2mQBPx4W6uPTpOUshwaf+WzFDk2BBqhz/7pGg
	cDfOD0LAB7Q0m7sgdOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefYv-00077A-6l; Tue, 10 Dec 2019 13:28:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefVh-0002yR-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:25:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56D15207FF;
 Tue, 10 Dec 2019 13:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575984303;
 bh=7zz0gT/SrMqg+Iv3/a+MU7zCh+V2pcljyvzuxR+IT34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1GM1k2ugB1SumXt2BeMZkt/nfg8Hpg1wJl35Dv8zm/pnjLZLxly+QpNTSclZQ9xH5
 kaJzxjY0okQ64nFPtls6LyKALqZSsZwnY1/5Q641+vdO2WJ03UXl33/WwOVfs73jZ0
 WtYNagDwyN8nEHS/rXf4aHm5SEfhS6VVha7ey/7s=
Date: Tue, 10 Dec 2019 13:24:58 +0000
From: Will Deacon <will@kernel.org>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH] perf/smmuv3: Remove the leftover put_cpu() in error path
Message-ID: <20191210132458.GA19183@willie-the-truck>
References: <1575974784-55046-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575974784-55046-1-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052506_143939_80D4D4EC 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 06:46:24PM +0800, Hanjun Guo wrote:
> In smmu_pmu_probe(), there is put_cpu() in the error path,
> which is wrong because we use raw_smp_processor_id() to
> get the cpu ID, not get_cpu(), remove it.
> 
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>  drivers/perf/arm_smmuv3_pmu.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index 773128f..fd1d46a 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -834,7 +834,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>  out_unregister:
>  	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
>  out_cpuhp_err:
> -	put_cpu();
>  	return err;

Can we kill 'out_cpuhp_err' altogether then and just return err if we fail
to add the hotplug instance?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
