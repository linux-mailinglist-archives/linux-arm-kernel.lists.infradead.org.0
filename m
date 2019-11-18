Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AD81004BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcpNbZBROrN/QCY30R1t32ZfcPVWhO4LlzBZfw+bdWA=; b=PrPvfgOPY/pVRL
	Rpi2Whni0WtHyT/Iqc9dVAxwXTx/sMjp4tLLUIwfDgZaGol3MrdextygnRpQh53gi/RUu3Wbv+6TB
	H0ux03x3LEgFYwdO//NrRJwEhjqRw5sLpXsvlMqWiUwRn02rg42qiDP2M+j3yX1U2c3Xx7F1ea8Sl
	BEcYeEMdnZgsaHdjTzgpDMmx7NuR/Kq/urVuWuZ07iToW6jxozYjxL5HcURvUs4YXDu5mNsCfmUp5
	gcYsl4FpfjaNlRr2ALDwefH0DBniU3lYlhYwMnWiGC71KCZfDcLGKWcH0lCXOAvlMr10bJJ4sASSo
	pUaNyhvPT2q/4Dz/L/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfYk-0008Gp-Af; Mon, 18 Nov 2019 11:51:10 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfYc-0008G0-BP
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:51:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd285a50000>; Mon, 18 Nov 2019 03:51:01 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 18 Nov 2019 03:51:00 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 18 Nov 2019 03:51:00 -0800
Received: from [10.26.11.241] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 11:50:59 +0000
Subject: Re: [PATCH 2/3] soc/tegra: pmc: Add missing IRQ callbacks on Tegra194
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191118063348.1816857-1-thierry.reding@gmail.com>
 <20191118063348.1816857-2-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <679f95e6-ea9f-2e6a-3010-fc716901b91b@nvidia.com>
Date: Mon, 18 Nov 2019 11:50:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118063348.1816857-2-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574077861; bh=/LSxaY1qzFQwQjQyDQlZdc5Z5HNcGaHiFwMG5poz0Gg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=d8asg0HNW2OukpjeBpKjlyHwkoR3o2GnlZtJpAciC4U+oCt/JUhLUY5PLJkV3UjuP
 DYWWwuFcrAVW/TZMMxcLVBxmxwSivaw4zg6siX5mzioPmdUcPdm1W7pSaEi3vYA82B
 tXgMjbUc5h0Ef2RRKcmplMRfuT4hEXz0QID98L5M+2F7KufTSo9lCCG8bbNkhRqWv0
 K34SxTwpeEkxJUO2xkDeBt68EuRzBCeI5SxGzzSfjrz963A1ftJtJCIBkM427Zngm9
 ctqcRm773SsPFGYbDMeeZPrdOhO4a6oxcic137jxlT2nEhNeExERFhrpppdh9orO5a
 iyaDOC6YSsT9A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_035102_395545_D3EC290D 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Sowjanya Komatineni <skomatineni@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Vidya Sagar <vidyas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 18/11/2019 06:33, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Reuse the IRQ callbacks from Tegra186 on Tegra194. This fixes failures
> to request interrupts on Tegra194 due to the missing callbacks.
> 
> Cc: Sowjanya Komatineni <skomatineni@nvidia.com>
> Fixes: aba19827fced ("soc/tegra: pmc: Support wake events on more Tegra SoCs")
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 927eeecd34e5..32b3e8d9155f 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -2947,6 +2947,8 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
>  	.regs = &tegra186_pmc_regs,
>  	.init = NULL,
>  	.setup_irq_polarity = tegra186_pmc_setup_irq_polarity,
> +	.irq_set_wake = tegra186_pmc_irq_set_wake,
> +	.irq_set_type = tegra186_pmc_irq_set_type,
>  	.num_wake_events = ARRAY_SIZE(tegra194_wake_events),
>  	.wake_events = tegra194_wake_events,
>  };
> 

Acked-by: Jon Hunter <jonathanh@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>

Cheers!
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
