Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBA51DF881
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nmfiVoQ6iexESOYB4PM/BBo1xiutlIFDpjPcfUBcowk=; b=csWwKGoeYeYaBQMMRhx4iT7NDz
	rtivxy91LirqHO/szdFAOG8FbhDhaHBejgMEDXadyKRjCDqnWAwSVlsd2CURLiTQGoCjOMbbwDAuG
	F2VHrtYnRv1DNOh+hruTUSwJg389GPNbwFghJYMYXugyEEI79dCgtrwEQok3uyCGCsUNjUPvCseAk
	e1rY8dGbCjlgzbeuirkv7lCJCTV9QvioxpbHn0FyN4mdsxqUuzcsRT6Dzdj1QiaoHsLGclPTErUmw
	u1N4aOReZit9bopfViFkcukxbq0rMvhz50P1t7F+6BUMLQ0xo9wtmHqsbngs4PQbnvxVlKSbX3eF2
	SGKrlvMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXfp-00085f-8q; Sat, 23 May 2020 17:11:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe7-0004Ui-UJ
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EB4112FC;
 Sat, 23 May 2020 10:09:12 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A4E43F305;
 Sat, 23 May 2020 10:09:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] soc: ux500: Switch to use DEVICE_ATTR_RO()
Date: Sat, 23 May 2020 18:08:56 +0100
Message-Id: <20200523170859.50003-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100916_020291_D4C88D61 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move device attributes to DEVICE_ATTR_RO() as that would make things
a lot more "obvious" what is happening over the existing __ATTR usage.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/soc/ux500/ux500-soc-id.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/ux500/ux500-soc-id.c b/drivers/soc/ux500/ux500-soc-id.c
index d64feeb51a40..55ceb67e066b 100644
--- a/drivers/soc/ux500/ux500-soc-id.c
+++ b/drivers/soc/ux500/ux500-soc-id.c
@@ -146,9 +146,8 @@ static const char * __init ux500_get_revision(void)
 	return kasprintf(GFP_KERNEL, "%s", "Unknown");
 }
 
-static ssize_t ux500_get_process(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+static ssize_t
+process_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	if (dbx500_id.process == 0x00)
 		return sprintf(buf, "Standard\n");
@@ -156,6 +155,8 @@ static ssize_t ux500_get_process(struct device *dev,
 	return sprintf(buf, "%02xnm\n", dbx500_id.process);
 }
 
+static DEVICE_ATTR_RO(process);
+
 static const char *db8500_read_soc_id(struct device_node *backupram)
 {
 	void __iomem *base;
@@ -186,9 +187,6 @@ static void __init soc_info_populate(struct soc_device_attribute *soc_dev_attr,
 	soc_dev_attr->revision = ux500_get_revision();
 }
 
-static const struct device_attribute ux500_soc_attr =
-	__ATTR(process,  S_IRUGO, ux500_get_process,  NULL);
-
 static int __init ux500_soc_device_init(void)
 {
 	struct device *parent;
@@ -218,7 +216,7 @@ static int __init ux500_soc_device_init(void)
 	}
 
 	parent = soc_device_to_device(soc_dev);
-	device_create_file(parent, &ux500_soc_attr);
+	device_create_file(parent, &dev_attr_process);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
