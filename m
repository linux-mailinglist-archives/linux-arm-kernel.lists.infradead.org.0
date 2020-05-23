Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC18E1DF887
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bktdd899HU9R/NZ6AWGbwaTWfMahR0/Sb+BwbW6QIxU=; b=ZvCNhVaWJjzlyjwyym6AHww9eF
	U7stTAIJo+lcKeGy5I55tST3LhCMraTPN9Rbc6bdBYMqY/ONK035H8DXnaz+derArPvxv+wQ51Tec
	r7uHpmIz8/el4cc3/hrP3oe1mCl/r2cprfNzxQLV9kBrogwla80Jmr5KGo/f7P9aGo3f0xV/zBVKY
	bvvalhMZCzp7P+YjM5UQUsXWYfVq7rtHGnwDhuQ2+G8klJRF1M/qXLQKAQIfPtTRN25VhaI0atuCs
	vR1ENimxBzicKWM2q2guxWxtNTpLyuAUTqK2m08KDnfb09lPfNjmYvdcQgak8QA9IUdyp9MMPqwXh
	pADST4Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXgY-0000I5-Av; Sat, 23 May 2020 17:11:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe8-0004Xp-Ux
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE7B21FB;
 Sat, 23 May 2020 10:09:15 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF7C63F305;
 Sat, 23 May 2020 10:09:14 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] ARM: OMAP2: Use custom soc attribute group instead of
 device_create_file
Date: Sat, 23 May 2020 18:08:59 +0100
Message-Id: <20200523170859.50003-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100917_067406_835F3A68 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <sudeep.holla@arm.com>
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

Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-omap@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/mach-omap2/id.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap2/id.c b/arch/arm/mach-omap2/id.c
index 37ac2d103548..1d119b974f5f 100644
--- a/arch/arm/mach-omap2/id.c
+++ b/arch/arm/mach-omap2/id.c
@@ -783,9 +783,15 @@ type_show(struct device *dev, struct device_attribute *attr, char *buf)
 
 static DEVICE_ATTR_RO(type);
 
+static struct attribute *omap_soc_attrs[] = {
+	&dev_attr_type.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(omap_soc);
+
 void __init omap_soc_device_init(void)
 {
-	struct device *parent;
 	struct soc_device *soc_dev;
 	struct soc_device_attribute *soc_dev_attr;
 
@@ -796,14 +802,12 @@ void __init omap_soc_device_init(void)
 	soc_dev_attr->machine  = soc_name;
 	soc_dev_attr->family   = omap_get_family();
 	soc_dev_attr->revision = soc_rev;
+	soc_dev_attr->custom_attr_group = omap_soc_groups[0];
 
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		kfree(soc_dev_attr);
 		return;
 	}
-
-	parent = soc_device_to_device(soc_dev);
-	device_create_file(parent, &dev_attr_type);
 }
 #endif /* CONFIG_SOC_BUS */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
