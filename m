Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174691530AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E9pMT5x7SI379b+8ioN4e1C7zc9QfWofMS+OlTJVK7E=; b=YkkedRF0dTBSraRPHkFH9Lj1qD
	jrfAFVGpfmSTYLoUCEN2HUhySbwElVEbijloj9ry9XcipfHvQlIO2v2iUG5czHvQJHfEIb3KHr5HS
	vGjWuAU0ug+KEWn7XSjjzApu1aUaXOrmIJjqjcmRgXainK+wU1+ASoimz4z420qpC6fbTqUFBOJQ3
	vbozTJPwObBjpAGCy23IjMl+cCtQf5fHrue4GbxWIoF7lnfPWqiMwovLsUQYRZZiYn7p7nVwoj3Pv
	K4sb8Ili1YLeadS+gEgWS/CQTIcWjdoxoEL9IU7L+fXd9KOEOqyVAkF8+Hy630kkOmeWqebeA+Wjh
	XfJtCbzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJmc-000202-2S; Wed, 05 Feb 2020 12:27:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJlq-0000mH-20
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:27:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580905627; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=Yj5wsZyZdrouBY0XL6JYIchV28OgZyZH1skDBxxWH4Y=;
 b=FmElDg3EcpwCZItRsMwCFC6CbfTD3nq0iF6rfaTkDhMaJWWshlE3eKqCtrlOTPlqMkZt0xnD
 e6ZBcM6/N2lYPyvx1lg/3WWhjqIAH8A+MKcAGWKreJUpwJ8V16ZQ+bPEuahDfipo1KQEKtmx
 7qxx2dN3gpIBLkOiuMeIvs9orzA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3ab497.7f86d2750ca8-smtp-out-n02;
 Wed, 05 Feb 2020 12:27:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D5EA1C447A5; Wed,  5 Feb 2020 12:27:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E71F3C433CB;
 Wed,  5 Feb 2020 12:26:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E71F3C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v4 5/6] drivers: firmware: psci: Allow hierarchical topology
 in PC mode
Date: Wed,  5 Feb 2020 17:56:11 +0530
Message-Id: <1580905572-22712-6-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580905572-22712-1-git-send-email-mkshah@codeaurora.org>
References: <1580905572-22712-1-git-send-email-mkshah@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_042707_453807_F09D375D 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ulf Hansson <ulf.hansson@linaro.org>

If the hierarchical CPU topology is used, but the OS initiated mode isn't
supported, we need to rely solely on the regular cpuidle framework to
manage the idle state selection.

Remove current limitation of hierarchical topology to be used in OSI mode
only.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
[applied to new path, updated commit text]
Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 32 +++++++++++++++-----------------
 drivers/cpuidle/cpuidle-psci.c        | 34 ++++++++++++++++------------------
 2 files changed, 31 insertions(+), 35 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 423f03b..fcab330 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -125,11 +125,14 @@ static int __init psci_pd_init(struct device_node *np)
 	 * Parse the domain idle states and let genpd manage the state selection
 	 * for those being compatible with "domain-idle-state".
 	 */
-	ret = psci_pd_parse_states(np, &states, &state_count);
-	if (ret)
-		goto free_name;
 
-	pd->free_states = psci_pd_free_states;
+	if (psci_has_osi_support()) {
+		ret = psci_pd_parse_states(np, &states, &state_count);
+		if (ret)
+			goto free_name;
+		pd->free_states = psci_pd_free_states;
+	}
+
 	pd->name = kbasename(pd->name);
 	pd->power_off = psci_pd_power_off;
 	pd->states = states;
@@ -236,10 +239,6 @@ static int __init psci_idle_init_domains(void)
 	if (!np)
 		return -ENODEV;
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (!psci_has_osi_support())
-		goto out;
-
 	/*
 	 * Parse child nodes for the "#power-domain-cells" property and
 	 * initialize a genpd/genpd-of-provider pair when it's found.
@@ -265,14 +264,16 @@ static int __init psci_idle_init_domains(void)
 		goto remove_pd;
 
 	/* Try to enable OSI mode. */
-	ret = psci_set_osi_mode();
-	if (ret) {
-		pr_warn("failed to enable OSI mode: %d\n", ret);
-		psci_pd_remove_topology(np);
-		goto remove_pd;
+	if (psci_has_osi_support()) {
+		ret = psci_set_osi_mode();
+		if (ret) {
+			pr_warn("failed to enable OSI mode: %d\n", ret);
+			psci_pd_remove_topology(np);
+			goto remove_pd;
+		} else
+			osi_mode_enabled = true;
 	}
 
-	osi_mode_enabled = true;
 	of_node_put(np);
 	pr_info("Initialized CPU PM domain topology\n");
 	return pd_count;
@@ -293,9 +294,6 @@ struct device __init *psci_dt_attach_cpu(int cpu)
 {
 	struct device *dev;
 
-	if (!osi_mode_enabled)
-		return NULL;
-
 	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
 	if (IS_ERR_OR_NULL(dev))
 		return dev;
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54..16d8baa 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -193,24 +193,22 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		goto free_mem;
 	}
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (psci_has_osi_support()) {
-		data->dev = psci_dt_attach_cpu(cpu);
-		if (IS_ERR(data->dev)) {
-			ret = PTR_ERR(data->dev);
-			goto free_mem;
-		}
-
-		/*
-		 * Using the deepest state for the CPU to trigger a potential
-		 * selection of a shared state for the domain, assumes the
-		 * domain states are all deeper states.
-		 */
-		if (data->dev) {
-			drv->states[state_count - 1].enter =
-				psci_enter_domain_idle_state;
-			psci_cpuidle_use_cpuhp = true;
-		}
+	data->dev = psci_dt_attach_cpu(cpu);
+	if (IS_ERR(data->dev)) {
+		ret = PTR_ERR(data->dev);
+		goto free_mem;
+	}
+
+	/*
+	 * Using the deepest state for the CPU to trigger a potential
+	 * selection of a shared state for the domain, assumes the
+	 * domain states are all deeper states.
+	 */
+
+	if (data->dev) {
+		drv->states[state_count - 1].enter =
+			psci_enter_domain_idle_state;
+		psci_cpuidle_use_cpuhp = true;
 	}
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
