Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B611716E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fi3e8AMSagiQftCvUIudbbLNiNWGmOtdOlzhFsK26QY=; b=MQKpW2FQU1aj8V
	s9fIA4wtZ4GcyYBTTMTXOR1G84ondeeTr2F4lGQYncTxKc12qpsvwsqcgpauQ6swUF/XiAi2T1wmg
	qxGXYDoApsZIRq+FpOZLe2qU0Vj0Su2lNTtzYY8Zg7ck/WHaetvpmiSAgldb8HXgO4ovri/ENS4Dv
	VD5yJ+58QPtCCNGdJJzG/e/zwMeFQ+lUHl2YoxstM+Vacskwhj94UOcG7KvSSP/UKCp5KzQyDBZel
	Dc3mJGG2crU1APbOARtGzTsM2e5B1ouNEWRPHowgtk6dtEdf95h0o99lrYYGZ0aE6sDFq/V/FRoAk
	E9RENGeGPunGw/GRkFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLnS-0002jb-Bb; Mon, 09 Dec 2019 16:22:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLnI-0002ij-Cf
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:21:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id s18so7488269pfm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 08:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=70oqW20/DJHzjlf28vSOcRGe1yLG+Cg2RK6l9FagL/c=;
 b=OBnrp6ldO9XdylaMgI5/cr9oWs8jDGq/zWcPAWIaikmOEPJNw2qdUzxC+/YcmlCw0V
 Y7KjpfRCnIiqe4G9IETiAXRW4MdRb6JSDi2Y54sI7QlifOqE9qZMcdFJa5WvGx4BxAMl
 9GHwbSrvo3NucwGJMFvAO6p1185lyaPrLhYyp4RTkczwBUxwiEsMtcPaqEthZcF8WJcY
 5h2ymoCBeGF0lgkNF+t49yVm9wv85bei0UJcbmN0704g+/lar2QVoYbNoGWs5VrbIKRj
 Vqvmx3WAqPB7xEdOQkDYggvY72KwgxBMFuMu68zFaDcz93Vi2h71iTgjGulOyAhXNg0Z
 wbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=70oqW20/DJHzjlf28vSOcRGe1yLG+Cg2RK6l9FagL/c=;
 b=DYySwIjgUBGARTn+dUTTRBXy409CQQUFdKI82nsQOaS9lY0JWoKiUQJcclS+v9Ji9F
 ar/Mb2WB0YM1YP1GzhVSlfGu8yd7NecPeeXU+7sCHWQz10a7x0ft1dowhsknqW9WD5Ym
 hx1uq55nimUeACm//aoHiIOXd9QtgXThnsy2drjh4bYMqfKPHSavcf7VIj8OOREvYIno
 uu0RBzphiMnanX3OT7nDqVBOMlmKjAUlEYWhgUesRHcNRF8i+x+AaB/e6wyVSxh8zji/
 XWTG7Mp204U30yhCtTY6uLu9n141j4b/DSNOoQZsQhoKsN/fRzSalq7ebXCfQpu3Rbzo
 YEgg==
X-Gm-Message-State: APjAAAUE4XJOFpTVnqIQx4nPixlOVdb0Q6kldaXDS8a/phGbF44AUx01
 o0gkDSwXHlWgHyEDpQn3dfc=
X-Google-Smtp-Source: APXvYqwo9qI45m5jDokO8HihKyUyIE6CPbZT1X7EJ7Eh7j/3O3eilTlx22kkYK4520v5d9URHJbPxg==
X-Received: by 2002:a62:ac15:: with SMTP id v21mr30819253pfe.48.1575908514461; 
 Mon, 09 Dec 2019 08:21:54 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id o8sm202614pjo.7.2019.12.09.08.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 08:21:53 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v4 resend] crypto: picoxcell: adjust the position of
 tasklet_init and fix missed tasklet_kill
Date: Tue, 10 Dec 2019 00:21:44 +0800
Message-Id: <20191209162144.14877-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_082156_435542_5E69B1DF 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Jamie Iles <jamie@jamieiles.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since tasklet is needed to be initialized before registering IRQ
handler, adjust the position of tasklet_init to fix the wrong order.

Besides, to fix the missed tasklet_kill, this patch adds a helper
function and uses devm_add_action to kill the tasklet automatically.

Fixes: ce92136843cb ("crypto: picoxcell - add support for the picoxcell crypto engines")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v4:
  - Use devm_add_action instead of devm_add_action_or_reset.

 drivers/crypto/picoxcell_crypto.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index 29da449b3e9e..d187312b9864 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1595,6 +1595,11 @@ static const struct of_device_id spacc_of_id_table[] = {
 MODULE_DEVICE_TABLE(of, spacc_of_id_table);
 #endif /* CONFIG_OF */
 
+static void spacc_tasklet_kill(void *data)
+{
+	tasklet_kill(data);
+}
+
 static int spacc_probe(struct platform_device *pdev)
 {
 	int i, err, ret;
@@ -1637,6 +1642,14 @@ static int spacc_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
+	tasklet_init(&engine->complete, spacc_spacc_complete,
+		     (unsigned long)engine);
+
+	ret = devm_add_action(&pdev->dev, spacc_tasklet_kill,
+			      &engine->complete);
+	if (ret)
+		return ret;
+
 	if (devm_request_irq(&pdev->dev, irq->start, spacc_spacc_irq, 0,
 			     engine->name, engine)) {
 		dev_err(engine->dev, "failed to request IRQ\n");
@@ -1694,8 +1707,6 @@ static int spacc_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&engine->completed);
 	INIT_LIST_HEAD(&engine->in_progress);
 	engine->in_flight = 0;
-	tasklet_init(&engine->complete, spacc_spacc_complete,
-		     (unsigned long)engine);
 
 	platform_set_drvdata(pdev, engine);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
