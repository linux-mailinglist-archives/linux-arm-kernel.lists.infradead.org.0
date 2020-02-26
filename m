Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5398116FEAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DkXDvx85OoLmWUB7IolCPEPx0ojdeNpO9qtPiQxkVM=; b=LMI/9028h6g7+w
	YoiLkELTY14ZoshJSBK8ki0HjJiO3tyIaamkk2plKgYoDypH6wOBf1kkdTAee/c5mdbEXudAckjuq
	B8k81E5+oZfSRYcM7pxMt79zrHuDBFa+eZWqx3FGK7mG3VfSmYBd0GGCpxkiy82hLVa/4bRCabmBp
	l4RsNtZRMVt20dYc6Y7zIFuIywyTG1LaLysh2F2aZFN3yu7UqV32Tz0nirWenvzrv0wVOZIHpxDbW
	GvD39hseS0eC5H/Knnn4gm0mgEwjwpmM2wWQuKCm8n9+QBv40Bh3fD7BYNbbyIG+ChV/XVlSAbqZu
	/X8ENtrlRSbsdBruCRag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vWB-0008Ag-6x; Wed, 26 Feb 2020 12:10:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vVz-0007pm-4k
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:10:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 935D71FB;
 Wed, 26 Feb 2020 04:10:10 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4486B3FA00;
 Wed, 26 Feb 2020 04:10:09 -0800 (PST)
Date: Wed, 26 Feb 2020 12:10:07 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v2 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
Message-ID: <20200226121006.GB21897@lakrids.cambridge.arm.com>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_041011_290238_63B2DD5B 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Feb 24, 2020 at 12:57:37PM -0800, Elliot Berman wrote:
> Some implementors of PSCI may relax the requirements of the PSCI
> architectural warm reset. In order to comply with PSCI specification, a
> different reset_type value must be used. The alternate PSCI
> SYSTEM_RESET2 may be used in all warm/soft reboot scenarios, replacing
> the architectural warm reset.

As with the binding patch, this sounds like a workaround for a firmware
bug. Can you please elaborate on what exactly your firmware does in this
case?

Thanks,
Mark.

> 
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
> ---
>  drivers/firmware/psci/psci.c | 22 ++++++++++++++++++----
>  include/uapi/linux/psci.h    |  2 ++
>  2 files changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2937d44..8f4609c 100644
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
> @@ -505,7 +507,19 @@ static int __init psci_0_2_init(struct device_node *np)
>  	 * can be carried out according to the specific version reported
>  	 * by firmware
>  	 */
> -	return psci_probe();
> +	err = psci_probe();
> +	if (err)
> +		return err;
> +
> +	if (psci_system_reset2_supported &&
> +	    !of_property_read_u32(np, "arm,psci-sys-reset2-param", &param)) {
> +		if ((s32)param > 0)
> +			pr_warn("%08x is an invalid architectural reset type.\n",
> +				param);
> +		psci_sys_reset2_reset_param = param;
> +	}
> +
> +	return 0;
>  }
>  
>  /*
> diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
> index 2fcad1d..d786ec8 100644
> --- a/include/uapi/linux/psci.h
> +++ b/include/uapi/linux/psci.h
> @@ -55,6 +55,8 @@
>  #define PSCI_1_0_FN64_SYSTEM_SUSPEND		PSCI_0_2_FN64(14)
>  #define PSCI_1_1_FN64_SYSTEM_RESET2		PSCI_0_2_FN64(18)
>  
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
