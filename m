Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AE87BBFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+PVtfQK7xeeZnKjJfPC+Xo6laEsct0NUcxkTACPfoQ=; b=DOmHkxC6ZPZYgc
	icuGulymFFg3paJ+3GtHljQZDgRlzLIK46vWSbLv+BK0gau4pAN1YiMQ9in64vcplj3a2tdsMTJpt
	st8TaWiVw8l8g+lmquNK/KjPyf9zKPqE19YLS4p+7OjZd2nqLYPAjj4IqaqfSp6tkweLpiTEa2SJe
	qNx/B91nyeYktGe75HBll1v4iixAiZmEdF4dPCGrH+fApKjWQ3xeJN4y4eg5ZvdykUGS0Lekv1C20
	x41Y2Y8ysSHaczeSB9PsVkc5Irx3FS2tPhBo3S7CUJJvteSxcx579F/J9/L94UuKQySt0WS4BEHV6
	I9Nd9nvGnA/3NgjsrioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskBE-000713-12; Wed, 31 Jul 2019 08:41:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk9r-000623-Dr
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:40:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so18783092wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75XNmhFNb9+dcVa4YPmR0y+UGapfOVB2uryDAdPU4o4=;
 b=mQ/GItiV/jIekXUfQF4MaKyeF2xxU5ZvV65tC6WZtOplsowpKXAcaU2ed76arFJ2HF
 FRrWiFna/EnHvHxzgRZqv/+XpaJ27aSEQLNVHv0fTRsStQlfzxlUE31f7kYDoDoGEM2+
 LR1I6fEfN+WigiRr1yzP2X2YunGiuAh4/Ya265Ada7lN82hSuP0n9z8pIs/wPGx3F5AV
 AcivDHZutEmkStVMWqMtfAEqbMTZG0dN9LyQ7aoN3T4h3BlZSMLDbguHvRT3ydv2nQSU
 Uaf4bN0q+oQm12t0bypww0qe//veBeJZ9glvWslrbP1JBZQIW7BrI4CZULyhUkGiY0xF
 EiwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75XNmhFNb9+dcVa4YPmR0y+UGapfOVB2uryDAdPU4o4=;
 b=HBlZl7VLvhztIgjUDY7CyyjKtWA3jtZ0T/Yf3FC01tkRBuLWFT6qlViOQTMchJekf0
 /R8vr4XjViJ2m5/bXptdk93RF68WB4ufUQU5ufgSzeQpFjqCbtrRgw+6Y/p4d8/y6yVe
 N7AfgHpRQR21S+PKtLvUd5tkB7l+oY+YJUIRZCEEQP9uIQSoLWZq18mrclafmp32uS+E
 qFeN/Ns3B9054Nw1XOkyzNVNZjdsM6DJeLSI+Tecpma1jbSxhhePjeiQ73v3+Hii3vSy
 ikp4x0H6c4uybHirnMXz5YtC9nUyFkwPanr69P9mFaeVr4NyUSjrQonEB7Nhfhrl2nc3
 0oZw==
X-Gm-Message-State: APjAAAXUHUEgqmrG5SZ+03rcchTqRBwtZPPCBfs/pCwlwVDuH1WJ6V5n
 gFajJatlc7Ub5Ojrnt30L2pozQ==
X-Google-Smtp-Source: APXvYqyi4k1XS4obufEQe9GPrtTQh4Ldosu/Cj3LUEjIEn/ydGYaGOvK4niO7KpZnRyZkkeRGMiirg==
X-Received: by 2002:adf:f04d:: with SMTP id t13mr17572698wro.133.1564562426143; 
 Wed, 31 Jul 2019 01:40:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 18sm56049308wmg.43.2019.07.31.01.40.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:40:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 4/4] clk: meson: g12a: expose CPUB clock ID for G12B
Date: Wed, 31 Jul 2019 10:40:19 +0200
Message-Id: <20190731084019.8451-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014027_473679_7C49D190 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Expose the CPUB clock id to add DVFS to the second CPU cluster of
the Amlogic G12B SoC.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.h              | 1 -
 include/dt-bindings/clock/g12a-clkc.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index c8aed31fbe17..559a34cfdfeb 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -216,7 +216,6 @@
 #define CLKID_CPUB_CLK_DYN1_DIV			221
 #define CLKID_CPUB_CLK_DYN1			222
 #define CLKID_CPUB_CLK_DYN			223
-#define CLKID_CPUB_CLK				224
 #define CLKID_CPUB_CLK_DIV16_EN			225
 #define CLKID_CPUB_CLK_DIV16			226
 #define CLKID_CPUB_CLK_DIV2			227
diff --git a/include/dt-bindings/clock/g12a-clkc.h b/include/dt-bindings/clock/g12a-clkc.h
index b6b127e45634..8ccc29ac7a72 100644
--- a/include/dt-bindings/clock/g12a-clkc.h
+++ b/include/dt-bindings/clock/g12a-clkc.h
@@ -137,5 +137,6 @@
 #define CLKID_VDEC_HEVC				207
 #define CLKID_VDEC_HEVCF			210
 #define CLKID_TS				212
+#define CLKID_CPUB_CLK				224
 
 #endif /* __G12A_CLKC_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
