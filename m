Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8DF9699B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xsnp23UK5wxX+XgODq+9r5T62eJRDWTaVjCzdO2FqAk=; b=I1mPRh2ePYwVz1VrcbiL68k6JK
	DocRZqRWYRAn6+CsDPVcsy66lip4imHhnDa8E1YsbxcnNc2w9zqkFFK7xyw6GvPmOMjUthx8Bb3FG
	Oj9Jb6VdK+GSP506MPtzeyKLQffQA0RZ38If6Sh/EJB5oLoI6bkH3VQj9rINIgsj3aYGNXaNP8vzP
	vGAwfELj8ROBQ2Q/3udgtNrJuai9fnk2wnDtMHKAFpaw0AdDuqXR8J30YhKo7xldiFw66ffIRBl5q
	pJj5AAHjEAfbEJgVAL6DNObwL/M/ThA7Zy7JtcobRETgpvLYMG4sr7jXfmQ2q9jiFyPiG9YmjadbW
	vLhoXbYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A1N-0001fg-Qy; Tue, 20 Aug 2019 19:42:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0A10-0001WL-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:42:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so3815390pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cFBvkKuuWi+HbO9KOXgKTQ8unSsFnD1762JFz5no288=;
 b=uUqgHilOys4BTdd9LsMBIxX9/2ItVA4ZjN4bVuQf7z5nZM9afZb6SDXcohY/R8FZMr
 PTh7w21Hn2UCvCsrQhexORxx4cy9+qz5oVzZRR/wPk4AKZaomRxiAcafU7iFY+0LCocT
 oyyjqsWrZ+1kA4v9k2YY2ZOabL58sEZtTj45ePwm+rLVaNPRpSWaucdxAxkzrasvIUzZ
 JlMG6MoHqaY0A46w/6uuPOH2GQIcwU/W/n7BFMoyKoGZT87RU4FySlMplbC/IbOETUnR
 XII1Ht8tDY1XwO5R68HKilj26zpbLDedZcdmM7aoa3xieRp7u5YT5Afe/yBsMP3iNS8S
 XGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cFBvkKuuWi+HbO9KOXgKTQ8unSsFnD1762JFz5no288=;
 b=lw0BhkB8Kz1frixViTFd4if5DYS9thqi/OrLYYqKpOE4tNaL5Lcrr0TPI6pPHsNj2U
 ODkIC3TkvDjAzM7s1NEzpLFuOlZN1ueGxYb5dT1ofUI42r7rZdh9oAI846xwHleBljJk
 1bkt6r1iv28lrnHB7t1vH/ov/pTzPwqMyabv8MDDqYLO4NYT6M05n9fERkStY+trG5JA
 TaPkWbtyBbo2bGADjmXobfPrkn4fijTghXU7eaYF0fqP3JtnHaICSxPjpfYJQ4b0v+wv
 Pt/WCujGDR2WYPHVVa9H/3kTA+mKO+whIJ/Qmv62IaQt6Tug+gHXGXpdKXD6QnVVdqF9
 00ew==
X-Gm-Message-State: APjAAAUiEnl7jT6n76gygA3ITFnKucVZlffw7QDVRLP74ykDudlwt050
 7/C4cvh0aobHQgr/iXiAw/k4dA==
X-Google-Smtp-Source: APXvYqwPsX6r1Oz1U56tUe+kiFPrLJw/Tqp1XtWTkhMiKnFW8epZQZmJct4uTfgPF3ZTiq34uueJEA==
X-Received: by 2002:aa7:8a92:: with SMTP id a18mr32234207pfc.216.1566330117377; 
 Tue, 20 Aug 2019 12:41:57 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm24220671pfg.102.2019.08.20.12.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 12:41:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] coresight: tmc-etr: Fix updating buffer in not-snapshot
 mode
Date: Tue, 20 Aug 2019 13:41:54 -0600
Message-Id: <20190820194155.28992-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190820194155.28992-1-mathieu.poirier@linaro.org>
References: <20190820194155.28992-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_124158_308099_5AA10D87 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yabin Cui <yabinc@google.com>

TMC etr always copies all available data to perf aux buffer, which
may exceed the available space in perf aux buffer. It isn't suitable
for not-snapshot mode, because:
1) It may overwrite previously written data.
2) It may make the perf_event_mmap_page->aux_head report having more
or less data than the reality.

So change to only copy the latest data fitting the available space in
perf aux buffer.

Signed-off-by: Yabin Cui <yabinc@google.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
