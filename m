Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EDF145307
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMaxuuV2iVYub60sXxf0uXeb5nJkE5LtIpZ5bdGh498=; b=TLdfnGDoHlFAld
	s+Lf2iroBwvpOqCIwNjiecYOwz4p4YrMimKOwe05iKTs83BlFToThaXsIpAhXtbWrvhXizfBGRIZM
	QqvkoajapyV5ON1GPaZbRUQmF7DcFBCMtqBATiGvZ7+1H76rLBN4wWmQx4H0i9/wFKxaEVmQFgfr7
	E17OUpQPIo5wVG23/HZX85lkHebnHQFlq6yfXSQ5mW8jSdfaH4b5hSGqXiQR9ks5c8ZlhNJ8ldmI7
	b+OVHkn2Ms/1JEby++iYVoqfZDUiAy0MS5IzO3+5R1icVLpAd3zfitqU5vZ5PlcC1yUZQkgKxGTO3
	jy+eNNNntsoY1Bd9himw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDXd-0006Mt-V8; Wed, 22 Jan 2020 10:47:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW7-0004wI-Kn
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so6308060wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4S+yn/Cw6FGkvqLirx1JEfwucBuYI5yAQeYyvQqpsxI=;
 b=ds2DOy1lyspOM14eZEZs2/17U7vnqFrKa7f9ZBdQhN3W9OxGpcntPuZZiS4Hsl6ioY
 r4D3P5iDPZSf3E90XC1Aow6iI6BUhadDjEJm9/ucW2Y0H37h0r+yiyeMlf0MZhMNTD11
 fH3qWP+32nBsBvXOUSWj+uMPXUpB9LLHMgvRSEbLfbyRLiFhBaoJZnCjIx2a5gkcwPP+
 aXO8SMILlAgDBw++VXJwFn7X/MUproKFpz7HMI/rJNEMkdv3vJ7ijVAgHB4zs6g3erol
 Kzi1VfRw2TEIFy6U8aurXO4lk4IR7j/SykPiA4WjQJ1hH0t/V3eRkJg/4nCnrWwDBl0e
 bHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4S+yn/Cw6FGkvqLirx1JEfwucBuYI5yAQeYyvQqpsxI=;
 b=CAQgGkdOHJFSog/EEBIkOxxm8/54zUx3L8ow/8hduFlXbNJycTTi2fSJZYZAySZG3k
 Ltq9Z89EqgG65GmiEm3MsismGHADNgNqibLjdJeLA448I7Ffi0j9L50mg4RRHVf2P4wG
 SxTipxSvBNHJhGHyKKyVd2Ds/YI5X4l6mF9gZC40doZY9u8qcK/cmfiwYw46W/AD6lsy
 6uj0cpa32gkSwJRUKLzcXlLKisFgRtn9Wvj4fzkZkS3qlQVsTbs56nXjZRDJgkhTzSz+
 U4APl2yxgDRnWAQW4FrswhOGXKONH/t8HYGFLk6dBh3l5s1ueFhiHm7SYXnftaZjypEs
 cdiA==
X-Gm-Message-State: APjAAAUTIL0xvwsikpJRJREr3auilD1vPcx6AbgCUmIGVixrYbvGbME3
 Xfo+Xc9HrfmwNpWpLERRm8U=
X-Google-Smtp-Source: APXvYqzkbte6byNdOwmDLXzTtCGjykKZZDRnZdH9h1iEP0BQW3vmY4+IZrPO4ti01TA5oPeKafpHYg==
X-Received: by 2002:a1c:6308:: with SMTP id x8mr2357168wmb.80.1579689946278;
 Wed, 22 Jan 2020 02:45:46 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:45 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 5/9] crypto: engine: add enqueue_request/can_do_more
Date: Wed, 22 Jan 2020 11:45:24 +0100
Message-Id: <20200122104528.30084-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024547_690577_396DAC42 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchs adds two new function wrapper in crypto_engine.
- enqueue_request() for drivers enqueuing request to hardware.
- can_queue_more() for letting drivers to tell if they can
enqueue/prepare more.

Since some drivers (like caam) only enqueue request without "doing"
them, do_one_request() is now optional.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 25 ++++++++++++++++++++++---
 include/crypto/engine.h | 14 ++++++++------
 2 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index 5bcb1e740fd9..4a28548c49aa 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -83,6 +83,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		goto out;
 	}
 
+retry:
 	/* Get the fist request from the engine queue to handle */
 	backlog = crypto_get_backlog(&engine->queue);
 	async_req = crypto_dequeue_request(&engine->queue);
@@ -118,10 +119,28 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 			goto req_err2;
 		}
 	}
+
+	if (enginectx->op.enqueue_request) {
+		ret = enginectx->op.enqueue_request(engine, async_req);
+		if (ret) {
+			dev_err(engine->dev, "failed to enqueue request: %d\n",
+				ret);
+			goto req_err;
+		}
+	}
+	if (enginectx->op.can_queue_more && engine->queue.qlen > 0) {
+		ret = enginectx->op.can_queue_more(engine, async_req);
+		if (ret > 0) {
+			spin_lock_irqsave(&engine->queue_lock, flags);
+			goto retry;
+		}
+		if (ret < 0) {
+			dev_err(engine->dev, "failed to call can_queue_more\n");
+			/* TODO */
+		}
+	}
 	if (!enginectx->op.do_one_request) {
-		dev_err(engine->dev, "failed to do request\n");
-		ret = -EINVAL;
-		goto req_err;
+		return;
 	}
 	ret = enginectx->op.do_one_request(engine, async_req);
 	if (ret) {
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 03d9f9ec1cea..8ab9d26e30fe 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -63,14 +63,16 @@ struct crypto_engine {
  * @prepare__request: do some prepare if need before handle the current request
  * @unprepare_request: undo any work done by prepare_request()
  * @do_one_request: do encryption for current request
+ * @enqueue_request:	Enqueue the request in the hardware
+ * @can_queue_more:	if this function return > 0, it will tell the crypto
+ * 	engine that more space are availlable for prepare/enqueue request
  */
 struct crypto_engine_op {
-	int (*prepare_request)(struct crypto_engine *engine,
-			       void *areq);
-	int (*unprepare_request)(struct crypto_engine *engine,
-				 void *areq);
-	int (*do_one_request)(struct crypto_engine *engine,
-			      void *areq);
+	int (*prepare_request)(struct crypto_engine *engine, void *areq);
+	int (*unprepare_request)(struct crypto_engine *engine, void *areq);
+	int (*do_one_request)(struct crypto_engine *engine, void *areq);
+	int (*enqueue_request)(struct crypto_engine *engine, void *areq);
+	int (*can_queue_more)(struct crypto_engine *engine, void *areq);
 };
 
 struct crypto_engine_ctx {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
