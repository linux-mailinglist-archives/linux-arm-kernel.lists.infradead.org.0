Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF201070EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5qXov93Q4d81s/QA8y11sa5M3vX/Fp8shc8W8XxuKIQ=; b=Q8i3JGsjHGl2dI
	GGBHRcvXYVyriA+Cs/dcP48LjBXcoHhO8RK8gQEy+ZP9AIj2k/Gf2+bn1PL1Q0u3Qt22trogbcOWR
	dKCJBZiBU0aNrrGezEyEJdy72BRHTxOgJ6aMLKYuVOqGatnNDNyj1iRsnyqXAgs3mkiiyioWBzC1J
	RxKrx7rvRZW68WpObXCxw6kitpnXljlgKJR7zz8d3gTBP5SSWBew23OoDUnxt2d3FvhaMkXwRAUbl
	kVqOQgfu+vpYP1Kv+1KiDlrIvKnUYQAkqk/3T40cNKHpK6qSu3Bsa4u+yTCv3kJ5jYyTqXAGGtK4Q
	zWbty5FLszyvCN04deNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY74N-000239-3P; Fri, 22 Nov 2019 11:25:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY74F-00021P-HQ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:25:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id h27so3241697pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 03:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Y7FbQzcdcd1UzsvI05Y/rekBo5nDZ9fDA2c4GXJdaU=;
 b=hM9ejjbb1cnIKaPqZx3YOubhILP+DT3AWPMMzMnvIYpYpoGfoSgX42vo3qeSC9KMFt
 EXA0L1nTJhZK/uf3AQnjN0enCc2KnKW8bxa7y7hJETGF7Tibr2UE3tuZ185Ck8vgBA4k
 VshxBRhHdkzXAqDhxUhLkrn1RxddXBytotrphzzlTs3QGdj/eTya1lyxtngyxKJwyBWX
 5nxc3GCj1cilkmQ0xtSyTDl2FqrSMaZjczDUb1CuqJn+HxEnPxJ70gUve1+AH7ObqCUY
 irWdgodeMl9BHtzWy2r5zvhATewdXgImVynzf8/bFiuyk00dM5dZvV2S8tcICYh/hkbK
 /ZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Y7FbQzcdcd1UzsvI05Y/rekBo5nDZ9fDA2c4GXJdaU=;
 b=kT3Ek3lM8g1ZrtDiLTuY/qvrvcA6yiNzTXjdwBi9O7s8A5Yn78dZhf7TZ86of8ziTB
 2eoaCMAumrsSArFuBJO/IA9S0/M6qXdLOIZ6VQNUGy421nOYZWrIQDc+RgKrFluql2Ne
 MdWvsFmUX+4OwrVzUX9gqtBRWUiKn1dtLh7FZq4C+Pf83zI3gNfCNCy9A0VALZMklREf
 31vwok7gPdpcQuJVB+bNzzqY8tfoSSlqrqSgsJnMLRpM7JJNOO8cPazZLQYOyhSUW+PR
 WW/LqPko/FskqYyhL/iBFSDERmO0J5uZtVWXx4n59UWbdCabcGwrdMxcoQ3JzKQrKifw
 TKyw==
X-Gm-Message-State: APjAAAXbToR4/kRAzXl0+WxgeQUN+AY1GZYnbKGlg+k518P5xxJhzeaG
 tQhGYdvauqyY4e06fGaXIfw=
X-Google-Smtp-Source: APXvYqwU0VoaCMq80b38Q42RSD3lh4SXr6vNdkVUXpK/rumdwSTGqW8/qOpm0j5m8/6VSiM8awwuyg==
X-Received: by 2002:a63:1014:: with SMTP id f20mr14801914pgl.279.1574421938351; 
 Fri, 22 Nov 2019 03:25:38 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id d139sm7511334pfd.162.2019.11.22.03.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 03:25:37 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] crypto: picoxcell: use non-devm request_irq and add missed
 tasklet_kill
