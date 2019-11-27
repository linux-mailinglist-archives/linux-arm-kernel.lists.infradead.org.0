Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7796B10ADBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fkFwNnLZsgmCSXMLQh3DbGZwpkw170L393z2+at2Yag=; b=iwePtWjXadOZs8FJm8j/7w8P8N
	RHQ3wAovWv68dEwAq6GmDQg/KmMLEyn2niKanl98uLypymm287CoyIY0y/e2aGx/48n9h1kAquP4e
	mQsiKBiVmI4FbDXNY8qVKHXUPV5J19roeGhgUVVZHBvBdXCgcFmiYCf7PD33o/LhWENQGx7Bvu58F
	JWhsO1mM++QF+Id440vsVA5DmwZTqgXHrcDjVUkoSCptVayBpAPbaaCQWRdnvM53OEdSArVxzMNey
	vEpppLYK51HLfAKmqAVx9j8rMYKTUqprYx8AtZDss/8lDDu1Fmw3W8TRIuSvhN9TewTRNi4Ik5+JU
	hIp3SXEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuax-0007Xu-L2; Wed, 27 Nov 2019 10:30:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZX-0005ZL-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so16692472lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HTpoNIOk6QVHLkL5hD/y3Oh3mM1LWBHn64GrXkiktTA=;
 b=AyUxtvbcofFh17U604la4Y1G39mBOWKGJg5dHe2xNMOmUM+72q8KFL+MRj9MXbX1cg
 6TGADlEWGQG3IeUrcLndrG52Pb3xsYv/O4+js502Oo4yMQF+CBIfC6qa+QnnT5sGyBP2
 TBoTGuANUAcOEiHVUgGaySfBTjOTRiGHqALcwOsEdIhI2aK06Qcf6q+7cHDOX/EEt6m9
 408m8uS7ul/++ymsVs+h1d0qHZ4rTaqbZH/E6Jsnx4XhbHYMMq9nKxz5tLDMlr6qXfUf
 JfF4LZpBdnWLuZ9iIxL9MNTFOhBS4AwUO8u59tKLkSbAMxjg+Ymn4a6pqkfGJM72On3K
 FllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HTpoNIOk6QVHLkL5hD/y3Oh3mM1LWBHn64GrXkiktTA=;
 b=glOX5Px5NELacAg8LLyoGUhOlRdWGJNYf5QN1F7oFFi0rkXmMigbY9N4Y9vQmimir3
 FxLFa0/4PHJwiB+FKi5/IEh60KVyMs7Jkyv+LTeEyJL0ToKxgWFVDJqn38AU2eIn1eeB
 LNBOl+FSfdbP+hS6bLlKZ8qAEthng1fU9M6FYDBqZzl1EUGv+RIfaarMSbhwaXh9xTxA
 F44QY/IU7B0AqvzPZOXV4+k4UYaszhIwX8rlAsto15R93r/xwfdEJCA4Q6dvnInqKmvK
 t6J8bZBBa7ZkHIUIV69lBStLPuOjvrOS+xAfjGbb8zkIDM1vT12NX0VhV9hM6+Edv7BD
 runw==
X-Gm-Message-State: APjAAAW2DvAkbTQm1FKmb586m/c25gFwthsX3TXJPa9XiNlajhtK/lk9
 TNzV+1wXfZHmwwtYnSIWBF5KnA==
X-Google-Smtp-Source: APXvYqwFJjqYM7aDnhXGNf9deKSkKCg+5HFB9vXDa+I/5Qtw5VKdR0KMezOx2PnWjK5Zoh8cIB0ztg==
X-Received: by 2002:ac2:55a3:: with SMTP id y3mr17405016lfg.108.1574850562474; 
 Wed, 27 Nov 2019 02:29:22 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:21 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 03/13] firmware: psci: Export functions to manage the OSI
 mode
Date: Wed, 27 Nov 2019 11:29:04 +0100
Message-Id: <20191127102914.18729-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022923_943063_59A5DA56 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes in v3:
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
