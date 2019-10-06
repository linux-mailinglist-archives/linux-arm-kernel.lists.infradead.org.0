Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BEECD2B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnDxHQVg8KimaM9nXCPkxqiBfw9KI5sovWLpkHqjZRs=; b=Ho/ji0EI45Gre7
	WT7qpGpQP6+dNUyGPuq79OYbOcQzZ1KykuXvN9qKeC8TldqYa6DVSGyaGJ6MFc99jPwnvxHm9Le1R
	ZkisNX8O1ylQjhMuFJAtKlugwXjY80jh/nhd5cOvRaWVKhdqV/dPRJhXNbkEqCIsbjIpttgD91lby
	AHOV4H/Of9GzCBEAUXRM53hQZBDrVs/7QLYylJA+pi4CFN2WvZYfnaKJokFC4P5MRcHU7iFTbiLF1
	bMI9ZjEBCFCrKSf8e7aB1bSVlro2z1T3u7N6zz3XNhXSCXxtgrD9v3WZFnDjrxpDUgFrt/MZJNMNh
	OOdyjKTsXqQSQ6u4gCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Ff-00027o-V3; Sun, 06 Oct 2019 15:15:15 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CM-0007xy-3G
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:51 +0000
Received: by mail-yb1-xb43.google.com with SMTP id h202so3791351ybg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geeVhlPEQCZLJDo40X4CwybS5cFswh73El6LvFzVdzQ=;
 b=bDQ07kAw8hj9ATv79TvjeaQJHFCbTMypdgdq2WRhn1IW8cwmfmbgiLTDLYgIM4Z0pC
 VFHqe+Bjbhf1PPnLkZvgc8vPtdAVket41QxrG3y54fQGtoLi483lo+RVOs5Q9n0ua3G4
 aly8Pprt20Lt8jOLb8Uobf3gZ8IXj/ZJ5CFnuQ60YPIsQuXwmNfuXapraFAbCAJ+FwSR
 1LX7TBNNQ31xwXJhsNidyh4wr6Bb4GQ5/dpci21wjgXQL7RRLltRVQpi8E91BFiIQXe6
 GSsjEEfZFlEH4dbC3oGNVMhuOPtXojMU1+z5xYJAp1WfuyOIAHLXMPkdroDHKj0I9bqn
 8Lqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geeVhlPEQCZLJDo40X4CwybS5cFswh73El6LvFzVdzQ=;
 b=t02PWdW574ap6uKD+CPXBi8xRmrQyLbmUKsWqgw71DLk1iliB52QHfmloZoW55CrAE
 kljFu8dd7OH/K7C73a3CjYG31qNMLFrEg7szw+iVxZY6LT4EEUvx27gPeOL8CQaTcc5A
 pTiDceOX7AU9Mn5oS2K3K9r1idEu7kdf0p1iM8jmHL+kd4niyU8gN4xE+5/Le4M3m/yA
 CNssCd7dxwbwDIAbabwjQqe4IFD/0rHttRf/oxIhOceN8NLBcHNqyKU92Nbf6OGN07rs
 +fcErObNrHNR+pB4FYJR6GEsqsY2uLcvSRuBgXSQcBnHfgSsa2uHHsCAzbOOmga/WU78
 1B3A==
X-Gm-Message-State: APjAAAVajmWGC5Sr5c73epD6t8u+5FgRYBu52Vn0MRRufue8cuRK6o6+
 h0yIfAPyg5nUagbk/AtCR3ZV5zK9
X-Google-Smtp-Source: APXvYqxEbdF6JrMdp16LycSVfspUweDrvzwE9I69SsN4+SG9ziT9N3nyksIppdmVg4VQWKYQJ9vE2Q==
X-Received: by 2002:a25:ad47:: with SMTP id l7mr8471252ybe.59.1570374708628;
 Sun, 06 Oct 2019 08:11:48 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:47 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 11/14] thermal: intel: intel_soc_dts_iosf: Utilize
 for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:08 -0400
