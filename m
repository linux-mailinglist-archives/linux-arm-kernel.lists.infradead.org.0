Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7920215F501
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4SrVwUGt5/hFMNm8NmB1ydgAqRk0CCav9mYARjbwX8=; b=CkezKSj4cQX0zW
	FT1otXNZ0qCnZnrRftvz4u6QfuJeoJZXdFJFUjZfw+OUwVErBR+3laEStnSGKCeD78NyybNliSoVZ
	kj8Cwth/CC+fRbf9O4tkZQjko9trKXpJIkRPj1nkwqBg3CeTf7tXrDIzEgCSpQOvMukqmZei+xyLs
	IUI8xoYVle0P8tXaOupVGHoFH5lLRC1awLyBfF32IW9F+whIqjbd8g3vimGXrqyAHouo7BfHfGenO
	exMmU/cZLp90vGGkazBtCYvPfnhuGKJVTDEmSTmV2rWRObG2ZJeHK+9IQ31A0lmb3hXBoNMaPtzC6
	j/meKELkzcHh6luOw7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2flO-0001z3-1y; Fri, 14 Feb 2020 18:32:30 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2flD-0001xx-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:32:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01EIW6FW049974;
 Fri, 14 Feb 2020 12:32:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581705126;
 bh=9JYMizinH2hk8xrhecX9Qq9awqbrX0eH4eIWvAG/GAQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ts3RHCv3EO/ATymwAd98uW5uyntuDog7SsYKx5uEPyNs1b0fnEkKBYfXQ2CZn9TlK
 ClylWeKcMm2NfzE5/p//Vr+kpqnKeCxFT9ti3a1aoGrXBlSCqiMGnl7EZPPpvrAWl3
 oJ1o08keCcpZ4J05tMlILDN/GSPkR8XXORNZL+Mc=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01EIW6jl001763;
 Fri, 14 Feb 2020 12:32:06 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 14
 Feb 2020 12:32:05 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 14 Feb 2020 12:32:06 -0600
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01EIW50q000848;
 Fri, 14 Feb 2020 12:32:05 -0600
Subject: Re: [PATCH AUTOSEL 5.4 191/459] ARM: OMAP2+: Add workaround for DRA7
 DSP MStandby errata i879
To: Sasha Levin <sashal@kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
 <20200214160149.11681-191-sashal@kernel.org>
From: Suman Anna <s-anna@ti.com>
Message-ID: <eccdc72d-759f-d3d8-0801-38e8d8cfd371@ti.com>
Date: Fri, 14 Feb 2020 12:32:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200214160149.11681-191-sashal@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103220_110042_EB3C95D6 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

On 2/14/20 9:57 AM, Sasha Levin wrote:
> From: Suman Anna <s-anna@ti.com>
> 
> [ Upstream commit 2f14101a1d760db72393910d481fbf7768c44530 ]
> 
> Errata Title:
> i879: DSP MStandby requires CD_EMU in SW_WKUP
> 
> Description:
> The DSP requires the internal emulation clock to be actively toggling
> in order to successfully enter a low power mode via execution of the
> IDLE instruction and PRCM MStandby/Idle handshake. This assumes that
> other prerequisites and software sequence are followed.
> 
> Workaround:
> The emulation clock to the DSP is free-running anytime CCS is connected
> via JTAG debugger to the DSP subsystem or when the CD_EMU clock domain
> is set in SW_WKUP mode. The CD_EMU domain can be set in SW_WKUP mode
> via the CM_EMU_CLKSTCTRL [1:0]CLKTRCTRL field.
> 
> Implementation:
> This patch implements this workaround by denying the HW_AUTO mode
> for the EMU clockdomain during the power-up of any DSP processor
> and re-enabling the HW_AUTO mode during the shutdown of the last
> DSP processor (actually done during the enabling and disabling of
> the respective DSP MDMA MMUs). Reference counting has to be used to
> manage the independent sequencing between the multiple DSP processors.
> 
> This switching is done at runtime rather than a static clockdomain
> flags value to meet the target power domain state for the EMU power
> domain during suspend.
> 
> Note that the DSP MStandby behavior is not consistent across all
> boards prior to this fix. Please see commit 45f871eec6c0 ("ARM:
> OMAP2+: Extend DRA7 IPU1 MMU pdata quirks to DSP MDMA MMUs") for
> details.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

You can drop this from the 5.4-stable queue. Mainline doesn't yet boot
the processors, so this is not needed for stable queue.

regards
Suman

> ---
>  arch/arm/mach-omap2/omap-iommu.c | 43 +++++++++++++++++++++++++++++---
>  1 file changed, 40 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-omap2/omap-iommu.c b/arch/arm/mach-omap2/omap-iommu.c
> index f1a6ece8108e4..78247e6f4a720 100644
> --- a/arch/arm/mach-omap2/omap-iommu.c
> +++ b/arch/arm/mach-omap2/omap-iommu.c
> @@ -11,14 +11,43 @@
>  
>  #include "omap_hwmod.h"
>  #include "omap_device.h"
> +#include "clockdomain.h"
>  #include "powerdomain.h"
>  
> +static void omap_iommu_dra7_emu_swsup_config(struct platform_device *pdev,
> +					     bool enable)
> +{
> +	static struct clockdomain *emu_clkdm;
> +	static DEFINE_SPINLOCK(emu_lock);
> +	static atomic_t count;
> +	struct device_node *np = pdev->dev.of_node;
> +
> +	if (!of_device_is_compatible(np, "ti,dra7-dsp-iommu"))
> +		return;
> +
> +	if (!emu_clkdm) {
> +		emu_clkdm = clkdm_lookup("emu_clkdm");
> +		if (WARN_ON_ONCE(!emu_clkdm))
> +			return;
> +	}
> +
> +	spin_lock(&emu_lock);
> +
> +	if (enable && (atomic_inc_return(&count) == 1))
> +		clkdm_deny_idle(emu_clkdm);
> +	else if (!enable && (atomic_dec_return(&count) == 0))
> +		clkdm_allow_idle(emu_clkdm);
> +
> +	spin_unlock(&emu_lock);
> +}
> +
>  int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
>  				    u8 *pwrst)
>  {
>  	struct powerdomain *pwrdm;
>  	struct omap_device *od;
>  	u8 next_pwrst;
> +	int ret = 0;
>  
>  	od = to_omap_device(pdev);
>  	if (!od)
> @@ -31,13 +60,21 @@ int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
>  	if (!pwrdm)
>  		return -EINVAL;
>  
> -	if (request)
> +	if (request) {
>  		*pwrst = pwrdm_read_next_pwrst(pwrdm);
> +		omap_iommu_dra7_emu_swsup_config(pdev, true);
> +	}
>  
>  	if (*pwrst > PWRDM_POWER_RET)
> -		return 0;
> +		goto out;
>  
>  	next_pwrst = request ? PWRDM_POWER_ON : *pwrst;
>  
> -	return pwrdm_set_next_pwrst(pwrdm, next_pwrst);
> +	ret = pwrdm_set_next_pwrst(pwrdm, next_pwrst);
> +
> +out:
> +	if (!request)
> +		omap_iommu_dra7_emu_swsup_config(pdev, false);
> +
> +	return ret;
>  }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
