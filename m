Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E80D32DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MiP5nN5UdPHUtpPcj8KjCkDeOC0JhEtnqjdYrVSDTY=; b=tXjJySkFGgxZRI
	J1fPaThV0/TcJH2MQs5xlBGnSMqv/+skXxfzSgfsp0fcPrSL/iDN8zs+RkO7cvuxKy1ucd50admzM
	Xtj2h7OYhAdaKbu8wejmGV5Io+u1+oTkfBlVhLfQP521sTusVojGHkwAgYnOUOmTxveqIN3+eB17x
	G9R05TzcZRk/RDGuwarH55vQ9/4niW9YNFXY6CkXh5w0eiUJBPfk8/8rf16yH+9lBXfzWBM0VfIO2
	ncRJNNsnHaj+m+8btsiWGODWQHkugWVNYExYVY1a8gpEJBzGR/roENxej/Gkq/piadD1gy+EWtyJh
	Svt/MqE5ekasZFOMN8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfOF-0007Y1-AW; Thu, 10 Oct 2019 20:50:27 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfNk-0006UT-2a
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:49:58 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mv3M8-1i100L05ya-00r230; Thu, 10 Oct 2019 22:49:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 27/36] ARM: s3c: fix mmc gpio lookup tables
Date: Thu, 10 Oct 2019 22:30:11 +0200
Message-Id: <20191010203043.1241612-27-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:miEEBn8EyX3iXwAoHLbyo0Rw0t54e4gFtO4RuqFzuUUZsdSYYFe
 mkYXMoFATZbZnQ2AfYowuUP0fX+ZeGzayu62CMMllRNxC7eRWkNDSvECtwhssqt/cuhlHif
 lc6V7Z+awRWzKiKiG3VAE/QPRyGYyTVbjxGiVwQ1ROxYKb3Z+z+lhdpcJXOYpxsADIWDkFe
 1OgpbGkn+Mj6daDqqBDJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dpz0F10rdwI=:gmQ4hYjc+doONpW56zCV1G
 duTMmQ1Tm+ujSzt1fdGRjwhjXsUNt0bWwVVQU3e4kieVQYr6zzVTmQhNADmMr+zmqbSaXkFHY
 wM0nBs4lSyLwzEdKXSmybyeBMfSyqSAYGyf3gDrQ6z1LKZOIA7z8kNsLyvzn4lSRlB9pyWXgl
 kFo8IHBIIk0YixwQj6UB3RFkmm5O5X1rrOwcJEinLRdvvciFLqajbFpSGq3K5eY+pMm9tVYmV
 VInU+edA8Qv8N7PLcHnIqRX+OtUEhgYp2HIc3+HSjAfbSMwnCptI+GqC8bb+WjYrolz5d+iyK
 fBCty6rdXpG+DpiKyyr5rhQOuuf/KTrIAD2Wnph1Gl4xxQZn67jAZrM4VFpkZYdcMU6bH3kUY
 T8T3yBrxIcGpeasXYxVh1lyfS/WO/18LZ19MM8jjPGnMyNj8Os4ja9Q9JmgKbrXj2WvuL3h7H
 NwqR6SiJUy62gadTpK1gy7hF1NMaEFKwZlK1KT6+D5RPAic95Mf+xI11Vtbl8uhuXAK+1CBsk
 5iiwUMNIXwk5FWQrnoBhH6PVWyUlogHhNAgOJ8bS4G53Y2Ak21dmJoBj4dL0Jp4hnYDfV6ps4
 WoqLWNZkJcizg+W+w59NVyWSdRjZctWCokmYIyIz11BtlzM70VKDPhfgJsLEXRasa7M2J5yIr
 w3xs73amS0zikViui4mN862kG8mfSsKNoC0YBxGbWKZewd6qUM+qnsTHS7F5TK2ImJEMAs6ya
 868k4DO2Tmhv5usrXry8JINWNWVZrE+W/iV0CetPkSYT5z8lexHi+hHg1EzZRSm1f12Kz/Qwa
 Ynit5/TE1rRLFDe8NHWCsn1eUxf80G7wcieXmFGgXPb7b5JPDRs5pxNqe3rEoFbrW0TM5Ic5+
 dDnV2mMl4vG6j9O3beMA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134956_443407_2FED9DAD 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 Sergio Prado <sergio.prado@e-labworks.com>, Arnd Bergmann <arnd@arndb.de>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The gpio controller names differ between s3c24xx and s3c64xx,
