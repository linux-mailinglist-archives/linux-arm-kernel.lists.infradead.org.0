Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD00A280C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TS93avKJvo63j5LHxjcPAo4cDxMtXWAQzXF7lS4YGQg=; b=QtgB1VxdLBQisTgKtdIJOUuXv0
	/HyJERWWp5FQioKlzE8KhQG4haplrLMXPkYIB8NgZSlF9CmTS5GbBVqLGAyKt8ZjLneTGKTKogx6p
	bJYxyKWDHCUZZTAUu9XswNGxTa9+WMHHi1T2iETlN8gNIBDeZdQ1t52xssyGZCrOPa4kz/t04pQnY
	tpXLAkz0Vr7hBZ/SvihMFon4vjJ0iutNfYmZ9uvkfme1agBflluLZkDy7dREy8ZqKZONctEOc5Rd8
	u7YdQ51yiCSHBsU8RcHCmsBQBNmwDoZcIdX7DOUbzwkUvre+3igzkpNuXP7rjUYtWHj7uLUy8RD4l
	GxrLIy8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R5h-00086y-Io; Thu, 29 Aug 2019 20:32:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2N-0003pj-Vn
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so2209758pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dht/RUc4+DcZjMSx1Gk9ynHax5PcdbOKL1DeXRBmap4=;
 b=QKloUu+1WWB2hyO1EX6mdPu62V1PWog2BPnolZQihlcG+CHyvuVJtsnZKn3wYSfEYg
 229ucIvdqCoSDdbAKslXiQWRs9KQzanRlq3NiWWSvyiVnD9kNWqRTxCWSL1OBt8KI0Se
 yxYzhK7by4/tTmW75M6Jj31Sl6TxNFCt8tMvWijWGQ6P3ahDw6GrvkN3HQkCn6bPpaan
 tf3cdny6TEQzrKSKFzJc0zX9jS92PjBih2qVQsLWW9ovPr0NwtyVx+rONtDBJk4cOZad
 +FtRcM4musLa2u7/DRziLkRcafbCygfPNyqFKxZ6Dc10Qh/+L3U6++ghG+Kio1Uk1pZf
 6dSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dht/RUc4+DcZjMSx1Gk9ynHax5PcdbOKL1DeXRBmap4=;
 b=qUrIOV5uIBIZIiHEYkFdq/pmz1o3S7BUa1Q3kY12f7YLEky5yy+WXUh+R05Er7+f1O
 SaLodohVW3YY1rLEnVyLh7vSX2HJiizHALHInPDKY0mqeafzxRuDW1F4spX9vP4AA4VV
 vNI8a/OK2SSQLevls7xZSjmVVXVtglGrhE+SDNrU0IFDh76EAAjMdSPmtnASHM34vZb4
 Q6oq1IFks8Hz31ET/gM6XGZ+YJUoxGpf2qRg2TR7vKzo/dTRgOgTSKYs9xrOMXwx4Z7y
 Arp2qWPA66loxU5mMYguMhpIchaQSM/ao4tDmHR99yk1IDQ67ZgqizjUua09ybL8ayl9
 e67w==
X-Gm-Message-State: APjAAAWOAmh9fn0NMAJCX8Tut40l95dSCCOCNHZWfH1iCU25T1qsp7MW
 ISABe8VhH6parxrDMUgMq1TuyQ==
X-Google-Smtp-Source: APXvYqzLumVsarjdlWeQXqwDjH4Q986hSSVbQNJGdBqjMNSf4CRq3QPvnQDqRktXf4kPWyLyRo1dwQ==
X-Received: by 2002:a63:2264:: with SMTP id t36mr9560463pgm.87.1567110535406; 
 Thu, 29 Aug 2019 13:28:55 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:55 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/17] coresight: tmc-etr: Fix updating buffer in not-snapshot
 mode.
Date: Thu, 29 Aug 2019 14:28:38 -0600
Message-Id: <20190829202842.580-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132856_113445_4C262B44 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index 2246c1e6744a..f835a3c78b37 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1414,9 +1414,10 @@ static void tmc_free_etr_buffer(void *config)
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
@@ -1426,8 +1427,7 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 	pg_idx = head >> PAGE_SHIFT;
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
-	src_offset = etr_buf->offset;
-	to_copy = etr_buf->len;
+	src_offset = etr_buf->offset + etr_buf->len - to_copy;
 
 	while (to_copy > 0) {
 		/*
@@ -1438,6 +1438,8 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 		 *  3) what is available in the destination page.
 		 * in one iteration.
 		 */
+		if (src_offset >= etr_buf->size)
+			src_offset -= etr_buf->size;
 		bytes = tmc_etr_buf_get_data(etr_buf, src_offset, to_copy,
 					     &src_buf);
 		if (WARN_ON_ONCE(bytes <= 0))
@@ -1458,8 +1460,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 
 		/* Move source pointers */
 		src_offset += bytes;
-		if (src_offset >= etr_buf->size)
-			src_offset -= etr_buf->size;
 	}
 }
 
@@ -1505,7 +1505,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
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
