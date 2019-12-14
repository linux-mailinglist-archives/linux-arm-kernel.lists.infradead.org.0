Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E8411F34B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tm7uJaxTdPJA8b1rCOeOq2WswtnfpC9tynOVnd7Ik98=; b=flsxCQYmVdTxeZl8o6e0SHSh5+
	Bu/WKTgXXeTqDnT6VYpz5AzWoINmGnDUGHXN66nz5Mb8mZml9xQWhspq/mY5bmGo9T338q2rmh3N/
	ZVCOPgv4AMkss0SAmLuak4Zz2H0oxUpUf1306KK7oqh1eGVksvgdQ5M91Vfsprs15mRFet5pVJn28
	WtWWGQLNNJcB7r73wkzw/W1ek9Lr9D+oCz9XHdslECbB0h+6Q1hR4fD1R2CRFXrM01fypQh9HzFdW
	ew0fwfLJSog48UBlx7NKRo/NILOnQRDqwZCnaJUO4ytwIli3+26EGpCVwoaHySMVaboFjW3Of/zFu
	I9JeUxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBgN-0007Pj-9v; Sat, 14 Dec 2019 17:58:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBdP-0004wp-0F; Sat, 14 Dec 2019 17:55:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so2614805plb.8;
 Sat, 14 Dec 2019 09:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G5UK5DwBUduQN5XnwW7khvuWSh3A6ZcbhwTioDRukl8=;
 b=CbiDXSDajwRpx8W14h4Me/LqDY31+yHYAfRzx0gJjjZCKzYKeU/z+dRgbh8G0FB8Kz
 n23u0oKZqKSzIYv+ZL33ayO6Nm2GUXWzXYlOWey+vH7BxOSNg1x5YuD+KX3DbDKrOn6L
 s5pmk0dhSJQD63OQQyVOnnG5MA+j9dwufNQjp4qEDTK3V5YkQwYrGSY+U3Pc6GbbZRxC
 CajxwBSj4cWprH+2jMO3kzlI61ws7Qkomli0Aczwwl3k6qQ00RIGGRQNNK5T1/gCZVZt
 gSTJw7QQeLaRrJDTor/KB3Wx5TNqwOMf490slViV18ZldipGn352lX01mW6xS17FsVQG
 TjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G5UK5DwBUduQN5XnwW7khvuWSh3A6ZcbhwTioDRukl8=;
 b=YLCZQpCWs/652+T+asJYgeECpAFRkkwjFRfG0wcgPiHXNPX0IGWyYLsP5KZclK/7Ey
 3BYKOCENEXEBoVJRwgUrMP02Zc6C41fL+cJFnCmt5kvMQ90NpPDbjkKAe/roeFo11Q8u
 rD3KVCh6P7tPAPkTIecURSDxlMP3ljSGhROEqN4kcvk6dlAlEP9kb9boDIGwUcyQjcjr
 ji/kjdo4RG7Gvj9xNpRQXdsU1ixFsTkR6M5fCsyPrCkB2vFQ0W9duBfqzuug/eWzMLi7
 8HhOGGcltKzqbMfiU1NT666fNwoli2wCncbbQuQNxqC2i44eJzzX4ZQUR4gYqtHcGBYu
 0lPw==
X-Gm-Message-State: APjAAAVnmXT+Pm5oQphCpMFm6tUf2+QT0U2gd7pubUwy4P40mPGC2iLe
 O6OkiHyShr+17rbsfImGWS9ebx6V76I=
X-Google-Smtp-Source: APXvYqxLeBRtno5UO/xbNsZnN4kmZhB035ExJnlkIwjScfYHKudBua3+fBmjaQTpdULAB/liHFw71A==
X-Received: by 2002:a17:90a:33e8:: with SMTP id
 n95mr7043968pjb.17.1576346118077; 
 Sat, 14 Dec 2019 09:55:18 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id g18sm16392573pfi.80.2019.12.14.09.55.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:55:17 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 09/10] soc: ixp4xx: qmgr: convert to
 devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:46 +0000
Message-Id: <20191214175447.25482-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095519_083177_964D26DB 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/ixp4xx/ixp4xx-qmgr.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/soc/ixp4xx/ixp4xx-qmgr.c b/drivers/soc/ixp4xx/ixp4xx-qmgr.c
index 8c968382cea7..520babbd9037 100644
--- a/drivers/soc/ixp4xx/ixp4xx-qmgr.c
+++ b/drivers/soc/ixp4xx/ixp4xx-qmgr.c
@@ -375,13 +375,9 @@ static int ixp4xx_qmgr_probe(struct platform_device *pdev)
 	int i, err;
 	irq_handler_t handler1, handler2;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int irq1, irq2;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENODEV;
-	qmgr_regs = devm_ioremap_resource(dev, res);
+	qmgr_regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmgr_regs))
 		return PTR_ERR(qmgr_regs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
