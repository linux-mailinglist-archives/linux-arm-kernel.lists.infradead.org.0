Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ECBD284A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HN5fVYUFap/W4H3AAnd/ur4AGmuUHSUoE2Og9rWE040=; b=kJE7mM3NNSEY/hpcjSQ9I3RnWp
	6XEGhzOQhtiMCArS5ismoMDzcmOs342cEjtrSRnmEzy7EhpewbGppzJGPrqmT8N/VWxT0y6mjqRus
	5JTsBRcvJKyo/eZqvpB+Y9Qme8ghlkmevFxAgKfutNN7MQNLiDy+6k3V5Jgo6PFpgFVchZsHqmPkI
	Pi+1c+5OZVK3BHQBWqRd1GV8J8LZ0epBoW/qOQN4Rvn0jOeNwqdDwuSknzVt6OU3dCm8pYQdAmXmk
	u4etFXHZGCGYAKFVUS0R1jIep5BCsogKAGTsSKE97WD/oFIdbGje7Syl8Mt6CH8kjiJDDtWeWlyNU
	ZIcYVpcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWq6-0004qp-9m; Thu, 10 Oct 2019 11:42:38 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnu-0002sW-Vd
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:26 +0000
Received: by mail-lf1-x143.google.com with SMTP id y127so4141723lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9/8dxTtZBh9YfBGYNaIy85l3qLceeSKusYT56QpkuBo=;
 b=yCBQoiMdVpg14N7nhofiE56fggpEHFr0HVoi4xdC8JzFHPbNJMS/F2y1VVTJBKZuTC
 aNn5dzzSU5wNfqOvEqKvJgULqbetSKXMz6OHhmqNm8eKPLJ9uhwrVNgwi3vZf8PeSsQD
 4NAC2kJpAIw0djJbv+iRnckigLk6Gs+BL0XLj8AYMISeX4o2bCaJYTwmQ06ERfvFqxaj
 fpk1JLapasYW+8jrvPic5xbqbmZNFrwXSCRsp7aXuFdcocTPj/IHe+KDL5Wg8dtiGUzC
 BZgFLnw7x4uFHX7nt6HwREijg76i/aQswB1SM3165mfcQ95JTCj9nWDZCPGlYVEywnzd
 Fkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9/8dxTtZBh9YfBGYNaIy85l3qLceeSKusYT56QpkuBo=;
 b=fGCpwGJqpIA3htPVMRP/ueQjP9kvwj+SZXEEHrKFQOTskLeyAX7G4YKConXDsLs5I3
 mYqALfGVCU1nPZj4ye5OEYSeV/tgsMTqUCjg1rhAwFhCSrKgIuzHIDkWSTxrP0duf+Uw
 iFjk1ZJ2hwbFQ9gewXBgNq7ohcxdFIztefoRecjBnN4Fg7kI1fhCEh7sxQZtaRNvEu/5
 zBbcAev9Gf6GajKw5heXUHRJy7lB0TadbAt1sEX39mDVZB/8R0sny1Mc/KgQFM/ylsBq
 G56B8ertvyk884NrFfg83jNHq0MSnn3ZURck89Pm7ZudxoFLWjZO21XmjWQ+V+bqAMqb
 Jzaw==
X-Gm-Message-State: APjAAAXTKGmqeSktYjNQjBlC58HC0USA+Q4536IOIQio7L4NouCkyfPL
 F+ygUE3Jsehee5WQeP+JcPVzrA==
X-Google-Smtp-Source: APXvYqwBURUiaefQaEsTZzx0SIkFbzLdJWKemCCeeCEH1PQrpCLnZQiGZWhUoIwrmftKy94I18IgPw==
X-Received: by 2002:ac2:47f1:: with SMTP id b17mr5257943lfp.31.1570707621209; 
 Thu, 10 Oct 2019 04:40:21 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:20 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its PM
 domain
Date: Thu, 10 Oct 2019 13:39:34 +0200
Message-Id: <20191010113937.15962-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044023_077901_C82E38A9 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
CPU number as an in-parameter and tries to attach the CPU's struct device
to its corresponding PM domain.

Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
specify "psci" as the "name" of the PM domain to attach to. Additionally,
let's also prepare the attached device to be power managed via runtime PM.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 3f5143ccc3e0..7429fd7626a1 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -9,9 +9,11 @@
 
 #define pr_fmt(fmt) "CPUidle PSCI: " fmt
 
+#include <linux/cpu.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
 #include <linux/psci.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
 	return ret;
 }
 subsys_initcall(psci_idle_init_domains);
+
+struct device *psci_dt_attach_cpu(int cpu)
+{
+	struct device *dev;
+
+	/* Currently limit the hierarchical topology to be used in OSI mode. */
+	if (!psci_has_osi_support())
+		return NULL;
+
+	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
+	if (IS_ERR_OR_NULL(dev))
+		return dev;
+
+	pm_runtime_irq_safe(dev);
+	if (cpu_online(cpu))
+		pm_runtime_get_sync(dev);
+
+	return dev;
+}
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
index e593de1784c3..d2e55cad9ac6 100644
--- a/drivers/cpuidle/cpuidle-psci.h
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -8,4 +8,10 @@ struct device_node;
 void psci_set_domain_state(u32 state);
 int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
 
+#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
+struct device *psci_dt_attach_cpu(int cpu);
+#else
+static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
+#endif
+
 #endif /* __CPUIDLE_PSCI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
