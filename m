Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A253E595A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kngP1JfqyO5DtqY5T015pSa2pEGVT8kl5fGOrN7asFE=; b=b8gg6BMnwW32F2
	OLtB0FjCPZtDDvpUXhwr/pYLhEtqYcYox1fUmHkf96asLoB/YRiBAXGQOwYu/yU0cKP7mpL71GYHQ
	qR5XkfGE/BdEXjTpGxzoQFv4lE2f9I7/TJ1WuLFlNdWDcOXXewk3wZqytdJtiejMLm0K4VWF/YH3B
	ywFt7sa3N2RV5vvRR34aphHpEMTHwB553P90LuvColEtEiSoA9UCUJbWsQ0wu1muveUU4lDG2iJXD
	AVu6EjQCG+uJ6SUvXyUsKg0ZlSEiqNLqlPtJzG/FJUwL8Y2RYe+8gTFMnzmnSBj0YIiWYRKymO0fe
	g5+qyPH7HidBWW8RtAyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglvN-0004vn-2e; Fri, 28 Jun 2019 08:08:01 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglv4-0004v6-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:07:44 +0000
Received: by mail-oi1-x244.google.com with SMTP id g7so3636758oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 01:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uEccr0ps3DYOUDr7gsne5Mre/cI1M+9c4Vh8tR+Volg=;
 b=AHOYrNE4IAQuiPqfyRxT8AmwmdBgISgwp5Cb07oVk17qP398R4Jh6S/rLJAqxw7Gkg
 dH9oo2JZnnEx1729ceTmwWyGVx24RI5A6c+QlSa+glm/ZNhUGB1pImbf5bYzOKvxiGbw
 TiJjSQ0eLuQ6bjMXfAAus+bkPQF5vfRLQG8R/x5lFcX+MPYqDpPru+0tSXnhVIbr3WhH
 V8u71qhlePmpaQBz9dHN5jR5hCI8SRjc2mWR2ZA5ampMBLoxpLhIudN5QYkmcP+ZE54J
 wuIGb4prFLupXWoJliK2qu1rjxcu7Z0k6QKkMXsNR/9QExhyofkgohg5nFxfwOLY1zH3
 VpUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uEccr0ps3DYOUDr7gsne5Mre/cI1M+9c4Vh8tR+Volg=;
 b=nzwch2NgKYsKPXevqy/rAFZOgDFsbzj3pkJe8jCTq9HOEpQnb4ffDKLOEjPgPX6Zco
 C/uk1k2dDdWFm1NOQXxasYSV8nO8XZJvZAiIuBakrbZGwcBmIIqeQusJUm325zO93+aq
 Z8FPxzsXnT060Evv7E7O5afLyr1Anrh0RZvVOieMl7tP7weJOQDhYSDmEXnaKplcuZpK
 pGLvwFtGo6IpzBZ4Zicxixw8ZyV/JfNqmRbGjGxo6/veoyZWX5OgT26nNOCNy2Lsy/cU
 ApGOKRodJi0Kr3GHj/LAkDS1OGXiCH++icL1DsxJ0EOO/c6/4pBaHrDcpN0touCxcaCh
 /TlQ==
X-Gm-Message-State: APjAAAWbAdZGUDdl65mE48G6XZKKOcTbZMTnKSaigRw1V31veAwupvc3
 w2LECuLYMmfk916xRCcqJ4ctfw==
X-Google-Smtp-Source: APXvYqws9t2Val4J1Fgl70ZQrXpGW11+TzvYBIuoUitc/NjE7zHGOV/ErRAfGE3r9IW02BbOxxUf/A==
X-Received: by 2002:aca:4c87:: with SMTP id z129mr967902oia.75.1561709260043; 
 Fri, 28 Jun 2019 01:07:40 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id s4sm558122otp.3.2019.06.28.01.07.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 01:07:39 -0700 (PDT)
