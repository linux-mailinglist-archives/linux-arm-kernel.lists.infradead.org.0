Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A63C11B46F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jf+mMFAB81Vw/5D66N/jkK/q6o0k/BIrB+d479XQVtc=; b=YPxEkUU5WbVYDiki9FeZi1734Q
	zXE4DLBwKIWK1F4vkE1p6wsCF0UGcOIgDFTqpC5WEVREG7aTdo0z+ZGV6axpjJJ4pYKKntx9+FjDX
	bUUfDxIipS2a1UaVv6F+4v1VFtZJwiLpICCCPpWHmfYv+ot/DhmpS0X8BM3XGrAOXe4Omwhgz2KEx
	n1Wp/MyIOlKRJDfv9gN30XdlJ1Yy4mB9+gABMOSc19BVdgpYqD3P4sBqeEnuhzK42UbHzv3x5uImg
	TMErHjwFsJIQhQfqfpDZPu3fEwoJN6Tty1TcZTPiSJQeB5Y/8XJVEZP8m5u5c1NbsuOo+Rez3LK4i
	7z5y6FUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4DJ-0003AE-Dd; Wed, 11 Dec 2019 15:47:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49d-0006w8-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:43:59 +0000
Received: by mail-lj1-x241.google.com with SMTP id e28so24555206ljo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rTyFfehsHZ4NrOw6RaeXcNkMIHnoS8zNHPnwBdHCVW4=;
 b=p5CrlKDt3mkO5z+JaPTIxWFp1zu66so+e8FkAUrFkoA8GpcVCIRnRFbgMKzLoaHzlW
 HCv+6p5dqkThhU/6+gENScBRN2Ij182cE77XbziWSrktZRYLrulaWpBFRO4l1Fr/ITes
 XMrApT04irJm6q/vvKyw0CjHNrtvRz3jxX/ux2yCHAbH4j8a7VSuUN91m7v6KQevqpWh
 5rwME1geedwsSxeTd32eFCIwPYPb4gns9rdDMoY7+L46ViaYCQfjBTlJ8omHwMW+vMl9
 Yuel0R2OWPSUCRoJTIy9gsQF8SUuIS6aAYxo8lNs+lJ8yiQsqFiaDuKhBwv2/9lre3TK
 1qUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rTyFfehsHZ4NrOw6RaeXcNkMIHnoS8zNHPnwBdHCVW4=;
 b=Pa4og/J+5lwEEjhMXdc/MEfcgEvlNAF+0xXMuvRUj77Mq/u9eWFL3BVqyR3V2xgm94
 hVae4Flcbe1XErG2CFRmadWkkzJYhXdG1rXG+69HtCD5XbzybHjlPzk6gaW09GIpvmTg
 hoFj2veqv3ciZdrXQlWnhPZITGHhKUajr2DHEp83rUVMVzk2p9uxj1+0R6AEhpqXcaak
 gFLfzIMnTCgiBLp/PwX9cQkMEiMmp3VE8h4ma2k1VbOhw25tEzlH6wqa6xqB4BzyPKcL
 LkU2fTV6mSReiDBJ3FkA9O0ZDhANn31PFOgXzIQTxG7HDpPXMaEgvGINyO2au7XOoK9A
 +ojA==
X-Gm-Message-State: APjAAAX2/apzK9T72alrHq8Bw2wBLU8Vms3v7Xs3MSyx6Z3aHOODmPcT
 JA5OryW5iBpCQlgPXx1baTJY3A==
X-Google-Smtp-Source: APXvYqyuPt21/xnIK8FG2LgE0sYaNL0lj+qHjE9ysH3DMI2EmfAOl/ZGGEJEhFZhyeNFNpE1jzEoxQ==
X-Received: by 2002:a2e:9a51:: with SMTP id k17mr2389984ljj.206.1576079035828; 
 Wed, 11 Dec 2019 07:43:55 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:55 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 03/14] firmware: psci: Export functions to manage the OSI
 mode
Date: Wed, 11 Dec 2019 16:43:32 +0100
Message-Id: <20191211154343.29765-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074357_728150_89F62BF4 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To allow subsequent changes to implement support for OSI mode through the
cpuidle-psci driver, export the existing psci_has_osi_support(). Export
also a new function, psci_set_osi_mode(), that allows its caller to enable
the OS-initiated CPU-suspend mode in the PSCI FW.

To deal with backwards compatibility for a kernel started through a kexec
call, default to set the CPU-suspend mode to the Platform Coordinated mode
during boot.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v4:
	- None.

---
 drivers/firmware/psci/psci.c | 18 ++++++++++++++++--
 include/linux/psci.h         |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index b3b6c15e7b36..2937d44b5df4 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -97,7 +97,7 @@ static inline bool psci_has_ext_power_state(void)
 				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
 }
 
-static inline bool psci_has_osi_support(void)
+bool psci_has_osi_support(void)
 {
 	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
 }
@@ -162,6 +162,15 @@ static u32 psci_get_version(void)
 	return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
 }
 
+int psci_set_osi_mode(void)
+{
+	int err;
+
+	err = invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			     PSCI_1_0_SUSPEND_MODE_OSI, 0, 0);
+	return psci_to_linux_errno(err);
+}
+
 static int psci_cpu_suspend(u32 state, unsigned long entry_point)
 {
 	int err;
@@ -544,9 +553,14 @@ static int __init psci_1_0_init(struct device_node *np)
 	if (err)
 		return err;
 
-	if (psci_has_osi_support())
+	if (psci_has_osi_support()) {
 		pr_info("OSI mode supported.\n");
 
+		/* Default to PC mode. */
+		invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			       PSCI_1_0_SUSPEND_MODE_PC, 0, 0);
+	}
+
 	return 0;
 }
 
diff --git a/include/linux/psci.h b/include/linux/psci.h
index ebe0a881d13d..a67712b73b6c 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -18,6 +18,8 @@ bool psci_tos_resident_on(int cpu);
 
 int psci_cpu_suspend_enter(u32 state);
 bool psci_power_state_is_valid(u32 state);
+int psci_set_osi_mode(void);
+bool psci_has_osi_support(void);
 
 enum smccc_version {
 	SMCCC_VERSION_1_0,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