Message-Id: <8e85aa4ccead5c330d7abdbda292f32a0c48902e.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081150_213166_82D4AC46 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 William Breathitt Gray <vilhelm.gray@gmail.com>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Utilize for_each_set_clump8 macro, and the bitmap_set_value8 and
bitmap_get_value8 functions, where appropriate. In addition, remove the
now unnecessary temp_mask and temp_shift members of the
intel_soc_dts_sensor_entry structure.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/thermal/intel/intel_soc_dts_iosf.c | 29 +++++++++++++---------
 drivers/thermal/intel/intel_soc_dts_iosf.h |  2 --
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/thermal/intel/intel_soc_dts_iosf.c b/drivers/thermal/intel/intel_soc_dts_iosf.c
index 5716b62e0f73..901f64bb5b9c 100644
--- a/drivers/thermal/intel/intel_soc_dts_iosf.c
+++ b/drivers/thermal/intel/intel_soc_dts_iosf.c
@@ -6,6 +6,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/bitops.h>
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/interrupt.h>
@@ -102,6 +103,7 @@ static int update_trip_temp(struct intel_soc_dts_sensor_entry *dts,
 {
 	int status;
 	u32 temp_out;
+	unsigned long update_ptps;
 	u32 out;
 	u32 store_ptps;
 	u32 store_ptmc;
@@ -120,8 +122,9 @@ static int update_trip_temp(struct intel_soc_dts_sensor_entry *dts,
 	if (status)
 		return status;
 
-	out = (store_ptps & ~(0xFF << (thres_index * 8)));
-	out |= (temp_out & 0xFF) << (thres_index * 8);
+	update_ptps = store_ptps;
+	bitmap_set_value8(&update_ptps, temp_out & 0xFF, thres_index * 8);
+	out = update_ptps;
 	status = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
 				SOC_DTS_OFFSET_PTPS, out);
 	if (status)
@@ -223,6 +226,7 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 	u32 out;
 	struct intel_soc_dts_sensor_entry *dts;
 	struct intel_soc_dts_sensors *sensors;
+	unsigned long temp_raw;
 
 	dts = tzd->devdata;
 	sensors = dts->sensors;
@@ -231,7 +235,8 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 	if (status)
 		return status;
 
-	out = (out & dts->temp_mask) >> dts->temp_shift;
+	temp_raw = out;
+	out = bitmap_get_value8(&temp_raw, dts->id * 8);
 	out -= SOC_DTS_TJMAX_ENCODING;
 	*temp = sensors->tj_max - out * 1000;
 
@@ -281,10 +286,13 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 {
 	char name[10];
 	int trip_count = 0;
+	int writable_trip_count = 0;
 	int trip_mask = 0;
 	u32 store_ptps;
 	int ret;
-	int i;
+	unsigned long i;
+	unsigned long trip;
+	unsigned long ptps;
 
 	/* Store status to restor on exit */
 	ret = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
@@ -293,11 +301,10 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 		goto err_ret;
 
 	dts->id = id;
-	dts->temp_mask = 0x00FF << (id * 8);
-	dts->temp_shift = id * 8;
 	if (notification_support) {
 		trip_count = min(SOC_MAX_DTS_TRIPS, trip_cnt);
-		trip_mask = BIT(trip_count - read_only_trip_cnt) - 1;
+		writable_trip_count = trip_count - read_only_trip_cnt;
+		trip_mask = GENMASK(writable_trip_count - 1, 0);
 	}
 
 	/* Check if the writable trip we provide is not used by BIOS */
@@ -306,11 +313,9 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 	if (ret)
 		trip_mask = 0;
 	else {
-		for (i = 0; i < trip_count; ++i) {
-			if (trip_mask & BIT(i))
-				if (store_ptps & (0xff << (i * 8)))
-					trip_mask &= ~BIT(i);
-		}
+		ptps = store_ptps;
+		for_each_set_clump8(i, trip, &ptps, writable_trip_count * 8)
+			trip_mask &= ~BIT(i / 8);
 	}
 	dts->trip_mask = trip_mask;
 	dts->trip_count = trip_count;
diff --git a/drivers/thermal/intel/intel_soc_dts_iosf.h b/drivers/thermal/intel/intel_soc_dts_iosf.h
index adfb09af33fc..c54945748200 100644
--- a/drivers/thermal/intel/intel_soc_dts_iosf.h
+++ b/drivers/thermal/intel/intel_soc_dts_iosf.h
@@ -24,8 +24,6 @@ struct intel_soc_dts_sensors;
 
 struct intel_soc_dts_sensor_entry {
 	int id;
-	u32 temp_mask;
-	u32 temp_shift;
 	u32 store_status;
 	u32 trip_mask;
 	u32 trip_count;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
