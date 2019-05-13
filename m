Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820CD1BDD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HP4rtZbLBOWYGrGq65Mm0MppI4Bsf9USGmOy3i1rGlI=; b=DvDYFcd0TdZ+b7YMWVoYHynyk5
	JcEebT1RY7BLmTfm7r+ZVHhwu3OLGzFWlHatgZZv4pCYGbYG1yNfxQOpJVbc8v8752RwxEyahNYQE
	4hd5/0zTv5zGZF4DPN2bj0dLXVGY3hIW6i8lg9Wzc9oVaj9OWPdxkUKcOLmg4LCTCFV31lc+OBxOZ
	s7+oTFevU5DjUg/zm9WZbwBxIigwfyBVqCmbx7Zxmh+NMiuy803OdljmOLhU5vIuAeKZGjkfOMOlJ
	EB7LMxoZ2DbyS14VX0rXcyUkG9TI3Qx2Mn1Wk+W+5Cpi4jJ7Z/WrEd4Ae/DwxHdHVob/TYM7EsJ0e
	Pdv/2QtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGa3-0005Dt-H0; Mon, 13 May 2019 19:25:47 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXq-0001GD-3R
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so9506389ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x3HZaV7vcbo/XhlaM1d9i+kdcoQHiHqHOKB8XCuJnJg=;
 b=YrDb+TI/qptrO7/5RXe8SeC+HyCzsJJl8ml3Jr2kE2brTGKdFR7/IJ+N4lXVtKfgGo
 NAHroyR3jEv97wAFOv1N3DRBDosPKmtXcn1hEpIBtK5wsOrvMlCDRGJxZwA8Y/CGP+8R
 ab2aAEL3gSBOsIHFKZCpimEz0v0pvvsft17f2AvJ1ojeV6J8wLK4ixd+AfhWKPZ/c7ZC
 sQLCc6Vgosbnw6yG7ZCHQQ1u7R7deMgYPyyYMCopM3U1unF1AFl5Ap4t5OT1xuDe8t5f
 uoNBPb8pfj6ZvLWRNfIZPJf9225Y1ujm2szcS0/1CCTN+KdvBfR2+owHypKzCboaNJCY
 oIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x3HZaV7vcbo/XhlaM1d9i+kdcoQHiHqHOKB8XCuJnJg=;
 b=PbdEqTrZXMIImQou17a+7JFj95BOH+ikAzgYLW0TeXJua/GIJSIVhVFV0LtMeJqx8v
 DCqroZiTW534cwFna3Qg4AvSGQdzbzDQvTKPL52aEBJRqIYpst/RsbZ7Vfck2CHx83UA
 fm7FjpLtnOZSHmbH5zI/UBKkxJUttEE0uwACy2AAXUrYetlfLETOMQ1DUTiWhAJ8I2bP
 Dl+3aiYhmnR2XciPtr7kx/SPGuAaalDQCYeRS+W0pbXbI9zp+gD2IxTi9okDKRMFcC2f
 grWk1fYTrIpNsWRoWWWzNvEYWOngZ+A6LmK7unin3wrndTAc7xg+KFE3R3oIG1oOK2Pe
 f1AQ==
X-Gm-Message-State: APjAAAVbVgrf7tfKF+f/WB9B0erBs+0rQyJajYUILPPK96zpENwudApG
 ZmSFSSbQgVQC1Gs5ua8Ed5Hdmg==
X-Google-Smtp-Source: APXvYqxhImmrN+c//ITxcw8U+57BeFavH+R85RVOLDvIyx6W8pcBzSGLx1AMwoyfzWMRSAkXmhUcdQ==
X-Received: by 2002:a2e:206:: with SMTP id 6mr13170535ljc.59.1557775408048;
 Mon, 13 May 2019 12:23:28 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:27 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/18] drivers: firmware: psci: Add a helper to attach a CPU
 to its PM domain
Date: Mon, 13 May 2019 21:22:54 +0200
Message-Id: <20190513192300.653-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122330_575416_B56A542E 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new PSCI DT helper function, psci_dt_attach_cpu(), which takes
a CPU number as an in-parameter and tries to attach the CPU's struct device
to its corresponding PM domain. Let's use dev_pm_domain_attach_by_name(),
as to be able to specify "psci" as the required "power-domain-names".

Additionally, let the helper prepare the CPU to be power managed via
runtime PM.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Take into account whether the CPU is online/offline.
	- Convert from dev_pm_domain_attach() into using the more future proof
	  dev_pm_domain_attach_by_name().

---
 drivers/firmware/psci/psci.h           |  3 +++
 drivers/firmware/psci/psci_pm_domain.c | 17 +++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
index c36e0e6649e9..b4254405b8ef 100644
--- a/drivers/firmware/psci/psci.h
+++ b/drivers/firmware/psci/psci.h
@@ -4,6 +4,7 @@
 #define __PSCI_H
 
 struct cpuidle_driver;
+struct device;
 struct device_node;
 
 int psci_set_osi_mode(void);
@@ -16,10 +17,12 @@ int psci_dt_parse_state_node(struct device_node *np, u32 *state);
 int psci_dt_init_pm_domains(struct device_node *np);
 int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
 		struct device_node *cpu_node, u32 *psci_states);
+struct device *psci_dt_attach_cpu(int cpu);
 #else
 static inline int psci_dt_init_pm_domains(struct device_node *np) { return 0; }
 static inline int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
 		struct device_node *cpu_node, u32 *psci_states) { return 0; }
+static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
 #endif
 #endif
 
diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
index 3aa645dba81b..1cbe745ee001 100644
--- a/drivers/firmware/psci/psci_pm_domain.c
+++ b/drivers/firmware/psci/psci_pm_domain.c
@@ -12,8 +12,10 @@
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 #include <linux/string.h>
+#include <linux/cpu.h>
 #include <linux/cpuidle.h>
 #include <linux/cpu_pm.h>
 
@@ -383,4 +385,19 @@ int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
 
 	return 0;
 }
+
+struct device *psci_dt_attach_cpu(int cpu)
+{
+	struct device *dev, *cpu_dev = get_cpu_device(cpu);
+
+	dev = dev_pm_domain_attach_by_name(cpu_dev, "psci");
+	if (IS_ERR_OR_NULL(dev))
+		return dev;
+
+	pm_runtime_irq_safe(dev);
+	if (cpu_online(cpu))
+		pm_runtime_get_sync(dev);
+
+	return dev;
+}
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
