Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821EA200538
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gpbd+JW+kGmFdRDJMmwY6vDnrv3ql2NlG/ZiLbBvlQ8=; b=rK24JyWWG7yF62jwTe2/pgoL9
	tsGAvFmDd0iBBRrZ7W3pZUTYoW0o7DNNZyeLOeKDxSPc7VP04BudD0BzUgFHcwcPSf3jTEqUO3CgJ
	c11aM/4sdf6X8G9biKxgRmGy8iDpEG30Q6Q5l5k+BHu29p3Y14tZ9ssTKEUoVzu8WcCRP/3bjS/LG
	GkhAGX23sVtuP2RjqY0skSoCsDul/P2Kz2uLSMGKnlcXcwPw7XaQP/jh393gccFP45fpDyKiSo+92
	0rKfxQcsulpRuZ+PhJ8xYr7wrgwlPJa+Z6sQJCpQzDg5KbTSxlxjd2lGeYkvrb/+KaFc+79Rz7EMs
	FzEZ1kqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDPf-0005je-QW; Fri, 19 Jun 2020 09:34:19 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDNR-0003hw-CN; Fri, 19 Jun 2020 09:32:03 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 67FA2E988E;
 Fri, 19 Jun 2020 17:30:28 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.64] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10489T139787484784384S1592559028011652_; 
 Fri, 19 Jun 2020 17:30:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <62c480b8cc5a488bc414f885ceaa2db0>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bRESEND_PATCH=5d_Revert_=22clk=3a_rockchip=3a_fix?=
 =?UTF-8?Q?_wrong_mmc_sample_phase_shift_for_rk3328=22=e3=80=90=e8=af=b7?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5s?=
 =?UTF-8?B?aW49cm9jay1jaGlwcy5jb21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de,
 mturquette@baylibre.com, sboyd@kernel.org
References: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <0dd5e173-a656-a1be-0a44-1ea8a03ca6fd@rock-chips.com>
Date: Fri, 19 Jun 2020 17:30:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.0
MIME-Version: 1.0
In-Reply-To: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023201_757547_55CAD321 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
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
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020/6/19 1:56, Robin Murphy wrote:
> This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.
> 
> According to a subsequent revert in the vendor kernel, the original
> change was based on unclear documentation and was in fact incorrect.
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> Emprically, my board's HS200 eMMC at 200MHZ apparently gets lucky with a
> phase where this had no impact, but limiting max-frequency to 150MHz to
> match the nominal capability of the I/O pins made it virtually unusable,
> constantly throwing errors and retuning. With this revert, it starts
> behaving perfectly at 150MHz too.
> 
> Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> Resending with the edited commit log I actually meant, rather than the
> earlier draft I managed to generate the previuous patch from, since that
> one seems to have slipped through the cracks anyway.
> 
> ybetter commit message
>   drivers/clk/rockchip/clk-rk3328.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
> index c186a1985bf4..2429b7c2a8b3 100644
> --- a/drivers/clk/rockchip/clk-rk3328.c
> +++ b/drivers/clk/rockchip/clk-rk3328.c
> @@ -808,22 +808,22 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
>   	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
>   	    RK3328_SDMMC_CON0, 1),
>   	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
> -	    RK3328_SDMMC_CON1, 0),
> +	    RK3328_SDMMC_CON1, 1),
>   
>   	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
>   	    RK3328_SDIO_CON0, 1),
>   	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
> -	    RK3328_SDIO_CON1, 0),
> +	    RK3328_SDIO_CON1, 1),
>   
>   	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
>   	    RK3328_EMMC_CON0, 1),
>   	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
> -	    RK3328_EMMC_CON1, 0),
> +	    RK3328_EMMC_CON1, 1),
>   
>   	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
>   	    RK3328_SDMMC_EXT_CON0, 1),
>   	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
> -	    RK3328_SDMMC_EXT_CON1, 0),
> +	    RK3328_SDMMC_EXT_CON1, 1),
>   };
>   
>   static const char *const rk3328_critical_clocks[] __initconst = {
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
