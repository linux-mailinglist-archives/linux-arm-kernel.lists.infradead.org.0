Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D0418B972
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB93plRK8xqjwGKLdhaymqGwBpr8FfkkidWllKEO5tY=; b=eUm+Lf62fpdAEP
	nqhOeOoBw+T3HljAp/9zC15rqNGNX/0UhpvoDIB1edewqVSiL55opOqaikfvRIYPs+peEOjz7uruh
	MXe4uGeCTj1dC6rwKD/60lZiD1a/oTQw/P/EatU/40mY1IgDcvs+m+rfascM6d0ILB5zYjMRfESzb
	VF2qwC/a8ImcK8sF7S/8X6LtK5BMZc96WuSmqmIb11CaMAl3mPRfJ7eUlZvkw9pF0T6TPSgaoExx9
	Yh9tOjzWJyFDQ/by4hhp4WhE8qEp1u81P7VEHRrh3q4MVb91zBXJzeBhc6M4f3pAFOEoPehTo1Lh0
	Xjz1FnrYJgGeNIQn6qcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwEN-0001H9-8e; Thu, 19 Mar 2020 14:33:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwEF-0001GT-98
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:33:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5F1130E;
 Thu, 19 Mar 2020 07:32:56 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 274703F52E;
 Thu, 19 Mar 2020 07:32:56 -0700 (PDT)
Date: Thu, 19 Mar 2020 14:32:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH 1/2] perf: dsu: Allow multiple devices share same IRQ.
Message-ID: <20200319143250.GA4876@lakrids.cambridge.arm.com>
References: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_073259_363388_126F1971 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 05:26:15PM -0700, Tuan Phan wrote:
> Add IRQF_SHARED flag when register IRQ such that multiple dsu
> devices can share same IRQ.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>

I don't think that this makes sense; further I think that this
highlights that the current driver doesn't support such a configuration
for other reasons.

A DSU instance can only be accessed from a CPU associated with it, since
it's accessed via sysregs. The IRQ handler must run on one of those
CPUs.

To handle that, the DSU PMU driver will need to gain an understanding of
which CPUs are associated with the instance. As it stands the driver
seems to assume that there's a single DSU instance, and that all CPUs
are affine to that same instance.

So NAK to this patch, given the above.

Thanks,
Mark.

> ---
>  drivers/perf/arm_dsu_pmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
> index 70968c8..2622900 100644
> --- a/drivers/perf/arm_dsu_pmu.c
> +++ b/drivers/perf/arm_dsu_pmu.c
> @@ -700,7 +700,7 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
>  	if (!name)
>  		return -ENOMEM;
>  	rc = devm_request_irq(&pdev->dev, irq, dsu_pmu_handle_irq,
> -			      IRQF_NOBALANCING, name, dsu_pmu);
> +			      IRQF_NOBALANCING | IRQF_SHARED, name, dsu_pmu);
>  	if (rc) {
>  		dev_warn(&pdev->dev, "Failed to request IRQ %d\n", irq);
>  		return rc;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
