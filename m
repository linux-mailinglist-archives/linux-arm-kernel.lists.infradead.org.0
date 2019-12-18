Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6AF124590
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjrZKytKfhx+pJeBVfgxO5xsiC2HmsiUmDnfdceE7OE=; b=Y7PfkOivVoDrxj84CTOMy5mJBH
	OpvNQUsN4sFaSYsXY2lHv6zsABIFiXW72T9Prj8Ut1u/2MFua28J0hht5yehlDHJwuNvLDeJBcKsK
	mfGIh/Q/rwilLmd1uCZS4D7vPiHgJQJNVggq+G+qNBywi4343OKPf4oHhqAJD5k/Xmt4wu5LP9WYO
	uNTWGtkIaQ4U0Op1nqQsGCUpidvjdLgBhZ8/pl91bZGRY7PZxUdEH+bUf8uvS9+F0Mw6eT8qj1Gr4
	SRYS9E2jWjcjUZpgs+XtTNAeUPkAw+Lx2G27BPHEAYouCwnP10gPGlaEnJbrarSy7guRj1mB+1wSg
	jwZmVaLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXM4-0003jj-7t; Wed, 18 Dec 2019 11:19:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXKw-0002ya-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:17:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50A6E11B3;
 Wed, 18 Dec 2019 03:17:50 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A1DF33F6CF;
 Wed, 18 Dec 2019 03:17:49 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/11] firmware: arm_scmi: Add names to scmi devices created
Date: Wed, 18 Dec 2019 11:17:34 +0000
Message-Id: <20191218111742.29731-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218111742.29731-1-sudeep.holla@arm.com>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_031750_949946_687DA8BD 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that scmi bus provides option to create named scmi device, let us
create the default devices with names. This will help to add names for
matching to respective drivers and eventually to add multiple devices
and drivers per protocol.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 36 +++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 2952fcd8dd8a..0bbdc7c9eb0f 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -829,6 +829,40 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 	scmi_set_handle(sdev);
 }
 
+#define MAX_SCMI_DEV_PER_PROTOCOL	2
+struct scmi_prot_devnames {
+	int protocol_id;
+	char *names[MAX_SCMI_DEV_PER_PROTOCOL];
+};
+
+static struct scmi_prot_devnames devnames[] = {
+	{ SCMI_PROTOCOL_POWER,  { "genpd" },},
+	{ SCMI_PROTOCOL_PERF,   { "cpufreq" },},
+	{ SCMI_PROTOCOL_CLOCK,  { "clocks" },},
+	{ SCMI_PROTOCOL_SENSOR, { "hwmon" },},
+	{ SCMI_PROTOCOL_RESET,  { "reset" },},
+};
+
+static inline void
+scmi_create_protocol_devices(struct device_node *np, struct scmi_info *info,
+			     int prot_id)
+{
+	int loop, cnt;
+
+	for (loop = 0; loop < ARRAY_SIZE(devnames); loop++) {
+		if (devnames[loop].protocol_id != prot_id)
+			continue;
+
+		for (cnt = 0; cnt < ARRAY_SIZE(devnames[loop].names); cnt++) {
+			const char *name = devnames[loop].names[cnt];
+
+			if (name)
+				scmi_create_protocol_device(np, info, prot_id,
+							    name);
+		}
+	}
+}
+
 static int scmi_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -897,7 +931,7 @@ static int scmi_probe(struct platform_device *pdev)
 			continue;
 		}
 
-		scmi_create_protocol_device(child, info, prot_id, NULL);
+		scmi_create_protocol_devices(child, info, prot_id);
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
