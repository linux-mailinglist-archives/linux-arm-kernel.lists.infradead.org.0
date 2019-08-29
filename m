Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57809A2810
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FzpkVKp5A00fZB+NYzTYAxy4D+DCDtLf8jKZtDNU+A4=; b=m3bDvwAqQrcw9/r5HRWCFnksd7
	GPw17N8g5FeaBiq5MLEzLx6CWiLeD9XOP0s3vFSSrpn2jAU8oDYlSUWDuwqHyPD/7egYzloVlM1kt
	/023eDlzKFpXaP5yQOiv0P46BPMiJYRb/VRJHcqv96OoilEDiTRY3Z6+euIa2/oFEQrQDIrhbshO4
	Yq1fR6y6dA+4y3c7FPd6iVJLgIcRlxpkn6X+nqWq/QcPoiPKxHR+XdpDe5rbyeIZh3zZc/2qrTCW2
	vKTDO1QRe/ZFjVNxM7aQGoDi20y8WqUUDnVmH1Tqd7k+P432mjRyDHx7B+YgXSRsjB53gn3oV1cAH
	JnktA9uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R6a-0000Xe-3K; Thu, 29 Aug 2019 20:33:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2S-0003uU-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:29:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id e11so2192186pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a4fLj0pzLTp9f4awHR+2/MiqHLekTbzHMO5Bqs6m/10=;
 b=b3DnXAN+54JSbRJ5yI0uNAWG1+GgHUU+TReNh8zcGDFl26RYlGv/cHtp6cAqj/Pl5Z
 4ESx/j/0Ab7728jshvKy1414DEkybd0yOr06RpbZbAXjBsjYdqrKxNOfBgNFdAybeCiz
 N+Z7CsBVpE/wrgsSYW2PEEoERAA7i5ME4+LlQTNWrrVPuqy8U9c7AmHIi4BRd4/MVAwL
 6TJEZxHx7ep9tvCxGQ7S/nON41lzQoMBbW1sT+vViShy4m3Nfj3DU27s2+QLoKLyrJee
 x1s4VetypGJ+yTyB49RA6PLsavHKD+Y5qb6GZ5lpD8kvEJCRSx8DrL00SrCF6F4Q1kE6
 KVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a4fLj0pzLTp9f4awHR+2/MiqHLekTbzHMO5Bqs6m/10=;
 b=tBHy4nz4+w/0z0IlDgwFWK+Z0wAE5Gxg0sJPNClkbEG+Dp/yuANAwkSKk++HX2xvbf
 SfA4tjUHzCmCbS4nMtA+/C9vsLfqKso1463Rr8TgdDdGj164CqJoaXJRq0Zg7dIE19KY
 4NUIjjDxbXeq8RIfTEz5eK+r70mkqXQuYwZnslgkFpn2o2RJh3654e3R8m4ldyZbvY+e
 0VFDHfboKb5aNjS+E1NIEcTI8QLMY7p+xY1SreyMe9QVtzfOfmDSG6xGI2RtC0PO1ulb
 VmgdNzGX02pUBIG+XCrtezr8n+Fi1v97S1MTm1rcChnGYpHpdYDNsRPYMfFUbNg7vgA2
 sJxA==
X-Gm-Message-State: APjAAAXXhVOedrRGTLJ34O5eyOsb561WWBaOehJnr2uy4CjPG+CosEqr
 Q++EH2+lQ8LU3LxqjqQEk9XPtw==
X-Google-Smtp-Source: APXvYqyxgMZlae3Rm+VSdxYOt2HE3ppCQLjD+ApyYoYU1cGxOW+2Xo1m7irCZTsV780b2Vz/US+mAA==
X-Received: by 2002:a63:1743:: with SMTP id 3mr9672715pgx.435.1567110539475;
 Thu, 29 Aug 2019 13:28:59 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:59 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 17/17] coresight: tmc-etr: Add barrier packets when moving
 offset forward
Date: Thu, 29 Aug 2019 14:28:42 -0600
Message-Id: <20190829202842.580-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132900_384342_46BA59FB 
X-CRM114-Status: GOOD (  15.39  )
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

This patch adds barrier packets in the trace stream when the offset in the
data buffer needs to be moved forward.  Otherwise the decoder isn't aware
of the break in the stream and can't synchronise itself with the trace
data.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Yabin Cui <yabinc@google.com>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index bae47272de98..625882bc8b08 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1418,10 +1418,11 @@ static void tmc_free_etr_buffer(void *config)
  * buffer to the perf ring buffer.
  */
 static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
+				     unsigned long src_offset,
 				     unsigned long to_copy)
 {
 	long bytes;
-	long pg_idx, pg_offset, src_offset;
+	long pg_idx, pg_offset;
 	unsigned long head = etr_perf->head;
 	char **dst_pages, *src_buf;
 	struct etr_buf *etr_buf = etr_perf->etr_buf;
@@ -1430,7 +1431,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
 	pg_idx = head >> PAGE_SHIFT;
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
-	src_offset = etr_buf->offset + etr_buf->len - to_copy;
 
 	while (to_copy > 0) {
 		/*
@@ -1478,7 +1478,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		      void *config)
 {
 	bool lost = false;
-	unsigned long flags, size = 0;
+	unsigned long flags, offset, size = 0;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 	struct etr_perf_buffer *etr_perf = config;
 	struct etr_buf *etr_buf = etr_perf->etr_buf;
@@ -1506,16 +1506,35 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	lost = etr_buf->full;
+	offset = etr_buf->offset;
 	size = etr_buf->len;
+
+	/*
+	 * The ETR buffer may be bigger than the space available in the
+	 * perf ring buffer (handle->size).  If so advance the offset so that we
+	 * get the latest trace data.  In snapshot mode none of that matters
+	 * since we are expected to clobber stale data in favour of the latest
+	 * traces.
+	 */
 	if (!etr_perf->snapshot && size > handle->size) {
-		size = handle->size;
+		u32 mask = tmc_get_memwidth_mask(drvdata);
+
+		/*
+		 * Make sure the new size is aligned in accordance with the
+		 * requirement explained in function tmc_get_memwidth_mask().
+		 */
+		size = handle->size & mask;
+		offset = etr_buf->offset + etr_buf->len - size;
+
+		if (offset >= etr_buf->size)
+			offset -= etr_buf->size;
 		lost = true;
 	}
 
 	/* Insert barrier packets at the beginning, if there was an overflow */
 	if (lost)
 		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
-	tmc_etr_sync_perf_buffer(etr_perf, size);
+	tmc_etr_sync_perf_buffer(etr_perf, offset, size);
 
 	/*
 	 * In snapshot mode we simply increment the head by the number of byte
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
