Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6816E9B7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0z6tMMx9hjvEVhHLGcPEJyj3Y9h/D/adMcufwum+ZZk=; b=awWHhclkMfQ7uFLMayHyRV+769
	05LU9PGnABHhE6XonAH3DFyarW6gUP27PBxV2enEadn1bE+3ZzYjMESwiTt+xhbBroYRTWLw2Mhf1
	J2G6gyQArDhJLfBDl1aDEJuVyqloz2bOtLESfpLNTG66WZoW/8KV40ljYDOAM47kvXlKDNazwafN/
	YCzfJPzNgnJOSwN1MHDnqd0mQN/rhKbaa4ZJ/oVypgC9GkZ9tggxUNhq+Amds5DZqPpOX68ONbu4j
	9dvE25Z1k7wO/lqWxrmdrydt3At4NUbvZCL41lMy+QFVjzDlOkU2gPYH9NBtRCLZkwF1zdv24HM20
	NRo97OgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn2J-0007Gr-Tk; Wed, 30 Oct 2019 12:25:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn1e-00074N-Ik
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:24:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id o28so2070771wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MKCua1iUyxONn+bsOWnRZuMnXqiDfqvw9FIMx0dZRF8=;
 b=JeM5H6a2s+6CWd9XEIxYAUqb70ZFjnB/1nhiQCi/ckl5nLth712zbo3IvCI/EbsOLT
 MNm9i6RSPi8qZuw3Fx29Wrvnw6dItVeND28wsGa6nVBFppFShvdau60mMt27hcRSsxx3
 TPPUuFWN2fsM0QwdasBVpdXmw28Jt72mUY7pjeMqijG7P6S4mwnhR6wApD8+UnNQERPd
 19uy3WIVQJEKLb/e4h5d7/kZ5z/PBDN507ElNHDwBVdO5DvGT5hVFVtxlgObftxX2ZTW
 s9gUsc334wSJF47aiFdPg/Hj0ezaiJ4SlPjA4Yi4CM5YLW+8DZSOe3BV4itybE7pp0Nk
 Kb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MKCua1iUyxONn+bsOWnRZuMnXqiDfqvw9FIMx0dZRF8=;
 b=hy9tTHMbkp8/QIREaQfUze2YZqJ8Tv0K0BlDSxOCbIDpzrt6arAEGA7tTMTE+9APL5
 NTFXD+uyLTwx6S7x4E2UdKjQzSFCvp7ex44vdP52BBiUhD4bM3SRoICeICh3RBfccckr
 T1UmSNS9prF9jjEdTQwMAAOyvpeCr3Glz8m6brOpC5MaYexwtIGHrRI47nHN05KTTOMj
 q66/l0YR1zXerK4Cc3Jj2+FaZx+IElfZCgRsljnjmnaEWDrQPyQGkI8/Fbszb6yWZYLD
 9jAdZA332EVph/5af87vh5kNJuLFp+HZr7n6ic17cFrLAbMJufNnk4sumdkMJPQj7+hO
 XvKQ==
X-Gm-Message-State: APjAAAUoC5NjLLs9FlQUF5Zdk5zTgwUuNKHuvb20xNiA1S+wCYMjMYMy
 YCLTNt1A0s4FyPwYjdw+QM2LvA==
X-Google-Smtp-Source: APXvYqzeJed9goyylmqlOBs3LxL7op1lRQ9/rFSPpVdMhG8ysk+IWFKHtQYfDtxb9UaVHLJiJm/kFQ==
X-Received: by 2002:adf:fe81:: with SMTP id l1mr2930329wrr.165.1572438273075; 
 Wed, 30 Oct 2019 05:24:33 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id p13sm2075919wma.41.2019.10.30.05.24.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 30 Oct 2019 05:24:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v3 1/3] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelB
Date: Wed, 30 Oct 2019 12:24:13 +0000
Message-Id: <1572438255-26107-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
References: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052434_617579_0297B516 
X-CRM114-Status: GOOD (  15.31  )
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
ethernet and HDMI) and so, will break too many setup.

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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
