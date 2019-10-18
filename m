Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B38DC941
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrRC2Wo+L5UKz0FmSoF6buk0W7LIa3JZDyz2I05FK7I=; b=qpWoPCcmguXS+u
	h0W+6eu4oUUJtR7WneOASI2Lkf2qzZrtmwS+0IsiD9Kkj8MesYAqPy0WyXcjzGXAaAA9V0PT3s9cv
	I1Pon5yK0CqyDeJ6TGH15fxbBkRyRcFi5Byd/ZmNYA2zqf8rA0EIeE1/3dP5OoM71ZC2n5nlE1QRP
	i01ASMDeZE3pEJuLBfv+OnDyYc1CDZ4w3vnOat4bTJlFd53L3qc/tJ2cvlmiOaAsspBjDJf3e+IUg
	dAcM7FKzdWNiGYI9dVAUrOjJc8oNur5bl4ngtC1f7G0SL8j7ra3TEzHNPVNsE989SqksBNaNkAGpN
	6lCeTLlL66EvUZHUmHEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLURx-0002yQ-0f; Fri, 18 Oct 2019 15:45:57 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOb-00082e-7F
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:33 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M9Fvl-1iRFA60KiV-006MSw; Fri, 18 Oct 2019 17:42:25 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 15/46] ARM: pxa: maybe fix gpio lookup tables
Date: Fri, 18 Oct 2019 17:41:30 +0200
Message-Id: <20191018154201.1276638-15-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:syPUHdH7zx5d1jKKxubzoRF3w6dnwzW9ph10lyNvIkzlg2UPc+n
 WicQDwAvgeDChbQgeTjfHAnra993MATAZ6ChdvdsZxWuh4SdT4z1yIP3/xQoWlTkqTO/Wjz
 ptxp60wybFrjdmfE2DdySvomyYIvEQLExy/RoAD2dpMr1ikMxEwvPajQvY+penWKv3Uojkj
 fNFRTETTMlT7VvFn8VggA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yWY/+VG4pjI=:DTl6Icej/SxGZGsMd8zgCF
 FWyMzXZMzJzFdyYEFXS0M5s8SRJkq5yZ3GvLFlskJQR69z/z77b0OCovzRWxYl6yiQIb1Qjx+
 vfbzsQ+8ojNroHUob+NZupz/vXHsEe7cn5nAaFh5p7lLElLQ9nhdy+CZFu57bEQfgyp8YlwCp
 67d/Ko59y5VCmou1dzKZsmcY2cLrnogZyOmnrqD4G1n0sJJBmD49l6YHmdKBmvskOHRbXCWhr
 Hmu1ajas2Ryo6teWSk3IUWsDQfZc9rWT/AtD5z2uNKjamqzJ4KGkXrQfJyHoaTrX+WlUdkmox
 PlDrWJemwJm//6GAe9e/Uq4O13E4Y61NuyT8r1p/PYgFduN5xSxIcOoA5z4R7D91otK4G0aai
 s4+ScCCx7ljRVe7fFgvzMtySpi5fC+pJ0kFGaJnXQTfWtdNXKdtsS5EphDA/hARlyD1WcPrS0
 tVW4fB2Rk97Que2WscRL2XryPygX1T7LGkcYYcCc1/v77xuNoot8ZKqW3ORYuDCVbXFiF+hCX
 m09pPLXkweQ4ClYfHwWG8Ijoeg4qFIuHIApkG2N12MNYiFzB/P26iDrviX6Gw3eukfdW+62bt
 u8Ym1nC+Kcng8raLcZvnd/BJuEDLUoWg0jhgaDwlsjJ7kOAZL48iss5jQV0tcj3Lm0OX1w+Ji
 iOIGfrHQtDLk+YmIsj6Yp6qboepnpj+rTn783RbubP6SkOhMhW1BJZ7wXrXYJXOlhFN2JU6dh
 RS6OHRFfTCq4qYudlFHfUESZ6Ax1D2tFgRKSYLK76t05DbSCpyetzP5yay30HsL9AkvEDWc4R
 rNuU88SdEvcEDf80P3EcL9umi+tw42HLvqon8M8DirFGVFPo1Rb80oUrRo9imj0L464bB2lww
 wqkChN0tT5zrIBG2RxGw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084229_663418_FAEB50B8 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From inspection I found a couple of GPIO lookups that are
