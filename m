Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2549967B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7p0iLr8B7WuO1TPYjnzTGx2A0cDh7JCC/PzyScKLng=; b=s0oRLhUj7dzOj4
	QRbXveFifXunStxcYT65JMsjiPcbede/bV6YmaX0EBZozRW/A5T5zxbU7i0UZ4Md95HKMtEU6SOc2
	bjLoBc4djOpXDunMv+8n+/FLrxNjPV00iyi7OXcYdL2xQTvfJntq+YGivtIKn2lrPg52tbW4I8Kdn
	F4Qmx7ILGYtHMod60PzEUf+ceAROQs9jbQRR10en9OnxnkHSw/4hM8A+TcRmwXbggjI6LK2sZgu9w
	4jeC5WmoT3tBn0MCZYJOXUUZvM/4lVzqW8EmoC4c/FtFEz/QkAmEz0MQ5EP5CXwtUsiL3NGwkhoGQ
	H13UzOohGUyY3k8lZQVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o2w-0003h6-0R; Thu, 22 Aug 2019 14:26:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o1R-0001ir-UX
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:25:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id y8so5610940wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 07:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KG2NcaIwbNAD280NQ64Qs5ode6pikwpdVx2HlcQqOdg=;
 b=Mbo1AIuvdMXerHdaswfzRwqBNLg0dn4ksMsbHBX6Gzz7CO7Ed8uL+57KRDLMsubeLI
 i9fwlUGa8+0jRP1vOy249LbGNk6rCoLl/5SsfipVbB/xjyDOYdJJNYFajO4lqCfdpUUa
 NoZd+QfZk+EgydZA+CESI2LeUcOwP/RnN6ck8dKPbdQW5zfLgajcRvdq6vyVCh5uMI/7
 WGhpSR0IStar+a3Sq2R6J4jcSvZSVx/eb5bYo3QM44Pw30SvS51m+9eaMlT2W0/cxmOS
 nmdqOZq+uKhu/pSdFXAyCX40rJv4yyIbON40DFdjY1381M1P25kT9V/MA/gK94kpSsBr
 brYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KG2NcaIwbNAD280NQ64Qs5ode6pikwpdVx2HlcQqOdg=;
 b=GRsNyCfaqBUbuJyODKzqWWBmXUusqmxbUC5EdTCH2VHUZ35xvhaqT+unqvRtXLlFV8
 GW3a6+/+cBx23Ni9panVSzBoz5IRtJX3UBSSdMW+91VWxg4YsBCCxAcRO28eVVVWW5ly
 na+d+WYiH6J3X49VO99SvyhssgZlK+4uOZ9/tqnoRdZVMibApvrQYxB5NDevb/SQHgWn
 hJMVzLmBI+3X7/e0z0M9wHYxXmWfdi6gWxXIzIVpUbS28v5+3alfHoddx6WbsroLIk1m
 gLRoAtq2bgC4LXD5HxpKSgfrsvZVafZJ9F7GRSt9jtvI5bq8S5ZP9yuGxn/r6KLBhjXi
 Ghug==
X-Gm-Message-State: APjAAAU1YOB9COXAeb8kcFTN7x6YH8gIUr9lQZQZxWHNt4LN0hE3xhO1
 TTPCFut3V+pqhp0LmhKcDhSxRA==
X-Google-Smtp-Source: APXvYqx3Mh2RGDC4m6KW3PjxbIkLg6LPgBiTgdSz+Ekeh7xQUa6XovZaLMvsi4r6rmOAQz3j+lYyoQ==
X-Received: by 2002:adf:e708:: with SMTP id c8mr48174622wrm.25.1566483904374; 
 Thu, 22 Aug 2019 07:25:04 -0700 (PDT)
Received: from bender.baylibre.local (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d17sm25806547wrm.52.2019.08.22.07.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 07:25:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 5/6] clk: meson: g12a: expose SM1 CPU 1, 2 & 3 clocks
Date: Thu, 22 Aug 2019 16:24:54 +0200
Message-Id: <20190822142455.12506-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190822142455.12506-1-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072506_166549_113231CC 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Expose the newly added CPU1, CPU2 and CPU3 clocks bindings for the Amlogic
SM1 SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.h              | 3 ---
 include/dt-bindings/clock/g12a-clkc.h | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index 4682a4442ae9..9c1dc6ade3d6 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -257,9 +257,6 @@
 #define CLKID_DSU_CLK_DYN			250
 #define CLKID_DSU_CLK_FINAL			251
 #define CLKID_DSU_CLK				252
-#define CLKID_CPU1_CLK				253
-#define CLKID_CPU2_CLK				254
-#define CLKID_CPU3_CLK				255
 
 #define NR_CLKS					256
 
diff --git a/include/dt-bindings/clock/g12a-clkc.h b/include/dt-bindings/clock/g12a-clkc.h
index 8ccc29ac7a72..3cfefaf43315 100644
--- a/include/dt-bindings/clock/g12a-clkc.h
+++ b/include/dt-bindings/clock/g12a-clkc.h
@@ -138,5 +138,8 @@
 #define CLKID_VDEC_HEVCF			210
 #define CLKID_TS				212
 #define CLKID_CPUB_CLK				224
+#define CLKID_CPU1_CLK				253
+#define CLKID_CPU2_CLK				254
+#define CLKID_CPU3_CLK				255
 
 #endif /* __G12A_CLKC_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
