Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0DB1006E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZGYfvNAKvnl3iRYykaeZv4CWkqFo0B3OF5ouhiQaYQ=; b=bhGeUBwgZhpwCe
	8ywWACxOGfO4FVkAPFkJQ/20O/6klRq2GqItKcqk5cCXdB8ylQEbsLvpY4SB6kJmgcmKnLIhNB3+z
	esM1m5fMQQZANR27Fn1NfijeTQA0hAwHvpKMfYj8kQbO4k85CXBncEu9ftgKQFt/cqCc1XkzJhGEy
	3Z907JlXYIO9EqeXoCW1sne2vV+hCWWbFWqYfxBZBs3RE/c6PvwvSb+ybU0TfXm3GczuIzpgGgl3s
	LR09kk8MSmKAsr0eWM1UHofM9dmqMysga8+4chkq2AzBGOpVVNBMdp1IUOuTtMPbfkEah4EDcveWN
	v9GLeuOIUe2Iff2llFuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWhYA-0001tM-5I; Mon, 18 Nov 2019 13:58:42 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWhY1-0001sT-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:58:34 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd2a3850000>; Mon, 18 Nov 2019 05:58:29 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 18 Nov 2019 05:58:32 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 18 Nov 2019 05:58:32 -0800
Received: from [10.26.11.241] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 13:58:30 +0000
Subject: Re: [PATCH v2 3/3] soc/tegra: pmc: Add reset sources and levels on
 Tegra194
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191118063348.1816857-3-thierry.reding@gmail.com>
 <20191118131058.2336829-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <e456de2e-4ca4-b855-fd38-92518cca1021@nvidia.com>
Date: Mon, 18 Nov 2019 13:58:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118131058.2336829-1-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574085509; bh=7FGVlELFgI+OyKoPtDlQO8cr0PfIJRKTF7a/9wnGXWY=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=rylTlsNkSV7UEZKJcjjkdEWl44YY8/YZ2gas90OEya808PrCgxGLGGzALE4lowUNV
 bKfIJ2BT4Fsh11rr7QbIcmtTa2bY9ETAcOYerxapYdflSwQr5pzvQxKFpGj0OqOhi4
 EX7ES7zyFpMAsVmUuBZgfhHtModZcrBFCkPGiaBxbYfSk9w3RpD6G7O9RFfgGq2rCX
 fCTOEonQDUkHpWxdlNNI9FoSN32K8jum+2z2sEMYDLJJyJm8y7Uag6i6zs4q1goVhR
 eJJ+wFSECjqxOKL1vWWkPSShXmrRF9gZgIyBtT6BUSVF7NlsYVRuAdmsTmfq8emkgM
 uXFqlJOc0zKsw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_055833_153232_95726A27 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
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


On 18/11/2019 13:10, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Tegra194 supports the same reset levels as Tegra186 but extends the set
> of reset sources. Provide custom PMC register definitions to account for
> the larger field for the reset sources as well as the updated list of
> reset sources.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - use the new Tegra194 register definitions
> 
>  drivers/soc/tegra/pmc.c | 43 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 1916899d09a3..ea0e11a09c12 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -2926,6 +2926,43 @@ static const struct tegra_io_pad_soc tegra194_io_pads[] = {
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
> @@ -2943,11 +2980,15 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
>  	.maybe_tz_only = false,
>  	.num_io_pads = ARRAY_SIZE(tegra194_io_pads),
>  	.io_pads = tegra194_io_pads,
> -	.regs = &tegra186_pmc_regs,
> +	.regs = &tegra194_pmc_regs,
>  	.init = NULL,
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
> 

Acked-by: Jon Hunter <jonthanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
