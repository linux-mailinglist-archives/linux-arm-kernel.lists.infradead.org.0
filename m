Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8921C2C15
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 14:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3c5L/YB1Hg3oi3Dc/8MjN6L5zQVZdN/vztZSctBVAds=; b=MfC
	jrZ9//zjuLEPqCZgarP4iTIns3y1gsUjnJbow4NoQc8RedRbXAaxzMhQIL0JaUQtPfgEiv9DEsA+T
	qJqs3rDTPo9bGhMj0Ym6c0U2SqQuVdhbZgUh1z9GFg9MEXxxFp8payT9P3NVwwYLus7hj66FXO8nu
	55hNRSJmMxmGgZARRrRRibAL+yBw98iqk9jqYS6ABdCLWAz7qLfSRprJ+9CcFSKgSG2oRzQR/SZXY
	YKc6YoUCJ+qEcXHesPcTdVxlCFEF3Dm0bglL3lhjitBPSko3FH2ufdXe1t2Dgg5y56EoNQ/MKynYa
	C5+ftnB9KC5k97syMsixYgDVxz2RJmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVDQe-0006Pz-UA; Sun, 03 May 2020 12:09:04 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVDQZ-0006Ow-M9
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 12:09:00 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a32so2431692pje.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 05:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OPAruJN93T/BqNZ0orjpx+YVAhbV4pfvgi5Yk5S86ps=;
 b=TNFPAeenGYQbmWv/hoyiLr7ltiaSlCGNRaCikOM02NUvqd81LLAdzX7ZdyXXSTDSkB
 U92lpGZEFB2FEYS77NlttQ02q1NbMYearGAlXBXUPzmNVH73Nft0ni+iTkvS+5m1k0s8
 Q331Zq+8Eccx4akiBl/4DRb6C9VFX/q/8WPH7N6PjsSJpawPdTb4hqG3JyEYiBQ6PacM
 26RUxOagitSxAat09fRabluxc4Kv3nmqanPclPZct6ltOkzpKMb8ip5yvwKVoj/hk3xI
 wrFc1cVIqQ+G5RD1yNXHNjESuOAxxxrLEnspaVtoZp30zFUiSkOCRdfmaK4uj5pSbNyS
 4PjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OPAruJN93T/BqNZ0orjpx+YVAhbV4pfvgi5Yk5S86ps=;
 b=ElKxHOlZrpVkRWQ7FbVGFz7IJoi1nrM6AcHP0xgCN74d1tO/0ruL2EMHO4Niv1Lysk
 OhDm8pE7vHGjMkknHZvwFzC3bOl5Eq2PQdrXXr3q6JXcCs/u0uiUZj8n69lViPxzH9E0
 bYDX1E4V4XlD32zAWxWSQCphoZig1HfGaB/zFsoEM6agKfMNhkF01/E1zn30i0qSCPX+
 WJ3pm3Mk6gUjSKO/cdkdx4sEUxQY0Ue8kGUOuZcEK8URV9aBeK0ov23nD/OdDP6Tfj1n
 aqzKdl6jVpoo2/idUu7xsUgzidoBxrMq8fY4I1Vqpr1T678XpkQOb6goWQ2gXT0yj30d
 EDJg==
X-Gm-Message-State: AGi0PuZfhpxisNJK8ZgaIi5q9L/h3liQqxRVDelaIzbcFf21Fn/YTsrv
 j/n6Zy5hqQN0t+uHa1RNMPs=
X-Google-Smtp-Source: APiQypLDDAB1Sw4AmqmTtsN4ogJyVEpa9EMzvsAE8pljFhpLnM1apQ97W8SeUn0gNbrpl1ptfy1YVg==
X-Received: by 2002:a17:90a:f698:: with SMTP id
 cl24mr11046094pjb.71.1588507738318; 
 Sun, 03 May 2020 05:08:58 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8b:8746:9817:f6e9:c9f8:6a59])
 by smtp.gmail.com with ESMTPSA id
 q201sm6371388pfq.40.2020.05.03.05.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 05:08:57 -0700 (PDT)
From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: uniphier: Remove superfluous error message in
 uniphier_i2c_probe()
Date: Sun,  3 May 2020 17:38:47 +0530
Message-Id: <20200503120847.13528-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_050859_745913_42D7B814 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aishwaryarj100@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function platform_get_irq can log an error by itself.
This omit a redundant message for exception handling in the
calling function.

Suggested by Coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/i2c/busses/i2c-uniphier.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
index 668b1fa2b0ef..ee00a44bf4c7 100644
--- a/drivers/i2c/busses/i2c-uniphier.c
+++ b/drivers/i2c/busses/i2c-uniphier.c
@@ -324,10 +324,8 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->membase);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "failed to get IRQ number\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	if (of_property_read_u32(dev->of_node, "clock-frequency", &bus_speed))
 		bus_speed = I2C_MAX_STANDARD_MODE_FREQ;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
