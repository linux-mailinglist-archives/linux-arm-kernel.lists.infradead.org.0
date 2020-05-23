Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32111DF87E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S8PjQzKVGDT+4Fb+r2J02Jzwdg2LtW/XghpHHS7CO/8=; b=gI+8tZ1AIdppFfq5j38IHOg8nq
	g+fviL2hXOHfVKVPCeLF84z+GaVvAwi3JS4atccVfPaEqP1xkgagSp9lvPZC5BowdkmkbuXXLVmzm
	CP+9ceDGj0wuuEFsgTSuSjWl6DBg94PDacw72q06ZJDOov3JEfDiHouUBWI6lN3vO8yuf6RzWrhT/
	hZ3idwtF/3bzra6+lc4NBsVlQIiixN+pxcGJF7lt8cGEaqWYtkSaWqg22rxq2ZsQR3zh1fwTy8A9b
	qhqx+hcIgDkyXrPaqbVmL+ivICqFuqZd0JgwtfI+9TaI+jGK39UZii4iD4CHryDFZZKPSj+D8e6dn
	9wa8k1gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXf9-00053A-8i; Sat, 23 May 2020 17:10:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe6-0004FH-Nj
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 247AC106F;
 Sat, 23 May 2020 10:09:09 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3DEC83F305;
 Sat, 23 May 2020 10:09:08 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/8] soc: realview: Use custom soc attribute group instead of
 device_create_file
Date: Sat, 23 May 2020 18:08:53 +0100
Message-Id: <20200523170859.50003-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100914_873522_1F461398 
X-CRM114-Status: GOOD (  11.72  )
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
 drivers/soc/versatile/soc-realview.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/versatile/soc-realview.c b/drivers/soc/versatile/soc-realview.c
index cb3bcb7dd824..c6876d232d8f 100644
--- a/drivers/soc/versatile/soc-realview.c
+++ b/drivers/soc/versatile/soc-realview.c
@@ -71,6 +71,16 @@ build_show(struct device *dev, struct device_attribute *attr, char *buf)
 
 static DEVICE_ATTR_RO(build);
 
+static struct attribute *realview_attrs[] = {
+	&dev_attr_manufacturer.attr,
+	&dev_attr_board.attr,
+	&dev_attr_fpga.attr,
+	&dev_attr_build.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(realview);
+
 static int realview_soc_probe(struct platform_device *pdev)
 {
 	struct regmap *syscon_regmap;
@@ -94,6 +104,7 @@ static int realview_soc_probe(struct platform_device *pdev)
 
 	soc_dev_attr->machine = "RealView";
 	soc_dev_attr->family = "Versatile";
+	soc_dev_attr->custom_attr_group = realview_groups[0];
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		kfree(soc_dev_attr);
@@ -104,11 +115,6 @@ static int realview_soc_probe(struct platform_device *pdev)
 	if (ret)
 		return -ENODEV;
 
-	device_create_file(soc_device_to_device(soc_dev), &dev_attr_manufacturer);
-	device_create_file(soc_device_to_device(soc_dev), &dev_attr_board);
-	device_create_file(soc_device_to_device(soc_dev), &dev_attr_fpga);
-	device_create_file(soc_device_to_device(soc_dev), &dev_attr_build);
-
 	dev_info(&pdev->dev, "RealView Syscon Core ID: 0x%08x, HBI-%03x\n",
 		 realview_coreid,
 		 ((realview_coreid >> 16) & 0xfff));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
