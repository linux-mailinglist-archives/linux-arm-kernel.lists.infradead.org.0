Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0681B1452F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG68x6y+WDai+LST676GomJoWzJKuNoHcDPxYaPF44M=; b=dRKcvZ4zNjLd7R
	+kya01zblEi4VXT/Sg2Vv9iKj+PCUD/n7ZbFtbPKhdGndRMkcMh/FKVE2kGyHfiPUxbxc5QwJUTGp
	ssA6rQ+y0cb/Oy/5Xj2QiVwzmMZeknquR3t4DWksc0YWn+HKpAjazb5Z2hahUewhyYm8fIY2gqpLi
	9HElTgzclsznoIjeBeGbyyLQiPfH1smyNGcIZjmgXbD9nSmDe15Mp/d8ssTUp+w6ci6Obe+6xqpG0
	lryLVe2itS50glf+l9HJdSOmIebETO6J83XvSC+5/E9/2gcC0HVl/ooQqSC9Kqw9XiJ9iXLUHHHPF
	30sz6yobcR072Ny8KWbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDWv-0005Tt-Da; Wed, 22 Jan 2020 10:46:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW3-0004sR-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so6698271wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DFk6HyWuJiVLCGeJdqAeRNr747mUSUy7WV52UkfDFzg=;
 b=nh4V8kN1DQ0V+SZNyGIFD0vsfENzTl54nbI5wPlIaAHa99ct2k7P5oTEzomt8FFx0h
 sTf6JhdhBFGWOb3u8FHFZTRcPYLq20x6neKn5/J81l56XH5OVnxwWHjG8R6gMhTrvtrb
 6WaSVFEc7Ecm+ArWphMtPpplt47QAHfU156O9Lzo4GmcoFKbBGU5CtdMXgzCmYljPsU9
 GxQXzTeMqHBtHDCD7tHT5NAeLU1ehq9eVOFZnwBF4n8mZJYSGTW4H8xjooVws0/5coIN
 UHd5a9MFg2IMtB68T8iFHhbjGZzKWECSnhPY4hUB47d9KBkI1/fpfk34zguUbjpGAqun
 IZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DFk6HyWuJiVLCGeJdqAeRNr747mUSUy7WV52UkfDFzg=;
 b=KfKecB6+FFt9xjo8T7Z3MzsnhmJ7jstPSTg6FegnF4vufP1mD4tPYjQYobIPP5outQ
 jHpoMZH02JkgIGs8VbeyndQYEGwcPo/ywYtKCbYZr0nfml3RasJNlbRyJgv+GCjuAAwF
 Q479++9kCaXjHazDAzDZmer4UZ+Hy3Jp72WXmJbmnuKGI91MXu33BTOdUGu1hZJGNlGq
 RAzT9L53yNrZqni1w8DoyJIdmX0mhxbWIPhp5fz460+PBUTj7ur7drlIWdJN/9Qe/Ixq
 H0FnPHF50fdHP5lh3GndG/0ivQNZecCGX0wQZM3uz8qTiy8tg99U0zyp4fesSbEyjEEG
 hqFQ==
X-Gm-Message-State: APjAAAUYI2TKWsMomWW+FA+9ZznmkdebKR2wOD4rDElqRO4+agqbGmom
 a+nCkN51n8u+lTzfoovOVvg=
X-Google-Smtp-Source: APXvYqzUJ6amFuxmvaVTDvoMRi1W7SWqh+QZ/uQqLstgRZMg10hr9CevSG9DyNj2PIUrkCqozaZhkw==
X-Received: by 2002:adf:f8c4:: with SMTP id f4mr9951911wrq.243.1579689942098; 
 Wed, 22 Jan 2020 02:45:42 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:41 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 2/9] crypto: engine: get rid of cur_req_prepared
Date: Wed, 22 Jan 2020 11:45:21 +0100
Message-Id: <20200122104528.30084-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024543_523166_97A3D470 
X-CRM114-Status: GOOD (  15.68  )
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

Since we want cryptoengine to support handling more than one request, we
need to remove cur_req_prepared.
It is used only to choose if we need to unprepare() in
crypto_finalize_request().
This choice is needed only in case of error, so let's handle error
without crypto_finalize_request.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 17 ++++++++++-------
 include/crypto/engine.h |  2 --
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index feb0d82dd454..dfcb00e92e09 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -36,7 +36,7 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 
 	if (finalize_cur_req) {
 		enginectx = crypto_tfm_ctx(req->tfm);
-		if (engine->cur_req_prepared &&
+		if (enginectx->op.prepare_request &&
 		    enginectx->op.unprepare_request) {
 			ret = enginectx->op.unprepare_request(engine, req);
 			if (ret)
@@ -44,7 +44,6 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 		}
 		spin_lock_irqsave(&engine->queue_lock, flags);
 		engine->cur_req = NULL;
-		engine->cur_req_prepared = false;
 		spin_unlock_irqrestore(&engine->queue_lock, flags);
 	}
 
@@ -118,7 +117,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		ret = engine->prepare_crypt_hardware(engine);
 		if (ret) {
 			dev_err(engine->dev, "failed to prepare crypt hardware\n");
-			goto req_err;
+			goto req_err2;
 		}
 	}
 
@@ -129,9 +128,8 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		if (ret) {
 			dev_err(engine->dev, "failed to prepare request: %d\n",
 				ret);
-			goto req_err;
+			goto req_err2;
 		}
-		engine->cur_req_prepared = true;
 	}
 	if (!enginectx->op.do_one_request) {
 		dev_err(engine->dev, "failed to do request\n");
@@ -146,7 +144,13 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	return;
 
 req_err:
-	crypto_finalize_request(engine, async_req, ret);
+	if (enginectx->op.unprepare_request) {
+		ret = enginectx->op.unprepare_request(engine, async_req);
+		if (ret)
+			dev_err(engine->dev, "failed to unprepare request\n");
+	}
+req_err2:
+	async_req->complete(async_req, ret);
 	return;
 
 out:
@@ -398,7 +402,6 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 	engine->rt = rt;
 	engine->running = false;
 	engine->busy = false;
-	engine->cur_req_prepared = false;
 	engine->priv_data = dev;
 	snprintf(engine->name, sizeof(engine->name),
 		 "%s-engine", dev_name(dev));
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 7e7cbd9ca3b5..4d8a2602c9ed 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -23,7 +23,6 @@
  * @name: the engine name
  * @busy: request pump is busy
  * @running: the engine is on working
- * @cur_req_prepared: current request is prepared
  * @list: link with the global crypto engine list
  * @queue_lock: spinlock to syncronise access to request queue
  * @queue: the crypto queue of the engine
@@ -43,7 +42,6 @@ struct crypto_engine {
 	char			name[ENGINE_NAME_LEN];
 	bool			busy;
 	bool			running;
-	bool			cur_req_prepared;
 
 	struct list_head	list;
 	spinlock_t		queue_lock;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
