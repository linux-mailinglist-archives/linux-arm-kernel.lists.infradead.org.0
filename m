Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665B638ED6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8q6J+hGu5aF+8q7yrJV2SzdOBB75di0699qzQ16Hjg=; b=CZHjCP0UQOg6RD
	QOTFh4FYv8Wxa9yjtDr+FmrXECLRANZZlHZjovJGfW0zOQjOYQIaptl/A+OUiKMmG8XO/I7kS/da0
	1YyLh7CdQ4qkdM2RgOXdDOXdR0HX72SiVWW1UX1WwY+tki90aZ4OWoMYOQPnAXuWLIeWVjAht9SFV
	tet/j7CJtqPhlpsYtJi/8/qD7BKq5uFXutryYOIQCnIUY56NfNlqNmMEPl1nplq8fMdZDzaEN9n4s
	P0qPpGti1yc30uuA/S717U41vB8D3eT52IEiKoyE9VjEP+zGMgkxGh59lmFQ1mUWaV5uS0vAp9Ebj
	H7kz9hcM1cleNBUHYlKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGgL-00049D-St; Fri, 07 Jun 2019 15:21:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGgC-00048r-SS
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:21:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99207337;
 Fri,  7 Jun 2019 08:21:19 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9EEB3F718;
 Fri,  7 Jun 2019 08:21:16 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:21:14 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 08/18] drivers: firmware: psci: Prepare to support PM
 domains
Message-ID: <20190607152114.GG15577@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-9-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-9-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082121_013512_730FA77F 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm@vger.kernel.org, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:50PM +0200, Ulf Hansson wrote:
> Subsequent changes implements support for PM domains to PSCI. Those changes
> are mainly implemented in a new separate c-file, hence a couple of the
> internal PSCI functions needs to be shared to be accessible. Let's do that
> via adding a new PSCI header file.
>
> Moreover, to implement support for PM domains, switching the PSCI FW into
> the OS initiated mode is sometimes needed. Therefore, let's share a new
> function that implement this.
>

This looks fine.

--
Regards,
Sudeep

> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes:
> 	- Convert psci_set_osi_mode() to return an int.
> 	- Don't share psci_get_domain_state() as that's no longer needed.
> 	- Update changelog.
>
> ---
>  drivers/firmware/psci/psci.c | 17 ++++++++++++++---
>  drivers/firmware/psci/psci.h | 16 ++++++++++++++++
>  2 files changed, 30 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/firmware/psci/psci.h
>
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 4aec513136e4..0e91d864e346 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -34,6 +34,8 @@
>  #include <asm/smp_plat.h>
>  #include <asm/suspend.h>
>
> +#include "psci.h"
> +
>  /*
>   * While a 64-bit OS can make calls with SMC32 calling conventions, for some
>   * calls it is necessary to use SMC64 to pass or return 64-bit values.
> @@ -96,7 +98,7 @@ static inline bool psci_has_ext_power_state(void)
>  				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
>  }
>
> -static inline bool psci_has_osi_support(void)
> +bool psci_has_osi_support(void)
>  {
>  	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
>  }
> @@ -161,6 +163,15 @@ static u32 psci_get_version(void)
>  	return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
>  }
>
> +int psci_set_osi_mode(void)
> +{
> +	int err;
> +
> +	err = invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
> +			     PSCI_1_0_SUSPEND_MODE_OSI, 0, 0);
> +	return psci_to_linux_errno(err);
> +}
> +
>  static int psci_cpu_suspend(u32 state, unsigned long entry_point)
>  {
>  	int err;
> @@ -292,12 +303,12 @@ static inline u32 psci_get_domain_state(void)
>  	return __this_cpu_read(domain_state);
>  }
>
> -static inline void psci_set_domain_state(u32 state)
> +void psci_set_domain_state(u32 state)
>  {
>  	__this_cpu_write(domain_state, state);
>  }
>
> -static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
> +int psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  {
>  	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
>
> diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
> new file mode 100644
> index 000000000000..f2277c3ad405
> --- /dev/null
> +++ b/drivers/firmware/psci/psci.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __PSCI_H
> +#define __PSCI_H
> +
> +struct device_node;
> +
> +int psci_set_osi_mode(void);
> +bool psci_has_osi_support(void);
> +
> +#ifdef CONFIG_CPU_IDLE
> +void psci_set_domain_state(u32 state);
> +int psci_dt_parse_state_node(struct device_node *np, u32 *state);
> +#endif
> +
> +#endif /* __PSCI_H */
> --
> 2.17.1
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
