Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77F0F289F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvzzbsxYN2AI5u+KARggZdrFAdOTBGx6938Vc+hslx4=; b=geKuD04tSO63iG
	CH7zSUAeYUuqMOYs9N0PDYeG76DKf6ai5fgyWF6He9Vg4k11gSu5MFasgQsHd6lzBbSLRZR+GaomJ
	Ibi0qnPQg4+TX1J2p15eqIhuw5WNBdKTpJh4TkrBbeWR2gRw+J6O0/sKoNeMZcDiCXVabYxaQWuUq
	zHY5qZrOsVB5Aq0VVCEbBJ/n4Ab26g9MKlwKXNrgiNjnwyNwWaqy79tupZM0PnrxY0vmo4Yrqd6vl
	YaQkp8pe+A191yGI4IF/uUCuCPLnxAp5rByprEFgePpvBrVeDlLwPs0vScFuUyqnFGibbmm1KuYTi
	MvFxL4wlzjZCQlXqP/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScjm-0000n8-VG; Thu, 07 Nov 2019 08:01:50 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScjb-0000mc-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:01:41 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iScjQ-0000io-4h; Thu, 07 Nov 2019 09:01:28 +0100
Date: Thu, 7 Nov 2019 09:01:26 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v6 5/7] psci: Add hvc call service for ptp_kvm.
In-Reply-To: <20191024110209.21328-6-jianyong.wu@arm.com>
Message-ID: <alpine.DEB.2.21.1911070856100.1869@nanos.tec.linutronix.de>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
 <20191024110209.21328-6-jianyong.wu@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_000139_898389_51E31DDE 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 yangbo.lu@nxp.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 netdev@vger.kernel.org, pbonzini@redhat.com, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019, Jianyong Wu wrote:

> This patch is the base of ptp_kvm for arm64.

This patch ...

> ptp_kvm modules will call hvc to get this service.
> The service offers real time and counter cycle of host for guest.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  drivers/clocksource/arm_arch_timer.c |  2 ++
>  include/clocksource/arm_arch_timer.h |  4 ++++
>  include/linux/arm-smccc.h            | 12 ++++++++++++
>  virt/kvm/arm/psci.c                  | 22 ++++++++++++++++++++++
>  4 files changed, 40 insertions(+)
> 
> diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
> index 07e57a49d1e8..e4ad38042ef6 100644
> --- a/drivers/clocksource/arm_arch_timer.c
> +++ b/drivers/clocksource/arm_arch_timer.c
> @@ -29,6 +29,7 @@
>  #include <asm/virt.h>
>  
>  #include <clocksource/arm_arch_timer.h>
> +#include <linux/clocksource_ids.h>

Same ordering issue and lack of file.
 
> diff --git a/include/clocksource/arm_arch_timer.h b/include/clocksource/arm_arch_timer.h
> index 1d68d5613dae..426d749e8cf8 100644
> --- a/include/clocksource/arm_arch_timer.h
> +++ b/include/clocksource/arm_arch_timer.h
> @@ -104,6 +104,10 @@ static inline bool arch_timer_evtstrm_available(void)
>  	return false;
>  }
>  
> +bool is_arm_arch_counter(void *unuse)

A global function in a header file? You might want to make this static
inline. And while at it please s/unuse/unused/

> +{
> +	return false;
> +}
>  #endif
>  #include <linux/linkage.h>
> diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
> index 0debf49bf259..339bcbafac7b 100644
> --- a/virt/kvm/arm/psci.c
> +++ b/virt/kvm/arm/psci.c
> @@ -15,6 +15,7 @@
>  #include <asm/kvm_host.h>
>  
>  #include <kvm/arm_psci.h>
> +#include <linux/clocksource_ids.h>

Sigh.
  
>  /*
>   * This is an implementation of the Power State Coordination Interface
> @@ -392,6 +393,8 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  	u32 func_id = smccc_get_function(vcpu);
>  	u32 val[4] = {};
>  	u32 option;
> +	u64 cycles;
> +	struct system_time_snapshot systime_snapshot;

Also here you might notice that the variables are not randomly ordered.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
