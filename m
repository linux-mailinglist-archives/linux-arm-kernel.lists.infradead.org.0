Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86649E1F85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KEg2f7tISPkzS84H/lCAd3LWyiljg5bqVS6fzLXKV3c=; b=rhP
	jwR57KRs5WC3xKlL+7T0FOBGzMgbGPn/qkMEbz2/jmkBqrZMF8Uugp8Em5j81mXhZ+giUn3pUjgeM
	ric4yOyTFXb1pfPVARaaOWHYG3ypQL7et8xNnHsTumvVTigRAwi0DVBZ3/rx1lfIbJ4dyKDnHuQrz
	h9RNPkSDnut2jCPzzjy9YcO/c8O7mp2qBBUzD2HHtUOhBn6HWO4J22GrbDKMqFoKUVe04QHC11mbN
	J82O9sLl7lnmAxZ2NPBUoLY4se4BAmo098m4CqJGpROODebfHcty+wS8JAfxQ//iKNGX/Fc0agARb
	LW85ouIEHXJmct7Q4BjZHuVnGBDYh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIis-0000t4-GJ; Wed, 23 Oct 2019 15:38:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIiZ-0000s3-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 15:38:37 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58C302064A;
 Wed, 23 Oct 2019 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571845115;
 bh=eE8y1vH8jBO0acryf9BCwImwIuhGJ07TIWhlosnHoNA=;
 h=From:To:Cc:Subject:Date:From;
 b=gu6Ab9QAgNfM7NGUJR3zkec5u+/CuBA16gfkL/0IFK2M8wzH4uDyT/qkxGVnmgoSO
 QFQW79CTNSghX8IzQpE927M+HA3Ir9B1LwqlFj18bzKf6MouKcw0GZ8VWmBjkz/agk
 2Xk2jUDyZRjUxTGfmT7NQTGHvpiBetl6kAXZnSVE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: s3c: Rename s3c64xx_spi_setname() function
Date: Wed, 23 Oct 2019 17:38:23 +0200
Message-Id: <20191023153824.6085-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_083835_989703_50B49F09 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The name s3c64xx_spi_setname() suggests it is shared with S3C64xx
platform, but except of contents it is not.  It is called only by
S3C24xx code, so make it clear in the name.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-s3c24xx/s3c2416.c  | 2 +-
 arch/arm/mach-s3c24xx/s3c2443.c  | 2 +-
 arch/arm/mach-s3c24xx/spi-core.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/s3c2416.c b/arch/arm/mach-s3c24xx/s3c2416.c
index 1cdb7bd3e713..9514196cad8c 100644
--- a/arch/arm/mach-s3c24xx/s3c2416.c
+++ b/arch/arm/mach-s3c24xx/s3c2416.c
@@ -113,7 +113,7 @@ void __init s3c2416_map_io(void)
 	/* initialize device information early */
 	s3c2416_default_sdhci0();
 	s3c2416_default_sdhci1();
-	s3c64xx_spi_setname("s3c2443-spi");
+	s3c24xx_spi_setname("s3c2443-spi");
 
 	iotable_init(s3c2416_iodesc, ARRAY_SIZE(s3c2416_iodesc));
 }
diff --git a/arch/arm/mach-s3c24xx/s3c2443.c b/arch/arm/mach-s3c24xx/s3c2443.c
index 313e369c3ddd..4cbeb74cf3d6 100644
--- a/arch/arm/mach-s3c24xx/s3c2443.c
+++ b/arch/arm/mach-s3c24xx/s3c2443.c
@@ -91,7 +91,7 @@ void __init s3c2443_map_io(void)
 	s3c24xx_gpiocfg_default.get_pull = s3c2443_gpio_getpull;
 
 	/* initialize device information early */
-	s3c64xx_spi_setname("s3c2443-spi");
+	s3c24xx_spi_setname("s3c2443-spi");
 
 	iotable_init(s3c2443_iodesc, ARRAY_SIZE(s3c2443_iodesc));
 }
diff --git a/arch/arm/mach-s3c24xx/spi-core.h b/arch/arm/mach-s3c24xx/spi-core.h
index bb555ccbe057..1048fac629a2 100644
--- a/arch/arm/mach-s3c24xx/spi-core.h
+++ b/arch/arm/mach-s3c24xx/spi-core.h
@@ -11,7 +11,7 @@
  */
 
 /* re-define device name depending on support. */
-static inline void s3c64xx_spi_setname(char *name)
+static inline void s3c24xx_spi_setname(char *name)
 {
 #ifdef CONFIG_S3C64XX_DEV_SPI0
 	s3c64xx_device_spi0.name = name;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
