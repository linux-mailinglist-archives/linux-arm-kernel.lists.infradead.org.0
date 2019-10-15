Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D3D8206
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ixkVZwGNhPa1tnTETkvQr8sH8SMYy9FMBHLPYJ8xvEM=; b=re7pyv7a10OFYsMQhjJIfN53Dt
	FErEKHUQVKoFOvdxXMg7TO3DZzg02mmVL3efANE4vFUrM4uhUM1AUQz62p4Ch085qwNhpLxP1db1I
	hBgw+fFt5TBpyTi1EQSsDaIRPUoW/MDb8Ur6ial746hNW/lRzHQ8U+TXA+7EZ2YLqyaI0Az2RQ6if
	fPtrHbYHHz0klziOhWXKo6YMrkAouxoceR5lX59KVO83heGGb++qSJEsKm1obAi6e5kiwZVToDErQ
	My3pei0rqcIN/UR7DOlGm7Tqg2nQr8Oz+6VvQHgUTuy7wm8ZXy2428L7oxpBbyxxaAb5kIyaSGGU9
	6dNnoaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUFh-000333-Mg; Tue, 15 Oct 2019 21:21:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFS-00030b-Nx
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id y21so535583wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1/nDamY0vcX3mI7xTMQncxC0g153aasRB+pWD3LOkGg=;
 b=TaLFgxGU6jVMwelP5mURDjGBxzXtchTb23/HSjCJYtTlzeBmJ+juEnP00kaLhqirfA
 /a7Q6LMlt1AEKDjB4/wEw1kfV0tdz8YbXqkdB6whLnkpAod6YOvz64ceYZfYzCUnaUtJ
 jaWvDqW+We1YUnji8YRrVLyO4cdXdYn9hLtWNy8Qdbe3F5mH6TFzfu3I2DrEoBBFrXce
 CP0JU310tM7d4b3R/3FGd09iWc5Q93Cdr/qaKS2wXA6U8wWxe5iK5cDw9N48G2rjRK03
 r/dU+RYCgxG3GnMmiT2d+RkXF4+qVl8yZAqgrHQcF9rMrMkBmtiOolPHyxgyrLgGV47D
 YIHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1/nDamY0vcX3mI7xTMQncxC0g153aasRB+pWD3LOkGg=;
 b=b8NddHEEdv2GIZpqZon4+TG+cp51BV6GkhM+szUmB7f03loOTHx2aNiVnQa8IL+vFT
 dYQPGtxrZAaG6s3+Yo6SjTCtPHBnEdvdQpLHfEM0wW/8wPomTAntk/CavAjFC+z3YwKU
 FSBlIx2/I28QJaM4HhbiylmOsFqQ9hJA7ywabrlQT4SaF5CcgBhieeA+OLUDlUP3+xiU
 /RtHhCAgSjFM2fNAgccKYOTC8XCI5ZiYL4fnfMuaBWYxP9JctSa4bbgkpjRTqxjYVO8K
 oliDbMy5dis4YcZX3HOUWXp3ZBv2Hidk5H4MstO7b/5sUE0YHC91tehRaMouhSv517pa
 H6eA==
X-Gm-Message-State: APjAAAXSxUiki1h3HiOsTPdaL9IHUCcXkS/bmeFctZizfMhbT2P8RjZt
 9zggsECuewdcncZ7UCb/m9RnBB1IMto=
X-Google-Smtp-Source: APXvYqwEUxH5hHScjclAUc0I0+HFns+TpSn6XeAN1cUcRGj342cZJkUiCCw3wYm6utihcH46SCGX7Q==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr388646wmc.80.1571174452543;
 Tue, 15 Oct 2019 14:20:52 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:52 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 02/11] coresight: etm4x: Fix input validation for sysfs.
Date: Tue, 15 Oct 2019 22:19:55 +0100
Message-Id: <20191015212004.24748-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142054_780696_A44D4303 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 stable <stable@vger.kernel.org>, mathieu.poirier@linaro.org, corbet@lwn.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A number of issues are fixed relating to sysfs input validation:-

1) bb_ctrl_store() - incorrect compare of bit select field to absolute
value. Reworked per ETMv4 specification.
2) seq_event_store() - incorrect mask value - register has two
event values.
3) cyc_threshold_store() - must mask with max before checking min
otherwise wrapped values can set illegal value below min.
4) res_ctrl_store() - update to mask off all res0 bits.

Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
Fixes: a77de2637c9eb ("coresight: etm4x: moving sysFS entries to a dedicated file")
Cc: stable <stable@vger.kernel.org> # 4.9+
---
 .../coresight/coresight-etm4x-sysfs.c         | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index b6984be0c515..cc8156318018 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -652,10 +652,13 @@ static ssize_t cyc_threshold_store(struct device *dev,
 
 	if (kstrtoul(buf, 16, &val))
 		return -EINVAL;
+
+	/* mask off max threshold before checking min value */
+	val &= ETM_CYC_THRESHOLD_MASK;
 	if (val < drvdata->ccitmin)
 		return -EINVAL;
 
-	config->ccctlr = val & ETM_CYC_THRESHOLD_MASK;
+	config->ccctlr = val;
 	return size;
 }
 static DEVICE_ATTR_RW(cyc_threshold);
@@ -686,14 +689,16 @@ static ssize_t bb_ctrl_store(struct device *dev,
 		return -EINVAL;
 	if (!drvdata->nr_addr_cmp)
 		return -EINVAL;
+
 	/*
-	 * Bit[7:0] selects which address range comparator is used for
-	 * branch broadcast control.
+	 * Bit[8] controls include(1) / exclude(0), bits[0-7] select
+	 * individual range comparators. If include then at least 1
+	 * range must be selected.
 	 */
-	if (BMVAL(val, 0, 7) > drvdata->nr_addr_cmp)
+	if ((val & BIT(8)) && (BMVAL(val, 0, 7) == 0))
 		return -EINVAL;
 
-	config->bb_ctrl = val;
+	config->bb_ctrl = val & GENMASK(8, 0);
 	return size;
 }
 static DEVICE_ATTR_RW(bb_ctrl);
@@ -1324,8 +1329,8 @@ static ssize_t seq_event_store(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	idx = config->seq_idx;
-	/* RST, bits[7:0] */
-	config->seq_ctrl[idx] = val & 0xFF;
+	/* Seq control has two masks B[15:8] F[7:0] */
+	config->seq_ctrl[idx] = val & 0xFFFF;
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
@@ -1580,7 +1585,7 @@ static ssize_t res_ctrl_store(struct device *dev,
 	if (idx % 2 != 0)
 		/* PAIRINV, bit[21] */
 		val &= ~BIT(21);
-	config->res_ctrl[idx] = val;
+	config->res_ctrl[idx] = val & GENMASK(21, 0);
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
