Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60A89D6FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4wIpR+Mm1lJI99j4g7hUNzThqsK9/+Nrf98sqvPaXE8=; b=Q/dJw8I2J892KkHrJ+MwEkkqjg
	h/VmBpWU5JZi4xplkq/q1gOg7p++18Fil1DbBoKrrMm6uwZxhlvzAjxoDisx2hra84ocYtB6wXl3l
	QfwmsZMoavr6cyKSz0u9OIHShLPHlF1tqw1jWzNtvI1SR6Daw5tb0Rgd1oAzXOcyBCKUaOUtKlaVF
	44FUcR9Bo8guZXCIi+tJ7524sVH4qlDt+GvaE2sFL9itbT4Wm9iiGAjTgsk4hPxmKsnTj+83d5JS4
	4nkSib4WV+pGF3cN5AHlckB+MkQGqNxUV9w/FN2/TurPICDTz9n9nVF5BE57ZlOKmKSfZ4YwOowGm
	9iQ/zlbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Kx7-0000Jj-9q; Mon, 26 Aug 2019 19:46:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KwL-0008I3-SD
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:46:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id b24so12485992pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=to1oeNA++JDNSoQZ9+DGa/c6NmOGbTyxF1scobzI6zQ=;
 b=vy0jQd6ibfmNAqxqvIGEsgIqX8AWCCtFxStWZJcseWo1cqp/4a7MfZnKyIqzuaGZ1k
 ayaqhNJzN7fzAy0ym5mFYWWNIyM8oDwrzZ0BXGss/dz37lVhtL5VPjKvRu2HBP4IUDkr
 kHzxYmU1B62NgZI6Kd5eSZk5ipg1afqrdau02VSA+EwC5U+Uw1YhGBN46qWgUGLc1mO0
 6pgYzCjRkSOjtrhWe8Nfl99nWhtllWgG5VKo2yXy0YO5/nrwIM1sVdX8hpSJX/oE65ax
 UFWurs+ypKJnLH/rb5nuVWTAaSR6LjdvPshy0uBw/2rNsvpgIYffvI/nMKgVO+ZQFXzH
 6CQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=to1oeNA++JDNSoQZ9+DGa/c6NmOGbTyxF1scobzI6zQ=;
 b=j5qMAK3pzP9o9Nr3KynlqBzdd1mpR62vOtOs5r/1dVxSPb19bFmzn9LMYMVLtXftfS
 9gaCh9yf9x0Ys0IkZZu0HaJFi7e60E3m16s/kN3YbZLwMADDId4e9d4y/xr5c8OyZhv6
 i4QWkXoMtEwAnBzVprZgbSIjK9aUTX1bieT6HJAv9OYHA33BcL4Q0/bg8Pu376fDaFBf
 Oai4zop0tTiSTseOyRwiyE98q99Kv6eboeum+UjPcNfu7CDZQtQ7ozpgccvGrQRbKUVT
 zSVj+gjqcNAF/UhuR+4ZSJ7pauaPjDdxfqmQgIZcqX1QE/6QhYV3U2ghNt4Cp4A67Kg6
 NX5A==
X-Gm-Message-State: APjAAAUVBeIBL9PAjftxJ3/ABk5RvKKmGYv5hy4C01/7JgniKNnw2xWy
 0K2DZXIM7AJpArvF4qugOxuZWt6bd0g=
X-Google-Smtp-Source: APXvYqyWitdKUoiHYjEAp6ufI6puptwr+/IHwRzNNQMvnMMuB9gnLsh5IW5tBtZxfpFaaNbaEC8eoQ==
X-Received: by 2002:a65:4507:: with SMTP id n7mr17258859pgq.86.1566848769060; 
 Mon, 26 Aug 2019 12:46:09 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c35sm13214789pgl.72.2019.08.26.12.46.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:46:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: suzuki.poulose@arm.com,
	leo.yan@linaro.org,
	mike.leach@arm.com
Subject: [PATCH v2 2/3] coresight: tmc-etr: Decouple buffer sync and barrier
 packet insertion
Date: Mon, 26 Aug 2019 13:46:04 -0600
Message-Id: <20190826194605.3791-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826194605.3791-1-mathieu.poirier@linaro.org>
References: <20190826194605.3791-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_124609_911280_3DF32B98 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexander.shishkin@linux.intel.com, yabinc@google.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If less space is available in the perf ring buffer than the ETR buffer,
barrier packets inserted in the trace stream by tmc_sync_etr_buf() are
skipped over when the head of the buffer is moved forward, resulting in
traces that can't be decoded.

This patch decouples the process of syncing ETR buffers and the addition
of barrier packets in order to perform the latter once the offset in the
trace buffer has been properly computed.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etr.c    | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 4f000a03152e..bae47272de98 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -946,10 +946,6 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
 	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
 
 	etr_buf->ops->sync(etr_buf, rrp, rwp);
-
-	/* Insert barrier packets at the beginning, if there was an overflow */
-	if (etr_buf->full)
-		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
 }
 
 static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
@@ -1086,6 +1082,13 @@ static void tmc_etr_sync_sysfs_buf(struct tmc_drvdata *drvdata)
 		drvdata->sysfs_buf = NULL;
 	} else {
 		tmc_sync_etr_buf(drvdata);
+		/*
+		 * Insert barrier packets at the beginning, if there was
+		 * an overflow.
+		 */
+		if (etr_buf->full)
+			tmc_etr_buf_insert_barrier_packet(etr_buf,
+							  etr_buf->offset);
 	}
 }
 
@@ -1502,11 +1505,16 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	CS_LOCK(drvdata->base);
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
+	lost = etr_buf->full;
 	size = etr_buf->len;
 	if (!etr_perf->snapshot && size > handle->size) {
 		size = handle->size;
 		lost = true;
 	}
+
+	/* Insert barrier packets at the beginning, if there was an overflow */
+	if (lost)
+		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
 	tmc_etr_sync_perf_buffer(etr_perf, size);
 
 	/*
@@ -1517,8 +1525,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	 */
 	if (etr_perf->snapshot)
 		handle->head += size;
-
-	lost |= etr_buf->full;
 out:
 	/*
 	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
