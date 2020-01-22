Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64C8145305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcrS5PX9DzDUXiv4tt1XWOmU409Iwzt2zzq0cvMEzlE=; b=byUAUyZlLvq5L0
	p5WWvZjOtpnsIBD+Mgc/+dNPJYmHmKvjv7heKj16iwDABuljMfbPOpvlT43H7t9ljpIxAeCx14xXE
	K5foaNj8c2P4o544T2sNuLE3cnAZTxi1l4TB83cMQaZ5cvPcHXXfY6QSPRgC8CtGE3J1cz9USGJcL
	58woCuxjOisAa+CZni9ePRu54rKUgBGqFN7S53wJ+jpgTyf6ArroPKYOoa4XkYsEqorICTfQKkNie
	oR/E4Y4z/QbPEyIU9b4ZHwduAMgunrDl7MaYFjissGQfd5rrRDuiObFNqnv+pl90fhluFpiSdEd7M
	aAD53P5wDV8nlDdfnhtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDX9-0005o7-Ta; Wed, 22 Jan 2020 10:46:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW4-0004t4-Nl
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id d139so4110632wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XyFi4QUbF6No7tCrbJhCVZ5TjcE02iPJvNCt7IcZqnw=;
 b=atOCu/d8xHcTs6Q9DCR4yOoCncsmGvFRwn3VBq48XEuBvYixBWtSdK1x3JaE3OU9OC
 ODxVylq8Tytjegvo1QsONKr8O8Ky3aMD+tJg0xp4PCXlYb+KbzMgFeN6dhsHfp1BGMI/
 4KEEm8ebnJg+6uaVjvk0lQLz3vgTZOc456xdXU8EFacdblCYBkAQVFPUgp24ytbh5qoC
 vGvFem36xG4b5EgtG3QDmFGRl527x+c3sU0mbL5FukG1lZ4tFDZrvzvsPCaqj14Z+fUe
 Xgz9D6mrp1jW5sywBLwKC5lO+RWFgtOKK2j2T3VaF4fadactNW6r2jTZT6qd15pEjdmL
 vMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XyFi4QUbF6No7tCrbJhCVZ5TjcE02iPJvNCt7IcZqnw=;
 b=DTjH0bNik2MNuSI6eCLOXhtpuxqwgOJYaPZ0Trqijkiv7M7ayAx+xpV2waRDT+3Kz5
 QuxykyMPlv3mBvWwZiRDPU6Sq+BJvL8Pyo+YvI/AkPhjF/zIzpir2LjBKFdvtaleQJAd
 4uYHMisuXpn68W6yScLuZK2BKXZVgD8p8JHaXNn2nV+Gpxpeg3huchYr+BrcdL/KtLj9
 FTd9n77tvB8V1/HYrJidkNbJRE6zFnV8+BmIQgzWf8Gw4BNjgmydLBSyyiaWBHdF87f0
 sjsNuLqKjbcpAvKvXzuRPLcqP+IF8IH1yBzPZVfJcbMpz7BIjt6vC6a4SOvSpRqRvTWp
 a/qA==
X-Gm-Message-State: APjAAAVfi7q99wyM2AhXqW7qCayCRK7KURV3lYfPswYM81TBNl9vzhWd
 NOkYWDUkF15eehovxnPwUzY=
X-Google-Smtp-Source: APXvYqx85aFHoyjVcQwtyMo+TulGXbL1bKMZfZZMz5sFYzpX97V4AsH6AcMjPZhniYZfPSeIRLYP6Q==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr2385910wmj.100.1579689943589; 
 Wed, 22 Jan 2020 02:45:43 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:42 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 3/9] crypto: engine: get rid of cur_req
Date: Wed, 22 Jan 2020 11:45:22 +0100
Message-Id: <20200122104528.30084-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024544_791955_8AF332CB 
X-CRM114-Status: GOOD (  14.75  )
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

cur_req was used as a sign of usage of the crypto_engine, now this
behaviour has gone, its usage remains for detecting if we finalize the
cur_req.
But testing if we finalize the cur_req prevent to do more request at a
time and is unnecessary.
It is unnecessary since crypto_finalize_request() is only used for
cryptoengine and so the request finalized will be always the current
request.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 25 ++++++-------------------
 include/crypto/engine.h |  2 --
 2 files changed, 6 insertions(+), 21 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index dfcb00e92e09..c21867106aa4 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -24,27 +24,15 @@
 static void crypto_finalize_request(struct crypto_engine *engine,
 			     struct crypto_async_request *req, int err)
 {
-	unsigned long flags;
-	bool finalize_cur_req = false;
 	int ret;
 	struct crypto_engine_ctx *enginectx;
 
-	spin_lock_irqsave(&engine->queue_lock, flags);
-	if (engine->cur_req == req)
-		finalize_cur_req = true;
-	spin_unlock_irqrestore(&engine->queue_lock, flags);
-
-	if (finalize_cur_req) {
-		enginectx = crypto_tfm_ctx(req->tfm);
-		if (enginectx->op.prepare_request &&
-		    enginectx->op.unprepare_request) {
-			ret = enginectx->op.unprepare_request(engine, req);
-			if (ret)
-				dev_err(engine->dev, "failed to unprepare request\n");
-		}
-		spin_lock_irqsave(&engine->queue_lock, flags);
-		engine->cur_req = NULL;
-		spin_unlock_irqrestore(&engine->queue_lock, flags);
+	enginectx = crypto_tfm_ctx(req->tfm);
+	if (enginectx->op.prepare_request &&
+			enginectx->op.unprepare_request) {
+		ret = enginectx->op.unprepare_request(engine, req);
+		if (ret)
+			dev_err(engine->dev, "failed to unprepare request\n");
 	}
 
 	req->complete(req, err);
@@ -101,7 +89,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	if (!async_req)
 		goto out;
 
-	engine->cur_req = async_req;
 	if (backlog)
 		backlog->complete(backlog, -EINPROGRESS);
 
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 4d8a2602c9ed..d77080227beb 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -36,7 +36,6 @@
  * @kworker: kthread worker struct for request pump
  * @pump_requests: work struct for scheduling work to the request pump
  * @priv_data: the engine private data
- * @cur_req: the current request which is on processing
  */
 struct crypto_engine {
 	char			name[ENGINE_NAME_LEN];
@@ -57,7 +56,6 @@ struct crypto_engine {
 	struct kthread_work             pump_requests;
 
 	void				*priv_data;
-	struct crypto_async_request	*cur_req;
 };
 
 /*
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
