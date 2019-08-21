Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68D797F84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fhtSsO5o/7+Z0OGMemjZyOjlAzqLb+cUhsxIES9LLWQ=; b=HT06lg+mFzb82T
	lWeuh1r1yntpj56cLMsR/3KRggyOo7xjVeKGKmKPlJIVUZk2pMeEjrxhEq8U9YsmzVnOl4A32F/nu
	YfOOEnL+gMGblztDH6pgBHeSerTeBMUyFJsZZS0Qw0EBFcHSHmcoZAWAyyneOLh6qIEMyV0PBVdNl
	Pfee8NkjzQ+P0x5SiNpzPt05I4yl/K8i6DcOsTYqqjxmRz7x4AhVDIdbiuFKwq1qXgPS1dSuysGjx
	KvEigRowV/t1BtvsXhc/1zplAyXsMWsSQY4o10yklqrrziDbzKmF1ArGYdrB5wXb54VMiSx62uoGJ
	DS+vRbk9VTy9aHu4QRXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Szn-0003kD-Ee; Wed, 21 Aug 2019 15:57:59 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Szb-0003gm-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:57:51 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id BA4B042ED0;
 Wed, 21 Aug 2019 15:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:date:date:from:from:subject:subject
 :message-id:received:received:received; s=mta-01; t=1566403064;
 x=1568217465; bh=cUjJrAB3OomH4KewIUgBh/9D64kXv5bgtvG9RSiYgKo=; b=
 NjpiNNiB5Yy83fB0V2C9/T1tieBZ9CXFUSnI+CZsrQcXFjbCfKXVXs6dPoS/CbQl
 QcHcLUIYSQxeTnJWBro3TCyFxonJyGcG6G9WmDsa3/+joAi4f36z/eqyfxSA2hvp
 SKdR4ClCZ+QBkhrlS3bul8MLPluqAQueUhC9fhGy7I0=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvGBZuanyL5B; Wed, 21 Aug 2019 18:57:44 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 845234120B;
 Wed, 21 Aug 2019 18:57:44 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Wed, 21 Aug 2019 18:57:43 +0300
Message-ID: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
Subject: [PATCH 3/3] watchdog/aspeed: add support for dual boot
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>
Date: Wed, 21 Aug 2019 18:57:43 +0300
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_085747_674750_90065748 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Alexander
 Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
to clear out boot code source and re-enable access to the primary SPI flash
chip while booted via wdt2 from the alternate chip.

AST2400 datasheet says:
"In the 2nd flash booting mode, all the address mapping to CS0# would be
re-directed to CS1#. And CS0# is not accessable under this mode. To access
CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
register WDT30.bit[1]."

Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
---
 drivers/watchdog/aspeed_wdt.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
index cc71861e033a..858e62f1c7ba 100644
--- a/drivers/watchdog/aspeed_wdt.c
+++ b/drivers/watchdog/aspeed_wdt.c
@@ -53,6 +53,8 @@ MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
 #define   WDT_CTRL_ENABLE		BIT(0)
 #define WDT_TIMEOUT_STATUS	0x10
 #define   WDT_TIMEOUT_STATUS_BOOT_SECONDARY	BIT(1)
+#define WDT_CLEAR_TIMEOUT_STATUS	0x14
+#define   WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION	BIT(0)
 
 /*
  * WDT_RESET_WIDTH controls the characteristics of the external pulse (if
@@ -165,6 +167,29 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
 	return 0;
 }
 
+static ssize_t access_cs0_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
+
+	if (unlikely(!wdt))
+		return -ENODEV;
+
+	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
+			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
+	wdt->wdd.bootstatus |= WDIOF_EXTERN1;
+
+	return size;
+}
+static DEVICE_ATTR_WO(access_cs0);
+
+static struct attribute *bswitch_attrs[] = {
+	&dev_attr_access_cs0.attr,
+	NULL
+};
+ATTRIBUTE_GROUPS(bswitch);
+
 static const struct watchdog_ops aspeed_wdt_ops = {
 	.start		= aspeed_wdt_start,
 	.stop		= aspeed_wdt_stop,
@@ -223,6 +248,9 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 
 	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
 
+	if (of_property_read_bool(np, "aspeed,alt-boot"))
+		wdt->wdd.groups = bswitch_groups;
+
 	/*
 	 * Control reset on a per-device basis to ensure the
 	 * host is not affected by a BMC reboot
@@ -309,6 +337,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
 		wdt->wdd.bootstatus = WDIOF_CARDRESET;
 
+	dev_set_drvdata(dev, wdt);
+
 	return devm_watchdog_register_device(dev, &wdt->wdd);
 }
 
-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
