Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA07191AC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JPUVqjgeyUgcaPzg84qLAY8yqjzDPnUTtyFCckKOEg=; b=AJd3IAC7sRISfr
	GZIsufKS1zwlSNMNa7WxmN2gCh1g/GDxPq9quX6yXlBUzOcVg/IQ5ov+q1jea8Ui3amGVhMULbf+u
	jXYF6DYP0ziED+WJFsmhtWmOC7ySuEAaqeW13OKgLnlkvj5tgEGq1RA0AjQxIKZhFlFYCwYyHxiOH
	CCIW+n6F8nu+4zhkGd0r80oSPbSjJ4L6cEUVC0lsOGJaXAKepWnH6cs1MLuv73mFyN4H59cffloVH
	tT1URWxI75dzhioa+GLmE3X6vILhkTqgS28e3lwlTLVGmY1bClNh1Gtgcy3kNEkt6J8i+gYX0mpOW
	pGQoRDyllMvr8Vb8GEKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGq0W-0003Iz-Tp; Tue, 24 Mar 2020 20:18:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGq0J-0003I6-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:18:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIObx089240;
 Tue, 24 Mar 2020 15:18:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585081104;
 bh=8qgGwfZnwiU6/Ir3wlJnjMa4hJEnhp9Vr0iuUASMO6M=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JepYCPNiGgj420B1JhpJuS7Ka+IMxnnobyJvzgCmwKWuHJ07sIjjxWsmDo2trprGE
 TiQ3wUGFXu086tg2NZAgpzncMix8DUZsrUQJEpLgIVCzX2OUbVESwBz/Gt2XUUfrnw
 ReQYqC1E75z1pmavpuPrPYhR37TpCCIN5GiQIba8=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OKINUX110238;
 Tue, 24 Mar 2020 15:18:23 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 15:18:23 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 15:18:23 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OKINTN083843;
 Tue, 24 Mar 2020 15:18:23 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02OKIMmN084957;
 Tue, 24 Mar 2020 15:18:23 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/7] remoteproc: add prepare and unprepare ops
Date: Tue, 24 Mar 2020 15:18:13 -0500
Message-ID: <20200324201819.23095-2-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200324201819.23095-1-s-anna@ti.com>
References: <20200324201819.23095-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_131827_496690_BF41406C 
X-CRM114-Status: GOOD (  17.00  )
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Loic Pallardy <loic.pallardy@st.com>

On some SoC architecture, it is needed to enable HW like
clock, bus, regulator, memory region... before loading
co-processor firmware.

This patch introduces prepare and unprepare ops to execute
platform specific function before firmware loading and after
stop execution.

Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/remoteproc/remoteproc_core.c | 20 +++++++++++++++++++-
 include/linux/remoteproc.h           |  4 ++++
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 26f6947267d2..aca6d022901a 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1394,12 +1394,22 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
 		return ret;
 	}
 
+	/* Prepare rproc for firmware loading if needed */
+	if (rproc->ops->prepare) {
+		ret = rproc->ops->prepare(rproc);
+		if (ret) {
+			dev_err(dev, "can't prepare rproc %s: %d\n",
+				rproc->name, ret);
+			goto disable_iommu;
+		}
+	}
+
 	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
 
 	/* Load resource table, core dump segment list etc from the firmware */
 	ret = rproc_parse_fw(rproc, fw);
 	if (ret)
-		goto disable_iommu;
+		goto unprepare_rproc;
 
 	/* reset max_notifyid */
 	rproc->max_notifyid = -1;
@@ -1433,6 +1443,10 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
 	kfree(rproc->cached_table);
 	rproc->cached_table = NULL;
 	rproc->table_ptr = NULL;
+unprepare_rproc:
+	/* release HW resources if needed */
+	if (rproc->ops->unprepare)
+		rproc->ops->unprepare(rproc);
 disable_iommu:
 	rproc_disable_iommu(rproc);
 	return ret;
@@ -1838,6 +1852,10 @@ void rproc_shutdown(struct rproc *rproc)
 	/* clean up all acquired resources */
 	rproc_resource_cleanup(rproc);
 
+	/* release HW resources if needed */
+	if (rproc->ops->unprepare)
+		rproc->ops->unprepare(rproc);
+
 	rproc_disable_iommu(rproc);
 
 	/* Free the copy of the resource table */
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 07bd73a6d72a..ddce7a7775d1 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -355,6 +355,8 @@ enum rsc_handling_status {
 
 /**
  * struct rproc_ops - platform-specific device handlers
+ * @prepare:	prepare device for code loading
+ * @unprepare:	unprepare device after stop
  * @start:	power on the device and boot it
  * @stop:	power off the device
  * @kick:	kick a virtqueue (virtqueue id given as a parameter)
@@ -371,6 +373,8 @@ enum rsc_handling_status {
  * @get_boot_addr:	get boot address to entry point specified in firmware
  */
 struct rproc_ops {
+	int (*prepare)(struct rproc *rproc);
+	int (*unprepare)(struct rproc *rproc);
 	int (*start)(struct rproc *rproc);
 	int (*stop)(struct rproc *rproc);
 	void (*kick)(struct rproc *rproc, int vqid);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
