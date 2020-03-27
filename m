Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9BF195B45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lOgw9VHQY1Vu60lfVXeJlmtbLhQizTDeHTAnKUrLk3I=; b=T0SfMbhgkNZICzTVPv8qPN8yMj
	X3GWCofpBxJR2PCoPf0z0anXo4nl467iBtT6HXNIZ/KEGwSAB37liVn0awoEDE7mFBLn13cGuzQfD
	Tm0J9b9CNUIYkvE9fLiFHxTxe3EEe+ZlgI3tAGCPfrH+cKpPl1vEE6tbJDOhWGriFDTAIcCaySFW5
	Tya77EiyciJFsH3yu/XFrYpX4BdeYKAn+SXbhQR3Gv791AYqlo3n7NBT8fhDGJUiNHp2eMkKqrfoQ
	F1PPlUVwwrHnxXOBx+NQHGtly2TK18+dv+6xq+0oQPe+P8ZnFpv8Mg6ED0uL4KWZLeOFAHPsXEanw
	8UOlyVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrzH-00065K-Jv; Fri, 27 Mar 2020 16:37:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHryn-0005vp-P3
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:37:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D42131B;
 Fri, 27 Mar 2020 09:37:08 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 894EE3F71F;
 Fri, 27 Mar 2020 09:37:07 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>
Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Date: Fri, 27 Mar 2020 16:36:51 +0000
Message-Id: <20200327163654.13389-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093709_853364_1848921C 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, linux-imx@nxp.com,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support multiple SMC/HVC transport channels with associated
shared memory, it is better to maintain the mutex per channel instead of
existing global one.

Move the smc_mutex into the scmi_smc structure and also rename it to
shmem_lock which is more appropriate for it's use.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 336168e40f49..6dc8a88cc91b 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -27,11 +27,10 @@
 struct scmi_smc {
 	struct scmi_chan_info *cinfo;
 	struct scmi_shared_mem __iomem *shmem;
+	struct mutex shmem_lock;
 	u32 func_id;
 };
 
-static DEFINE_MUTEX(smc_mutex);
-
 static bool smc_chan_available(struct device *dev, int idx)
 {
 	return true;
@@ -78,6 +77,7 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 
 	scmi_info->func_id = func_id;
 	scmi_info->cinfo = cinfo;
+	mutex_init(&scmi_info->shmem_lock);
 	cinfo->transport_info = scmi_info;
 
 	return 0;
@@ -102,14 +102,14 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 	struct scmi_smc *scmi_info = cinfo->transport_info;
 	struct arm_smccc_res res;
 
-	mutex_lock(&smc_mutex);
+	mutex_lock(&scmi_info->shmem_lock);
 
 	shmem_tx_prepare(scmi_info->shmem, xfer);
 
 	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
 	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
 
-	mutex_unlock(&smc_mutex);
+	mutex_unlock(&scmi_info->shmem_lock);
 
 	return res.a0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
