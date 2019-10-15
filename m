Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B752D840A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EZlbidNW4PyayT2EmnrA6zRGbxe/F7f5nHKx1coriAE=; b=Olzv8fhpY59RXlKRRtRf+ZbYLJ
	uzpq1Ax9rUSQcExkp1ZYK8eBOG7dA2+yTC/sFuqKUlcj6jxcxby/J8Sy7KCo450EcsWEykLMoLx+V
	EEus1OaHbpVyTGScqfTMkPqkDN18LzJysrXMxRQrBh9M775WKgHf3oHoCLtfOu06J141Eb7/CEOdf
	BeNIo9CczB7SthpXDlmpQ1fUZXU4GcyMH2f+FN4wzz1/hMg/dTyGYwi+cQmjF3sw+EiRJ4iF6IL+Y
	JRpsc3oO41IkBRaCXnbm5pKrIJ60zofZkWcXtQK7DctRpQJE/32JCS4xAkYYBXfsLGi6orrn6Eosj
	4HteGmtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVca-00061f-Re; Tue, 15 Oct 2019 22:48:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVau-0004gE-LL
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:47:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id t3so13019139pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MqCNoFXBnDQS65g3QEqNb06DM9l3Y39pluZuZL8mhfQ=;
 b=JzRUUJ0N7j75JfIwIlSihcUiHylr54bI1uG5EWH0+1obdUFxbvz/3Gcp0Mksm3QbSD
 DSqVZw4UVHxDaQO24T8/j09J3QdOIRgtDqEJFmTEVROpqXxxapfyhmLfN7QY4nk7MdEn
 ufhPEsGN1tPujh+8NcN+TtgLs+5SM7woNqW80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MqCNoFXBnDQS65g3QEqNb06DM9l3Y39pluZuZL8mhfQ=;
 b=cyHU5z4AiiCQMsWRumBoZi9AcV/ZJS9fxX56IQpSrH0j1Ng2Q3RcNkI0BATQi+nw6T
 BZX+GwYz10D2OXpCYeSyMFoh7tZR+DUh1B6QValeQjcPlrhfn6p7VbiD+Gfao+xxWJWQ
 t6+95PknrxPXH1i9rGh32Z1xp3NI0Q8KZFka+u7fUdTZcociDTbuZvC7+t6WTtyc2Wg0
 bqjltdC3OJ7NJQqoJQqeBVqO6zwILpqd9euJMPsneKA0wfRTqqxxCRH+IYjjIBVoDTQA
 i312MI+pq7PLRPcuBXKRxim9/6ld3KAPSSDp2XPofmTGRQDGw0tOAIOSQw5wdIP9FD1W
 B0yQ==
X-Gm-Message-State: APjAAAXc/eqpBiczbRaV2wVhg3wBS8+sAgW42lBF5wondDx7qbpxhYkl
 HsDFirw6PZSK2N+/Pr4N5ySTgg==
X-Google-Smtp-Source: APXvYqzi7hgCzLARhsxWspbuNKNQZPbT03PPel95bsqKxHHQyI6qpvtcPvYbcr1fQZy38ofNrCeknA==
X-Received: by 2002:a62:5ac3:: with SMTP id o186mr41145786pfb.20.1571179627935; 
 Tue, 15 Oct 2019 15:47:07 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.47.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:47:07 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 8/8] memory: brcmstb: dpfe: Fixup API version/commands for 7211
Date: Tue, 15 Oct 2019 15:45:13 -0700
Message-Id: <20191015224513.16969-9-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154708_734799_B77AB8EA 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Markus Mayer <mmayer@broadcom.com>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

7211 uses a newer version of API v2 which is half way between what was
defined as API v3 and what used to be called API v2 but was used with
DPFE firmwares with major versions 1.x.x.x. Starting with **the new**
API v2, we are no longer getting loadable firmware images, so the
capability to load it is removed (like v3).

To avoid spreading more confusion, map 7268/7271/7278 to the old DPFE
API version 2, 7211 to the new API v2 and introduce the specific
commands for that, and leave newer versions to map to API v3.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 44 ++++++++++++++++++++++++++++-------
 1 file changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 7c6e85ad25a7..82b415be18d1 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -231,9 +231,13 @@ static struct attribute *dpfe_v3_attrs[] = {
 };
 ATTRIBUTE_GROUPS(dpfe_v3);
 
-/* API v2 firmware commands */
-static const struct dpfe_api dpfe_api_v2 = {
-	.version = 2,
+/*
+ * Old API v2 firmware commands, as defined in the rev 0.61 specification, we
+ * use a version set to 1 to denote that it is not compatible with the new API
+ * v2 and onwards.
+ */
+static const struct dpfe_api dpfe_api_old_v2 = {
+	.version = 1,
 	.fw_name = "dpfe.bin",
 	.sysfs_attrs = dpfe_v2_groups,
 	.command = {
@@ -258,6 +262,30 @@ static const struct dpfe_api dpfe_api_v2 = {
 	}
 };
 
+/*
+ * API v2 firmware commands, as defined in the rev 0.8 specification, named new
+ * v2 here
+ */
+static const struct dpfe_api dpfe_api_new_v2 = {
+	.version = 2,
+	.fw_name = NULL, /* We expect the firmware to have been downloaded! */
+	.sysfs_attrs = dpfe_v2_groups,
+	.command = {
+		[DPFE_CMD_GET_INFO] = {
+			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
+			[MSG_COMMAND] = 0x101,
+		},
+		[DPFE_CMD_GET_REFRESH] = {
+			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
+			[MSG_COMMAND] = 0x201,
+		},
+		[DPFE_CMD_GET_VENDOR] = {
+			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
+			[MSG_COMMAND] = 0x202,
+		},
+	}
+};
+
 /* API v3 firmware commands */
 static const struct dpfe_api dpfe_api_v3 = {
 	.version = 3,
@@ -390,7 +418,7 @@ static void __finalize_command(struct brcmstb_dpfe_priv *priv)
 	 * It depends on the API version which MBOX register we have to write to
 	 * to signal we are done.
 	 */
-	release_mbox = (priv->dpfe_api->version < 3)
+	release_mbox = (priv->dpfe_api->version < 2)
 			? REG_TO_HOST_MBOX : REG_TO_DCPU_MBOX;
 	writel_relaxed(0, priv->regs + release_mbox);
 }
@@ -886,10 +914,10 @@ static int brcmstb_dpfe_remove(struct platform_device *pdev)
 
 static const struct of_device_id brcmstb_dpfe_of_match[] = {
 	/* Use legacy API v2 for a select number of chips */
-	{ .compatible = "brcm,bcm7268-dpfe-cpu", .data = &dpfe_api_v2 },
-	{ .compatible = "brcm,bcm7271-dpfe-cpu", .data = &dpfe_api_v2 },
-	{ .compatible = "brcm,bcm7278-dpfe-cpu", .data = &dpfe_api_v2 },
-	{ .compatible = "brcm,bcm7211-dpfe-cpu", .data = &dpfe_api_v2 },
+	{ .compatible = "brcm,bcm7268-dpfe-cpu", .data = &dpfe_api_old_v2 },
+	{ .compatible = "brcm,bcm7271-dpfe-cpu", .data = &dpfe_api_old_v2 },
+	{ .compatible = "brcm,bcm7278-dpfe-cpu", .data = &dpfe_api_old_v2 },
+	{ .compatible = "brcm,bcm7211-dpfe-cpu", .data = &dpfe_api_new_v2 },
 	/* API v3 is the default going forward */
 	{ .compatible = "brcm,dpfe-cpu", .data = &dpfe_api_v3 },
 	{}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
