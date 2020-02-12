Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFD9159E4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ58HJGhafPIMLIjrB/f+ohtP4cjOkORlvBH1jfSo04=; b=uI5viCOZ0xQL2B
	gzMUH3ygDehkg6WMbw0oQBw9S4NYlihg27EPG4obsl9DV1IG1GRroFcUTOtuUvF+ax0nrhVGGgvPO
	q4KZFNbJ7MIdxsHQYZ0ed/7Q7z7UmJa+3KwOkSLH5M7YiiCWrZhUbZDEVOpuBWvCiLJbNALIx37MI
	MdlysLJeO1zPuvEBrOs0+ZAyBB6clHMlYv3zq1HORJx72f+DGyqHwIqAI0bEeVUJq2gg4TO5psLT5
	MulorRzLUy0Fn/Fw0ZhK0IwXHmRcKzr3HRNn3sJDscaEVGTeBlu4Y2AA58CyAVYm/ZfUzeBCnUH+8
	WEPx3goTJqD54o0icivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gAJ-00063t-RA; Wed, 12 Feb 2020 00:46:07 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4r-0008Lp-VI; Wed, 12 Feb 2020 00:40:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id e18so234374ljn.12;
 Tue, 11 Feb 2020 16:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MI8IwajWT07hW6m+MFtO1fPhFSGD1JYkNnYkoSytSKc=;
 b=YWg2OvsH2to00WRX7NfJntW4eAb2zKY0qAiylXWiL6ZildFFKYBp35EXPz7SVkaYoA
 4d3ihI0V/aicsYnxtQcEA9+Q/2PBQRVpsLA1HJujelWKhXa9B+zey+cBX4OAOTpE/BwV
 Aq+lEz5gy6gHgu9PkvuLehTvHC9DiDI7B8WLVXH6VLK0gDSxO7p+fz5FKm89TsMbeoN1
 j0sBFp5YFndDdDKok18ADRMS1np2wnfEczINAR53elAWZUF27AHVPC3Y/vNJ/SgXlACP
 /trmBymxegXrQ+S0OHMbtuBqcaiVFthb7jDomTu72LkpFSHgjw5sNeUVJoVbRgJm/wQ9
 C5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MI8IwajWT07hW6m+MFtO1fPhFSGD1JYkNnYkoSytSKc=;
 b=mCOZyEkkQXYSKve6Ov0zckUr2YpoMytkaBPSlwUwPJBxWbHQG/Bz9MqHydOCSll8CD
 QMLtyPVCokKE1fXou4PRu9z6JgFe/VOt5SGJNhzdd6bBU5iFyUglHmkf2i5P/wlBZw+I
 ooaoQioHBczK45lCICb8HFmzAZjIa1zknw/mpAMlYCLr1Cj5uIdyIenHKuF6VnVdgu5w
 2HECwnsrTGKTHNxU3JsQ9N7dYoaqpcgtiKJMeBnQA0u7ntd5tjBYk1K9djr3hJ6xPRCw
 OaQEwVBqw+rtp6uv3VQwDfxl3vkz48pNGvUTZOYMpJPqGUekupFmlyS/AupYWdtbVP6L
 OSwQ==
X-Gm-Message-State: APjAAAVqet2apuSf2ncjup6hKIxD4ySelJSRnHOXGo5ZAUAiMnkHUDab
 ULsJYVFyVumHA3Ci7GDUR0E=
X-Google-Smtp-Source: APXvYqyw9cES/t4KUWxceUrhVRQz3XjbJMfNBnzNSkul+f1nDJk/BoJXNmhZyOTTwNPwsD5WWLqySA==
X-Received: by 2002:a2e:6817:: with SMTP id c23mr5818737lja.263.1581468028067; 
 Tue, 11 Feb 2020 16:40:28 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:27 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 12/14] mtd: rawnand: ams-delta: Drop useless local variable
Date: Wed, 12 Feb 2020 01:39:27 +0100
Message-Id: <20200212003929.6682-13-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164030_093427_85859972 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For consistency with adjacent code patterns used in the driver probe
function, store data GPIO array pointer directly in a respective field
of the driver private structure instead of storing it intermediately
in a local variable for error checking.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 97e3b6629c72..a68b7006ed69 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -230,7 +230,6 @@ static int ams_delta_init(struct platform_device *pdev)
 	struct ams_delta_nand *priv;
 	struct nand_chip *this;
 	struct mtd_info *mtd;
-	struct gpio_descs *data_gpiods;
 	int (*probe)(struct platform_device *pdev, struct ams_delta_nand *priv);
 	int err = 0;
 
@@ -312,13 +311,12 @@ static int ams_delta_init(struct platform_device *pdev)
 	}
 
 	/* Request array of data pins, initialize them as input */
-	data_gpiods = devm_gpiod_get_array(&pdev->dev, "data", GPIOD_IN);
-	if (IS_ERR(data_gpiods)) {
-		err = PTR_ERR(data_gpiods);
+	priv->data_gpiods = devm_gpiod_get_array(&pdev->dev, "data", GPIOD_IN);
+	if (IS_ERR(priv->data_gpiods)) {
+		err = PTR_ERR(priv->data_gpiods);
 		dev_err(&pdev->dev, "data GPIO request failed: %d\n", err);
 		return err;
 	}
-	priv->data_gpiods = data_gpiods;
 	priv->data_in = true;
 
 	if (pdev->id_entry)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
