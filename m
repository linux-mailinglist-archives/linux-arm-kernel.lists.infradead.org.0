Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E926EE71B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=obxkdJU5bW/PllC/zVJHo/TS9FmbhsL4KnNcC3FCt48=; b=Yzs0Pml77zqrQ1xoaoMRwKk0Yh
	AHYCguRKo07P66wR7gzwKbxS/J47pDsZCTMFne+Js9ycYBQBmFLqpyM384M+flUDkbLo/RYwkSIKE
	ip+jxieoSi5wXKblboRxgyFaab33RuladqM8HluRfoeztQqtkWApMb/sRkH6ymh1UhbpRnKplmHFx
	wvgJfLCsotnDiAnv6wkfx1n3eCJlaftU2BorVYG/FcNu3+3K5mm4zMDLPDidgWCqvg2wHrkbVsKov
	/yHa5L2lkWlCEBUQ7k005fqTdyLah6sRkuvKPVWCcexvbOCgf76Y0LGZcVjjG0JCJ7JnXwshZeJuP
	18RIK4PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgsU-0000HM-6i; Mon, 04 Nov 2019 18:14:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqZ-0006yq-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so4591006pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=my27JHtSw35YmWWmHWoHmAi4DXJc+0VoUXAKN5Q83qQ=;
 b=z04j7Z2+8CJTt3LDDdW0VKHsNjM427ulg1Fso6sALQXW8v87GYdFumTZ7klLVibxEO
 u3G+y2NH9jFQMLEt7KsjCEQA4m8ae69T56BnjtQLjDD6o24drb+6r7tkLlJcCvxPI6o8
 VnUTGyZhug8t2LgkcTeeOZ+M1/3nFrEg0G7+1G2edZVz0UCTAWywDjC5fb79COINfgmo
 qAoLnJx3CQxoKGvRs8t9dFVwThrdoa7bRgJ2rAoZzuqiYu7izvP0JuLduGhaDzKWWMzG
 8swo521Or6HZH3IbMWHAfwHUsrf5P3Lj9OdeSbipMpLXruapJlUzqDlhg8qLeRWdY/l9
 4jGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=my27JHtSw35YmWWmHWoHmAi4DXJc+0VoUXAKN5Q83qQ=;
 b=sOttuur2t3OGoWl4a7jdB9Mc9GWWDna8QmwxNFABHNdhYUAk938YTdd3mACYcVhvRb
 xZRKguz1vHvBPCC6VQyt2KZFZg9mkP7zESaT5EWULGhD0zBAfsSFQPTfrv5vXN/j9jq7
 qZggHLzFdm8p0IkVmuRkQBzjc5iZHMNun8U3+btTvbYtwqjJEZ3Vlpf9LttZzKypX0f9
 0od5m0AWH0LpeIBPS7n6lG7/49j4KYDNhSc756vs45/3wPu20Lw/6RzNAVoIErqRczJN
 L0h5Se8AyTPluzYO4N7jRuTzxZvKwQ+d+o7SZ4pEbaD2ZNOvM2JCHtPRDbCiqfYLhBZD
 W3bw==
X-Gm-Message-State: APjAAAU6GO7adsJtenqvmPQS1O9iEDjnu9nhyr8t5HAfhyhc2VxKNaF4
 1lwn8iGQHMYQA6bRa1VY6PTRMg+pQ6E=
X-Google-Smtp-Source: APXvYqwo6ERMAn9zzRRE/QsRWRmEKPu9o64wDRqd4Qw4QjXDW1OS3VHmDK3JNfLpL1n1ZEaivL39Dg==
X-Received: by 2002:a63:1e08:: with SMTP id e8mr10948373pge.336.1572891178635; 
 Mon, 04 Nov 2019 10:12:58 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.12.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:12:58 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/14] coresight: etm4x: Fix input validation for sysfs.
Date: Mon,  4 Nov 2019 11:12:42 -0700
Message-Id: <20191104181251.26732-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101259_566554_EECEC410 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

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
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
