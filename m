Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A33E1F9BE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ip8dG1mv/L8BnL6NKhuZjb0p8KVlnQdnTTDbl8ylp5U=; b=nn8MVIVEq09wwr
	bvaIriRSVSOdsaW+6U8tNbLPCyKxTo6zXEhFJZAgj866b/ra364IWmIun2DvkX+soBdWcr7PXCIEM
	wtWTCVaTFQMJc5V42+gQFlofw4sluY3y/ONx6y4CC279N7qhtm+nUimFfdNBNjvRbGAkJtUwNcyNE
	MuZLdByLz1c/2859PJtCLkZ725OO6KzVbC+Q47WHGi43udH+q49+8YbEGKgfPqXdSjTi30K8rs7Bq
	+X1PYa/MA/cGBuD/agxbA7QzkdXl8LLX3pEi5Q/3ujynsssNd+SmB+AISNz1wbDHmNQU/BwTuvncm
	crOHgKmNh6OiYuRggv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqvw-0005jz-Oh; Mon, 15 Jun 2020 15:22:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqv4-00056e-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id y11so19695773ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1DzsoTjhcIMb9+A4N/cXj76UygN5PXLTTjiX9hXk5EQ=;
 b=R0/G6JK86gTEe2vWg8LbA/u3P1xlSlDzO2cBwJ+jyc0Eyl/SwAQQeoz0nmHzEM9rYG
 a8C5hk3FatI1oDaBKtXmf3+5kDyy62EmcpnoKxRHDDReh/iU/lkb0M3PLXDf8aINzQh4
 QI1dTzd06nIDvJMSyEZdHKFqHbdjdupZB6AUPdAPLN5I0c3AP6Os0XceOiYbeQCb3ilZ
 y51fAxDJmGo9fXYkYBbpYfTFG7x2KSFGUIUHwflaE6Geg2EOtDrjONRn4up1dxpUweV4
 NCX0O91K4uoulbUiz6v+9NZzVzAsyYPHg+B170chZGL7TCwEPmyZFsymoEGalxo25AbC
 MwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1DzsoTjhcIMb9+A4N/cXj76UygN5PXLTTjiX9hXk5EQ=;
 b=GYCTDo5qgdTcq8GjVDgxxLh09IOCT++FK8uqDaoGZ6tyHYwbXXyqcXtmpNzEkLBWcR
 Dq4ap2HQxtFPj3VGj+tC/cbPKyoNizzRY47kGfEwm5GVLJ3Ot7Qyn3VEPHmwdjb6LqQZ
 XIkpon7ADla2LvMIIM9vMQhcWUNqKDbupF3fqAcRPDss+Em5UjQ9EzaRLDVQemsR0Txq
 XFXDfrRNOTF9Ll4Y1Y8SDVHJRXn7Ptb7/g1mHaYJeHYNxhwBwGRySR/KvMOa4XRLheNp
 I0ZDeKEPCsUkjbrycKGJZ8M2DGZUc0nRq2ZuxU4+x8hBeR0Bp2AgG4fkwrTtv6pQisLV
 QqSg==
X-Gm-Message-State: AOAM5324qemw8i4x+sI4ySmB1765XCewCC0mE9X5PQ5K6eKImmYJuuao
 rWGj5jwOZ8x3HjSeJn2Nb0vERA==
X-Google-Smtp-Source: ABdhPJxUiGsMJiGa6NWQ1gHqTK4kiAuFXfOMrnslZR159WBYtn3a8+/eBsanXQlkThSgss57C1FYNQ==
X-Received: by 2002:a2e:7016:: with SMTP id l22mr14031408ljc.284.1592234464325; 
 Mon, 15 Jun 2020 08:21:04 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.21.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:21:03 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 3/5] cpuidle: psci: Split into two separate build objects
Date: Mon, 15 Jun 2020 17:20:52 +0200
Message-Id: <20200615152054.6819-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615152054.6819-1-ulf.hansson@linaro.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082106_531965_32FA40D4 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The combined build object for the PSCI cpuidle driver and the PSCI PM
domain, is a bit messy. Therefore let's split it up by adding a new Kconfig
ARM_PSCI_CPUIDLE_DOMAIN and convert into two separate objects.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/Kconfig.arm    | 10 ++++++++++
 drivers/cpuidle/Makefile       |  5 ++---
 drivers/cpuidle/cpuidle-psci.h |  2 +-
 3 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
index 51a7e89085c0..0844fadc4be8 100644
--- a/drivers/cpuidle/Kconfig.arm
+++ b/drivers/cpuidle/Kconfig.arm
@@ -23,6 +23,16 @@ config ARM_PSCI_CPUIDLE
 	  It provides an idle driver that is capable of detecting and
 	  managing idle states through the PSCI firmware interface.
 
+config ARM_PSCI_CPUIDLE_DOMAIN
+	bool "PSCI CPU idle Domain"
+	depends on ARM_PSCI_CPUIDLE
+	depends on PM_GENERIC_DOMAINS_OF
+	default y
+	help
+	  Select this to enable the PSCI based CPUidle driver to use PM domains,
+	  which is needed to support the hierarchical DT based layout of the
+	  idle states.
+
 config ARM_BIG_LITTLE_CPUIDLE
 	bool "Support for ARM big.LITTLE processors"
 	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS || COMPILE_TEST
diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
index f07800cbb43f..26bbc5e74123 100644
--- a/drivers/cpuidle/Makefile
+++ b/drivers/cpuidle/Makefile
@@ -21,9 +21,8 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
 obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
 obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
 obj-$(CONFIG_ARM_CPUIDLE)		+= cpuidle-arm.o
-obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle_psci.o
-cpuidle_psci-y				:= cpuidle-psci.o
-cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o
+obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle-psci.o
+obj-$(CONFIG_ARM_PSCI_CPUIDLE_DOMAIN)	+= cpuidle-psci-domain.o
 obj-$(CONFIG_ARM_TEGRA_CPUIDLE)		+= cpuidle-tegra.o
 obj-$(CONFIG_ARM_QCOM_SPM_CPUIDLE)	+= cpuidle-qcom-spm.o
 
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
index 0690d66df829..d8e925e84c27 100644
--- a/drivers/cpuidle/cpuidle-psci.h
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -9,7 +9,7 @@ struct device_node;
 void psci_set_domain_state(u32 state);
 int psci_dt_parse_state_node(struct device_node *np, u32 *state);
 
-#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
+#ifdef CONFIG_ARM_PSCI_CPUIDLE_DOMAIN
 struct device *psci_dt_attach_cpu(int cpu);
 void psci_dt_detach_cpu(struct device *dev);
 #else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
