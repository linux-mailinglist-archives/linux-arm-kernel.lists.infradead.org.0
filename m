Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A49962A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slo1WJ8uwzpK2+dbb4XB6PbnZ/lrC8jBnJLiR5TEzDQ=; b=KLNE5ZU8WKwLPN
	iwEzF1mzlgjg5bgA12eAOwaWc3rYoauwcvbKO0Knbh8qPIFgcaDCfkKlc2C828hh/1e3s/NUpZZ9u
	6kxcxfFf0IXk4wzVNoJHbubg/TKQx4vEwbFC5bHHBxWmA30pq8DtE/o0nPkYaSSpRRsYpz27FWEi/
	tY0EVDQc6jLliTA9Fnws17gOT3DFOfv+Q5XSEo7yWp1njY7m3fIWoEspCt4kTvuvuXcaZ6JD9mkY/
	HddvKJWxc37f8bLFBrJUVC2BlygpbBiIvTebNbLk1jPGryLRhS5aCgApXx7meGBNZ3KMVRv4bDisA
	t0q+B6g6bRgRX95+ZpAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Kf-00042G-Cu; Tue, 20 Aug 2019 14:41:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jh-0003T7-DB
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id e8so2570371wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qk9x+0yCuWahWTJ+d7U2hM8TpGj03opy/Zg7wU4wyWE=;
 b=AQsuMZUZoJCGFnG8pBMu4BcPk/gvh3HXAsjo9HRD48NR6bVp/F6ie64bEd7teqsYWr
 maNMIeLQrv2cWwsZlkYlDyAIaM6swmLWJgiQUP0iF1dyBIrG1nUK3Xrs1T8IdrwSXAzX
 LyTMYd9DViD/+sCR2xdwOFzG2fiPqtyl5Ix3NOcCwzoUFWkLr1lWxKPNCZi+phCqmNd0
 MErT/kb044CgXKa2Q3QiJIvhYPnEsYigSYjVB8wkZNGX/GAkG0NIq/TEtFmg4LwZJysR
 VoxQ7XZww3rPdkk7wdO9fwJBqyiocwsJwhn+YvwX867bN0/f3hq8m9uNNeIUkiNvWGvl
 nfOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qk9x+0yCuWahWTJ+d7U2hM8TpGj03opy/Zg7wU4wyWE=;
 b=arwAm5dl0zlTou8oEcuu+eATXLHGBF8TJCcp3HMZ5G1y13OlnrIPspLgWRZ7nkUZe3
 WblioZp7R41zApy3l4UiBFMp7WiybefFYL2BkAYdbbT7avmmDD8H07VIcC1j48fX8J1O
 Z/MOrrMKTa8d0f4qTiYappPmIOZeYbdaz7oMR5R7jFnBkbklLvh6IzXrGKCePt4Gb6+j
 Aqh+lGsq9XjlPdeLcsUBYn1Zs1G9F2EK5x6hGeSVhf+9dV1KU6/fOCuRqhkW9tmGBqVi
 aPboLsG+lvH1VVbCZSRRhg37hCaLlmpNM10JF0TuYxXSPadezMYCCDtM7TWstzNU0wfD
 iYDA==
X-Gm-Message-State: APjAAAVy+Yy2dG4HbTDiY1xLaWL4PBRMWSqAXbHLNZD1FSneO902oNf6
 KG68IomQbtRegD8OUER1MIvCaA==
X-Google-Smtp-Source: APXvYqyATvzMqlJgk0npoKT6MYofXdZjDlqt0Tu0cvJTJxNhlNG0pp+89Pj2oysiKwBtg3gUHQCl6Q==
X-Received: by 2002:a1c:eb0a:: with SMTP id j10mr337735wmh.125.1566312055993; 
 Tue, 20 Aug 2019 07:40:55 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:40:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/6] soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
Date: Tue, 20 Aug 2019 16:40:47 +0200
Message-Id: <20190820144052.18269-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074101_646503_8430E431 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the SoC IDs for the S905X3 Amlogic SM1 SoC.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index ff86a75939e8..b9f4c6f4fd03 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -39,6 +39,7 @@ static const struct meson_gx_soc_id {
 	{ "TXHD", 0x27 },
 	{ "G12A", 0x28 },
 	{ "G12B", 0x29 },
+	{ "SM1", 0x2b },
 };
 
 static const struct meson_gx_package_id {
@@ -66,6 +67,7 @@ static const struct meson_gx_package_id {
 	{ "S905X2", 0x28, 0x40, 0xf0 },
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
+	{ "S905X3", 0x2b, 0x5, 0xf },
 };
 
 static inline unsigned int socinfo_to_major(u32 socinfo)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
