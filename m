Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A9D2837
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I3e7JWrW5OBUUv01hudyiCSpaL9zeFQX7kTug03gDcQ=; b=Gt/p32jHufTc05yul+S22uPjuC
	fGv0tQVSxwhD7KOzwgsVswgUHbbKzOo/ebOPTnj4epJ4tet/4XPdsfrP6QLE2Vmd+MzrqyaavkeUF
	nbsel8Ci/ZILu7MYvYP+BBuhrTky81NFmDJj79M2vnT4gGGRTjaHGUTj+xL0fRWj2DxLakpjJR9sC
	ucR/HlO7EaO+SHDw/jYJbY698/WmfHkYOouKJk1Ebyczi+M5lwSc4W9xXoGv4Xg7u1p/VvvECe52l
	7fm/skT9oynQ1hkgA0Z7uhSmGM+1rfH+TjHLfTTUzNHl/zfvxaIjz1srB41xwxXwZ+chIaYluVESD
	CpjnfhJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWok-0003No-PD; Thu, 10 Oct 2019 11:41:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnj-0002dx-6q
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id 7so5834715ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v88JQU6vGgb8ri6uCDKoMwVq9Ia/h8wuaSmlcufCmYU=;
 b=jt87ZF+5/DHtUlBRJ5BstY8Vh6NbAEk5UF5D0u9HLT6presiea5l2x37EGTavAgCM2
 H6B9YduMYxyPWcZQ4LDD0neKrxzMhr4DDLJH8oBvjt+ks9l3QnWRR5PubXNd4vzUEa3V
 fgBE1oE+WU63PB9MXoMoWyvRweYDa/KA+enceW5fZYXZHR2ZMUhprzxuPtzW7IdBbqZ/
 kGJTTsnM0FhDhek77frZusCt3Srayy/AEUjcMSLtjZYglG2TVmus+yHd4KOQekmMb080
 WIB28o60K0vFD9ulrOuL9R6XqTAkOFwHwsw7PULu7sOOm3lOtCBUtvXHBX7li4uUnl0I
 C04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v88JQU6vGgb8ri6uCDKoMwVq9Ia/h8wuaSmlcufCmYU=;
 b=Kfufbd01U0W21mTrZPnpf70IHPh7xIMk/2wT21rxbLwX0FV6a69PGR9uaRZBuhNfzD
 2YzDbO+5bmLxIrH1l90taHYz3tMv75d0LbRRsP2zSvRG8sIuMgwHXekUvt1T5YlnWXNJ
 KoKPN5YW/lKCz359GNnnsA2sWg9KvSUjEIfNzsMDvavakKw/eOnslcMEYKHCTOn3Rx6V
 2DgxCReKU9tmM6cQe5gov3HqWuuZ5Z5D6IVx1XUpkmIYvPtzCc8RhvM8f9h2b+YOjQgS
 2cqWCyGTBjewMemmC5//bOvpDza5leBoXQdP8HJjWta/ggB6a7daj/9lERT7SMDLoCmu
 J8rg==
X-Gm-Message-State: APjAAAXw362COE2n7X1Xr9pjNgpQ8hFmgXKGh01Tf79aET8JnmjfTgTr
 LnJdny72cz4v7EcdB8mW1IQQfw==
X-Google-Smtp-Source: APXvYqyCKks0JZZNViLz2Kmfcp+HjHLDr3UWaZTScndbtx975mvyfpGsTCg1ZMWYx/C2hWBuMccseA==
X-Received: by 2002:a2e:9b8a:: with SMTP id z10mr6104674lji.80.1570707609559; 
 Thu, 10 Oct 2019 04:40:09 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:08 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 03/13] firmware: psci: Export functions to manage the OSI mode
Date: Thu, 10 Oct 2019 13:39:27 +0200
Message-Id: <20191010113937.15962-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044011_261972_8F306010 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

To allow subsequent changes to implement support for OSI mode through the
cpuidle-psci driver, export the existing psci_has_osi_support(). Export
also a new function, psci_set_osi_mode(), that allows its caller to enable
the OS-initiated CPU-suspend mode in the PSCI FW.

To deal with backwards compatibility for a kernel started through a kexec
call, default to set the CPU-suspend mode to the Platform Coordinated mode
during boot.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/firmware/psci/psci.c | 18 ++++++++++++++++--
 include/linux/psci.h         |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 84f4ff351c62..76f3a991d4d7 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -89,7 +89,7 @@ static inline bool psci_has_ext_power_state(void)
 				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
 }
 
-static inline bool psci_has_osi_support(void)
+bool psci_has_osi_support(void)
 {
 	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
 }
@@ -154,6 +154,15 @@ static u32 psci_get_version(void)
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
@@ -536,9 +545,14 @@ static int __init psci_1_0_init(struct device_node *np)
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
index e2bacc6fd2f2..f76b45341adf 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -17,6 +17,8 @@ bool psci_tos_resident_on(int cpu);
 
 int psci_cpu_suspend_enter(u32 state);
 bool psci_power_state_is_valid(u32 state);
+int psci_set_osi_mode(void);
+bool psci_has_osi_support(void);
 
 enum psci_conduit {
 	PSCI_CONDUIT_NONE,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
