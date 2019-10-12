Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8A8D52F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 23:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RAFNdgGWuZNXFCeVxxqb0d96Gqm48+qptZe0ItuGaYk=; b=WjHquhVxo3r7X5
	vcIZ/voFPCCMdQlYWI6vGWmJkVC0ZS6ZZkVJ7VN7UhnX7R0tPHqrGuHw321/FBNa6CzZDfRAG1Qoz
	DOym4CkYTjONH1tzOF2sJX1HbXsQ3WyNcWNKHvP1aTekTYuHdYTxUJD/xrjiYGlsH5PQlHns8gbLG
	ftNhU6ESzuFJeceR5VrwIUmHclvoAOIiXuN9QT4vgSesQL/rpAIz+q2w1fuYdF4JLEt5YhcxGjfwK
	0wzkndLK+Q9gzUK5eJym7bULnsUUxEoQNvz+iOhv+XsufHpIS0mvvTyjGV/Aj2gYXRhP1xBCtvLKp
	KXwEumfuOPAegzJ8PNhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJPFR-0003hK-4z; Sat, 12 Oct 2019 21:48:25 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJPFI-0003gX-7A
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 21:48:19 +0000
Received: from trochilidae.cardiotech.int (unknown [37.17.234.113])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 99D1F5C0D8D;
 Sat, 12 Oct 2019 23:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1570916890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=f/t8Q8PGSqofmfNW09b8VZFKc3Ztm+m+ybxpjgknMqg=;
 b=z96AWkk+HA9+UnfVpjbAhaZKP7yRQublTuv1zeEABptBJw7eKebmKBznU3eh8VyXVT/DMM
 rmA9OOrng6E60IWcW2PniLkJ9Gi/pGwsDvOR5NeBp/XQ8eCHl8CC0Q/f95+lH/EeY8GTgU
 TXQy/Fdz/+JbrwprU6Suq6FX9Lqb4Eo=
From: Stefan Agner <stefan@agner.ch>
To: mark.rutland@arm.com,
	lorenzo.pieralisi@arm.com
Subject: [PATCH] drivers: firmware: psci: use kernel restart handler
 functionality
Date: Sat, 12 Oct 2019 23:47:35 +0200
Message-Id: <20191012214735.1127009-1-stefan@agner.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_144817_202234_338212F0 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan.agner@toradex.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Use the kernels restart handler to register the PSCI system reset
capability. The restart handler use notifier chains along with
priorities. This allows to use restart handlers with higher priority
(in case available) while still supporting PSCI.

Since the ARM handler had priority over the kernels restart handler
before this patch, use a slightly elevated priority of 160 to make
sure PSCI is used before most of the other handlers are called.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 drivers/firmware/psci/psci.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 84f4ff351c62..d8677b54132f 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -82,6 +82,7 @@ static u32 psci_function_id[PSCI_FN_MAX];
 
 static u32 psci_cpu_suspend_feature;
 static bool psci_system_reset2_supported;
+static struct notifier_block psci_restart_handler;
 
 static inline bool psci_has_ext_power_state(void)
 {
@@ -250,7 +251,8 @@ static int get_set_conduit_method(struct device_node *np)
 	return 0;
 }
 
-static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
+static int psci_sys_reset(struct notifier_block *this,
+			    unsigned long reboot_mode, void *cmd)
 {
 	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
 	    psci_system_reset2_supported) {
@@ -263,6 +265,8 @@ static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
 	} else {
 		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
 	}
+
+	return NOTIFY_DONE;
 }
 
 static void psci_sys_poweroff(void)
@@ -411,6 +415,8 @@ static void __init psci_init_smccc(void)
 
 static void __init psci_0_2_set_functions(void)
 {
+	int ret;
+
 	pr_info("Using standard PSCI v0.2 function IDs\n");
 	psci_ops.get_version = psci_get_version;
 
@@ -431,7 +437,14 @@ static void __init psci_0_2_set_functions(void)
 
 	psci_ops.migrate_info_type = psci_migrate_info_type;
 
-	arm_pm_restart = psci_sys_reset;
+	psci_restart_handler.notifier_call = psci_sys_reset;
+	psci_restart_handler.priority = 160;
+
+	ret = register_restart_handler(&psci_restart_handler);
+	if (ret) {
+		pr_err("Cannot register restart handler, %d\n", ret);
+		return;
+	}
 
 	pm_power_off = psci_sys_poweroff;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
