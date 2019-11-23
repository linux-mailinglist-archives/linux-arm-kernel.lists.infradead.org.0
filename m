Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9A1107EC1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 15:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YxVEhMoGvisdGgO5vFDk4pbggWcSzBjJJydbKR3RWKY=; b=Ufij5xO7uAz/Zq
	KZ1AU0Siqttk/6oRmqhwAkG78uAioPIit1ZG8gn+1fKmlKY61LCuYu5U8TsM6rSQX4mZCqKSARsru
	HAEJuL6Os+Te6Bjq2Wu7RkALS1StKP0jAJyHv2aOMFSuyL0QtiOC8eymdyTSPBWCUmPHE4JwXkPZT
	rOCgWubDcY/4ALXsdyIAZpslBA+Fd5UCn18sDUBQhwda4OFfrJB3ZnvRx1xmROYJbQptiRVzZn6Ft
	5+TX/YIW+0UzbGhbz0cxrp7Enoy1QpIQrp2bE0jBupxDbxEtVxzSGisdPCY1OcGwBdSnSqs/9wTjz
	4LyaB/Cc6/K70aPLGkfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWFg-0001sX-3c; Sat, 23 Nov 2019 14:19:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWFX-0001rk-9G
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 14:19:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id k13so4895040pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 06:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5+HKRBPgrlkT72FJQm83/RuV1HTnht2e+fyIAxU9IDU=;
 b=Zh0Pta1c9piN/Ve/Tm/yyJw3tYQCNPqVHwiKmyDBAdixxgE9caRst3dWuOOiP3Pfpz
 LlXICjJbocBjxSosmyf6f5bE2yNK4gVjxly26pBZgkemWAQW8quPexC2kaOLvQfO0DYN
 bnAutBZM3Fv1TiBCQD8Dlrk+PiZ4jSj69hF+Bx2B4ZcLAVO93bI2yiAZF94uHcLCVBoq
 XP8ZC3674XIh7wt8h3PtN0xdl1cMbnMNxEiuFgun/UCRYEVDVXYWFH7+lMeF21dF4x3F
 VhmxYWkmCNtwB8/hQhmBmtWjuezn4M8ZWkCbKXHBG1puIR1Bcb3kVRudO1xMB+IIfQQ0
 GkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5+HKRBPgrlkT72FJQm83/RuV1HTnht2e+fyIAxU9IDU=;
 b=PXKyh6TNOXnbUxh10ke0sht6SfGOqFtZR5Plr/e0yC1puQeKTJ0/Y5p65f0E/zb1ep
 q73cnM4Q7PnICAZ6wfD3Yps0pC/zYaetyM7/LgsbbDtF9D025nBYlYPVzmGuzQPU3uvH
 t9b6UHv9ZVLLv+R3W5mc8ciQQNsppteM2hfhStbuNMkITVVO8SgVDbFhqiDkN5De6iYy
 sq+yiZWwIw9VYuNpMWkdpoB38AZRDxr0cEX1t2RXtDKRDwiGoTqTtW6TR89ZDSeUvGUz
 YaSStMZxA/uQ2HnvSdROu9NQLodPwKNFwusbOg1FH6C81evqxEi3jK6cCogXOXldmFmA
 2nwQ==
X-Gm-Message-State: APjAAAUCGjR3ADeNi45XdjCANUDzUq08aRXg4sR+1X19bjYkO5o+t+mr
 j8Risw4osMmnCpUhcRhFMr6Wxfv925I=
X-Google-Smtp-Source: APXvYqwmM2CGZ9NV2t7afNAi5NSJrnoU73ZseZAi/yjFX7c23seSOvOH06ah+PrGHGVjwGHml2iDSA==
X-Received: by 2002:a63:710:: with SMTP id 16mr2106649pgh.58.1574518736821;
 Sat, 23 Nov 2019 06:18:56 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id b5sm2484267pjp.13.2019.11.23.06.18.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 06:18:56 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v4] crypto: picoxcell: adjust the position of tasklet_init and
 fix missed tasklet_kill
Date: Sat, 23 Nov 2019 22:18:45 +0800
Message-Id: <20191123141845.16183-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_061859_351058_2D37CCE2 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 3cbefb41b099..2680e1525db5 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1613,6 +1613,11 @@ static const struct of_device_id spacc_of_id_table[] = {
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
@@ -1655,6 +1660,14 @@ static int spacc_probe(struct platform_device *pdev)
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
@@ -1712,8 +1725,6 @@ static int spacc_probe(struct platform_device *pdev)
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
