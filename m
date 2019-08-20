Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45742954FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HHN+fekkgHgLAwhuaTelICX350o02LAK9ZObuUBnf1w=; b=DSngUIoZ75XwhU
	KF85LujpxUQLn5X6YyfciL4/9hk0+wUBrI4fw06wowBCrDehDIcDb381m7JNqQ9ymKKB/qr7ssW2e
	TjjbTEeKw4FVE1whddYFVJulH4z4nmENeJMpSq5yL+CgbvhuBfcdLfK19TsuOdBkngXnOFh2mmgGi
	CzwcR4MprMK6/YAWF2aocOoeQ2KmQWd3kRo5PJMd8Gi/y2iHEb4e+Tgdk8bVcrabJdY9XjDE+8SFm
	Ihkf51Hi3e7EMul5pLPmvYfThdAdkmuxsLsPlyhGYL67L2aRt9POCzwYZpZBqu37qe6dTsZlniQS9
	KRz7OyWCk18jSMVww71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuh4-0007o9-5g; Tue, 20 Aug 2019 03:20:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzugr-0007Ff-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:20:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so2335501pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 20:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fh6tIiEv0zJCLKpGDGUD3lhAE/UdGuL0cohxSYv7X6Y=;
 b=bQ0Dfme4RHc8MbBQdhndPG7oN46WssQZ9776bzrfeF2+bZI3N0ScdM2tX7ddr0gh/0
 AXQdtH/sADUXENW1Vo9FtE4j/YjibXaQ8nQLdgV5YrhiQ6go6725QFh1U+nUMJf7dL7t
 Fa3Qo2p8Jm8WuEzQCIQ98nCj5kgnhNzYh1eYRs8UY5LX/BLFBwU5hOVr5LAjfFkLvLPq
 oCn2UrJCygQKR3LRMke9vlfzJqpMUW8J+DKzD9XHCeK8ge0xgl7q8Sl1v2XXkW3x0/mg
 Ec9tXygwNpqbwckNKOHAn0Svb7p5+T4GF/LfxwxW0gGryFjM3b3KjLMRq+eFBCvBwmLi
 5Wxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fh6tIiEv0zJCLKpGDGUD3lhAE/UdGuL0cohxSYv7X6Y=;
 b=gh+SBOF+6QKuge3DPdPbZ4QGVcy7ROWsrh36vlDp0YjKX49frlwiU3uZDH4gx8d3+V
 9B23eJk70aaXAMK31T69EQSMVmMSCf79d/9bHqMwQhd+QdIP6LvhlUVTGppGaCuqlYuC
 lpxFUkL+/u+6pfwdwlwXronm3dqjYTra0kaBhi3HrlDyyqeoh6e68YXcoKjxEs3/k927
 RnrkXfQLt/Dcv6CwX/2Hks0BcY/UKctga4Bzoh1DtwCLVndFgyK4Xyv6ecb0mFS6kcvI
 vpC3kFQc2wCxfu8uZ4uj6unaDEmUBwyeVz7faIgU0oFjCwJ+thgHx7ntgi+E00zjfFVi
 /4PA==
X-Gm-Message-State: APjAAAVW041xgZvPTQe/eVscbP6nLejjnRSuqxPvR1tALMFo8pIdAb5E
 Nnwu7QnO6w5XR6FnLLtOoLg7KrtaCJM=
X-Google-Smtp-Source: APXvYqwxADzQNLa+SFEuwXalUyCiVcCEzis3PXmwQrsbtrNme0Qotb4Ol3qYKYuWxkTnBA/ZpsqkOw==
X-Received: by 2002:a17:90a:2ecb:: with SMTP id
 h11mr16861705pjs.108.1566271204531; 
 Mon, 19 Aug 2019 20:20:04 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id s67sm16155665pjb.8.2019.08.19.20.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 20:20:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: vf610-zii-dev-rev-b: Drop redundant I2C properties
Date: Mon, 19 Aug 2019 20:19:52 -0700
Message-Id: <20190820031952.14804-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202009_394669_FB1FB877 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Drop redundant I2C properties that are already specified in
vf610-zii-dev.dtsi

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
index 48086c5e8549..e500911ce0a5 100644
--- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
@@ -323,11 +323,6 @@
 };
 
 &i2c0 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c0>;
-	status = "okay";
-
 	gpio5: io-expander@20 {
 		compatible = "nxp,pca9554";
 		reg = <0x20>;
@@ -350,11 +345,6 @@
 };
 
 &i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-
 	tca9548@70 {
 		compatible = "nxp,pca9548";
 		pinctrl-0 = <&pinctrl_i2c_mux_reset>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
