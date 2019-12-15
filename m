Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D4511FA1E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jlHw/01uld8fQAwuTn9ZvrGj7SZwvGIfED89dpIzkuQ=; b=D43IroFXu7ScgIi0sOD9yH1hFm
	IRKgDEWE5LZKpbsGKvFM7zKVIi530X/6X1ETulTPTcW1Ir1s7EIuuK+O0UmCDg3+dyNBWszW3/Qbk
	bQCRYwLyyh71OdUPAPf3FX3eWsmsQ+25nZUN/kn/BR5wMWdWREqOx31D+X1eYQg0N/JPfxUybfpOW
	Dhv3q07vb6QuKSI5KcAnbuZUlasARvIHKgAYlnL1YoqpxbzfJ6KwZGDxfI3W7DXudfJsJmIJFUJVs
	TzNnBC68fNnewaQ/xCMHzaqgdsxq3jRjmDqn9drx3rUXPJohM3YfIMC1qZSm7irn4iIoMxyEsprj3
	huxreujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY5R-0005J8-79; Sun, 15 Dec 2019 17:53:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3Q-0003dO-Bm; Sun, 15 Dec 2019 17:51:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id p27so3446864pli.10;
 Sun, 15 Dec 2019 09:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TZ1xS5qPhU2IhwfRNSwTRqhYIldYr8v5xb3e3qhR6PU=;
 b=pbR7pVsVjeHw0gd67xvoEtScCkAwIdUeTHkozhA37RkgiSyp8YcSx9ERtIfAY+IuDw
 hrCtp5fcXF0DIRbJ9NfadYRWzR7Y1o2M4UDFlv40n+lZbg23Tni/uvFNaakQLuZvz2Bq
 bFwDHfxbqE2SpINHP8LFYxmZWELq6LEjJ3AxV3llH7olhcxa+IBpYaaHVWdsQ4dapcFM
 EOH9KUPmlJpXEPcIKhCwJUnMEMXiTNTg5kJ+Q7IKAKs4CzrlLmCHMy2REvs+RoZazFVg
 ivCZcwp2kgFJP1mYiaGKP/MTCbZNJFOkBX3D7yyGnRrSbgXS12ywC4c8SNGQRXMkKw3u
 nvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TZ1xS5qPhU2IhwfRNSwTRqhYIldYr8v5xb3e3qhR6PU=;
 b=QeRLIcXlZuLu3iExgtkktUMm8FVOkl6Ku2UCdETRgRfyN+nQiy7zGEYeG/avWtdZp5
 lFwSQ6d3T1W0/VDqs5CYy0372yLy2XdVA1vB3N5OpGyMzvFIaZZ7uPltF4A7Qm/HTVp5
 sJ0JkW+p4Trxfr5pZW55KEvd5lhcV6a/0Dr3NPwgtNyDLRAhg9jn0TB6UuZgnWKaKS1Z
 jrmjxyXKV9eSCb/pxfji7JZqYhQuuM9AzeNoKJlb1Vrlp55w5MVd9m1DmHuAY1HcTaXR
 rIXGFF96NvHi9jC0ARtudV35le+rnf9TcGNpqaAYLFHqcJqAt3ashxYHvN6i+k2Wl3q4
 LKOw==
X-Gm-Message-State: APjAAAWZ+75sB5BSTMf/Xhi4+SuWj81CpyYoKIx48S6MTC3i7AwDC8HB
 4eQJmDoVFxnZUtURtTKDIDQ=
X-Google-Smtp-Source: APXvYqy/1P3upyMouvKmiwh3Vz1uiBI+Jt3S3WCz0rzjwcujE1WXEXrqRVWI2k1ffFwimt3XZuCt8g==
X-Received: by 2002:a17:90a:a44:: with SMTP id
 o62mr13115954pjo.80.1576432298835; 
 Sun, 15 Dec 2019 09:51:38 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s18sm18243050pfh.47.2019.12.15.09.51.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:38 -0800 (PST)
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
Subject: [PATCH 06/13] mmc: sh_mmcif: convert to devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:13 +0000
Message-Id: <20191215175120.3290-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095140_410197_779477D4 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 drivers/mmc/host/sh_mmcif.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sh_mmcif.c b/drivers/mmc/host/sh_mmcif.c
index 98c575de43c7..5069f1cbcef8 100644
--- a/drivers/mmc/host/sh_mmcif.c
+++ b/drivers/mmc/host/sh_mmcif.c
@@ -1388,7 +1388,6 @@ static int sh_mmcif_probe(struct platform_device *pdev)
 	struct sh_mmcif_host *host;
 	struct device *dev = &pdev->dev;
 	struct sh_mmcif_plat_data *pd = dev->platform_data;
-	struct resource *res;
 	void __iomem *reg;
 	const char *name;
 
@@ -1397,8 +1396,7 @@ static int sh_mmcif_probe(struct platform_device *pdev)
 	if (irq[0] < 0)
 		return -ENXIO;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
