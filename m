Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E9DE8FD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z+mVPyY/9uNKAYPtu08jUcZ+8SwJ2ACMYEiKR5KLjfc=; b=CySQ9o6sGa6sZkvxyfti0Qtag3
	U6abplExVpjvsg6xoAW+M/fxW07TjRLuVYBGbgH8rG7VdzCVETOfCYsMD2n7Y5I1OqL5kAFd1WA8H
	CNx9UltRfutp79Tv59JBKKO2G7SsuakwHo9oOFF7beJ14Ic2S/8lpQvlrtUx1vJza+hgAUpESlXov
	6skNs+9R65E6TR7fBujSRLIOhyxi5VEgYql3tFPN70Y4YLbEa/kprXppvf5N77mFGRAQSTbEdyel9
	bd6ijdz/OHZMj1QEclBdGhHQVKcYTDgVAkDHTAvKXrhG359hla1+CC//F/9tt+OC9k5gSlIPjbZk4
	bJzKF6qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPX0a-00026E-8T; Tue, 29 Oct 2019 19:18:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX09-0001uE-7h
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:17:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so3640872wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dZwbF/SbBh6c2Dy0gSgliZ/LGqu5tyPeh1FOp7sb9Kw=;
 b=rDap4f8XVs+sdZ1jZm/SNk4IDXdR6CXWr4/wcFisDwgqQZtBpFnrrc5kdBcEREmeC3
 OKcHSwCWwvEvJe0LyN8pOutiDGI5hifkUi/azcjr1/WnI+BldZ+z5UugtgMrfzvW37Qs
 U/9vUgbdhjJRB+PYg86ryT2vHQ4nqX4sskxmux0s9Prz/JglQIqK+ZNUaCl8qI6lS0Rs
 a4QssVPOvSgxy1+vl0FgUpsVKSjrcuKGxdJ1BcCSjAPE6P/1O7S/EzhDvFclwdh/vsJ1
 Qp30U5vUnFOVih1FeTW73jUO8mx5OmULlV3cvcWnBYq97U1fxms6II0djHc40TaKq5be
 6I7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dZwbF/SbBh6c2Dy0gSgliZ/LGqu5tyPeh1FOp7sb9Kw=;
 b=LdJJXcEdCEivpSdEovd6NkGewlBPOKd/6WIrrJKhNP97gsefSUdePH8+4E2/vb9DX3
 SYb5IWbB28354AXizzxZBJRxWZhczPB34KjKMmJ+IKpeagHrO2vmGfunihUgilxpPnab
 QIsFPjfEHVtYpdtntVOrSlEXmz35taLc5w3UyEXEmPEo3tySjnKLyopIRKQmfQgu57g9
 YXSoYHQDnHurju4bJ/hZDQLI/xRraq+EWRsv08JWFAHqOMXHkNoluWHx3PyRr7M169/n
 0G4xV64Ht6JFBknMnZcWyMkwEl6B84/ooQNYxiAyureOdpLG4gJZDe+kAy+zSR7uQSZ4
 fbTg==
X-Gm-Message-State: APjAAAVwhINsPn/QMVICfBVQxInP7Lx8FVgGwc/S22QOHWTrhbOvooPi
 oxFaAe1OsneO03N2jpl8mi/otsNdqtg=
X-Google-Smtp-Source: APXvYqwCAE8ESCkBHAd86+tiWOgGEzPbep8K9+RZYmy0IIqwIIpbUpsQsebkXApcsDObyT5OinaPPQ==
X-Received: by 2002:a1c:7704:: with SMTP id t4mr961210wmi.4.1572376675429;
 Tue, 29 Oct 2019 12:17:55 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v128sm5493043wmb.14.2019.10.29.12.17.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 29 Oct 2019 12:17:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, maxime.ripard@bootlin.com, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v2 1/2] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelB
Date: Tue, 29 Oct 2019 19:17:42 +0000
Message-Id: <1572376663-22023-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
References: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121757_273214_DBCAB025 
X-CRM114-Status: GOOD (  15.61  )
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
it supports.
When this file was created, only modelA was existing, but now both model
exists and with the time, this DT drifted to support the model B since it is
the most common one.
Furtheremore, some part of the model A does not work with it like ethernet and
HDMI connector (as confirmed by Jernej on IRC).

So it is time to settle the issue, and the easiest way is to state that
this DT is for model B.
Easiest since only a small name changes is required.
Doing the opposite (stating this file is for model A) will add changes (for
ethernet an HDMI) and so, will break too many setup.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml     | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 972b1e9ee804..9a1e4992b9e9 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -594,9 +594,9 @@ properties:
           - const: pine64,pine64-plus
           - const: allwinner,sun50i-a64
 
-      - description: Pine64 PineH64
+      - description: Pine64 PineH64 model B
         items:
-          - const: pine64,pine-h64
+          - const: pine64,pine-h64-modelB
           - const: allwinner,sun50i-h6
 
       - description: Pine64 LTS
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 30102daf83cc..f9070d9e6c43 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -10,8 +10,8 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	model = "Pine H64";
-	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
+	model = "Pine H64 model B";
+	compatible = "pine64,pine-h64-modelB", "allwinner,sun50i-h6";
 
 	aliases {
 		ethernet0 = &emac;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
