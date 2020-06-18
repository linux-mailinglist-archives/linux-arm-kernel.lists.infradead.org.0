Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F171FFAB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RVUWYq+7ylooRPIZe/rcMvdXH9uLtqzf1eA6mtqpK4I=; b=WA9AlmE1PlEfC5mFRTB0bDJe4
	Ep9PoOnWmNkFBWtTlJhkLlGzPn3ay/VyKZbcAUOJTuy+HFgMQqblh3Vm4SgZqKSNN7WESyPxIlwMn
	hxPEEEV+P3hKdiTJoYpI5Mh183FF0ye67yiDB/dUWR1mnKD7NrPJS+aZCGqVZiWvucFTDw1OIIEG3
	1VH1CLyTkCR3zT9A4d4KetyuFZOVq2PVBJz4YcW6mCRfkNNltKYKIDd3ycrLTQ8wxEnIvLkA6SlZP
	gdxLzhILNouXAoz7PqhtZrzg7jYmFOm950ZhbZog8dxuooXMAop0BBmkkSB/Z7bR5AyQujB67YVe0
	OtE7SjEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlysJ-0003nS-Ai; Thu, 18 Jun 2020 18:02:55 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyrx-0003V8-PB
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 18:02:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592503356; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=lCdbSGdi/eKz+yk7v3H4F1EFosxd309eL9sHFCGRvJc=;
 b=PGZtKPdG0CJhAiANbIl0fq7B2h6MfUjA/ifXXXRvRZkO0Gz3rUdjmYB9Jyj3YCGS3J6Q/uWC
 j32ZkdLUxNLfYc/I75e21JX+cRBahW10YVssKBFFYEnLFdR0JMNuurMSDAoVYiNo0Uwr9BuM
 23wwE6YCFnX0AQE9yowmiaSOnNs=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5eebac276f2ee827dac89e02 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 18 Jun 2020 18:02:15
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BF023C433CB; Thu, 18 Jun 2020 18:02:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: ilina)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2ECA4C433C8;
 Thu, 18 Jun 2020 18:02:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2ECA4C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Thu, 18 Jun 2020 12:02:13 -0600
From: Lina Iyer <ilina@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 3/5] cpuidle: psci: Split into two separate build objects
Message-ID: <20200618180213.GL12942@codeaurora.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
 <20200615152054.6819-4-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615152054.6819-4-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_110236_790949_6B60F31E 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
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
>The combined build object for the PSCI cpuidle driver and the PSCI PM
>domain, is a bit messy. Therefore let's split it up by adding a new Kconfig
>ARM_PSCI_CPUIDLE_DOMAIN and convert into two separate objects.
>
>Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Lina Iyer <ilina@codeaurora.org>

>---
> drivers/cpuidle/Kconfig.arm    | 10 ++++++++++
> drivers/cpuidle/Makefile       |  5 ++---
> drivers/cpuidle/cpuidle-psci.h |  2 +-
> 3 files changed, 13 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
>index 51a7e89085c0..0844fadc4be8 100644
>--- a/drivers/cpuidle/Kconfig.arm
>+++ b/drivers/cpuidle/Kconfig.arm
>@@ -23,6 +23,16 @@ config ARM_PSCI_CPUIDLE
> 	  It provides an idle driver that is capable of detecting and
> 	  managing idle states through the PSCI firmware interface.
>
>+config ARM_PSCI_CPUIDLE_DOMAIN
>+	bool "PSCI CPU idle Domain"
>+	depends on ARM_PSCI_CPUIDLE
>+	depends on PM_GENERIC_DOMAINS_OF
>+	default y
>+	help
>+	  Select this to enable the PSCI based CPUidle driver to use PM domains,
>+	  which is needed to support the hierarchical DT based layout of the
>+	  idle states.
>+
> config ARM_BIG_LITTLE_CPUIDLE
> 	bool "Support for ARM big.LITTLE processors"
> 	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS || COMPILE_TEST
>diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
>index f07800cbb43f..26bbc5e74123 100644
>--- a/drivers/cpuidle/Makefile
>+++ b/drivers/cpuidle/Makefile
>@@ -21,9 +21,8 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
> obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
> obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
> obj-$(CONFIG_ARM_CPUIDLE)		+= cpuidle-arm.o
>-obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle_psci.o
>-cpuidle_psci-y				:= cpuidle-psci.o
>-cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o
>+obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle-psci.o
>+obj-$(CONFIG_ARM_PSCI_CPUIDLE_DOMAIN)	+= cpuidle-psci-domain.o
> obj-$(CONFIG_ARM_TEGRA_CPUIDLE)		+= cpuidle-tegra.o
> obj-$(CONFIG_ARM_QCOM_SPM_CPUIDLE)	+= cpuidle-qcom-spm.o
>
>diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
>index 0690d66df829..d8e925e84c27 100644
>--- a/drivers/cpuidle/cpuidle-psci.h
>+++ b/drivers/cpuidle/cpuidle-psci.h
>@@ -9,7 +9,7 @@ struct device_node;
> void psci_set_domain_state(u32 state);
> int psci_dt_parse_state_node(struct device_node *np, u32 *state);
>
>-#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
>+#ifdef CONFIG_ARM_PSCI_CPUIDLE_DOMAIN
> struct device *psci_dt_attach_cpu(int cpu);
> void psci_dt_detach_cpu(struct device *dev);
> #else
>-- 
>2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
