Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B04A8AA34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 00:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uT17VQnxnWTjHxeNBF6Nd8C5SRDu0ZJjGuLRN+brSNU=; b=VhfnZXsPRGmzMi
	uemYCISsAt0uymGidKZ3U5qXKMHSEOozLqOFy9C0nZmh5ar/Hf1+m7Ra1DOst61ysBN6C8Nu8YHBo
	LBYjMpD4Wsv7qt6ucw2ryVJnsxLOPGqOz8ytvqZWnsesm5v08+T/zMwqbTly8K0r13uPLnYPNbGXe
	O56g7cNOLMP4z8X/+7Z+xo/JLhnROa3OBMR6g0yJ60pVR+c1N/9n3pZQiRJBxZTBXZPYc3GLpM1L5
	EvYUhoKGLnmj1VOq5sZLcrtmNrZKBBYlYPU7N4Fa+rv8cwso8iKdVdFda0yDD6OvAhY2EEHWGQzUJ
	1ObjtZthXNM+3Sey/JNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIXz-0002ZR-GN; Mon, 12 Aug 2019 22:12:11 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIXp-0002Yl-Bc
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 22:12:02 +0000
Received: by mail-qt1-x84a.google.com with SMTP id e2so15291455qtm.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 15:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Jw1cj/+ww6TfMtRSJmzTU59qtmGQEsSIwrvBNo/N7vI=;
 b=iChCTuWckrWOil+NdSVQAXCes8B5y+65GYvCV0IakAqJktJmI/dqtiIt7UiI2ePUeJ
 uX7GWHA/fOMjJ9EroA9KTPBKBpIqHm34x/LpQfBTFSUtiQHqfLalCNCotPDpR94Y0nJo
 o1mh/M3dFf1EC0+hT6IcWPTi5U/HnvRqWstHp4Dmzei8hxvRLLPLpeIzU5wadrIp7tI3
 wUjQgUPE5yzFkpb0NUVdDmaB5oOs/vdE3L1ZCWhniXfrVEiu4W+xhpdxOHBazvyNtiDy
 LnocJc9ECkP4GZmBtQ+yX8mBiYSTItXKBf9JTH/hOBQ3k7Jz7er1kzgVuECju5/jFzLc
 RVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Jw1cj/+ww6TfMtRSJmzTU59qtmGQEsSIwrvBNo/N7vI=;
 b=XABquo+gg7ETi3s3Ufdqc8KH/FAW6XlXIxF9lmhIoUoKonY6ebKgqHg9+xKkLCgypE
 o+hROpNHP25+WZn6Ch6OspytgM4syoLtLfg/puhAsfpSmHMnQd6TBHaz8CMOwqE1ibcs
 mFtywR145jUbd0tO73rCB/1tOf0SxBqd8REiGh0KOnit6WadsNiKlRZijJYk/9xBqatS
 eXqLyhHqjZyUplowXHKulJHhFJTEHG1LGpF0DArjuMyNGRcQl7vFWIBJglLPT6Qbb5YC
 ys79lriNpTc5h6SRGiN9tDEss4t4PiMHAV5aUZfWYwm+V42t3OjajlknLd39xrMF6RlC
 WAlg==
X-Gm-Message-State: APjAAAXGI5turYHarLJ7lzYTf1hlMkjN7pHRjHJrmx7dM6UJ2UWazqVb
 MVYxcC+C9V8Vi1++X3OL/uWB7mQimw==
X-Google-Smtp-Source: APXvYqwy1+a3pvBSx5ME8Bu1yYQnHk1MVG9t0R+bkukKv0wVXu23I1/UVkAiABDKs9aR157Lqsy4jBTtGqk=
X-Received: by 2002:ae9:e007:: with SMTP id m7mr2877964qkk.87.1565647918275;
 Mon, 12 Aug 2019 15:11:58 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:11:54 -0700
Message-Id: <20190812221154.46875-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] coresight: tmc-etr: Fix updating buffer in not-snapshot
 mode.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_151201_425012_FAC35632 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TMC etr always copies all available data to perf aux buffer, which
may exceed the available space in perf aux buffer. It isn't suitable
for not-snapshot mode, because:
1) It may overwrite previously written data.
2) It may make the perf_event_mmap_page->aux_head report having more
or less data than the reality.

So change to only copy the latest data fitting the available space in
perf aux buffer.

Signed-off-by: Yabin Cui <yabinc@google.com>
---

v1 -> v2: copy the latest data instead of the earliest data.

---
 .../hwtracing/coresight/coresight-tmc-etr.c    | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..676dcb4cf0e2 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1410,9 +1410,10 @@ static void tmc_free_etr_buffer(void *config)
  * tmc_etr_sync_perf_buffer: Copy the actual trace data from the hardware
  * buffer to the perf ring buffer.
  */
-static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
+static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
+				     unsigned long to_copy)
 {
-	long bytes, to_copy;
+	long bytes;
 	long pg_idx, pg_offset, src_offset;
 	unsigned long head = etr_perf->head;
 	char **dst_pages, *src_buf;
@@ -1422,8 +1423,7 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 	pg_idx = head >> PAGE_SHIFT;
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
-	src_offset = etr_buf->offset;
-	to_copy = etr_buf->len;
+	src_offset = etr_buf->offset + etr_buf->len - to_copy;
 
 	while (to_copy > 0) {
 		/*
@@ -1434,6 +1434,8 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 		 *  3) what is available in the destination page.
 		 * in one iteration.
 		 */
+		if (src_offset >= etr_buf->size)
+			src_offset -= etr_buf->size;
 		bytes = tmc_etr_buf_get_data(etr_buf, src_offset, to_copy,
 					     &src_buf);
 		if (WARN_ON_ONCE(bytes <= 0))
@@ -1454,8 +1456,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 
 		/* Move source pointers */
 		src_offset += bytes;
-		if (src_offset >= etr_buf->size)
-			src_offset -= etr_buf->size;
 	}
 }
 
@@ -1501,7 +1501,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
-	tmc_etr_sync_perf_buffer(etr_perf);
+	if (!etr_perf->snapshot && size > handle->size) {
+		size = handle->size;
+		lost = true;
+	}
+	tmc_etr_sync_perf_buffer(etr_perf, size);
 
 	/*
 	 * In snapshot mode we simply increment the head by the number of byte
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
