Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BB1D155E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veeblEL15C0xG+uIGVNTexkTAf3K1h6upWcoTMUmaqc=; b=Ic9QX5EUNMct/D
	EQ8EB0q/FsBgr098pJoQhqJOnGqI/HhASHDc9QV85S0vmV+p65a1Mgbb2essaEwu7c5NKbmQU0df2
	621gXrAqwP20tZjj4YSy21zB3ElE8E56Vkz5QFjBoyOm2ACRL4mo57+KtX3Z/8f1btnENnSxvETzc
	3AJe81N6xlgBYF/1KEzeWnihwkwiuuP75Y7nXuIBf3lPdY8sHyZF+8Dh42jgTUf7ySm6buA1oSnC4
	R95O4kjr387NttF3uhLMtilBhs+RnPSMqL1cTb48B9UyzLwjis+RUulWrj55vaP9+Ybx0Dj1kS4cj
	UXRx2D+4K23Dep561VPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFbb-0000lv-FV; Wed, 09 Oct 2019 17:18:31 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYg-0006ax-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:33 +0000
Received: by mail-yb1-xb41.google.com with SMTP id v37so982822ybi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A2jCX9HgU8ovLftcoHPoUNghHxtBxjaql0cnB+EV6BQ=;
 b=G0gVsazECpvl8fASpjW+Wmxxxf0YBjZtVgemu/ijKJM0P1s3KYqUpLw3ycGc9/LhnX
 XrLrnvgWb/ZlceynCXvq7wT7KKjAdy2mKQJ4dlCyQ8I3IUrDbugydMBSsMLEMGpzAsqc
 XsDaWvEqEq38O6QPFGU+tvJkUHcUMeCa5TRVJMRd3SeuNNE4dLuyHS5dqZQnTxWxgCcs
 PgGCji1Pj+y3YvYuUOWm+YN56yRPZAi9b0Y1+znRH8Q5sVDgxXMEYuD1QFwvF0I0gIT4
 S0V0psNFzi64XtMaKIPvDUhzPrZahU1WndibxMEyrVfYT5YnhLb2B8XKl9S3dLehXplL
 E/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A2jCX9HgU8ovLftcoHPoUNghHxtBxjaql0cnB+EV6BQ=;
 b=BPKzs1R5DjOuEA5KMrECU3u+/nACASTxEGFMPud/Oboua4NEmeHhZR1mzCeM3x/7JO
 bF6tbEDj6BaoJDV98QmgkHFO/wtWnnT4afcsLuHhhsfB5pnYYfiW7dy3YlKSqL8GIGAC
 m5MzuVLrBOfKVMqpK+5G9i/Qfv29DcKuZRatk46J6Z//XxMS2VmpDuIdjqYPN8RjoPmu
 LaTZ8LWjZYvjpqvD8TMHkNLX1OlstXYPGKBkjTrRhUmH7ZENhbHhwfyPigRdqps9eLiA
 jfmaBjKQ7q8MRXFOTWF6B5t+5BbYjmKgmjcIvPiMr7etQ5+jnZGCiASzmr2yP4cWCqHV
 1JSA==
X-Gm-Message-State: APjAAAXYY92N5B4l8XrMvLLu/wIGrIB4nk4wV9XncscmyBfZtWWKgHtv
 vH/hOr6FOpxJxddouFfaPV4=
X-Google-Smtp-Source: APXvYqwcA1BhgvyvSAKo5+llRDxL8dtPONEDeU1F8oMVd0RZa1x5CyTNbEV6aAh/jd++y6y0S57smw==
X-Received: by 2002:a05:6902:510:: with SMTP id
 x16mr2733858ybs.517.1570641329421; 
 Wed, 09 Oct 2019 10:15:29 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:28 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 11/14] thermal: intel: intel_soc_dts_iosf: Utilize
 for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:47 -0400
Message-Id: <2d3c74e9a00a52954f31d19e04623a7f4bc85520.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101530_916924_B7FD1316 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Utilize for_each_set_clump8 macro, and the bitmap_set_value8 and
bitmap_get_value8 functions, where appropriate. In addition, remove the
now unnecessary temp_mask and temp_shift members of the
intel_soc_dts_sensor_entry structure.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/thermal/intel/intel_soc_dts_iosf.c | 31 +++++++++++++---------
 drivers/thermal/intel/intel_soc_dts_iosf.h |  2 --
 2 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/thermal/intel/intel_soc_dts_iosf.c b/drivers/thermal/intel/intel_soc_dts_iosf.c
index 5716b62e0f73..f75271b669c6 100644
--- a/drivers/thermal/intel/intel_soc_dts_iosf.c
+++ b/drivers/thermal/intel/intel_soc_dts_iosf.c
@@ -6,6 +6,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/bitops.h>
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/interrupt.h>
@@ -103,6 +104,7 @@ static int update_trip_temp(struct intel_soc_dts_sensor_entry *dts,
 	int status;
 	u32 temp_out;
 	u32 out;
+	unsigned long update_ptps;
 	u32 store_ptps;
 	u32 store_ptmc;
 	u32 store_te_out;
@@ -120,8 +122,10 @@ static int update_trip_temp(struct intel_soc_dts_sensor_entry *dts,
 	if (status)
 		return status;
 
-	out = (store_ptps & ~(0xFF << (thres_index * 8)));
-	out |= (temp_out & 0xFF) << (thres_index * 8);
+	update_ptps = store_ptps;
+	bitmap_set_value8(&update_ptps, temp_out & 0xFF, thres_index * 8);
+	out = update_ptps;
+
 	status = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
 				SOC_DTS_OFFSET_PTPS, out);
 	if (status)
@@ -223,6 +227,7 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 	u32 out;
 	struct intel_soc_dts_sensor_entry *dts;
 	struct intel_soc_dts_sensors *sensors;
+	unsigned long raw;
 
 	dts = tzd->devdata;
 	sensors = dts->sensors;
@@ -231,8 +236,8 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 	if (status)
 		return status;
 
-	out = (out & dts->temp_mask) >> dts->temp_shift;
-	out -= SOC_DTS_TJMAX_ENCODING;
+	raw = out;
+	out = bitmap_get_value8(&raw, dts->id * 8) - SOC_DTS_TJMAX_ENCODING;
 	*temp = sensors->tj_max - out * 1000;
 
 	return 0;
@@ -280,11 +285,14 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 				int read_only_trip_cnt)
 {
 	char name[10];
+	unsigned long trip;
 	int trip_count = 0;
 	int trip_mask = 0;
+	int writable_trip_cnt = 0;
+	unsigned long ptps;
 	u32 store_ptps;
+	unsigned long i;
 	int ret;
-	int i;
 
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
+		writable_trip_cnt = trip_count - read_only_trip_cnt;
+		trip_mask = GENMASK(writable_trip_cnt - 1, 0);
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
+		for_each_set_clump8(i, trip, &ptps, writable_trip_cnt * 8)
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
