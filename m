Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404918A4C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgP2ofWq15AFq3J53EP9g6Do/0o7SGvIMCdd5lTKfuc=; b=obWdzyVbP9+CNe
	88e+ug2LFgZ2m8XFuBfoOOgFULB8oL71JNUoDspJyWLFJr4qOi9BpOXjb0M7sP6kdP5x1CzGGkDpM
	iZaso7hiuJmb/DSz8vph04rNKqArIWaMt25ay9lDRTDrrgOP/98PO7suLHsXPJ83/nuNJrLSUvOC/
	Vc2MOthN6VR8TQtCxAcebs+fKng0GLn2d4q9COkz44VI0KmErRDzZfdlh3kLNo+GEJzLHrik98tp6
	NSaBNqHGYoNt2KrwUIbRWOno9nH5YUKGCBG12/J/ZOHe7qNnsLeJSnCokVZ12UD5FkFUxdINw4E/P
	KA18J1nJIv0IdQ8zeMJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfkh-00012Y-Df; Wed, 18 Mar 2020 20:57:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfkU-000124-1x
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:57:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9674A208E0;
 Wed, 18 Mar 2020 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584565029;
 bh=rFLv1ZfRcV+svX8JTmV+UQxowcY75lz27dYs4kS6JTk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xljifAxNivUslQxB0dEZbzfkBmD+lKeG1i4Zu0f4ZRaU7QqI58Yeigqxo2i7lgJj3
 No8I85DDU9TleHICnvT+UQMBEoeHcB/Cf6mFuyFNGH386BIT46hb59dGhDR4MXSMk6
 IfsNELEx6AoL/oVqpy/sO2tX4ylZfDhlQ/aiJdiU=
Date: Wed, 18 Mar 2020 20:57:05 +0000
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH 1/2] perf: dsu: Allow multiple devices share same IRQ.
Message-ID: <20200318205704.GC8094@willie-the-truck>
References: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135710_131429_E392079F 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Suzuki, since he wrote the driver]

On Tue, Mar 17, 2020 at 05:26:15PM -0700, Tuan Phan wrote:
> Add IRQF_SHARED flag when register IRQ such that multiple dsu
> devices can share same IRQ.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
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
