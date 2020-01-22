Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932DE145306
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ztf0JGp+Blf0carwZeAOtA326MOHWQnXoUy+NJJuUA=; b=Ck7az1B2XYvkN/
	bcTp2hICP4zvrcJVDFiyScyQcqd9pQiF+wB56zdTb+iP+z4oYef6CWM0aCcF5iM1QPWtNNkH3fiWx
	spy5Qsgq8ZZFj5T180juG6yS8gi01dTatoy0R55NnA9mWZ4mLT3H8g0pcqfzyl732/TEZ+EXm+IId
	dYKuzqgblqU4VOtiZQmknGnJn9GADQjD4kE69Q+OJmxZy9N2SxT4tOgw6J0yW7wy2zzL4TZDx/b1N
	VsecxJ5Q0SGJ0xvNn2YueRhTKi+vrbJ7XVIPYhzy2dFLLHVYVBqjz1a5sSrN4/ENvQTpdbE1pTfRJ
	5TW/gdhZ0OA9RTf+LeCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDXM-00062H-BQ; Wed, 22 Jan 2020 10:47:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW6-0004ua-99
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so6740988wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q1c4fMXgRAivI+KIqtp9qKOWY67co/0FrPc2eCYg+90=;
 b=nr8u3nfYAjPtAAqgYOSmcY7z3j0CmJEacsKmUlaLEU/61bZC071n/wBvVRSqFb857K
 OgGXGQwDY7DHJImYHGuunm8MMkY7V12amlQB+UxyqzJhkdHTPRioVLHlsU+ufOp0FgRq
 X6IqpXOf8Fh99IyQsb9U4VwE9TvnHR8txVF9H1KysmQDUCbRxxS1qo/cilQX0gbQw8Vi
 uBHg1Mk0DGjNKVbVf2FoRcViiKw8KJwChypgsHGnSyvoXbVP8lr7vb+1PVmmsuQLEK4O
 nJmsWCWeclCL4W2BcmjD2ZhOFAC08n82NXIJYrmNfXoeHq63zbubJ4r7p4AWnk3WyuJI
 Kt5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q1c4fMXgRAivI+KIqtp9qKOWY67co/0FrPc2eCYg+90=;
 b=MMGnA/wVw4pXTGxC3yKAttU4FG1Yp2cHrUaCtDunrQS1JZpx9gsWfKQ1s01E6N0JOF
 gHsb+ROekXupwvVczVtGH+UJAd25v0fL1NkLtTKB2rezNluv/mxSeGgvQB8XRgolBb1l
 kpy1hDyux9fodUaxn2InTQR9rMmQWdboY1R1HbS75MQihMFN70MMcLMvUQryaq2QXwN+
 cgY98hkC64S9PXQyq5lNBTICb8QjcOPfySdULPdjMsgt/EtwMtuunKu0i6h28DfU+ZpB
 uryobj+0NuZJXUuqDHgIFDsrcPpGrKWfQ4Emv2a39ExR4hxeHoMhtrm7cYmIRr1Pek3s
 5Cow==
X-Gm-Message-State: APjAAAUw1ts+S7WeZ5LxHvkRv/RDypreP3QJqNonxlgyXVW8URLKLCzh
 rrONX1eaWA59tUyA2kPn3Dc=
X-Google-Smtp-Source: APXvYqwoJEy1uZGesFKgykNXIpCxdh5m24bdAOqtD59KSsP02/GuJsRs39ZlhORaR+RW4F2HEHRhzA==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr10108920wrq.43.1579689944967; 
 Wed, 22 Jan 2020 02:45:44 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:44 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 4/9] crypto: engine: permit to choose queue length
Date: Wed, 22 Jan 2020 11:45:23 +0100
Message-Id: <20200122104528.30084-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024546_336141_1A274F0C 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This patch adds a new function which permit to choose the crypto engine
queue length.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 23 ++++++++++++++++++++---
 include/crypto/engine.h |  2 ++
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index c21867106aa4..5bcb1e740fd9 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -365,15 +365,17 @@ int crypto_engine_stop(struct crypto_engine *engine)
 EXPORT_SYMBOL_GPL(crypto_engine_stop);
 
 /**
- * crypto_engine_alloc_init - allocate crypto hardware engine structure and
+ * crypto_engine_alloc_init2 - allocate crypto hardware engine structure and
  * initialize it.
  * @dev: the device attached with one hardware engine
  * @rt: whether this queue is set to run as a realtime task
+ * @qlen: The size of the crypto queue
  *
  * This must be called from context that can sleep.
  * Return: the crypto engine structure on success, else NULL.
  */
-struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
+struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
+						int qlen)
 {
 	struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
 	struct crypto_engine *engine;
@@ -393,7 +395,7 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 	snprintf(engine->name, sizeof(engine->name),
 		 "%s-engine", dev_name(dev));
 
-	crypto_init_queue(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
+	crypto_init_queue(&engine->queue, qlen);
 	spin_lock_init(&engine->queue_lock);
 
 	engine->kworker = kthread_create_worker(0, "%s", engine->name);
@@ -410,6 +412,21 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 
 	return engine;
 }
+EXPORT_SYMBOL_GPL(crypto_engine_alloc_init2);
+
+/**
+ * crypto_engine_alloc_init - allocate crypto hardware engine structure and
+ * initialize it.
+ * @dev: the device attached with one hardware engine
+ * @rt: whether this queue is set to run as a realtime task
+ *
+ * This must be called from context that can sleep.
+ * Return: the crypto engine structure on success, else NULL.
+ */
+struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
+{
+	return crypto_engine_alloc_init2(dev, rt, CRYPTO_ENGINE_MAX_QLEN);
+}
 EXPORT_SYMBOL_GPL(crypto_engine_alloc_init);
 
 /**
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index d77080227beb..03d9f9ec1cea 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -96,6 +96,8 @@ void crypto_finalize_skcipher_request(struct crypto_engine *engine,
 int crypto_engine_start(struct crypto_engine *engine);
 int crypto_engine_stop(struct crypto_engine *engine);
 struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt);
+struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
+						int qlen);
 int crypto_engine_exit(struct crypto_engine *engine);
 
 #endif /* _CRYPTO_ENGINE_H */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
