Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7861140CC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U5mG2/29ankyIcI7b/+6LqFU9grd8EWonDj3vHQCRBw=; b=E+gaZa46bqWdc3/lI2bdOYxFwu
	4n7BHEdvo3lqsoDVjbXWeDt9uF5Z/HZ9SHev7PksYNt+P/neXRL3yLmuWA5j3bc5/imHW3iRHf80c
	Fsqx9Oy7Am79X8kar4BGpzSgT92TO65jYwsJ2DjQ09JTELSHejrqJMj/AtySxYeU1SPdBFMc6n7PL
	5l53xPVZtI7Tjfr0MLgasb3bDDViAeFcAJ/cK9wXcbFEDbrtU83SKtJeR6S+BJIGC5HIdxk5e/uiK
	B2JPjkIu6YWH66t9H2DqWfcCXLyE1BG0j9ZRxiWDBOeoaXsfCF2gx+6VsbOPjQz29WwivMFWc3uy7
	57Y0zO2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSnX-0000Ns-J3; Fri, 17 Jan 2020 14:40:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSm7-0006jc-Og
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 29BCDABE9;
 Fri, 17 Jan 2020 14:39:01 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 02/15] coresight: remove multiple init calls from funnel
 driver
Date: Fri, 17 Jan 2020 15:39:57 +0100
Message-Id: <20200117144010.11149-3-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063903_981459_9C5B9E98 
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

Dynamic-funnel uses module_amba_driver to register. Whereas
static-funnel uses builtin_platform_driver. Combine these init calls
into a single module_init/exit pair in preparation to make the driver
modular.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 30 ++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 08d8f2b3565f..32cbf112ae34 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -342,7 +342,6 @@ static struct platform_driver static_funnel_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver(static_funnel_driver);
 
 static int dynamic_funnel_probe(struct amba_device *adev,
 				const struct amba_id *id)
@@ -373,7 +372,34 @@ static struct amba_driver dynamic_funnel_driver = {
 	.probe		= dynamic_funnel_probe,
 	.id_table	= dynamic_funnel_ids,
 };
-module_amba_driver(dynamic_funnel_driver);
+
+static int __init funnel_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&static_funnel_driver);
+	if (ret) {
+		pr_info("Error registering platform driver\n");
+		return ret;
+	}
+
+	ret = amba_driver_register(&dynamic_funnel_driver);
+	if (ret) {
+		pr_info("Error registering amba driver\n");
+		platform_driver_unregister(&static_funnel_driver);
+	}
+
+	return ret;
+}
+
+static void __exit funnel_exit(void)
+{
+	platform_driver_unregister(&static_funnel_driver);
+	amba_driver_unregister(&dynamic_funnel_driver);
+}
+
+module_init(funnel_init);
+module_exit(funnel_exit);
 
 MODULE_LICENSE("GPL v2");
 MODULE_DESCRIPTION("CoreSight Funnel driver");
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
