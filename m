Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABD01FFAB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HNImS0+RzkJHDjMnWGHntXRZkQCk3UGc9rpvcfrXNbg=; b=JDmL/MVR6BwTBDfEfkvfdzc9G
	18Mz3naH3tvrDBu/4hmFu8MJXg+Sgf0UJ2rtI/FhnK14MqkJgujuGr0FEnsMQ/lvvpgcfmyHSxRdk
	oqBE1ZnJa6Iil7B6o2nJ7fqLGKoDdxzCpbyvHYzIJRL8K0BY/otGxjjR78RMQxEedvBX4qxFCpnhW
	8x6CYFROZ2Ar6Hnf2Z6TPFdIa8Pml83wkfcG9eCcRXxLCqz8fIWvKoadmqqKWmaD/tVdeXlmfmkx5
	4OUClwDFrEUThAuC7aZZBB2XwVfefDOEyo42T+XkeIIY3cPCnKGtyD0kJ/OWL8h0DVO5U0A0VQglH
	1D36o4jcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlys5-0003Rr-B7; Thu, 18 Jun 2020 18:02:41 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyro-0003RS-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 18:02:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592503347; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=0wfkwopuLx8hs9G0OXE+EBnMO69t9YFTTa2ykBZeSkI=;
 b=H3iLz3i6LfeVC1T2yeArRZ5T/ybNY0AYKN4T6VcGHnFNeeDx+z/i0H+UQGB3uHQ86NAywvoK
 LFavn5VoZdpPU9hgFYR8e/frgwR1KCtVbzFKmB4wvjjCLQpGFa0yF6gHHjdPf24YzzWqvXnt
 eTaR0ygvdsnHloc4u8nyuRZTH4I=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5eebac118fe116ddd985f86f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 18 Jun 2020 18:01:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5B3AEC43395; Thu, 18 Jun 2020 18:01:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: ilina)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 59BFEC433C9;
 Thu, 18 Jun 2020 18:01:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 59BFEC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Thu, 18 Jun 2020 12:01:50 -0600
From: Lina Iyer <ilina@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 1/5] cpuidle: psci: Fail cpuidle registration if set OSI
 mode failed
Message-ID: <20200618180150.GK12942@codeaurora.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
 <20200615152054.6819-2-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615152054.6819-2-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_110227_977967_70D1B288 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15 2020 at 09:21 -0600, Ulf Hansson wrote:
>Currently we allow the cpuidle driver registration to succeed, even if we
>failed to enable the OSI mode when the hierarchical DT layout is used. This
>means running in a degraded mode, by using the available idle states per
>CPU, while also preventing the domain idle states.
>
>Moving forward, this behaviour looks quite questionable to maintain, as
>complexity seems to grow around it, especially when trying to add support
>for deferred probe, for example.
>
>Therefore, let's make the cpuidle driver registration to fail in this
>situation, thus relying on the default architectural cpuidle backend for
>WFI to be used.
>
>Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

May be PATCH 3/5 should come before this change, but for this patch itself,
please consider -

Reviewed-by: Lina Iyer <ilina@codeaurora.org>

>---
> drivers/cpuidle/cpuidle-psci-domain.c | 5 -----
> 1 file changed, 5 deletions(-)
>
>diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
>index 423f03bbeb74..f07786aad673 100644
>--- a/drivers/cpuidle/cpuidle-psci-domain.c
>+++ b/drivers/cpuidle/cpuidle-psci-domain.c
>@@ -26,7 +26,6 @@ struct psci_pd_provider {
> };
>
> static LIST_HEAD(psci_pd_providers);
>-static bool osi_mode_enabled __initdata;
>
> static int psci_pd_power_off(struct generic_pm_domain *pd)
> {
>@@ -272,7 +271,6 @@ static int __init psci_idle_init_domains(void)
> 		goto remove_pd;
> 	}
>
>-	osi_mode_enabled = true;
> 	of_node_put(np);
> 	pr_info("Initialized CPU PM domain topology\n");
> 	return pd_count;
>@@ -293,9 +291,6 @@ struct device __init *psci_dt_attach_cpu(int cpu)
> {
> 	struct device *dev;
>
>-	if (!osi_mode_enabled)
>-		return NULL;
>-
> 	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> 	if (IS_ERR_OR_NULL(dev))
> 		return dev;
>-- 
>2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