listed with device "gpio-pxa", but actually have a number
from a different gpio controller.

Try to rectify that here, with a guess of what the actual
device name is.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/cm-x300.c  | 8 ++++----
 arch/arm/mach-pxa/magician.c | 2 +-
 arch/arm/mach-pxa/tosa.c     | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-pxa/cm-x300.c b/arch/arm/mach-pxa/cm-x300.c
index 6cdc440672a6..92fbe4cf71c7 100644
--- a/arch/arm/mach-pxa/cm-x300.c
+++ b/arch/arm/mach-pxa/cm-x300.c
@@ -357,13 +357,13 @@ static struct platform_device cm_x300_spi_gpio = {
 static struct gpiod_lookup_table cm_x300_spi_gpiod_table = {
 	.dev_id         = "spi_gpio",
 	.table          = {
-		GPIO_LOOKUP("gpio-pxa", GPIO_LCD_SCL,
+		GPIO_LOOKUP("pca9555.1", GPIO_LCD_SCL - GPIO_LCD_BASE,
 			    "sck", GPIO_ACTIVE_HIGH),
-		GPIO_LOOKUP("gpio-pxa", GPIO_LCD_DIN,
+		GPIO_LOOKUP("pca9555.1", GPIO_LCD_DIN - GPIO_LCD_BASE,
 			    "mosi", GPIO_ACTIVE_HIGH),
-		GPIO_LOOKUP("gpio-pxa", GPIO_LCD_DOUT,
+		GPIO_LOOKUP("pca9555.1", GPIO_LCD_DOUT - GPIO_LCD_BASE,
 			    "miso", GPIO_ACTIVE_HIGH),
-		GPIO_LOOKUP("gpio-pxa", GPIO_LCD_CS,
+		GPIO_LOOKUP("pca9555.1", GPIO_LCD_CS - GPIO_LCD_BASE,
 			    "cs", GPIO_ACTIVE_HIGH),
 		{ },
 	},
diff --git a/arch/arm/mach-pxa/magician.c b/arch/arm/mach-pxa/magician.c
index e925f7a8d349..31037679bf24 100644
--- a/arch/arm/mach-pxa/magician.c
+++ b/arch/arm/mach-pxa/magician.c
@@ -675,7 +675,7 @@ static struct platform_device bq24022 = {
 static struct gpiod_lookup_table bq24022_gpiod_table = {
 	.dev_id = "gpio-regulator",
 	.table = {
-		GPIO_LOOKUP("gpio-pxa", EGPIO_MAGICIAN_BQ24022_ISET2,
+		GPIO_LOOKUP("htc-egpio-0", EGPIO_MAGICIAN_BQ24022_ISET2 - MAGICIAN_EGPIO_BASE,
 			    NULL, GPIO_ACTIVE_HIGH),
 		GPIO_LOOKUP("gpio-pxa", GPIO30_MAGICIAN_BQ24022_nCHARGE_EN,
 			    "enable", GPIO_ACTIVE_LOW),
diff --git a/arch/arm/mach-pxa/tosa.c b/arch/arm/mach-pxa/tosa.c
index 23da9568c520..264b5b6ed13b 100644
--- a/arch/arm/mach-pxa/tosa.c
+++ b/arch/arm/mach-pxa/tosa.c
@@ -295,9 +295,9 @@ static struct gpiod_lookup_table tosa_mci_gpio_table = {
 	.table = {
 		GPIO_LOOKUP("gpio-pxa", TOSA_GPIO_nSD_DETECT,
 			    "cd", GPIO_ACTIVE_LOW),
-		GPIO_LOOKUP("gpio-pxa", TOSA_GPIO_SD_WP,
+		GPIO_LOOKUP("sharp-scoop.0", TOSA_GPIO_SD_WP - TOSA_SCOOP_GPIO_BASE,
 			    "wp", GPIO_ACTIVE_LOW),
-		GPIO_LOOKUP("gpio-pxa", TOSA_GPIO_PWR_ON,
+		GPIO_LOOKUP("sharp-scoop.0", TOSA_GPIO_PWR_ON - TOSA_SCOOP_GPIO_BASE,
 			    "power", GPIO_ACTIVE_HIGH),
 		{ },
 	},
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
