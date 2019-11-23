Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D104107EAC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 14:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U3vdf3oCp1xswGpGiFhSAST0whNQjo7QcGSWtyLKKwQ=; b=kw1Mjd2peG8rsM
	6JstDCZ/yhwsqUVmYZ9GZDd4m0RVU7SIoDRm9UI5cX+Pz/+7L4dL7SnfA8oVEsm6y9TS3h5vNEUl6
	MtUDRn38uObkY+HZp0M9z+kAYnTRMZElsBwIkpJKAhSoC94GFxuPSo/7XB6aYagF1g0w+ZwQgKH5Q
	h8cKYg7yonWs+XVcKArmjYVsdAvF9vviK93LGltYw2oqo3o/KOSlhxOGTWEkfKtEP3arC/KtRcfH+
	1lYVKcMA5Fr4RrMG2HUhIxduJZOKUnswP7PPgvIy3e4KjBRuSK1PU23r4cazCAQRo3V9N2sp5oxy5
	0UM3PDDT2nCSUCTWrOtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYVmK-0008Cy-MA; Sat, 23 Nov 2019 13:48:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYVmD-0008CS-7O
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 13:48:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id q13so5068128pff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 05:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sno9U1PiqFvmo7XNuFb/fM3y1xecgkh8dRFnJhiyLZ8=;
 b=dIO2eTXSRfnJ5qBnHKQA9gilNwns0fzAfXwEcLEeEAB6lu7e0HA52j2T9lKRGijDJn
 HDxTbfWVNUbAw6Q3TR+ryuIRqryWL8m+H4BIq7/YTM8F7tsraamCQgnxpXDUvsHbm09v
 U/dfM/mm9+TbCHT7GnpfUYrzaiGH0nOap7AV0dQ7mNNg+vKHw4q07mboGZSvA3Io0yBM
 iGeUQgDycJ0vb2OENG8Og7mXciLS3ExjdMcCKemEjrBqRyMwviBbPhEQ+Lj8OGLEX121
 Z5rP8l9V7gERdtWhDgDtHMj8X9W3HvExxI30hmCM9m5Mp70WKOozXfWK/D9/7+kdB0C2
 Ckig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sno9U1PiqFvmo7XNuFb/fM3y1xecgkh8dRFnJhiyLZ8=;
 b=cpS2vn2I77//CEDY8Opfuw7HBMQ6sbJp6zK9F3wOWb/eF2WsFZ+jIOraPVnKGtbbuv
 kMgkYRR0cXB0ES+d+rbjpO6HuEGAo27PJreETOh26rWlSur2vU53wKxpjH3s8N693Z8h
 4wAbX3/WPptFVTDcxETp2wtiymRQUIk1/7K5fQjvIf2AElXDW1etmrvZn4WRIXCyHrJG
 tfHIGMgGAOJhBOhmlQeyHv2spPrh9U6yco1oqIZHn/NrUdoSC6esJcEF7TdWimJSf3YZ
 ou+E8KbAGva2R9xnicCSmliyZq4K3fVFw/prykI09hrgTdfrgh7xITn9K8y9SQFrK/QY
 eyVw==
X-Gm-Message-State: APjAAAXDZOURUMHTjtEGGWKGRWGh6WqDHRX1e7vXZ2ikrgP+Sp0FpUJW
 vSfjTkdDFotQt7eVjdB80fs=
X-Google-Smtp-Source: APXvYqzmqJo/Vw8yEyNcuA87aVY/EWNUXbh1cMlEOmzlSoF2sF1UGY9RcYbLyVEkjkgfX53+ojS0/g==
X-Received: by 2002:a63:6b82:: with SMTP id
 g124mr21823420pgc.178.1574516918396; 
 Sat, 23 Nov 2019 05:48:38 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id i102sm2400594pje.17.2019.11.23.05.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 05:48:37 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v3] crypto: picoxcell: adjust the position of tasklet_init and
 fix missed tasklet_kill
Date: Sat, 23 Nov 2019 21:48:17 +0800
Message-Id: <20191123134817.30953-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_054841_266167_C3BE842F 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
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
function and uses devm_add_action_or_reset to kill the tasklet
automatically.

Fixes: ce92136843cb ("crypto: picoxcell - add support for the picoxcell crypto engines")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v3:
  - Use devm_add_action_or_reset to simplify the patch.

 drivers/crypto/picoxcell_crypto.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index 3cbefb41b099..497dbf1d6cf6 100644
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
+	ret = devm_add_action_or_reset(&pdev->dev, spacc_tasklet_kill,
+				       &engine->complete);
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
