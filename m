Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7E847701
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 23:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WaISwf0+TtX5dPJQnbIBybplheWgqtahtJ5U6It/U5Q=; b=qmcZMjY9do0YLR
	Yv7S1W1LkrgbF42bDBG53wRllW+dc2cjF1/PCcSoEoOXTJvxGC/PUQ4VgH+0AkptH62sg6DtMHE5r
	b/3YeORqGsBCm//pO9Rnv2A/xdjSqBYJIBi++2kyGLOFU0Ij1cq3u+S6m2CLA2E6gIfmhaTvkgB5t
	rDNefwYrJI0rNSjhecrhZF8GIWlXJ0ZKzki4qcjc8MN5863Pl2c/K5UwCz8oXj3qIccr6IsxxMWit
	EiXaZGBsZ5B1tQBZcE6lIwin/eWW7RGk7UAUchgmo/EC0GtQzDCK2MSiMlhKgPlYv96WruhnwGWaZ
	JcF7dzrCy5op44iClWzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hccum-0000ov-6U; Sun, 16 Jun 2019 21:42:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hccu0-0000LJ-H1
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 21:41:31 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so5069890lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 14:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vZ+O2sBuymz0JFURnyDpv5vD4FvOut6ISgM/pkke4dw=;
 b=Szk1wb4qIgDoLZzgRBzC3J5HoDU4AyOKm4r7CNbUElt7pyQJEJ85k39OnORMuTX+hI
 6f41K/7i2SpsGX5FIzpbX6UcehbYQe29cFTvkcsOkSczvpJ2blrxdrgL3YTXerQJOcRY
 xUO5/Kw+6oZZBk5i9OlMZU6H8bMtWcf/LwDHQtfbtjBwTo3XL090mrMHijiN7E0WTa+j
 rgO2ue/7tXvHnEvxKM7RUngZ3u21+V1IGQVdIp8PBOHzfm/DUpZ4iD4KQnPImlGM6Et5
 6uHypJo+hk4ikyx120peIzSMAx4onf1zoGXhunHUCp42bHgJlyeaxQb8Oxm2B2M7Fts/
 JWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vZ+O2sBuymz0JFURnyDpv5vD4FvOut6ISgM/pkke4dw=;
 b=s++Nx5O9/zPNC7t0ggdRtG9QCEOkWDW6q5ZQX5VB/KXJaCrkVslePOtXYjKLId2l4d
 oMeNtEdbO6tl26jVMzoNbjXSj7uEQvut7S1/ZiDK/oEDtckEoLG6dRVO5nn0QNnH5t1C
 9DRk0jw6zNZMAqbZBPd2OfechFGjPXfomyWN9XRqHHRErl60FmeEvJvHwGIdxh3lPVSA
 dbL3SUq233Qlb8mWew7SHDH2pQ2Zcml2irmirWs0UedchhPrBdDQZsBw16Pz4liW5Q2C
 jEUkbBwSKt2QPn8tdm6wbPIznLd5aeQxI6jkt504p2/AcPDpi9/OZRpw3WFFxfLMDxei
 Urag==
X-Gm-Message-State: APjAAAUM+bpBe9D0nIzhoXtq7CMZhf35/p463lIVGhZ1Rbc8cJfTL7+F
 q3/dRVwMGt5isml9ABjEtXgsylQP1pE=
X-Google-Smtp-Source: APXvYqwTMlZO6XCMxxHtHplwA5OucxBuTkfictbWTCctLM1Ebkhp7isI3Si7bhNalfAY9FWHV6XRrw==
X-Received: by 2002:ac2:5595:: with SMTP id v21mr16571685lfg.54.1560721285960; 
 Sun, 16 Jun 2019 14:41:25 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id 11sm1782520ljc.66.2019.06.16.14.41.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 14:41:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: gemini Fix up DNS-313 compatible string
Date: Sun, 16 Jun 2019 23:41:20 +0200
Message-Id: <20190616214120.9054-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_144128_598955_5FF66FD4 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's a simple typo in the DNS file, which was pretty serious.
No scripts were working properly. Fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-dlink-dns-313.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dns-313.dts b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
index b12504e10f0b..360642a02a48 100644
--- a/arch/arm/boot/dts/gemini-dlink-dns-313.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
@@ -11,7 +11,7 @@
 
 / {
 	model = "D-Link DNS-313 1-Bay Network Storage Enclosure";
-	compatible = "dlink,dir-313", "cortina,gemini";
+	compatible = "dlink,dns-313", "cortina,gemini";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
