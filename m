Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AAB11FA18
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a4BbxxRmtQjRdwI/ntyjfBYY9l8oLxtvQuamD0VTtrk=; b=NFLvGFYuMCFwGGN+dVHAf0RiuE
	o3Pn+sLll6VASd/Iqw6lWl31R7MLyzhyg5Xw21Vt/RwwuZ8+QmGx9OOgjQ6qDafgSPG/3z9WeW9cR
	litf5JNS/WUupLRLgXgITRLG5+wPGS0gYb022DWO0+tQvsYGwx+aSDb9MWWx/B8vB0zcHhGvL8Frc
	1NBFm5r6GYEXEPPHb/QCeU4spPi5GZS/0HYbyapVgORk1vNwAB4+6tTUhhOIP2A/h2CPufTRKollt
	/NSjNDHJab2phFkGQElFq6MIFgC2afJIHWZXNKMHSwkTdqAhuMz62h92hlqf9/f4Uh/qDfxgkR3vN
	lvzJqmBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY4j-0004c7-Cw; Sun, 15 Dec 2019 17:53:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3M-0003ZC-BH; Sun, 15 Dec 2019 17:51:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id x17so3467922pln.1;
 Sun, 15 Dec 2019 09:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jPiXjT3BT4ZC5Q5kouLFOM5eY+EtYfy9tRuLuTsagUU=;
 b=e2VJlGNiKxNfy/SisX8BcUnvxevhe03BmsPpOEboFRjG9x1guNigRD306+BqeeChZ6
 o/bpyIgK0iWtTH/uwe51dpEL5Lnv+4qRuaRN7uyBCQiRuc0wRglzBgFrhEjbSntBeXYI
 DIcEVcRUXS8ohqZKDpIa/B0dbm6XVfx25nBbmj3FA81Hp/CBxrtivTXN97L0BVY0TmUf
 f1Zgqn0sIkr9h4fKKOxebUja0Emn9HgsDU271ZJE8pZ1cHfVO3Mn2YifRnkBBGr2ZPmM
 SSB2sEzM4p4U0+UEjQslfpqGWph2B5eeFUlCedfCBa3zBMWrlFBfLa+xIQ4YPnCaydEI
 oTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jPiXjT3BT4ZC5Q5kouLFOM5eY+EtYfy9tRuLuTsagUU=;
 b=CgEmQJHO9SJVJ+PoARV+gWCrNIo+GlemmV2gRVJmcuMZfPI9S1MbR1+KuFKTW+LyR7
 OftuAV3lyQEH6McWWoq7Aj51p5CNsukKrz2662Lx15zOOcz1cpiqcUmLBKMa260WHOVE
 A5dvFsQXvk8CE/lYq4dQkbu2CWdHKLaHQgsxh7lKhN55hpLloQYWQB7Cpsp8Ocq+WLkz
 kahAVCy3FRiJYTzkxNXBfxwkEAvQhU5Y1MW1iiwdgtI8MCl3Jpy+TOHPG8SKZgYAtjsl
 EuQHYswdcShThVQ+fF/h60d97piI95HDV9kIiDl847RH4GEm6J7FNHzIW2S+ESK3pbNO
 jjQA==
X-Gm-Message-State: APjAAAUn34qFv3otgfVOHWoK/eByIKh59Q72AJOVyrw+ROK77YFUeKFa
 zjpJky7UhU2X0WbMhZBPtP0=
X-Google-Smtp-Source: APXvYqwMdghsP2eW9OqliRa0pUknedlFchToxsCJR4Fd26rwawl+6gOAGBS6Uu8D1cBubCvCuQJpoQ==
X-Received: by 2002:a17:90a:1a8a:: with SMTP id
 p10mr12724708pjp.6.1576432295219; 
 Sun, 15 Dec 2019 09:51:35 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id n2sm9636565pgn.71.2019.12.15.09.51.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:34 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: manuel.lauss@gmail.com, ulf.hansson@linaro.org, khilman@baylibre.com,
 chaotian.jing@mediatek.com, matthias.bgg@gmail.com, nico@fluxnic.net,
 adrian.hunter@intel.com, agross@kernel.org, bjorn.andersson@linaro.org,
 ben-linux@fluff.org, jh80.chung@samsung.com, vireshk@kernel.org,
 mripard@kernel.org, wens@csie.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, kstewart@linuxfoundation.org,
 yamada.masahiro@socionext.com, tglx@linutronix.de, allison@lohutok.net,
 yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
 linus.walleij@linaro.org
Subject: [PATCH 04/13] mmc: sdhci-s3c: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:11 +0000
Message-Id: <20191215175120.3290-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095136_421117_2F30F385 
X-CRM114-Status: UNSURE (   9.71  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mmc/host/sdhci-s3c.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-s3c.c b/drivers/mmc/host/sdhci-s3c.c
index 51e096f27388..e72352beb13a 100644
--- a/drivers/mmc/host/sdhci-s3c.c
+++ b/drivers/mmc/host/sdhci-s3c.c
@@ -481,7 +481,6 @@ static int sdhci_s3c_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct sdhci_host *host;
 	struct sdhci_s3c *sc;
-	struct resource *res;
 	int ret, irq, ptr, clks;
 
 	if (!pdev->dev.platform_data && !pdev->dev.of_node) {
@@ -555,8 +554,7 @@ static int sdhci_s3c_probe(struct platform_device *pdev)
 		goto err_no_busclks;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host->ioaddr = devm_ioremap_resource(&pdev->dev, res);
+	host->ioaddr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->ioaddr)) {
 		ret = PTR_ERR(host->ioaddr);
 		goto err_req_regs;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
