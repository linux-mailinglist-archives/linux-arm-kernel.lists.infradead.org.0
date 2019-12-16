Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70E4120575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neye1SW6XTVO3nQGrcJQyc/VzW4PHmrfHVKnuVr0Re8=; b=lr9V2QTXlvzliH
	tiyGQeNv0pRhs6dnwld3FvaNOeQ7DlUvwYiNQLkrndVC5qWcA289Pf8URXh+4g6gXFXcLbx62EKeF
	8xyuWp1gfygUoMl3/j5FocUi5ObBD9Ga76rtHEzInvPpQIsGVnPkSVIGZQUV0hjdNueartLKqpfMQ
	CMnDGlEqgRVoYSSSOGKitFswjqQAiydKc0WPpBv1G0FyTZ+/ky6yXNGycOysqwAKsUydkQnHFwWyb
	ldOcbrOUsizb6nIME+EuGZb3nPCkGtqOS8kYTN3M2DtYvmrhq3VNhJXnKsmXXOh7IGp4zfanCddm9
	lxrcaO8B9ZdFACgzzNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpNA-0004BH-Sm; Mon, 16 Dec 2019 12:21:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpN0-0004A9-Ou
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:21:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF54C206D3;
 Mon, 16 Dec 2019 12:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576498862;
 bh=9JnIsU2VsxcqQhyyLWzP8sEVnItBtMoCqaQxLQmUEUE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qtVRTREs4vDiqd/PBCTW23+XJ5iZxjFvXhj/yi4JSxN6J4EO678vYp8NbEvoHh8kj
 Yqoj4gpDqm9rEO6VdsQQwy+LK18RJ9/ZFf/8JvtTFKSx6E8UKrNZQ6hDagGyFaIUfY
 6BOEXgFSZbciT+vC6ksuuoJJJeLhLbGWokKtgLAk=
Date: Mon, 16 Dec 2019 12:20:57 +0000
From: Will Deacon <will@kernel.org>
To: Hanjun Guo <guohanjun@huawei.com>, catalin.marinas@arm.com
Subject: Re: [PATCH v2] perf/smmuv3: Remove the leftover put_cpu() in error
 path
Message-ID: <20191216122057.GB12947@willie-the-truck>
References: <1576046586-59145-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576046586-59145-1-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_042102_831892_8D16E89E 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

[+Catalin]

On Wed, Dec 11, 2019 at 02:43:06PM +0800, Hanjun Guo wrote:
> In smmu_pmu_probe(), there is put_cpu() in the error path,
> which is wrong because we use raw_smp_processor_id() to
> get the cpu ID, not get_cpu(), remove it.
> 
> While we are at it, kill 'out_cpuhp_err' altogether and
> just return err if we fail to add the hotplug instance.
> 
> Acked-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>  drivers/perf/arm_smmuv3_pmu.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index 773128f..d704ecc 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -814,7 +814,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>  	if (err) {
>  		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
>  			err, &res_0->start);
> -		goto out_cpuhp_err;
> +		return err;
>  	}
>  
>  	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
> @@ -833,8 +833,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>  
>  out_unregister:
>  	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
> -out_cpuhp_err:
> -	put_cpu();
>  	return err;
>  }

Acked-by: Will Deacon <will@kernel.org>

Catalin -- please can you take this as a fix via the arm64 tree? I don't
have any other perf patches pending at the moment.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