and it seems that these all got the wrong names, using GPx instead
of GPIOx.

Fixes: d2951dfa070d ("mmc: s3cmci: Use the slot GPIO descriptor")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/mach-at2440evb.c | 2 +-
 arch/arm/mach-s3c24xx/mach-h1940.c     | 4 ++--
 arch/arm/mach-s3c24xx/mach-mini2440.c  | 4 ++--
 arch/arm/mach-s3c24xx/mach-n30.c       | 4 ++--
 arch/arm/mach-s3c24xx/mach-rx1950.c    | 4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
index 3a793aaf2cba..b2199906e678 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
@@ -143,7 +143,7 @@ static struct gpiod_lookup_table at2440evb_mci_gpio_table = {
 	.dev_id = "s3c2410-sdi",
 	.table = {
 		/* Card detect S3C2410_GPG(10) */
-		GPIO_LOOKUP("GPG", 10, "cd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOG", 10, "cd", GPIO_ACTIVE_LOW),
 		/* bus pins */
 		GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
 		GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
index 24f785da7659..446891e23511 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c24xx/mach-h1940.c
@@ -469,9 +469,9 @@ static struct gpiod_lookup_table h1940_mmc_gpio_table = {
 	.dev_id = "s3c2410-sdi",
 	.table = {
 		/* Card detect S3C2410_GPF(5) */
-		GPIO_LOOKUP("GPF", 5, "cd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOF", 5, "cd", GPIO_ACTIVE_LOW),
 		/* Write protect S3C2410_GPH(8) */
-		GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOH", 8, "wp", GPIO_ACTIVE_LOW),
 		/* bus pins */
 		GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
 		GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index 5c000efdf0e8..d73167f615b8 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -244,9 +244,9 @@ static struct gpiod_lookup_table mini2440_mmc_gpio_table = {
 	.dev_id = "s3c2410-sdi",
 	.table = {
 		/* Card detect S3C2410_GPG(8) */
-		GPIO_LOOKUP("GPG", 8, "cd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOG", 8, "cd", GPIO_ACTIVE_LOW),
 		/* Write protect S3C2410_GPH(8) */
-		GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("GPIOH", 8, "wp", GPIO_ACTIVE_HIGH),
 		/* bus pins */
 		GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
 		GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
diff --git a/arch/arm/mach-s3c24xx/mach-n30.c b/arch/arm/mach-s3c24xx/mach-n30.c
index 8d7ad61e9930..f283abab0761 100644
--- a/arch/arm/mach-s3c24xx/mach-n30.c
+++ b/arch/arm/mach-s3c24xx/mach-n30.c
@@ -362,9 +362,9 @@ static struct gpiod_lookup_table n30_mci_gpio_table = {
 	.dev_id = "s3c2410-sdi",
 	.table = {
 		/* Card detect S3C2410_GPF(1) */
-		GPIO_LOOKUP("GPF", 1, "cd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOF", 1, "cd", GPIO_ACTIVE_LOW),
 		/* Write protect S3C2410_GPG(10) */
-		GPIO_LOOKUP("GPG", 10, "wp", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOG", 10, "wp", GPIO_ACTIVE_LOW),
 		{ },
 		/* bus pins */
 		GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index 820e626f5129..7752203fd9cd 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -569,9 +569,9 @@ static struct gpiod_lookup_table rx1950_mmc_gpio_table = {
 	.dev_id = "s3c2410-sdi",
 	.table = {
 		/* Card detect S3C2410_GPF(5) */
-		GPIO_LOOKUP("GPF", 5, "cd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOF", 5, "cd", GPIO_ACTIVE_LOW),
 		/* Write protect S3C2410_GPH(8) */
-		GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("GPIOH", 8, "wp", GPIO_ACTIVE_LOW),
 		/* bus pins */
 		GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
 		GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
