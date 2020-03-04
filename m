Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87305179017
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ig3Bq3fYwCQ9CZscMUOCKeginxFz2NQHrHrjuh+wOo=; b=cwdHV1QkrO4Ynv
	4dSVfefOMH7V8elnru6ReQn4anBc207iZVUSAlXiMH4XHSJIsUYtAIqMQq6XAKcl5G3R2+CzDMdin
	GAYtL9AsGV3dDuosd9Yc6rIDYKj9B3hFZhEzpX+rNAhT2LqeKQnkLHW8kHMuuLBrYaMC5ljgQTsmf
	ma+kkS85CEyMdGpBebZvnfyvZn00nVLlYrXeCjvBU2vNUtlXj+/7OdirOONNqyAHTh/ee0uxENO4G
	G5lzEuYNm0f01uvZGRX0dcATBbBuf+PUwvAYq0GYJeZL8ggX/G7mXAsKHt6B89Ru3IeXRsQJrN5Da
	dU8nhT3U52yfiPEyH1hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ste-0008F2-0f; Wed, 04 Mar 2020 12:13:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9StV-0008EQ-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:12:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D02731B;
 Wed,  4 Mar 2020 04:12:54 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15F823F534;
 Wed,  4 Mar 2020 04:12:52 -0800 (PST)
Date: Wed, 4 Mar 2020 12:12:51 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 3/4] cpuidle: psci: Split psci_dt_cpu_init_idle()
Message-ID: <20200304121250.GD25004@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-4-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303203559.23995-4-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_041257_596297_1CF38D40 
X-CRM114-Status: GOOD (  18.86  )
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 09:35:58PM +0100, Ulf Hansson wrote:
> To make the code a bit more readable, but also to prepare some code to be
> re-used, let's move the OSI specific initialization out of the
> psci_dt_cpu_init_idle() and into a separate function.
>
> Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")

Not sure if this fixes anything but I am fine to have this if next one is
a real fix.

> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v2:
> 	- Adopted suggestions from Stephen to use IS_ERR_OR_NULL and
> 	PTR_ERR_OR_ZERO, which further clarified the code.
>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 46 ++++++++++++++++++++--------------
>  1 file changed, 27 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index edd7a54ef0d3..bae9140a65a5 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -160,6 +160,29 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  	return 0;
>  }
>
> +static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
> +					    struct psci_cpuidle_data *data,
> +					    unsigned int state_count, int cpu)
> +{
> +	/* Currently limit the hierarchical topology to be used in OSI mode. */
> +	if (!psci_has_osi_support())
> +		return 0;
> +
> +	data->dev = psci_dt_attach_cpu(cpu);
> +	if (IS_ERR_OR_NULL(data->dev))
> +		return PTR_ERR_OR_ZERO(data->dev);
> +

This is what I was asking to do before this was merged when I meant to drop
if(data->dev) check. So happy to see it :)

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
