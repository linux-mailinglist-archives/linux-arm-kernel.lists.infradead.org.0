Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3C11EB893
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uJuPFeFA10EgAp5y+fK3oyMeAbjW5h+nBIIKjQnaEEQ=; b=f1FUTvk9arI7xNx2+cdZOu+XXX
	5hM1sqgKz7wYV/1fSc/J+JkGrjZnR1WTkEzKDFjXlJwTXZaUaLyF/OG6VD58MU0wnBjxeQ5b7/Vhh
	6naf5OL2T2cNob6XBBOzNMGcFbHZE5ArHCwotnDb5T/g/a65x/ol5iTnz/Mto6fnPbmOFO7YBYyNI
	tOQDwsLvGQxpvNFbn1fPXFD34XKWkqYZnKNJ1hyJVspbBOWAwTr19p2QM35KQe7yX9j3elHBiUxCz
	MeEq29uGh065lCPWIsoA8T7B0ZDFtRIZl40IF4D3RTkva1j5Dquwg4lTHKJf5lbL1zEZNN8NO1l+m
	Jh+M87qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3Gk-0002CF-Vg; Tue, 02 Jun 2020 09:31:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3Ge-0002B9-EL
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:31:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45ACC55D;
 Tue,  2 Jun 2020 02:31:28 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A47393F305;
 Tue,  2 Jun 2020 02:31:26 -0700 (PDT)
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200527151613.16083-1-benjamin.gaignard@st.com>
Date: Tue, 02 Jun 2020 10:31:21 +0100
Message-ID: <jhjpnahizkm.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_023132_524892_C82AC4AC 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Benjamin,

On 27/05/20 16:16, Benjamin Gaignard wrote:
> Before start streaming set cpufreq minimum frequency requirement.
> The cpufreq governor will adapt the frequencies and we will have
> no latency for handling interrupts.
>

Few comments below from someone oblivious to your platform, they may not
be all that relevant but I figured I'd pitch in anyway.

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  drivers/media/platform/stm32/stm32-dcmi.c | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b8931490b83b..97c342351569 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -13,6 +13,7 @@
>
>  #include <linux/clk.h>
>  #include <linux/completion.h>
> +#include <linux/cpufreq.h>
>  #include <linux/delay.h>
>  #include <linux/dmaengine.h>
>  #include <linux/init.h>
> @@ -99,6 +100,8 @@ enum state {
>
>  #define OVERRUN_ERROR_THRESHOLD	3
>
> +#define DCMI_MIN_FREQ	650000 /* in KHz */
> +

This assumes the handling part is guaranteed to always run on the same CPU
with the same performance profile (regardless of the platform). If that's
not guaranteed, it feels like you'd want this to be configurable in some
way.

>  struct dcmi_graph_entity {
>       struct v4l2_async_subdev asd;
>
[...]
> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
>               goto err_cleanup;
>       }
>
> +	dcmi->policy = cpufreq_cpu_get(0);
> +

Ideally you'd want to fetch the policy of the CPU your IRQ (and handling
thread) is affined to; The only compatible DTS I found describes a single
A7, which is somewhat limited in the affinity area...

>       dev_info(&pdev->dev, "Probe done\n");
>
>       platform_set_drvdata(pdev, dcmi);
> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
>
>       pm_runtime_disable(&pdev->dev);
>
> +	if (dcmi->policy)
> +		cpufreq_cpu_put(dcmi->policy);
> +
>       v4l2_async_notifier_unregister(&dcmi->notifier);
>       v4l2_async_notifier_cleanup(&dcmi->notifier);
>       media_entity_cleanup(&dcmi->vdev->entity);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
