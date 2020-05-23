Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1F1DF87D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CjeI40WGbBNCfpgLdv59w17PFUIcUylgq1bfKRv2JOs=; b=NU81lB9H03xaiAJMvRJXNTL2+E
	WnSeVOrv1m2k0Ml+0MOgBist5OZPrMOGcC1e7XvJUT5e3jaKashYRWbQjx0u+cSd7aCGeaMnQr62L
	f3e7XdoaH7qg8GBsZ4YY1NFKDtTBU9qaguRLMxVbEgDkdM/nOL64IVgMCWfsJZr76tJ13dcKyt1lk
	0InOldz0GxZVnv3sflEv8gRW5jneOylFxdMrylTbVA+KEMUnKTgcKKbFLEzWxDOPGRe8TUHSfaa8k
	wfVKoiVBmpwm+7VhBveL9wrBzL1R0eqVaLOC1tUohM3oOdkozEbO9X5ZQ7xUAyQiyF9Q+ZFFDwIBk
	q0wf34Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXee-0004kD-Lj; Sat, 23 May 2020 17:09:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe6-0004Ir-Nl
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E72B113E;
 Sat, 23 May 2020 10:09:10 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 58B863F305;
 Sat, 23 May 2020 10:09:09 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] soc: integrator: Switch to use DEVICE_ATTR_RO()
Date: Sat, 23 May 2020 18:08:54 +0100
Message-Id: <20200523170859.50003-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100914_869866_CB5F4459 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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
 drivers/soc/versatile/soc-integrator.c | 40 +++++++++++---------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/versatile/soc-integrator.c b/drivers/soc/versatile/soc-integrator.c
index ae13fa2aa582..8ba98b3b4e8e 100644
--- a/drivers/soc/versatile/soc-integrator.c
+++ b/drivers/soc/versatile/soc-integrator.c
@@ -56,45 +56,37 @@ static const char *integrator_fpga_str(u32 id)
 	}
 }
 
-static ssize_t integrator_get_manf(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+manufacturer_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%02x\n", integrator_coreid >> 24);
 }
 
-static struct device_attribute integrator_manf_attr =
-	__ATTR(manufacturer,  S_IRUGO, integrator_get_manf,  NULL);
+static DEVICE_ATTR_RO(manufacturer);
 
-static ssize_t integrator_get_arch(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+arch_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%s\n", integrator_arch_str(integrator_coreid));
 }
 
-static struct device_attribute integrator_arch_attr =
-	__ATTR(arch,  S_IRUGO, integrator_get_arch,  NULL);
+static DEVICE_ATTR_RO(arch);
 
-static ssize_t integrator_get_fpga(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+fpga_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%s\n", integrator_fpga_str(integrator_coreid));
 }
 
-static struct device_attribute integrator_fpga_attr =
-	__ATTR(fpga,  S_IRUGO, integrator_get_fpga,  NULL);
+static DEVICE_ATTR_RO(fpga);
 
-static ssize_t integrator_get_build(struct device *dev,
-			       struct device_attribute *attr,
-			       char *buf)
+static ssize_t
+build_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%02x\n", (integrator_coreid >> 4) & 0xFF);
 }
 
-static struct device_attribute integrator_build_attr =
-	__ATTR(build,  S_IRUGO, integrator_get_build,  NULL);
+static DEVICE_ATTR_RO(build);
 
 static int __init integrator_soc_init(void)
 {
@@ -134,10 +126,10 @@ static int __init integrator_soc_init(void)
 	}
 	dev = soc_device_to_device(soc_dev);
 
-	device_create_file(dev, &integrator_manf_attr);
-	device_create_file(dev, &integrator_arch_attr);
-	device_create_file(dev, &integrator_fpga_attr);
-	device_create_file(dev, &integrator_build_attr);
+	device_create_file(dev, &dev_attr_manufacturer);
+	device_create_file(dev, &dev_attr_arch);
+	device_create_file(dev, &dev_attr_fpga);
+	device_create_file(dev, &dev_attr_build);
 
 	dev_info(dev, "Detected ARM core module:\n");
 	dev_info(dev, "    Manufacturer: %02x\n", (val >> 24));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
