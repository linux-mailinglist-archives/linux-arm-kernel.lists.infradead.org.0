Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D54A280F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=abcuc+UQZK8tE0PTami2yajttWjfotrEhofyG8HqUNc=; b=C+MAebwM9Z0DDbBO/aVsDqpcZJ
	ukua9Vfhv3q9dK4PfgoI+WeRjjIlyzqHiII1XE30SDR4WnjMu76a/4wqstbYaTLXrY1s2VrejMSWx
	AZost09EaJwhLS+9covS8yzxOWnt0Hi7kLkrRW2EqNFa6wR/USjvUD0l32It8hCbeni+8du0dh8Yo
	joMpXPiQoU4Zcd5Fm3kxVQTEWWepyyeYxzI7PGs9Jf47gixKt4/3evJhvQddevRtE4EvyuNw8FJQ9
	3nIkAEE+2zNDwSqNYDU+0lXy0q3Z3jsCTEQrE4koqTHTlNl3Y9/rJuyVkr7BjCAIy16xA8820pMnO
	0maXTYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R6M-0000KZ-7s; Thu, 29 Aug 2019 20:33:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2R-0003tY-8x
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:29:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so2192959pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+Z3NPWauWgqkbAtaaZA1LMl/05vfVy1Sm0Y1RvvWJNM=;
 b=ldKueGDnjf1aV9chhRpVQoaP6mJfnsqgRVWouu0i5X418/0TxiyUb6zvDZkucs/eJd
 42d/GnKGMaRfc/DuARvZ2yfDxmPaKL7EAtN8l5MLr4MxRbk7bVzBtfJWl19kA8E3/s46
 JbF2tgRlyFGk0BbdsSe+Cyl9T7S/PqdwWuZJQhk9NyhoW74AqxnH1ktuU4yQBpGbgV3+
 0EhMzfHYnj/dHrRcb+X09+qajHRJFbwfBtmv5SlOVLSeuxRXXZZig4wjwVLkQ7UoLb7d
 aV5LJR5hqfyPNl5RXf0KeJgJWn/495dYllnSHrqN9sIdWkX1EUZF6VPVCHCBdKv92RuG
 bwpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+Z3NPWauWgqkbAtaaZA1LMl/05vfVy1Sm0Y1RvvWJNM=;
 b=TkCaTFYwCYa++pf6pDQMdtzth8xDVU31exoompbpChsYtpwPydBcHHqIytAEGsG/k2
 TRLm4uQErcWf09wfCMM7cL3uqfO1BiyoTyD4AjSw5s9thHpQnUAeiy46FgorodJUspFO
 L6XqPsd0IU83fvriSZHcA4k+r0rA/RCPn0CIqx4lshjwPsJHy5U8aFxbFNlH/TjWQx1Q
 7HaI2SQqp7xwjGuaUJRwteeFsInj1B96IVprIStyViqc0kRH8dMOtqZkUBltGVgfcW35
 S1akRREEhb5XR+guItmYxbbmTOwKJf3Gi4H5+V9Of65ob7PZud6NVC62/xfvXpiQDFDA
 KoXA==
X-Gm-Message-State: APjAAAV5PS80yea/aJOJEi/Bhr2k0ffAxmDucaUeBWQxbmyxeOzA02ly
 FADygmiYV2M6+014QxtQkv2tHg==
X-Google-Smtp-Source: APXvYqw6fKuYNcSWl6VZ8txCpcbpn/DEO4p1VN/o1K12yzCs74gVEgOPraGOIo3rgs+N47bHqjykdg==
X-Received: by 2002:a63:10a:: with SMTP id 10mr10095873pgb.281.1567110538599; 
 Thu, 29 Aug 2019 13:28:58 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:58 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 16/17] coresight: tmc-etr: Decouple buffer sync and barrier
 packet insertion
Date: Thu, 29 Aug 2019 14:28:41 -0600
Message-Id: <20190829202842.580-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132859_542025_D94D10FE 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

If less space is available in the perf ring buffer than the ETR buffer,
barrier packets inserted in the trace stream by tmc_sync_etr_buf() are
skipped over when the head of the buffer is moved forward, resulting in
traces that can't be decoded.

This patch decouples the process of syncing ETR buffers and the addition
of barrier packets in order to perform the latter once the offset in the
trace buffer has been properly computed.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
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
