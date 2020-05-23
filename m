Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709431DF882
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=85IQXvslSAx/SLHzAk7lyYbcIvz6qTkPnOpAEii8eI4=; b=haB2mHBMwtE1zYq8gbtNShsxKs
	+/L+Fejb4iSyBBQIxduK5xgjjVG4j2HkQ7RSE4zhhY9hxDEIV7bpvcytdyiR9Y97bQYFyOkPpCFyb
	tn6ld353hHSx47F1yjS9dMLLzAdJf5jA46p5lh1IzSA+caSn5GQ5IA5ZORNntm7XIgd91RN4sLUIl
	XIHaQI7FHA7o8yxGtfMyvJ3KYlukDr4irzfEUj2V9i4GwvD8OP1mPPhpjHPYkNVZrbwi+2QIgCGqg
	MqwsmtT2GrE+rzYNrMh8t6mGIjp62cPl/6MvcLNYMBrPOfL5rp193SUoC3RcKVfgBLrxFnN+8Ewf3
	87+jeeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXg5-0008Id-OF; Sat, 23 May 2020 17:11:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe8-0004Wo-Dp
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86D1F1396;
 Sat, 23 May 2020 10:09:13 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A2A2B3F305;
 Sat, 23 May 2020 10:09:12 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] soc: ux500: Use custom soc attribute group instead of
 device_create_file
Date: Sat, 23 May 2020 18:08:57 +0100
Message-Id: <20200523170859.50003-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100916_511954_9B11AF47 
X-CRM114-Status: GOOD (  12.60  )
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

Commit c31e73121f4c ("base: soc: Handle custom soc information sysfs
entries") introduced custom soc attribute group in soc_device_attribute
structure but there are no users treewide. While trying to understand
the motivation and tried to use it, it was found lot of existing custom
attributes can moved to use it instead of device_create_file.

Though most of these never remove/cleanup the custom attribute as they
never call soc_device_unregister, using these custom attribute group
eliminate the need for any cleanup as the driver infrastructure will
take care of that.

Let us remove device_create_file and start using the custom attribute
group in soc_device_attribute.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/soc/ux500/ux500-soc-id.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/ux500/ux500-soc-id.c b/drivers/soc/ux500/ux500-soc-id.c
index 55ceb67e066b..a9472e0e5d61 100644
--- a/drivers/soc/ux500/ux500-soc-id.c
+++ b/drivers/soc/ux500/ux500-soc-id.c
@@ -157,6 +157,13 @@ process_show(struct device *dev, struct device_attribute *attr, char *buf)
 
 static DEVICE_ATTR_RO(process);
 
+static struct attribute *ux500_soc_attrs[] = {
+	&dev_attr_process.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(ux500_soc);
+
 static const char *db8500_read_soc_id(struct device_node *backupram)
 {
 	void __iomem *base;
@@ -185,11 +192,11 @@ static void __init soc_info_populate(struct soc_device_attribute *soc_dev_attr,
 	soc_dev_attr->machine  = ux500_get_machine();
 	soc_dev_attr->family   = ux500_get_family();
 	soc_dev_attr->revision = ux500_get_revision();
+	soc_dev_attr->custom_attr_group = ux500_soc_groups[0];
 }
 
 static int __init ux500_soc_device_init(void)
 {
-	struct device *parent;
 	struct soc_device *soc_dev;
 	struct soc_device_attribute *soc_dev_attr;
 	struct device_node *backupram;
@@ -215,9 +222,6 @@ static int __init ux500_soc_device_init(void)
 		return PTR_ERR(soc_dev);
 	}
 
-	parent = soc_device_to_device(soc_dev);
-	device_create_file(parent, &dev_attr_process);
-
 	return 0;
 }
 subsys_initcall(ux500_soc_device_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
