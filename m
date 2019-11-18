Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002801004CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BHX+8Cs1CoolAqjYDZQQ9BH8isVMQdB+qwPDzdr0hY=; b=uxKy+ngwigtUVD
	7HPC7a2WRM8Lt5lT8PLdK8rmUc/9ITjB9D8d6rs82Hqw+n8hKiHN47MH6G7XJBdjXRo/rhs6hsz3v
	1uxROlvZUf9Z2pnRqMyz2XWbmM9+PNLvzQe4x7x5p0X36ZiAae3Iee6EAaIZjF8tjgRxy2o5b8a9e
	6URaui6tJZY7FefEFcZ9Uwj5IT1SEp1p0tQYmY4aWV44s6bw2huyV5UbV8qVo3urs+kxHjmAl7eVX
	GfsK6LrFStA2G/Db/DN41iW5f+Qt191UQu1PwBkE7GygFVUHY/Srske/A/hz2oCrveyFSaqEWaUP7
	l5jOYNVJGXh7y5BAUfDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfdl-0001m6-4w; Mon, 18 Nov 2019 11:56:21 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfda-0001ll-9a
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:56:11 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd286da0000>; Mon, 18 Nov 2019 03:56:10 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 18 Nov 2019 03:56:10 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 18 Nov 2019 03:56:10 -0800
Received: from [10.26.11.241] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 11:56:08 +0000
Subject: Re: [PATCH 3/3] soc/tegra: pmc: Add reset sources and levels on
 Tegra194
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191118063348.1816857-1-thierry.reding@gmail.com>
 <20191118063348.1816857-3-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <9da23ccc-0e37-44a8-b722-690c047b9641@nvidia.com>
Date: Mon, 18 Nov 2019 11:56:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118063348.1816857-3-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574078170; bh=q7awpy+Rp+fdN4MSztFN6PEm+Y7sz6Lko4O9XbKHH4s=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=UFKVaxIiXWEcyplpVlIzppo+PRq1gVcJkvHz4UPDvd4Po6p0GAEPbsEFS2z4Rb0cg
 bE07mXovZBK36x/Cy2rgjnSKqKd51kXAR/bCaPeGGvfgYpMb5Aabi4spJfCmBYR1i8
 d6XzL5UWRTsyoa/ordkcnm+Bdhu6To6q8nVPuneoqAcJP9QdtqHbjVMq4UQmWjqaiP
 y9p6pmPZH+Fu2/PnguDCpWmplhyE9xFclJdwPaAiFHhq5qiKLVaBAz+cy3QDwO9CP8
 1NsGuTeD2RoitmiORqHz2BBo9czB1+y8/yI1NWva70nv2QvkbczHg8EyUIcfYNmpPC
 ANXSkhhfk/9Bw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_035610_345876_F18C36A8 
X-CRM114-Status: GOOD (  15.61  )
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
> Tegra194 supports the same reset levels as Tegra186 but extends the set
> of reset sources. Provide custom PMC register definitions to account for
> the larger field for the reset sources as well as the updated list of
> reset sources.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 41 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 32b3e8d9155f..63195281718d 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -2927,6 +2927,43 @@ static const struct tegra_io_pad_soc tegra194_io_pads[] = {
>  	{ .id = TEGRA_IO_PAD_AUDIO_HV, .dpd = 61, .voltage = UINT_MAX },
>  };
>  
> +static const struct tegra_pmc_regs tegra194_pmc_regs = {
> +	.scratch0 = 0x2000,
> +	.dpd_req = 0x74,
> +	.dpd_status = 0x78,
> +	.dpd2_req = 0x7c,
> +	.dpd2_status = 0x80,
> +	.rst_status = 0x70,
> +	.rst_source_shift = 0x2,
> +	.rst_source_mask = 0x7c,
> +	.rst_level_shift = 0x0,
> +	.rst_level_mask = 0x3,
> +};
> +

You added the regs here, but ...

> +static const char * const tegra194_reset_sources[] = {
> +	"SYS_RESET_N",
> +	"AOWDT",
> +	"BCCPLEXWDT",
> +	"BPMPWDT",
> +	"SCEWDT",
> +	"SPEWDT",
> +	"APEWDT",
> +	"LCCPLEXWDT",
> +	"SENSOR",
> +	"AOTAG",
> +	"VFSENSOR",
> +	"MAINSWRST",
> +	"SC7",
> +	"HSM",
> +	"CSITE",
> +	"RCEWDT",
> +	"PVA0WDT",
> +	"PVA1WDT",
> +	"L1A_ASYNC",
> +	"BPMPBOOT",
> +	"FUSECRC",
> +};
> +
>  static const struct tegra_wake_event tegra194_wake_events[] = {
>  	TEGRA_WAKE_GPIO("power", 29, 1, TEGRA194_AON_GPIO(EE, 4)),
>  	TEGRA_WAKE_IRQ("rtc", 73, 10),
> @@ -2949,6 +2986,10 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
>  	.setup_irq_polarity = tegra186_pmc_setup_irq_polarity,
>  	.irq_set_wake = tegra186_pmc_irq_set_wake,
>  	.irq_set_type = tegra186_pmc_irq_set_type,
> +	.reset_sources = tegra194_reset_sources,
> +	.num_reset_sources = ARRAY_SIZE(tegra194_reset_sources),
> +	.reset_levels = tegra186_reset_levels,
> +	.num_reset_levels = ARRAY_SIZE(tegra186_reset_levels),
>  	.num_wake_events = ARRAY_SIZE(tegra194_wake_events),
>  	.wake_events = tegra194_wake_events,
>  };

.. but does not look like you updated the above to use the new register
struct. Looks like it still uses the Tegra186 regs.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
