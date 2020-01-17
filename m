Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183B1140CC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x9aFEouZZtaNmI/Gc11eJ7mJySUAF9NrLe02SrpqClY=; b=UH5Qnd+CVc2Oce+9hbreDMO+VB
	2OQwKNXwztbb79T52ylJB1sjpTPr+PJzbxadlmbleDrSYu9ijtqr10LDtbwNSrGyH/5tcaUCNxFmL
	zalR45dm7JTIiYIMecp/Bprp+IaC6YB1bzkkfsXhfHFC9RfU9wE3uQrKI347bDYrnAzmOxXT5ScHG
	vcgLOwJjgs/W85DUfZg7WV2zaMVS2NP68nF63RxF8qWiR5txzz5UXG3doi9f+UrpFia22ZduHCG7j
	FBYNCGx6J04fjAD95xcj+GbrGtmm4jy4jkaLvOtFADm9fF1l/XZYRmiU+iH/gvPSLZLyF/SfnHAJV
	YFdKMURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSnK-0007KY-4O; Fri, 17 Jan 2020 14:40:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSm8-0006jd-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C6624AC4A;
 Fri, 17 Jan 2020 14:39:01 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 03/15] coresight: remove multiple init calls from
 replicator driver
Date: Fri, 17 Jan 2020 15:39:58 +0100
Message-Id: <20200117144010.11149-4-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063904_573467_861CF126 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dynamic-replicator uses module_amba_driver to register. Whereas
static-replicator uses builtin_platform_driver. Combine these init
calls into a single module_init/exit pair in preparation to make the
driver modular.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 30 ++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index cc14c3696be0..137328a7f27e 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -340,7 +340,6 @@ static struct platform_driver static_replicator_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver(static_replicator_driver);
 
 static int dynamic_replicator_probe(struct amba_device *adev,
 				    const struct amba_id *id)
@@ -370,7 +369,34 @@ static struct amba_driver dynamic_replicator_driver = {
 	.probe		= dynamic_replicator_probe,
 	.id_table	= dynamic_replicator_ids,
 };
-module_amba_driver(dynamic_replicator_driver);
+
+static int __init replicator_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&static_replicator_driver);
+	if (ret) {
+		pr_info("Error registering platform driver\n");
+		return ret;
+	}
+
+	ret = amba_driver_register(&dynamic_replicator_driver);
+	if (ret) {
+		pr_info("Error registering amba driver\n");
+		platform_driver_unregister(&static_replicator_driver);
+	}
+
+	return ret;
+}
+
+static void __exit replicator_exit(void)
+{
+	platform_driver_unregister(&static_replicator_driver);
+	amba_driver_unregister(&dynamic_replicator_driver);
+}
+
+module_init(replicator_init);
+module_exit(replicator_exit);
 
 MODULE_LICENSE("GPL v2");
 MODULE_DESCRIPTION("CoreSight Replicator driver");
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
