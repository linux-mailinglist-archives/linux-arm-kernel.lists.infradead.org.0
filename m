Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142A8954D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmWC5ZFy799c0ur3k3o4vIWpCCaDQyIDe2Hb7sBErUQ=; b=EjU+Q2u5YVKNqC
	yRw2p695BqWaGOQ3xXb+OqinIJa0JapHjENA+JPRWkEjVc56H2EDRrS85MEZ2017cpqNRd8TyrBoA
	DYiE2oEIJaROyIBwlmcocdC/qyWR9w2OWDwkNVmsc59tYGvP1q59DxmBfeVWgMGNOWrNgcnjASf+8
	eUeV+4V02u9Lo5FQ+jsABdUz0HQSBpqEizENzn+/xQqa4arkidC6DSuFNgEr2DJzc97VY8DErP/zT
	V7h/Id/iSe2FMsXUTfLDHC93gRJb50L1A+FQvYgoavmuJCwgyfbaQrhGmbgIcK4BefhwWfxc2Gxr6
	Y/mBdVdsrFMWg4A+/cjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuVx-00034w-CR; Tue, 20 Aug 2019 03:08:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuVk-000349-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:08:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so1972690plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 20:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oQXeeGH4NH+KvW3vYvA+Nx1Bgh03ehE84T2MSrh9Vas=;
 b=B3tLyJtTm2TA0hYSaI+H2E8POTbX14nTZz2lb0BO3134Ewsp94i1jyKT6lPoehBxND
 Qntt2KyYo/A0nYaa/UnmfqW1k8u/2RWYYOpHwv0+IOO/OTHSsaTpm/M0F8/pOd06kRd8
 3o7w5MaHLnrn+K/+XTxRwsvIcVnsEWyrcGMMHzDimhCUBw56h0+TpDHvGIomaRRzUtcZ
 quaHYuShFdaTVInv/ymvdCax6KBo01yyAjqn7urD/Wm9q5VlVVEDaNRpKo6JGfU3W1+N
 yQUBufeDte/SsHAukvKyk7YGc6NIKQrqEzqRHNWHXrub8QiHoR5CCrnRV0bREerbNKdz
 yNig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oQXeeGH4NH+KvW3vYvA+Nx1Bgh03ehE84T2MSrh9Vas=;
 b=kHKPor2oBt2M59xBABG0H0IeHXkRHfRd/DV42x2ToMRlVDORNTouKoHQioYmRDvXKC
 IPBBYTlXrHi1sPWSniQgWfvFUlyXsLomQl36A3TdXtMDOvDQMp6mRZEIVPVCDUiNXXjT
 5q9+YdVb1ViGY/MAAb9wsx29r162NgGgs6El0HThFaoTWxdsDIuIuQjBAZtF6+PQ999k
 ub6qf7NHiRKER8rILT2jWBsLSGui1c4muL1aJge+tvmMgTEIj2l/F8M7d1p3JULqIknT
 C5LqLtYE325PVQkQMusWbagJxGbT38tisjr4OwYqQm0chcNam/MBENse0aow6V+LMw+d
 wrQg==
X-Gm-Message-State: APjAAAVG3Xb1aTs4ox/SR8QWSPEKVl1hG0FfD/VVLvwrKBctDIqz4Sdy
 k6VH70cmaFrK0eQcPgBacZ067JKa3TA=
X-Google-Smtp-Source: APXvYqz9UYjUBmx1ljMCAHrt8bWvXlmb1n8GPFsSICAllhOtahyOWgcPHMQTEhHeB2gzzg/C6Yaovg==
X-Received: by 2002:a17:902:a509:: with SMTP id
 s9mr26456371plq.310.1566270518183; 
 Mon, 19 Aug 2019 20:08:38 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id e24sm18694863pgk.21.2019.08.19.20.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 20:08:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100kHz
Date: Mon, 19 Aug 2019 20:08:04 -0700
Message-Id: <20190820030804.8892-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_200840_130661_90531F0D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fiber-optic module attached to the bus is only rated to work at
100kHz, so drop the bus frequncy to accomodate that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-cfu1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
index ff460a1de85a..28732249cfc0 100644
--- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
@@ -207,7 +207,7 @@
 };
 
 &i2c0 {
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c0>;
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
