Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C92F9FFCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGze58oESnRY3u8A+XoumsTmhlRvFNaCn8W8+sPD6+k=; b=XI7ZeY9E5i9iy3
	4RAfQJuHAmOFvSe6lvdBEj/EOaEv81b0JSuvkEvaoFf/PygmsifeMI57CFEgHIFa5nZWaEO5U8odg
	doxenwKFj/Dfk5s8CDuhsVb6xLSGZne5H5zzTMQqeymZ9essl9tK/uGZCIEZwqYh3AWJJ1SKM5NrQ
	QzDVVR2GAVpU5mMTJ5Pb6s8qa6XRuqRV7WZfzf2mTOHoJgRLRuMKrEpsd/OFNGeQnpZaEIlRtxWrt
	9qUbwlhGcT1jEhU3hEb2frShzRfeTOdMj3pC7xGXOgpqDgxKTaSvQXb55HWsCWoKyEiXGKNfHVLVx
	mUhspjT8Ib7ZjNVyM6Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2v9O-0005HL-Rq; Wed, 28 Aug 2019 10:26:03 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7l-0002xL-Us
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:24:24 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 7F8A742ECD;
 Wed, 28 Aug 2019 10:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mta-01; t=
 1566987859; x=1568802260; bh=HJZyEVApdw1Mju6dqt61w539MuWoTZM60B1
 9nvgkkt8=; b=BOdFlclPmsB0fpH2LPSCgTuBa3meuJWyDi8eOFKQ0jvchmZAK5p
 exW4ZNo6XlaX7exdgEc6Vg85UXQQtX9LAQdIqCqE1Qzivkt8lqOG+T6HWcjTdWCT
 F0bMYRHCayX4PGAsKaCT9mJwXtACUd2vtdz6H0/lMNK13vL3BLpv5LwA=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_qy3AKWzIFk; Wed, 28 Aug 2019 13:24:19 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 54A31404CB;
 Wed, 28 Aug 2019 13:24:19 +0300 (MSK)
Received: from localhost.dev.yadro.com (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Wed, 28 Aug 2019 13:24:18 +0300
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck
 <wim@linux-watchdog.org>
Subject: [PATCH v4 3/4] watchdog/aspeed: add support for dual boot
Date: Wed, 28 Aug 2019 13:24:01 +0300
Message-ID: <20190828102402.13155-4-i.mikhaylov@yadro.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190828102402.13155-1-i.mikhaylov@yadro.com>
References: <20190828102402.13155-1-i.mikhaylov@yadro.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_032422_571522_5BE3BE9B 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Ivan Mikhaylov <i.mikhaylov@yadro.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
to clear out boot code source and re-enable access to the primary SPI flash
chip while booted via wdt2 from the alternate chip.

AST2400 datasheet says:
"In the 2nd flash booting mode, all the address mapping to CS0# would be
re-directed to CS1#. And CS0# is not accessible under this mode. To access
CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
register WDT30.bit[1]."

Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
---
 drivers/watchdog/aspeed_wdt.c | 65 ++++++++++++++++++++++++++++++++++-
 1 file changed, 64 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
index cc71861e033a..125dbd349b00 100644
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
@@ -165,6 +167,60 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
 	return 0;
 }
 
+/* access_cs0 shows if cs0 is accessible, hence the reverted bit */
+static ssize_t access_cs0_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
+	u32 status = readl(wdt->base + WDT_TIMEOUT_STATUS);
+
+	return sprintf(buf, "%u\n",
+		      !(status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY));
+}
+
+static ssize_t access_cs0_store(struct device *dev,
+				struct device_attribute *attr, const char *buf,
+				size_t size)
+{
+	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
+	unsigned long val;
+
+	if (kstrtoul(buf, 10, &val))
+		return -EINVAL;
+
+	if (val)
+		writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
+		       wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
+
+	return size;
+}
+
+/*
+ * This attribute exists only if the system has booted from the alternate
+ * flash with 'alt-boot' option.
+ *
+ * At alternate flash the 'access_cs0' sysfs node provides:
+ *   ast2400: a way to get access to the primary SPI flash chip at CS0
+ *            after booting from the alternate chip at CS1.
+ *   ast2500: a way to restore the normal address mapping from
+ *            (CS0->CS1, CS1->CS0) to (CS0->CS0, CS1->CS1).
+ *
+ * Clearing the boot code selection and timeout counter also resets to the
+ * initial state the chip select line mapping. When the SoC is in normal
+ * mapping state (i.e. booted from CS0), clearing those bits does nothing for
+ * both versions of the SoC. For alternate boot mode (booted from CS1 due to
+ * wdt2 expiration) the behavior differs as described above.
+ *
+ * This option can be used with wdt2 (watchdog1) only.
+ */
+static DEVICE_ATTR_RW(access_cs0);
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
@@ -306,9 +362,16 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 	}
 
 	status = readl(wdt->base + WDT_TIMEOUT_STATUS);
-	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
+	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
 		wdt->wdd.bootstatus = WDIOF_CARDRESET;
 
+		if (of_device_is_compatible(np, "aspeed,ast2400-wdt") ||
+		    of_device_is_compatible(np, "aspeed,ast2500-wdt"))
+			wdt->wdd.groups = bswitch_groups;
+	}
+
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
