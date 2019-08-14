Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69338D63B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIjI+dm0/ZxzOrQoo29keaJg5l/3bQr4v9zmKJf3spM=; b=L9DJxcGtz3bwtg
	ZE3TzX4YmjAZBhW7BKM0w/am5nkRgj6KzJqtN98ELwUqxNd5tLbKNtsaL8i2LeTBEcLtTV8jJpgTz
	OFlEPCEsWtTpghbFT/BJWZ96kik/BBDbTXJLkrlu1cvauR8vUzZ+rc+3eOXfzt7dwAhPpvCjKnOEY
	HvBGhVuqHhLlONu0nsyYOkcsy26CzgwfKFTobdMBZ/gYkEJrjWJWch0TgNx4MJmD/Oq85h2eGYXpH
	3rj+FIdlpK8icwL5yoA4tcO9fD/JGRY14SqBZHavx4J0KymqVjJijz640oPDMEPyngLkEf81KhIZp
	rocmU4ATu/nKQaRf3pPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuKy-0007Rt-4Q; Wed, 14 Aug 2019 14:33:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHP-0002jj-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so4784491wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zee9ZRDcb5inoC93RJS0uCkZrQQq9+sqXLbyGEkf3es=;
 b=m9BQRXokoK3oSLoUUWSs2P/Defc/M0t9ePLgdmYqsJtzJ0HI3LnXX5AHvsqPrmMUsU
 iUI3sllxVhZnHVaLcTFiqiSPDYCnotEhoZIj6UAhJ5GZNeyK8CfZbltY0t5zysRiVJJG
 IE2X30uYI3ir2Ab2j/XPggNbgLrxPzAa/QIgoIuPnWrpxfow4T2kSU2vV+1Ks5xczDJy
 nknhfRbZ2oz8bmTU1UwHiE8mZaMjczktURT+D8oqWgcHgUTWq9d6JsXqfkz1yM7ytxCL
 roF2OK8GdvWpWHwbpOGdkGIGmlWwEMvM3aYtyARyEil6Dnd9MvCi4R0a5LrAgLqMgVzg
 Q91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zee9ZRDcb5inoC93RJS0uCkZrQQq9+sqXLbyGEkf3es=;
 b=Xe/MIaVGlROw9sxNV7adbIiR7OSlx8kWu8rKbOMQObt6wSKMBHNNNVi9iQEM62RB+t
 GJb84DJdhSL17wq7piQ1F0zInyfhL50xmb88lm/FsoYVR8QwKoSu3PIAN4zlQ4UQuZY2
 rI5xq2xd6o0RWhmBwOSb8A3UcjhoP+JuB5HIIlPeMJCeJ0O0gATC6PPlqDKaOYLnpvVV
 tvlhlyslJv20qd/yV+fnztP48uqsxelbGVSuHWORUqgljry8gO3FdzIeHglQNEk+kkzy
 P/lnBV7VEDxr0NASI2+dAlFv0mBKhTCHnLK/QRrDMpG19loX4NBQZuuU5SwGiTKsR8er
 KLwA==
X-Gm-Message-State: APjAAAUogrRpIhXf29uB8lfRdmgveorJyz0m5/v0Zac2zbewdhR2sxpC
 v/LepnApo0ocxrNxQprVyIOqKw==
X-Google-Smtp-Source: APXvYqyObvPZ5EwHEMDDw6HePxLmKaHa/IrznJlLwb7R76uBXAsL0zEnQqlQ0zVdkK3gER53KlcZjg==
X-Received: by 2002:a1c:a481:: with SMTP id n123mr8225671wme.123.1565792974524; 
 Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:33 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
Date: Wed, 14 Aug 2019 16:29:15 +0200
Message-Id: <20190814142918.11636-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072936_075319_F4D4A965 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index fe4013cca876..acb931cf3e7c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -11,7 +11,7 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "amediatech,x96-max", "amlogic,u200", "amlogic,g12a";
+	compatible = "amediatech,x96-max", "amlogic,g12a";
 	model = "Shenzhen Amediatech Technology Co., Ltd X96 Max";
 
 	aliases {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