Date: Fri, 22 Nov 2019 19:25:29 +0800
Message-Id: <20191122112529.10908-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_032539_601314_4725EE50 
X-CRM114-Status: GOOD (  14.51  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This driver forgets to kill tasklet when probe fails and remove.

Since tasklet should not be killed until the IRQ handler has been
unregistered, we use non-devm request_irq instead to make it able
to control its unregistration.

Furthermore, tasklet should be initialized before registering IRQ
handler. So we adjust the order of calling to fix it.

Finally, we fix the missed tasklet_kill in both probe failure and
remove.

Fixes: ce92136843cb ("crypto: picoxcell - add support for the picoxcell crypto engines")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Use non-devm request_irq.
  - Adjust the order of calling.
  - Modify commit message.

 drivers/crypto/picoxcell_crypto.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index 3cbefb41b099..b751822bb0cb 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1655,10 +1655,14 @@ static int spacc_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
-	if (devm_request_irq(&pdev->dev, irq->start, spacc_spacc_irq, 0,
-			     engine->name, engine)) {
+	tasklet_init(&engine->complete, spacc_spacc_complete,
+		     (unsigned long)engine);
+
+	if (request_irq(irq->start, spacc_spacc_irq, 0, engine->name,
+			engine)) {
 		dev_err(engine->dev, "failed to request IRQ\n");
-		return -EBUSY;
+		ret = -EBUSY;
+		goto err_tasklet_kill;
 	}
 
 	engine->dev		= &pdev->dev;
@@ -1667,15 +1671,18 @@ static int spacc_probe(struct platform_device *pdev)
 
 	engine->req_pool = dmam_pool_create(engine->name, engine->dev,
 		MAX_DDT_LEN * sizeof(struct spacc_ddt), 8, SZ_64K);
-	if (!engine->req_pool)
-		return -ENOMEM;
+	if (!engine->req_pool) {
+		ret = -ENOMEM;
+		goto err_free_irq;
+	}
 
 	spin_lock_init(&engine->hw_lock);
 
 	engine->clk = clk_get(&pdev->dev, "ref");
 	if (IS_ERR(engine->clk)) {
 		dev_info(&pdev->dev, "clk unavailable\n");
-		return PTR_ERR(engine->clk);
+		ret = PTR_ERR(engine->clk);
+		goto err_free_irq;
 	}
 
 	if (clk_prepare_enable(engine->clk)) {
@@ -1712,8 +1719,6 @@ static int spacc_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&engine->completed);
 	INIT_LIST_HEAD(&engine->in_progress);
 	engine->in_flight = 0;
-	tasklet_init(&engine->complete, spacc_spacc_complete,
-		     (unsigned long)engine);
 
 	platform_set_drvdata(pdev, engine);
 
@@ -1761,6 +1766,10 @@ static int spacc_probe(struct platform_device *pdev)
 	clk_disable_unprepare(engine->clk);
 err_clk_put:
 	clk_put(engine->clk);
+err_free_irq:
+	free_irq(irq->start, engine);
+err_tasklet_kill:
+	tasklet_kill(&engine->complete);
 
 	return ret;
 }
@@ -1770,6 +1779,7 @@ static int spacc_remove(struct platform_device *pdev)
 	struct spacc_aead *aead, *an;
 	struct spacc_alg *alg, *next;
 	struct spacc_engine *engine = platform_get_drvdata(pdev);
+	struct resource *irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 
 	del_timer_sync(&engine->packet_timeout);
 	device_remove_file(&pdev->dev, &dev_attr_stat_irq_thresh);
@@ -1786,6 +1796,8 @@ static int spacc_remove(struct platform_device *pdev)
 
 	clk_disable_unprepare(engine->clk);
 	clk_put(engine->clk);
+	free_irq(irq->start, engine);
+	tasklet_kill(&engine->complete);
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
