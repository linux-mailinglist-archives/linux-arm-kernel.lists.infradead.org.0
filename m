Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECFA13B006
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivSyHJcCKJzoDpGRDVwWwcjK4eucgOFh5iUo+1ijECU=; b=l7421FRYEUxexv
	Kf1DewLfVgTAIvkazsOMFo3irhMcKqfds3bpk8c0DJr9DAwXtA21sLq7SR/3/6ynH+Aw2EQLl3Pyd
	Nw6rbfsmwnLbQ1cvgCraoFf9yzf9UNbhrtvOE0/P1pcqwtUpjMTPINpKO/5zFZWhWZsp+xSEEu4dI
	FTmuCd0QoGU3j71QulX3cyy2ntfJEmun5UFVNFF39xhl3QfCg+XJGPtiaMukhmdegjchsn3DjgFOw
	586OfdKjeZee9QER2Jd1RxV6ROq8R0UEyF6dL/mdQbAYloUB5DXFQ/dRLqMZzmQwFUHOK6fPo9f1P
	37PKLxCQGvkHLXZ/9rZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPQH-0001h7-8x; Tue, 14 Jan 2020 16:52:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPQ1-0001by-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 16:51:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEEBE24670;
 Tue, 14 Jan 2020 16:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579020713;
 bh=R3xhMZ8/AJu9NBmQSH0BIH3WgJFqg62NL0qKB908P0s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=skaQSvvGh623H1fUugLWaBybfS88RDdbaf0XYpbYA1oHRjUkmPZ0JsWxvv6QTOKd5
 II2MgmwpBZJxBppovtmXDmu29/hE+dChIfYQs94WMuIWxSRJnh1pJlkPHPVIjGgDxG
 W7J+Ntiqokk+VXwvCkAlyO64W0aWtwkuNQvEp0FQ=
Date: Tue, 14 Jan 2020 16:51:48 +0000
From: Will Deacon <will@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] perf/imx_ddr: Fix leaking cpuhp_state
Message-ID: <20200114165142.GE2579@willie-the-truck>
References: <3cff630697d76d24d4ab93dfcddc978d84b8f2d8.1576711200.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3cff630697d76d24d4ab93dfcddc978d84b8f2d8.1576711200.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_085153_807021_85E3B304 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Frank Li <frank.li@nxp.com>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 01:20:19AM +0200, Leonard Crestez wrote:
> This driver allocates a dynamic cpu hotplug state but never releases it.
> If reloaded in a loop it will quickly trigger a WARN message:
> 
> 	"No more dynamic states available for CPU hotplug"
> 
> Fix by calling cpuhp_remove_multi_state like several other perf pmu
> drivers.
> 
> Fixes: 8f4c58ae59f5 ("perf/imx_ddr: Fix leaking cpuhp_state")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 3be61be1ba91..aa30ca5f6b29 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -672,12 +672,14 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  		goto ddr_perf_err;
>  
>  	return 0;
>  
>  ddr_perf_err:
> -	if (pmu->cpuhp_state)
> +	if (pmu->cpuhp_state) {
>  		cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +		cpuhp_remove_multi_state(pmu->cpuhp_state);
> +	}

Shouldn't we also be checking the return value of the earlier call to
cpuhp_state_add_instant_nocalls() and then calling only
cpuhp_remove_multi_state() if it fails?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
