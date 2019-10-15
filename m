Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52711D7934
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRMLRkAUiT7a/EPpRuNO5h1eiXjeZ2yUJwG2U/KT6P8=; b=PgfzXb9qOIP4fG
	UIRFOK8TOM7dMe+nvZD/5wVYVgcCWciTG/Bk+LG+cc1udlfkknqD64L5V79oes+3/PhLpWxR/6q6r
	66ss8WUbqPAFIf0HGZbnfrRv5dJiXiTj2KkWGRGhHPRjP3LWbO5NfTz9D/pCm7ExlEdGV38vSVIqJ
	0Y5rlgQnJ7fL1zAfk2s/qpPCqA1OXNByOEpRThLPVrjPRa4Y7vnyHDmN4DflMSeWwviRBaXP2D2ba
	1zG8sciCzawTXEZEhLrQMC8b+Sz8ewhjnkIarNFyPLLe4QtgtJRg9hPRCVy0VqbBQ2oz3ibY7vr/E
	N1PGe6CgGORvitmRzEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOBx-0002nX-Q0; Tue, 15 Oct 2019 14:52:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOB6-0002C6-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:52:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id o18so24194183wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zLfyJeA9wa/YShlK3MTXpdAT71OVQlJTB0HHADMFohY=;
 b=jJcLAGgH3KuOU3eX27h1xp0fXk+FeZtURkHP/vua0EHtKL9+eYSnWolQZeqH7OkkHO
 d3bdzGyReUjNjy8cA66+kS5qLgIK1m4Wj374o0S6jdVR8ToTUbKv2oukynUtiUcmRvpc
 yjsLOGm1sciv3p2FzABejkzNm8JhpEfhm8JmqGGE7CjDtvXwfnpb8rHJhU/OJJKd6Q9g
 n/MCGzKLmRCZQ7nDEVMBJIlWjxmJoko2/SD8wQSD0KWuRKeFHsiktCMlEI5W0o8jAwgs
 EfqvcN1tGtFxsaGX3XRsf7LhOEstrVD3IKcEq9R+IrtUQW2ZgvPX0XPiuk8G/gvD6sem
 We6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zLfyJeA9wa/YShlK3MTXpdAT71OVQlJTB0HHADMFohY=;
 b=k7MCdzfaeYwzOR3YljkO9BuvdLE1dB1B3qeeGkCcSrgd3FNf+KwS/L2sXyg+F9yzcl
 X+N/s72AUEdOQirTSQAubp4SaSNpRBhYNllN2c0bdfE4lfZE7s2yKkmhrQeTsxTadGZ5
 110hsJbALt/VTksCUb0sQBPrF+5z8FfNst8mCEyUi4a+shS1joWIR7P4s7qG20d7l+Fg
 V3wtIoO2Azvcobbuzg7twDh7/tnZpZde6sehS/MINnXMVSX28pEV2r0ef5mtnVtbwosC
 1TVPHzds2jh8DsK/qTvUSnnl1DK50T0ttiIsHn0Ne3S9V6iiucTqF7fip+OYGDXRPwvz
 BD3g==
X-Gm-Message-State: APjAAAVVSZPTd/DiZdsmEL9WtQRt+oQfrMecvIjSKpF43xLbaO2TpglR
 ZWIpiGuFbQCDrqwVIT8EVtA=
X-Google-Smtp-Source: APXvYqyK0W3enqiUQRAcQi/YcLuvRxhG58xq5BuRJanN1ASn+Veb4bXPmLK+LGenLNx+s652oa4pHw==
X-Received: by 2002:a5d:46cb:: with SMTP id g11mr17438319wrs.346.1571151118976; 
 Tue, 15 Oct 2019 07:51:58 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id o4sm52925154wre.91.2019.10.15.07.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:51:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 3/6] drivers: firmware: psci: Register with kernel restart
 handler
Date: Tue, 15 Oct 2019 16:51:44 +0200
Message-Id: <20191015145147.1106247-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075200_994687_8D2E361E 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guenter Roeck <linux@roeck-us.net>

Register with kernel restart handler instead of setting arm_pm_restart
directly. This enables support for replacing the PSCI restart handler
with a different handler if necessary for a specific board.

Select a priority of 129 to indicate a higher than default priority, but
keep it as low as possible since PSCI reset is known to fail on some
boards.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/firmware/psci/psci.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 84f4ff351c62..a41c6ba043a2 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -250,7 +250,8 @@ static int get_set_conduit_method(struct device_node *np)
 	return 0;
 }
 
-static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
+static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
+			  void *data)
 {
 	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
 	    psci_system_reset2_supported) {
@@ -263,8 +264,15 @@ static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
 	} else {
 		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
 	}
+
+	return NOTIFY_DONE;
 }
 
+static struct notifier_block psci_sys_reset_nb = {
+	.notifier_call = psci_sys_reset,
+	.priority = 129,
+};
+
 static void psci_sys_poweroff(void)
 {
 	invoke_psci_fn(PSCI_0_2_FN_SYSTEM_OFF, 0, 0, 0);
@@ -431,7 +439,7 @@ static void __init psci_0_2_set_functions(void)
 
 	psci_ops.migrate_info_type = psci_migrate_info_type;
 
-	arm_pm_restart = psci_sys_reset;
+	register_restart_handler(&psci_sys_reset_nb);
 
 	pm_power_off = psci_sys_poweroff;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
