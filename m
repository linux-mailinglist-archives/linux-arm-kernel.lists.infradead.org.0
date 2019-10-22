Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF72DFC73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyTMDgR93XVzW7pZ8IIkkOM1iPDA4hm0BTc4G9JoCH8=; b=O2OZWjlbJFbClY
	hwLjRS/rnKMA/mxzBeHM+9bqxLvUlj1UQS2l/KVys3w7hsHoK4RaQkWicDxmHm9fDhdl+a+kP2KDA
	2F4AF2Ckl71+2FqhZd8GYy0mminTves0GdqFcxU6TXRLsYhOJb9wrVc5AzY6heWsPF3OD0m6uFo+V
	r8sNKiuSah07KteCq061s/IQbYOv/2rEayDhSuDoUnsJymtA7zFs1ydRrBhIoXO0mIJuu15ZUOd0G
	WTtxBeIL/w6/PzRP94HSY6a2cjH8I2KkxYSD5s+KVbFfAxLoCJgB3UIpGSCRe5eSEZv0HSQ5jSFer
	HSdOLUYB6e8Zo74fZZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlQX-0004gp-LC; Tue, 22 Oct 2019 04:05:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlQ7-0004W8-Kd
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:05:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so9772419pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CD4Ry27tfT/ul2M0hAWg1+r/2u5+J2xa4393NWU742M=;
 b=OKMWbGUWfSu4seLAYx7h6cgAfLj2eeU1bFWbmwtKrl5Zao4lNRCItpJmWUF+KN6irx
 PdBAsDzslSaEMtgGXKmoFuOPatemVYY9dYwBMNwEVTbPgvs49wkw++DxMfrdirdvQJmS
 ZycK56sKUSEC5yCIekkToO++5CBISys/7aGXUAuZXTNCwLypOQ7jAnt85epAMbEHra6f
 jMbyLMtXiNx1hoVJE0JnViIAAR1hyW7VxFGEj1ZVWJi0V/qbZ31MMPtAMvadjOjCwCNQ
 p7+mSMj3Ht+Iz59QDosH0fcHdukkI5WzZLqolIQA/+tSAQVnjFSPIFGPcFNF/pHamloB
 fRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CD4Ry27tfT/ul2M0hAWg1+r/2u5+J2xa4393NWU742M=;
 b=TJVnXzhgkHRcrZXunFkhzYGkHR5ohZRpFP4+4rBPTSSSJ99nocA56agoh9+yayxKY0
 QojimGxJfdgXvDTd8zN2fKKybV86TaLZMyFGhBceRLEH1Jg0rHg1uYA8DzAyUAk5zeW1
 lkTB/TD2tWmPw+xOUwl9Z7o1zrEnwMzE8HDA6A22ZPWJoevQzNaprK0XuJUdmghGoCMb
 vvEC1CdBlsiGSNYgY61OPO4ved+lLARmlLNcFAyGcAdFTWMHD2JRJYfM69WtPhjySdhI
 Ht+EDwFbKNmvLP6N9CodtJeKa8uycntUQZ1oMaLtFhZ9uOt4AU2DiBmBmltQkCUxDLoT
 UZjQ==
X-Gm-Message-State: APjAAAXW0/Wmc4MskGiDGqNJ3/XXQNXg3eNMXElrQ7o/YpIizgjYwt/8
 0BOQAW7M835UGvFNtcCsn3svjHgj
X-Google-Smtp-Source: APXvYqx2tF/v+wSQuX21by2faNJ8DJKymiZbFtaGwGJQKxl3gr9C175dnBB5hYt6r4ABCvlevmoyKw==
X-Received: by 2002:a62:6842:: with SMTP id d63mr1758351pfc.16.1571717118671; 
 Mon, 21 Oct 2019 21:05:18 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id n3sm18778738pff.102.2019.10.21.21.05.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 21:05:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer
 interrupt-names
Date: Mon, 21 Oct 2019 21:04:59 -0700
Message-Id: <20191022040500.18548-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022040500.18548-1-andrew.smirnov@gmail.com>
References: <20191022040500.18548-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_210519_678142_7CFC299C 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Documentation/devicetree/bindings/iio/accel/mma8452.txt,
the correct interrupt-names are "INT1" and "INT2", so fix them
accordingly.

While at it, modify the node to only specify "INT2" since providing
two interrupts is not necessary or useful (the driver will only use
one).

Signed-off-by: Fabio Estevam <festevam@gmail.com>
[andrew.smirnov@gmail.com modified the patch to drop INT1]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---

Original patch from Fabio can be seen here:

https://lore.kernel.org/linux-arm-kernel/20191010125300.2822-1-festevam@gmail.com/

 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 8d46f7b2722b..a8c86e621b49 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -358,8 +358,8 @@
 		compatible = "fsl,mma8451";
 		reg = <0x1c>;
 		interrupt-parent = <&gpio1>;
-		interrupt-names = "int1", "int2";
-		interrupts = <18 IRQ_TYPE_LEVEL_LOW>, <20 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "INT2";
+		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	hpa2: amp@60 {
@@ -849,7 +849,6 @@
 &iomuxc {
 	pinctrl_accel: accelgrp {
 		fsl,pins = <
-			MX6QDL_PAD_SD1_CMD__GPIO1_IO18		0x4001b000
 			MX6QDL_PAD_SD1_CLK__GPIO1_IO20		0x4001b000
 		>;
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
