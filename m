Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75E3191ADC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8JnubW0tL+t+Q+wKyJzIkTySy7HbzxmPJNzniMDJGQ=; b=YMBLK1k/cjLogA
	v3+kLd61vXTP3uhpXSQLtpsnFr9XpdNTEJRUk0kFQkTuvRDmQuYaV+0lyAKdruopYu8zSmH9lnUpd
	IiA+iJL3jboulMntLi2arX61wuTLx/vAFSFAOGSuq8b3tXEkLzID8mx82aneCQJ7NqxNllFcJ0sFn
	jYxl9XXaHjAXxWBPlqS7oJsbhYIpSMecLlELzPyDIJYx97YU8q33aqjjfKFQ/gDMpdjXBcVna7ov2
	7P9Oy1fExREHJvXkwp7rQ1KGTb9xFTXPmF6D5dBzSojFgKAJkOa2CCBq+Kc5dOWU/JEG48r4zua9Y
	cGd6KA+2/6i/wWGxDO7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGq1k-0004Z0-4n; Tue, 24 Mar 2020 20:19:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGq0Q-0003Mg-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:18:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIWFr089263;
 Tue, 24 Mar 2020 15:18:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585081112;
 bh=KBK4nAkGYfaW/z7wnAp3kL3aRKdiM3zDk7Y34dWImPM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BCOA2Haf/SkSB1hh68ZQJx+5tIZf56DEPfY9szr5oW/ZUVEF47U+00yzBXi18Del+
 U4AY8hSHMC8Udlvl6xwC3vUzAUEJHHh1APGT0MQKHcM7RnvPkxCbiXdgzKuQsH98Q2
 klTUgZgNUD6+1PG8AnYfpvr7JHRQNGaFqj/Yzz08=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02OKIWI6015823
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 24 Mar 2020 15:18:32 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 15:18:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 15:18:31 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIVIW071981;
 Tue, 24 Mar 2020 15:18:31 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02OKIVML084995;
 Tue, 24 Mar 2020 15:18:31 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 6/7] remoteproc/k3-r5: Initialize TCM memories for ECC
Date: Tue, 24 Mar 2020 15:18:18 -0500
Message-ID: <20200324201819.23095-7-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200324201819.23095-1-s-anna@ti.com>
References: <20200324201819.23095-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_131834_234941_7E8564BD 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The R5F processors on K3 SoCs all have two TCMs (ATCM and BTCM) that
support 32-bit ECC. The TCMs are typically loaded with some boot-up
code to initialize the R5 MPUs to further execute code out of DDR.
The ECC for the TCMs is enabled by default on K3 SoCs due to internal
default tie-off values, but the TCM memories are not initialized on
device power up. Any read access without the corresponding TCM memory
location initialized will generate an ECC error, and any such access
from a A72 or A53 core will trigger a SError.

So, zero initialize both the TCM memories before loading any firmware
onto a R5F in remoteproc mode. Any R5F booted from U-Boot/SPL would
require a similar initialization in the bootloader. Note that both
the TCMs are initialized unconditionally as the TCM enable config bits
only manage the access and visibility from R5. The Core1 TCMs are not
used and accessible in LockStep mode, so they are only initialized
in Split-mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/remoteproc/ti_k3_r5_remoteproc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/remoteproc/ti_k3_r5_remoteproc.c b/drivers/remoteproc/ti_k3_r5_remoteproc.c
index 655f8f14c37d..8c9b7ae5d8b7 100644
--- a/drivers/remoteproc/ti_k3_r5_remoteproc.c
+++ b/drivers/remoteproc/ti_k3_r5_remoteproc.c
@@ -366,6 +366,17 @@ static int k3_r5_rproc_prepare(struct rproc *rproc)
 		dev_err(dev, "unable to enable cores for TCM loading, ret = %d\n",
 			ret);
 
+	/*
+	 * Zero out both TCMs unconditionally (access from v8 Arm core is not
+	 * affected by ATCM & BTCM enable configuration values) so that ECC
+	 * can be effective on all TCM addresses.
+	 */
+	dev_dbg(dev, "zeroing out ATCM memory\n");
+	memset(core->mem[0].cpu_addr, 0x00, core->mem[0].size);
+
+	dev_dbg(dev, "zeroing out BTCM memory\n");
+	memset(core->mem[1].cpu_addr, 0x00, core->mem[1].size);
+
 	return ret;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
