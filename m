Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209FB1452F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzKYyS3Rtoh71GaltTo0sUvOHPbLN2j5LWjGW1iadOE=; b=IQOWpvUxOmW5mF
	8moho6gWcznrU1trz5UGwHU4s/8v6ZgwQjcnSP/1hvFGIh/39/FRUhJDCkKlR6+/wm2Yj6TfTmWf+
	kYJmRQiE/sffW2n8kJfocrCn8iXJkDRdcl9o4rxi+F7UJArqQFdg1rY4Ym6oI5avdiEHklTnzFasx
	g4Yxw7mkGFH1wVBqLJVC+Vgmz4/bHuSczfeUgUyAgIL9rprUVuwhMAL0KbsLMVCcG55k0iPPhcYPj
	ePjip379GYm3tmZj61rFMLQTUKFxxd709gqMtLHU5Il2+JcjJLvpFljxzwfj9Fp9fBfZwOqQL0l6E
	2eKR6lOLGjGLR4EK2kVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDWW-00054C-I2; Wed, 22 Jan 2020 10:46:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW2-0004rN-F2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so6708056wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lo8LLHFbuM7TeGYDeTlQoBN8WOd2hUEZekUpabEc1mM=;
 b=gY97jhBxzfGaSoSJe/9DJBRMWHpcwm2pHDbhJbZ5+5w49H5BCpCkqHYZwE1vo8tDnt
 bpNKVku2NGfETc/ThU4Sf5qw6sbYIP7ndKZm7JEw3KE3mY14jO1zcipE/+V6fIkB+Zc3
 t0z4/Th/wP+oUvshpss+455rUZGXGelGdf/W++RDJoqlmIwGmLjYRgE3V48yyng4q5z8
 NwZYiLZ/LFp91vIAWzQvCLPji0AZjRVfXKWoUdQgOsCy41402wg0mwK3AHWpNyWfzgt3
 8xPncSZ5Zzc337KUWJC/dwoeVjEWa548Zs872YwKEh9NIB7yjGbA83TfhohB5xzkK7M4
 F6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lo8LLHFbuM7TeGYDeTlQoBN8WOd2hUEZekUpabEc1mM=;
 b=V0WX1tkRzLkl3zRac31nhFXffw+rMDFsBM5VGkevbJT4LGDD8dwlCZ66Qmut909JUf
 EMiIq6gxyQqvDl1qH5vMMgPs5u1Lm0OHbQuU2B0wr/fizZxQT3fSPe5z9Y9vzFRXD24B
 ExnL9HS9UseDUr8Yhg1MY6j9l1WyNdsW3XeeMOmsEvlLAN5jZxskxfGvtnufHyfYbd5K
 eGqyYjv0ogAUGrjcFGm1jx8Z/3ohU6tZbejgGamU9aiP2E0d4Zgg/qXydAyci8iscz+A
 ZMEynr/zH1E8n4cG4VtJBsULeWtvg61356mfh8prnD5CQIAQqlFW/Pv6WlFCiVhha+Hu
 a8Zw==
X-Gm-Message-State: APjAAAWVpWcRophnflZsjmz0ejG3RiNNLT5+6+ow41DaXFg5aINbGFcX
 eWfMGALftW6y4jMO8SI0zN4=
X-Google-Smtp-Source: APXvYqylHdDo0Ce4Pl3PZywawsbwSz1/WCPI8gnceqoCrzqzmRYGpJyEyygKdIwwAlHY5ZOO24nm3A==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr10174792wrs.369.1579689940777; 
 Wed, 22 Jan 2020 02:45:40 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:40 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 1/9] crypto: engine: workqueue can only be processed one by one
Date: Wed, 22 Jan 2020 11:45:20 +0100
Message-Id: <20200122104528.30084-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024542_500960_E841CF7C 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Some bykeshedding are unnecessary since a workqueue can only be executed
one by one.
This behaviour is documented in:
- kernel/kthread.c: comment of kthread_worker_fn()
- Documentation/core-api/workqueue.rst: the functions associated with the work items one after the other

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 13 -------------
 include/crypto/engine.h |  2 --
 2 files changed, 15 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index eb029ff1e05a..feb0d82dd454 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -73,16 +73,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 
 	spin_lock_irqsave(&engine->queue_lock, flags);
 
-	/* Make sure we are not already running a request */
-	if (engine->cur_req)
-		goto out;
-
-	/* If another context is idling then defer */
-	if (engine->idling) {
-		kthread_queue_work(engine->kworker, &engine->pump_requests);
-		goto out;
-	}
-
 	/* Check if the engine queue is idle */
 	if (!crypto_queue_len(&engine->queue) || !engine->running) {
 		if (!engine->busy)
@@ -96,7 +86,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		}
 
 		engine->busy = false;
-		engine->idling = true;
 		spin_unlock_irqrestore(&engine->queue_lock, flags);
 
 		if (engine->unprepare_crypt_hardware &&
@@ -104,7 +93,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 			dev_err(engine->dev, "failed to unprepare crypt hardware\n");
 
 		spin_lock_irqsave(&engine->queue_lock, flags);
-		engine->idling = false;
 		goto out;
 	}
 
@@ -410,7 +398,6 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 	engine->rt = rt;
 	engine->running = false;
 	engine->busy = false;
-	engine->idling = false;
 	engine->cur_req_prepared = false;
 	engine->priv_data = dev;
 	snprintf(engine->name, sizeof(engine->name),
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index e29cd67f93c7..7e7cbd9ca3b5 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -21,7 +21,6 @@
 /*
  * struct crypto_engine - crypto hardware engine
  * @name: the engine name
- * @idling: the engine is entering idle state
  * @busy: request pump is busy
  * @running: the engine is on working
  * @cur_req_prepared: current request is prepared
@@ -42,7 +41,6 @@
  */
 struct crypto_engine {
 	char			name[ENGINE_NAME_LEN];
-	bool			idling;
 	bool			busy;
 	bool			running;
 	bool			cur_req_prepared;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