Date: Fri, 28 Jun 2019 16:07:32 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190628080732.GA32370@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627083525.37463-6-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_010742_486769_256D2026 
X-CRM114-Status: GOOD (  27.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 09:35:25AM +0100, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.
> Let's mitigate against this by conditionally saving and restoring
> the trace unit state when the CPU enters low power states.
> 
> This patchset introduces a firmware property named
> 'arm,coresight-needs-save-restore' - when this is present the
> hardware state will be conditionally saved and restored.
> 
> A module parameter 'pm_save_enable' is also introduced which can
> be configured to override the firmware property. This can be set
> to never allow save/restore, to conditionally allow it, or to
> do as the firmware indicates (default).
> 
> The hardware state is only ever saved and restored when the claim
> tags indicate that coresight is in use.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  .../devicetree/bindings/arm/coresight.txt     |   3 +
>  drivers/hwtracing/coresight/coresight-etm4x.c | 299 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-etm4x.h |  66 ++++
>  drivers/hwtracing/coresight/coresight.c       |   2 +-
>  include/linux/coresight.h                     |   8 +
>  5 files changed, 377 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 8a88ddebc1a2..e0dc0a93312f 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -90,6 +90,9 @@ its hardware characteristcs.
>  	* cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
>  	  source is considered to belong to CPU0.
>  
> +	* arm,coresight-needs-save-restore: boolean. Indicates that software
> +	  should save/restore state across power down.
> +
>  * Optional property for TMC:
>  
>  	* arm,buffer-size: size of contiguous buffer space for TMC ETR
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 86945f054cf8..eff317cd3a03 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -18,6 +18,7 @@
>  #include <linux/stat.h>
>  #include <linux/clk.h>
>  #include <linux/cpu.h>
> +#include <linux/cpu_pm.h>
>  #include <linux/coresight.h>
>  #include <linux/coresight-pmu.h>
>  #include <linux/pm_wakeup.h>
> @@ -26,6 +27,7 @@
>  #include <linux/uaccess.h>
>  #include <linux/perf_event.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/property.h>
>  #include <asm/sections.h>
>  #include <asm/local.h>
>  #include <asm/virt.h>
> @@ -37,6 +39,16 @@ static int boot_enable;
>  module_param(boot_enable, int, 0444);
>  MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
>  
> +
> +#define PARAM_PM_SAVE_DISABLE	0
> +#define PARAM_PM_SAVE_ENABLE	1
> +#define PARAM_PM_SAVE_FIRMWARE	2
> +
> +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> +module_param(pm_save_enable, int, 0644);
> +MODULE_PARM_DESC(pm_save_enable, "Save/restore state on power down: "
> +				  "0 = disabled, 1 = enabled, 2 = firmware");
> +

I understand if set pm_save_enable = 2 (firmware), then driver will
depend on drvdata->pm_save_enable to make decision for context saving
and restoring.

Maybe we can simplize to set pm_save_enable for binary value:
0 (disabled) or 1 (enabled).  The reason is if we set the module
parameter 'pm_save_enable = 1', then we can set every ETM device's
drvdata->pm_save_enable in initialization phase.  So in the probe
function, we can use below code:

  drvdata->pm_save_enable = pm_save_enable ? : etm4_needs_save_restore(dev);

>  /* The number of ETMv4 currently registered */
>  static int etm4_count;
>  static struct etmv4_drvdata *etmdrvdata[NR_CPUS];
> @@ -54,6 +66,14 @@ static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
>  	isb();
>  }
>  
> +static void etm4_os_lock(struct etmv4_drvdata *drvdata)
> +{
> +	/* Writing 0x1 to TRCOSLAR locks the trace registers */
> +	writel_relaxed(0x1, drvdata->base + TRCOSLAR);
> +	drvdata->os_unlock = false;
> +	isb();
> +}
> +
>  static bool etm4_arch_supported(u8 arch)
>  {
>  	/* Mask out the minor version number */
> @@ -1079,6 +1099,277 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
>  	drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
>  }
>  
> +#ifdef CONFIG_CPU_PM
> +static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
> +{
> +	int i, ret = 0;
> +	u32 control;
> +	struct etmv4_save_state *state;
> +	struct device *etm_dev = &drvdata->csdev->dev;
> +
> +	/* As recommended by 3.4.1 of ARM IHI 0064D */
> +	dsb(sy);
> +	isb();

As I mentioned in another email mb(), should be:
s/dsb(sy)/mb()?

> +
> +	CS_UNLOCK(drvdata->base);
> +
> +	/* Lock the OS lock to disable trace and external debugger access */
> +	etm4_os_lock(drvdata);
> +
> +	/* wait for TRCSTATR.PMSTABLE to go up */
> +	if (coresight_timeout(drvdata->base, TRCSTATR,
> +					TRCSTATR_PMSTABLE_BIT, 1)) {
> +		dev_err(etm_dev,
> +			"timeout while waiting for PM Stable Status\n");
> +		etm4_os_unlock(drvdata);
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	state = &drvdata->save_state;
> +
> +	state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
> +	state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> +	state->trcconfigr = readl(drvdata->base + TRCCONFIGR);
> +	state->trcauxctlr = readl(drvdata->base + TRCAUXCTLR);
> +	state->trceventctl0r = readl(drvdata->base + TRCEVENTCTL0R);
> +	state->trceventctl1r = readl(drvdata->base + TRCEVENTCTL1R);
> +	state->trcstallctlr = readl(drvdata->base + TRCSTALLCTLR);
> +	state->trctsctlr = readl(drvdata->base + TRCTSCTLR);
> +	state->trcsyncpr = readl(drvdata->base + TRCSYNCPR);
> +	state->trcccctlr = readl(drvdata->base + TRCCCCTLR);
> +	state->trcbbctlr = readl(drvdata->base + TRCBBCTLR);
> +	state->trctraceidr = readl(drvdata->base + TRCTRACEIDR);
> +	state->trcqctlr = readl(drvdata->base + TRCQCTLR);
> +
> +	state->trcvictlr = readl(drvdata->base + TRCVICTLR);
> +	state->trcviiectlr = readl(drvdata->base + TRCVIIECTLR);
> +	state->trcvissctlr = readl(drvdata->base + TRCVISSCTLR);
> +	state->trcvipcssctlr = readl(drvdata->base + TRCVIPCSSCTLR);
> +	state->trcvdctlr = readl(drvdata->base + TRCVDCTLR);
> +	state->trcvdsacctlr = readl(drvdata->base + TRCVDSACCTLR);
> +	state->trcvdarcctlr = readl(drvdata->base + TRCVDARCCTLR);
> +
> +	for (i = 0; i < drvdata->nrseqstate; i++)
> +		state->trcseqevr[i] = readl(drvdata->base + TRCSEQEVRn(i));
> +
> +	state->trcseqrstevr = readl(drvdata->base + TRCSEQRSTEVR);
> +	state->trcseqstr = readl(drvdata->base + TRCSEQSTR);
> +	state->trcextinselr = readl(drvdata->base + TRCEXTINSELR);
> +
> +	for (i = 0; i < drvdata->nr_cntr; i++) {
> +		state->trccntrldvr[i] = readl(drvdata->base + TRCCNTRLDVRn(i));
> +		state->trccntctlr[i] = readl(drvdata->base + TRCCNTCTLRn(i));
> +		state->trccntvr[i] = readl(drvdata->base + TRCCNTVRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->nr_resource * 2; i++)
> +		state->trcrsctlr[i] = readl(drvdata->base + TRCRSCTLRn(i));
> +
> +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		state->trcssccr[i] = readl(drvdata->base + TRCSSCCRn(i));
> +		state->trcsscsr[i] = readl(drvdata->base + TRCSSCSRn(i));
> +		state->trcsspcicr[i] = readl(drvdata->base + TRCSSPCICRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> +		state->trcacvr[i] = readl(drvdata->base + TRCACVRn(i));
> +		state->trcacatr[i] = readl(drvdata->base + TRCACATRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->numcidc; i++)
> +		state->trccidcvr[i] = readl(drvdata->base + TRCCIDCVRn(i));
> +
> +	for (i = 0; i < drvdata->numvmidc; i++)
> +		state->trcvmidcvr[i] = readl(drvdata->base + TRCVMIDCVRn(i));
> +
> +	state->trccidcctlr0 = readl(drvdata->base + TRCCIDCCTLR0);
> +	state->trccidcctlr1 = readl(drvdata->base + TRCCIDCCTLR1);
> +
> +	state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR0);
> +	state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR1);
> +
> +	state->trcclaimset = readl(drvdata->base + TRCCLAIMCLR);
> +
> +	/* wait for TRCSTATR.IDLE to go up */
> +	if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1)) {
> +		dev_err(etm_dev,
> +			"timeout while waiting for Idle Trace Status\n");
> +		etm4_os_unlock(drvdata);
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	drvdata->state_needs_restore = true;
> +
> +	/* power can be removed from the trace unit now */
> +	control = readl_relaxed(drvdata->base + TRCPDCR);
> +	control &= ~TRCPDCR_PU;
> +	writel_relaxed(control, drvdata->base + TRCPDCR);

Do we need to disable trace unit at the end of saving flow?

Thanks,
Leo Yan

> +
> +out:
> +	CS_LOCK(drvdata->base);
> +	return ret;
> +}
> +
> +static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> +{
> +	int i;
> +	struct etmv4_save_state *state;
> +
> +	state = &drvdata->save_state;
> +
> +	CS_UNLOCK(drvdata->base);
> +
> +	writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> +
> +	writel_relaxed(state->trcprgctlr, drvdata->base + TRCPRGCTLR);
> +	writel_relaxed(state->trcprocselr, drvdata->base + TRCPROCSELR);
> +	writel_relaxed(state->trcconfigr, drvdata->base + TRCCONFIGR);
> +	writel_relaxed(state->trcauxctlr, drvdata->base + TRCAUXCTLR);
> +	writel_relaxed(state->trceventctl0r, drvdata->base + TRCEVENTCTL0R);
> +	writel_relaxed(state->trceventctl1r, drvdata->base + TRCEVENTCTL1R);
> +	writel_relaxed(state->trcstallctlr, drvdata->base + TRCSTALLCTLR);
> +	writel_relaxed(state->trctsctlr, drvdata->base + TRCTSCTLR);
> +	writel_relaxed(state->trcsyncpr, drvdata->base + TRCSYNCPR);
> +	writel_relaxed(state->trcccctlr, drvdata->base + TRCCCCTLR);
> +	writel_relaxed(state->trcbbctlr, drvdata->base + TRCBBCTLR);
> +	writel_relaxed(state->trctraceidr, drvdata->base + TRCTRACEIDR);
> +	writel_relaxed(state->trcqctlr, drvdata->base + TRCQCTLR);
> +
> +	writel_relaxed(state->trcvictlr, drvdata->base + TRCVICTLR);
> +	writel_relaxed(state->trcviiectlr, drvdata->base + TRCVIIECTLR);
> +	writel_relaxed(state->trcvissctlr, drvdata->base + TRCVISSCTLR);
> +	writel_relaxed(state->trcvipcssctlr, drvdata->base + TRCVIPCSSCTLR);
> +	writel_relaxed(state->trcvdctlr, drvdata->base + TRCVDCTLR);
> +	writel_relaxed(state->trcvdsacctlr, drvdata->base + TRCVDSACCTLR);
> +	writel_relaxed(state->trcvdarcctlr, drvdata->base + TRCVDARCCTLR);
> +
> +	for (i = 0; i < drvdata->nrseqstate; i++)
> +		writel_relaxed(state->trcseqevr[i],
> +					drvdata->base + TRCSEQEVRn(i));
> +
> +	writel_relaxed(state->trcseqrstevr, drvdata->base + TRCSEQRSTEVR);
> +	writel_relaxed(state->trcseqstr, drvdata->base + TRCSEQSTR);
> +	writel_relaxed(state->trcextinselr, drvdata->base + TRCEXTINSELR);
> +
> +	for (i = 0; i < drvdata->nr_cntr; i++) {
> +		writel_relaxed(state->trccntrldvr[i],
> +					drvdata->base + TRCCNTRLDVRn(i));
> +		writel_relaxed(state->trccntctlr[i],
> +					drvdata->base + TRCCNTCTLRn(i));
> +		writel_relaxed(state->trccntvr[i],
> +					drvdata->base + TRCCNTVRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->nr_resource * 2; i++)
> +		writel_relaxed(state->trcrsctlr[i],
> +					drvdata->base + TRCRSCTLRn(i));
> +
> +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		writel_relaxed(state->trcssccr[i],
> +					drvdata->base + TRCSSCCRn(i));
> +		writel_relaxed(state->trcsscsr[i],
> +					drvdata->base + TRCSSCSRn(i));
> +		writel_relaxed(state->trcsspcicr[i],
> +					drvdata->base + TRCSSPCICRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> +		writel_relaxed(state->trcacvr[i],
> +					drvdata->base + TRCACVRn(i));
> +		writel_relaxed(state->trcacatr[i],
> +					drvdata->base + TRCACATRn(i));
> +	}
> +
> +	for (i = 0; i < drvdata->numcidc; i++)
> +		writel_relaxed(state->trccidcvr[i],
> +					drvdata->base + TRCCIDCVRn(i));
> +
> +	for (i = 0; i < drvdata->numvmidc; i++)
> +		writel_relaxed(state->trcvmidcvr[i],
> +					drvdata->base + TRCVMIDCVRn(i));
> +
> +	writel_relaxed(state->trccidcctlr0, drvdata->base + TRCCIDCCTLR0);
> +	writel_relaxed(state->trccidcctlr1, drvdata->base + TRCCIDCCTLR1);
> +
> +	writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR0);
> +	writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR1);
> +
> +	writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> +
> +	drvdata->state_needs_restore = false;
> +
> +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> +	dsb(sy);
> +	isb();
> +
> +	/* Unlock the OS lock to re-enable trace and external debug access */
> +	etm4_os_unlock(drvdata);
> +	CS_LOCK(drvdata->base);
> +}
> +
> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> +			      void *v)
> +{
> +	struct etmv4_drvdata *drvdata;
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!etmdrvdata[cpu])
> +		return 0;
> +
> +	drvdata = etmdrvdata[cpu];
> +
> +	if (pm_save_enable == PARAM_PM_SAVE_DISABLE ||
> +	    (pm_save_enable == PARAM_PM_SAVE_FIRMWARE &&
> +	     !drvdata->pm_save_enable))
> +		return NOTIFY_OK;
> +
> +	if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
> +		return NOTIFY_BAD;
> +
> +	switch (cmd) {
> +	case CPU_PM_ENTER:
> +		/* save the state if coresight is in use */
> +		if (coresight_is_claimed_any(drvdata->base))
> +			if (etm4_cpu_save(drvdata))
> +				return NOTIFY_BAD;
> +		break;
> +	case CPU_PM_EXIT:
> +	case CPU_PM_ENTER_FAILED:
> +		/* trcclaimset is set when there is state to restore */
> +		if (drvdata->state_needs_restore)
> +			etm4_cpu_restore(drvdata);
> +		break;
> +	default:
> +		return NOTIFY_DONE;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata)
> +{
> +	drvdata->nb.notifier_call = etm4_cpu_pm_notify;
> +	return cpu_pm_register_notifier(&drvdata->nb);
> +}
> +
> +static void etm4_cpu_pm_unregister(struct etmv4_drvdata *drvdata)
> +{
> +	if (drvdata->nb.notifier_call)
> +		cpu_pm_unregister_notifier(&drvdata->nb);
> +}
> +#else
> +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata) { return 0; }
> +static void etm4_cpu_pm_unregister(struct etmv4_drvdata *drvdata) { }
> +#endif
> +
> +static inline bool etm4_needs_save_restore(struct device *dev)
> +{
> +	return fwnode_property_present(dev->fwnode,
> +				       "arm,coresight-needs-save-restore");
> +}
> +
>  static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  {
>  	int ret;
> @@ -1095,6 +1386,8 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  
>  	dev_set_drvdata(dev, drvdata);
>  
> +	drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> +
>  	/* Validity for the resource is already checked by the AMBA core */
>  	base = devm_ioremap_resource(dev, res);
>  	if (IS_ERR(base))
> @@ -1126,6 +1419,10 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  		if (ret < 0)
>  			goto err_arch_supported;
>  		hp_online = ret;
> +
> +		ret = etm4_cpu_pm_register(drvdata);
> +		if (ret)
> +			goto err_arch_supported;
>  	}
>  
>  	cpus_read_unlock();
> @@ -1176,6 +1473,8 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  
>  err_arch_supported:
>  	if (--etm4_count == 0) {
> +		etm4_cpu_pm_unregister(drvdata);
> +
>  		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_STARTING);
>  		if (hp_online)
>  			cpuhp_remove_state_nocalls(hp_online);
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> index 4523f10ddd0f..2a6ead91a98f 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -175,6 +175,7 @@
>  					 ETM_MODE_EXCL_USER)
>  
>  #define TRCSTATR_IDLE_BIT		0
> +#define TRCSTATR_PMSTABLE_BIT		1
>  #define ETM_DEFAULT_ADDR_COMP		0
>  
>  /* PowerDown Control Register bits */
> @@ -281,6 +282,65 @@ struct etmv4_config {
>  	u32				ext_inp;
>  };
>  
> +/**
> + * struct etm4_save_state - state to be preserved when ETM is without power
> + */
> +struct etmv4_save_state {
> +	u32	trcprgctlr;
> +	u32	trcprocselr;
> +	u32	trcconfigr;
> +	u32	trcauxctlr;
> +	u32	trceventctl0r;
> +	u32	trceventctl1r;
> +	u32	trcstallctlr;
> +	u32	trctsctlr;
> +	u32	trcsyncpr;
> +	u32	trcccctlr;
> +	u32	trcbbctlr;
> +	u32	trctraceidr;
> +	u32	trcqctlr;
> +
> +	u32	trcvictlr;
> +	u32	trcviiectlr;
> +	u32	trcvissctlr;
> +	u32	trcvipcssctlr;
> +	u32	trcvdctlr;
> +	u32	trcvdsacctlr;
> +	u32	trcvdarcctlr;
> +
> +	u32	trcseqevr[ETM_MAX_SEQ_STATES];
> +	u32	trcseqrstevr;
> +	u32	trcseqstr;
> +	u32	trcextinselr;
> +	u32	trccntrldvr[ETMv4_MAX_CNTR];
> +	u32	trccntctlr[ETMv4_MAX_CNTR];
> +	u32	trccntvr[ETMv4_MAX_CNTR];
> +
> +	u32	trcrsctlr[ETM_MAX_RES_SEL * 2];
> +
> +	u32	trcssccr[ETM_MAX_SS_CMP];
> +	u32	trcsscsr[ETM_MAX_SS_CMP];
> +	u32	trcsspcicr[ETM_MAX_SS_CMP];
> +
> +	u64	trcacvr[ETM_MAX_SINGLE_ADDR_CMP];
> +	u64	trcacatr[ETM_MAX_SINGLE_ADDR_CMP];
> +	u64	trcdvcvr[ETM_MAX_DATA_VAL_CMP];
> +	u64	trcdvcmr[ETM_MAX_DATA_VAL_CMP];
> +	u64	trccidcvr[ETMv4_MAX_CTXID_CMP];
> +	u32	trcvmidcvr[ETM_MAX_VMID_CMP];
> +	u32	trccidcctlr0;
> +	u32	trccidcctlr1;
> +	u32	trcvmidcctlr0;
> +	u32	trcvmidcctlr1;
> +
> +	u32	trcclaimset;
> +
> +	u32	cntr_val[ETMv4_MAX_CNTR];
> +	u32	seq_state;
> +	u32	vinst_ctrl;
> +	u32	ss_status[ETM_MAX_SS_CMP];
> +};
> +
>  /**
>   * struct etm4_drvdata - specifics associated to an ETM component
>   * @base:       Memory mapped base address for this component.
> @@ -336,6 +396,8 @@ struct etmv4_config {
>   * @atbtrig:	If the implementation can support ATB triggers
>   * @lpoverride:	If the implementation can support low-power state over.
>   * @config:	structure holding configuration parameters.
> + * @save_state:	State to be preserved across power loss
> + * @nb:		CPU PM notifier
>   */
>  struct etmv4_drvdata {
>  	void __iomem			*base;
> @@ -367,6 +429,7 @@ struct etmv4_drvdata {
>  	u8				q_support;
>  	bool				sticky_enable;
>  	bool				boot_enable;
> +	bool				pm_save_enable;
>  	bool				os_unlock;
>  	bool				instrp0;
>  	bool				trcbb;
> @@ -381,6 +444,9 @@ struct etmv4_drvdata {
>  	bool				atbtrig;
>  	bool				lpoverride;
>  	struct etmv4_config		config;
> +	struct etmv4_save_state		save_state;
> +	bool				state_needs_restore;
> +	struct notifier_block		nb;
>  };
>  
>  /* Address comparator access types */
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 86d1fc2c1bd4..aba71a5a025f 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
>  	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
>  }
>  
> -static inline bool coresight_is_claimed_any(void __iomem *base)
> +bool coresight_is_claimed_any(void __iomem *base)
>  {
>  	return coresight_read_claim_tags(base) != 0;
>  }
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index a2b68823717b..c3a875dffe65 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -285,6 +285,9 @@ extern void coresight_disclaim_device(void __iomem *base);
>  extern void coresight_disclaim_device_unlocked(void __iomem *base);
>  extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
>  					 struct device *dev);
> +
> +extern bool coresight_is_claimed_any(void __iomem *base);
> +
>  #else
>  static inline struct coresight_device *
>  coresight_register(struct coresight_desc *desc) { return NULL; }
> @@ -307,6 +310,11 @@ static inline int coresight_claim_device(void __iomem *base)
>  static inline void coresight_disclaim_device(void __iomem *base) {}
>  static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
>  
> +static inline bool coresight_is_claimed_any(void __iomem *base)
> +{
> +	return false;
> +}
> +
>  #endif
>  
>  extern int coresight_get_cpu(struct device *dev);
> -- 
> 2.21.0
> 
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
