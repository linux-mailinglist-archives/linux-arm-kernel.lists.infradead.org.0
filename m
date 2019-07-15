Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C353769CAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 22:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2A/KMnXwYc5aIPIXpBCpS6a2tz3qU+fNQNnpSddiJ1A=; b=Tuh6Hwe47iTHpA
	pde4qXooBq5wu3E2o6SDSzy0sh738jPhPYLJ/srhwOtfceuKz2DxUA6a7HDVrBYIY3bUGfFyo3vEQ
	90ij8w71IjafljiSZU68zqTMedXLP1yDG7e1585Z5LDsLpNv5ist9bVIKneGMKxHyMHYUTt8oVM23
	G8OFisgaYZbFtyxidW8lZIFnLOqckgahzM4mxxKJfVWuj5T0T/FnhjHwCmirn4PO20RL4Ad7oaYm9
	QUpNDFbUcqwj0R0a/W1e+b7AtsKPV2XtDYvnHQkCLtM5hw7xe/6Y2e0UHmAGNch5yILoW+Xdb/5me
	qu2FayGMYgyc5i90x0gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn7Tj-0000ot-LJ; Mon, 15 Jul 2019 20:21:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn7TY-0000oN-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 20:21:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id c9so11933048lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 13:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TmI+G2a+MFeCwy7Tg4jhuurPd3QAR7gfjXDfp90OmJ4=;
 b=zCHEVbz3de112jKAkxnHwrnP0+O195aIi01mGmwiCJZJR79megYl1oTWLY31QsQ6ko
 rQuidw/9mmeOF31WBxm2YoEzuqAbslsrQjNeKAHKsrWi/f1PHDokJmOkQY07P+QC1Zmk
 JChG7QGfCn6XZqrTCbNEjcFxKq4yg8cJlbMCEuvyQJYUB+FRF1djqla+Q3oJcrYt7R4j
 eYxhn9tDLbR6IfRkXJ4lAsFs/7vjzC6xzCp58D+cyMOfGqOx6XE73ApP1xYR3NlvDk29
 Zzhc72l0STaZZxBF7S2kVrr+ljBKoutvDL8I/TjSQf/ER/HjFtiwdrvYtUJX8tHCvyJg
 lfFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TmI+G2a+MFeCwy7Tg4jhuurPd3QAR7gfjXDfp90OmJ4=;
 b=g8VceDstKbd3vtu5uq0eSO38inmnmEApY2A3JrfND5nUQuKLCxgLGgbrrBLUKo4qre
 qLEpI5JFQpaoU/7uGX/2hl/nxs9NbmrP8hYayvmP7VqTdEEFnSaAD+5wSWouJuHIX4Aa
 Po23rn89evXEgugvJ8tim55SPi7ubleGMrwroibORfiLxuzcSiWJotD7I7lAHS1oXijd
 YaJU7QMbENVJwjAMua0oeRdDC+jtiWLKc4ebDO2Ca0sGfHvYEHld8+BUZVursJE6YoIs
 KIMW0Y/WGEumD6qNvbh6OKNnA1Xc7InRwmvEsZxw729rYFqf5E6J7S8mUCT1UVjc3Ed5
 VPSA==
X-Gm-Message-State: APjAAAU+7RvaL3sXVmlD9UKQMptIU4LyvaZr8Jb/e7Zc/YTob9H39qBc
 32RDe1DRqqLu3BCfFxqXP23Vng==
X-Google-Smtp-Source: APXvYqwto8+oJFMSqk5I71ZjxP1wmCB1V1rXX/WOgWuB0k6JHXCBv6CuVMboKfddL9hOVFpH/J1AUQ==
X-Received: by 2002:a19:f711:: with SMTP id z17mr12375881lfe.4.1563222089627; 
 Mon, 15 Jul 2019 13:21:29 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id s7sm3302729lje.95.2019.07.15.13.21.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 13:21:28 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: gemini: Set DIR-685 SPI CS as active low
Date: Mon, 15 Jul 2019 22:21:01 +0200
Message-Id: <20190715202101.16060-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_132132_335550_0985AC3C 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPI to the display on the DIR-685 is active low, we were
just saved by the SPI library enforcing active low on everything
before, so set it as active low to avoid ambiguity.

Cc: stable@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly to fixes.
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index 3613f05f8a80..bfaa2de63a10 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -64,7 +64,7 @@
 		gpio-sck = <&gpio1 5 GPIO_ACTIVE_HIGH>;
 		gpio-miso = <&gpio1 8 GPIO_ACTIVE_HIGH>;
 		gpio-mosi = <&gpio1 7 GPIO_ACTIVE_HIGH>;
-		cs-gpios = <&gpio0 20 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio0 20 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 
 		panel: display@0 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
