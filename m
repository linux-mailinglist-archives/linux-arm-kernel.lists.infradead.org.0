Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A2E18CD71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+qpem5L4UdOiMwS5QOQ0HUiya25yDm0SVcpZ5s9Vu4=; b=uEFeDLgUcGWh3x
	WiAHo/2cCdkJLM8mejagO8pgmKwDrZaN0s48VynLaXaBGDhzs2lt+v8mbmOE59xvxAHDWqMhPo2q9
	+rXtDhuLJO6HjSU/vFoRFTFBFdMLbDzuWxjfEoXyE9Du/LD92dqs9k9m7bL84tdJ2x4awptIic0Gx
	R+l19wt4F/8TSHexWNETHDPKfmMGiri56CrRGpJbwpT+D3MAZkTGDywJEqFTrmhx93/sjA+3pxnT0
	Hh+W3s6QBhnFRpur6PJ9QaHKCChVmKvCL/2qwOvqFMPU2L80yNaIvuV23lB/5/vaBaIVD63UKAgSH
	sC6jzq328Xb4/LnwCR6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGO1-0004o9-Qu; Fri, 20 Mar 2020 12:04:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGNu-0004nT-47
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:04:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7670131B;
 Fri, 20 Mar 2020 05:04:17 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 340313F85E;
 Fri, 20 Mar 2020 05:04:15 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:04:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v3 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
Message-ID: <20200320120412.GB36658@C02TD0UTHF1T.local>
References: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
 <1583435129-31356-3-git-send-email-eberman@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583435129-31356-3-git-send-email-eberman@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_050418_254429_642C0069 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 11:05:28AM -0800, Elliot Berman wrote:
> Some implementors of PSCI may wish to use a different reset type than
> SYSTEM_WARM_RESET. For instance, Qualcomm SoCs support an alternate
> reset_type which may be used in more warm reboot scenarios than
> SYSTEM_WARM_RESET permits (e.g. to reboot into recovery mode).
> 
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>

I think we need to discuss the expected semantics on patch 1, and as
things stand, I do not want to take this patch until we understand and
agree to how things should behave.

Thanks,
Mark.

> ---
>  drivers/firmware/psci/psci.c | 21 +++++++++++++++++----
>  include/uapi/linux/psci.h    |  5 +++++
>  2 files changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2937d44..43fe3af 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -90,6 +90,8 @@ static u32 psci_function_id[PSCI_FN_MAX];
>  
>  static u32 psci_cpu_suspend_feature;
>  static bool psci_system_reset2_supported;
> +static u32 psci_sys_reset2_reset_param =
> +	PSCI_1_1_SYSTEM_RESET2_SYSTEM_WARM_RESET;
>  
>  static inline bool psci_has_ext_power_state(void)
>  {
> @@ -272,11 +274,10 @@ static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
>  	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>  	    psci_system_reset2_supported) {
>  		/*
> -		 * reset_type[31] = 0 (architectural)
> -		 * reset_type[30:0] = 0 (SYSTEM_WARM_RESET)
>  		 * cookie = 0 (ignored by the implementation)
>  		 */
> -		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), 0, 0, 0);
> +		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2),
> +			       psci_sys_reset2_reset_param, 0, 0);
>  	} else {
>  		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
>  	}
> @@ -493,6 +494,7 @@ typedef int (*psci_initcall_t)(const struct device_node *);
>  static int __init psci_0_2_init(struct device_node *np)
>  {
>  	int err;
> +	u32 param;
>  
>  	err = get_set_conduit_method(np);
>  	if (err)
> @@ -505,7 +507,18 @@ static int __init psci_0_2_init(struct device_node *np)
>  	 * can be carried out according to the specific version reported
>  	 * by firmware
>  	 */
> -	return psci_probe();
> +	err = psci_probe();
> +	if (err)
> +		return err;
> +
> +	if (psci_system_reset2_supported &&
> +	    !of_property_read_u32(np, "arm,psci-sys-reset2-vendor-param", &param)) {
> +		psci_sys_reset2_reset_param = param |
> +			(PSCI_1_1_SYSTEM_RESET2_OWNER_VENDOR <<
> +			 PSCI_1_1_SYSTEM_RESET2_OWNER_SHIFT);
> +	}
> +
> +	return 0;
>  }
>  
>  /*
> diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
> index 2fcad1d..0829175 100644
> --- a/include/uapi/linux/psci.h
> +++ b/include/uapi/linux/psci.h
> @@ -55,6 +55,11 @@
>  #define PSCI_1_0_FN64_SYSTEM_SUSPEND		PSCI_0_2_FN64(14)
>  #define PSCI_1_1_FN64_SYSTEM_RESET2		PSCI_0_2_FN64(18)
>  
> +#define PSCI_1_1_SYSTEM_RESET2_OWNER_SHIFT		31
> +#define PSCI_1_1_SYSTEM_RESET2_OWNER_ARCH		0
> +#define PSCI_1_1_SYSTEM_RESET2_OWNER_VENDOR		1
> +#define PSCI_1_1_SYSTEM_RESET2_SYSTEM_WARM_RESET	0
> +
>  /* PSCI v0.2 power state encoding for CPU_SUSPEND function */
>  #define PSCI_0_2_POWER_STATE_ID_MASK		0xffff
>  #define PSCI_0_2_POWER_STATE_ID_SHIFT		0
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
