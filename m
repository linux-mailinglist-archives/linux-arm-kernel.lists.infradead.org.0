Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CF71DF87F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pi6kV8GVPRHU6A4/ffOWs/8oi46igtdxgkoqxKxYb5E=; b=JwkmN0jBZ3vj3HALlAa/zqpimv
	HDO+PtlCQRbRwlRHBi0xQzCtLgLuOOxLb+P46J3ICRWDpMs0rQDAAp+jjPrCFvov0xZx4YHTcpMhX
	sZfmZds+K6J9z773Ti1LVTLr1o1kAM7NIdtwtliy1S4M5twiG/I0DtBdWyPXGO1A9eodmimQeJisd
	JeX2RA39WALS+zLZcpAUST6d+bhA7EFPQmdboJ+Xb5bGXycrjzixIqxgoTuVcjlNQscOfZ++03VGu
	k5HtzcAkRpF+gz7YhEHU3A4Ng4ImfSsc7bv+5CcKAttN0xs9nvVqBdG0GpqiqJrv81t3VHiou37YC
	kiQO3L0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXfN-0007eZ-He; Sat, 23 May 2020 17:10:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe6-0004FG-Nc
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09C5CD6E;
 Sat, 23 May 2020 10:09:08 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 24F553F305;
 Sat, 23 May 2020 10:09:07 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] soc: realview: Switch to use DEVICE_ATTR_RO()
Date: Sat, 23 May 2020 18:08:52 +0100
Message-Id: <20200523170859.50003-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100914_874625_5FCB8F40 
X-CRM114-Status: UNSURE (   9.27  )
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
 drivers/soc/versatile/soc-realview.c | 40 +++++++++++-----------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/versatile/soc-realview.c b/drivers/soc/versatile/soc-realview.c
index 9471353dd8c3..cb3bcb7dd824 100644
--- a/drivers/soc/versatile/soc-realview.c
+++ b/drivers/soc/versatile/soc-realview.c
@@ -39,45 +39,37 @@ static const char *realview_arch_str(u32 id)
 	}
 }
 
-static ssize_t realview_get_manf(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+manufacturer_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%02x\n", realview_coreid >> 24);
 }
 
-static struct device_attribute realview_manf_attr =
-	__ATTR(manufacturer,  S_IRUGO, realview_get_manf,  NULL);
+static DEVICE_ATTR_RO(manufacturer);
 
-static ssize_t realview_get_board(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+board_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "HBI-%03x\n", ((realview_coreid >> 16) & 0xfff));
 }
 
-static struct device_attribute realview_board_attr =
-	__ATTR(board,  S_IRUGO, realview_get_board,  NULL);
+static DEVICE_ATTR_RO(board);
 
-static ssize_t realview_get_arch(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
+static ssize_t
+fpga_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%s\n", realview_arch_str(realview_coreid));
 }
 
-static struct device_attribute realview_arch_attr =
-	__ATTR(fpga,  S_IRUGO, realview_get_arch,  NULL);
+static DEVICE_ATTR_RO(fpga);
 
-static ssize_t realview_get_build(struct device *dev,
-			       struct device_attribute *attr,
-			       char *buf)
+static ssize_t
+build_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%02x\n", (realview_coreid & 0xFF));
 }
 
-static struct device_attribute realview_build_attr =
-	__ATTR(build,  S_IRUGO, realview_get_build,  NULL);
+static DEVICE_ATTR_RO(build);
 
 static int realview_soc_probe(struct platform_device *pdev)
 {
@@ -112,10 +104,10 @@ static int realview_soc_probe(struct platform_device *pdev)
 	if (ret)
 		return -ENODEV;
 
-	device_create_file(soc_device_to_device(soc_dev), &realview_manf_attr);
-	device_create_file(soc_device_to_device(soc_dev), &realview_board_attr);
-	device_create_file(soc_device_to_device(soc_dev), &realview_arch_attr);
-	device_create_file(soc_device_to_device(soc_dev), &realview_build_attr);
+	device_create_file(soc_device_to_device(soc_dev), &dev_attr_manufacturer);
+	device_create_file(soc_device_to_device(soc_dev), &dev_attr_board);
+	device_create_file(soc_device_to_device(soc_dev), &dev_attr_fpga);
+	device_create_file(soc_device_to_device(soc_dev), &dev_attr_build);
 
 	dev_info(&pdev->dev, "RealView Syscon Core ID: 0x%08x, HBI-%03x\n",
 		 realview_coreid,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
