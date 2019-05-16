Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F62210C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 00:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x3NDjABMyBvStD7Xri68L/T88Ijsl5LIuMng0jpQ85A=; b=lWXcmKA7mOIB14
	ZrezXm2LO/U/r8S35bzap608LTwmdhLo0R5pz0VfwvKN0J0wqRa+0m9QKY23JAnW3EV/8PTBw7EE9
	4ZvQGKyjxKn0EPCNJWex+wTob1+SeFk0Fw7Jf9R0HfSPZ+7rIC6jyN5j/2U9Y8t9v2Y5FFbKVZOyG
	v8UH6V7KKAeTIie0SBRt8Sxz+Id1BM8T5jrtNYu1NBy4iTRVOGlMOJoKufjnsDVBh6XUSh+ywimYZ
	oSUvwru4nQ06p2X7BcU0JBSRTvCqqjbJHm6Cu9Z+JoT5imLL6mazZOf3Jj1HmKu0OY039sHuqfy2z
	03ZE7sTPdD3ccZY+sNaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPHk-00017c-Mh; Thu, 16 May 2019 22:55:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPHd-000179-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 22:55:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id s19so5029150otq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 15:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wo1wvKuW2wRAeBZgH3Md7/opMqaL+d5QH7rn/Aok/6A=;
 b=bszqzo+j0AC9JI5scTn8/gb5gp3wpclrQ6RTb6UQiChBg2Xf9z1B79T8wEThGV3MRv
 am2RHLY1bYO2TO+zF7ez1c1Iz61EC2yU7rHum8Yvihcmbndl7TJhWTTBpO+P0pAYXfPY
 reIHZiF2G/wWXaEorOZEtF9QAloOD9KoEqO+dvFKKUJ9KTdZAuLftWDMOR7rg3YyQZ7M
 +bQ6qgyHaJtDJisGMNhRmCSpYR13HoLfz2RYjt1P+f218selHKjRx5qDl4+3hO/quHKg
 GhAsHAZ4EhUdsfw6YztfEXCUnsd0xz0MtIX23oVbEJXl2eqtsDHqfFLKq1qBNa8UTrFV
 3n3Q==
X-Gm-Message-State: APjAAAUukEBYEkIl9VboXKq4iDnWpuWGupVuvv/vkwrzgcbhWwCWCx+j
 MRgI29s5VumKcBvXox31PA==
X-Google-Smtp-Source: APXvYqxmg+gzYkyVlfHII48Vvf/s4pSIlpHK0/TWP0/yX9hqjsRT/6A3Bt7JAP4fGsPFwbl4YP7e8g==
X-Received: by 2002:a9d:5f99:: with SMTP id g25mr664810oti.10.1558047327863;
 Thu, 16 May 2019 15:55:27 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id x64sm2759951oia.32.2019.05.16.15.55.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 15:55:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx: Avoid colliding 'display' node and property
 names
Date: Thu, 16 May 2019 17:55:25 -0500
Message-Id: <20190516225525.32605-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_155529_291471_F5E0BB44 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While properties and child nodes with the same name are valid DT, the
practice is not encouraged. Furthermore, the collision is problematic for
YAML encoded DT. Let's just avoid the issue and rename the nodes.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/imx6ul-geam.dts   | 2 +-
 arch/arm/boot/dts/imx6ul-isiot.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-geam.dts b/arch/arm/boot/dts/imx6ul-geam.dts
index bc77f26a2f1d..21ddd359d3ed 100644
--- a/arch/arm/boot/dts/imx6ul-geam.dts
+++ b/arch/arm/boot/dts/imx6ul-geam.dts
@@ -169,7 +169,7 @@
 	display = <&display0>;
 	status = "okay";
 
-	display0: display {
+	display0: display0 {
 		bits-per-pixel = <16>;
 		bus-width = <18>;
 
diff --git a/arch/arm/boot/dts/imx6ul-isiot.dtsi b/arch/arm/boot/dts/imx6ul-isiot.dtsi
index 213e802bf35c..b26d4f57c655 100644
--- a/arch/arm/boot/dts/imx6ul-isiot.dtsi
+++ b/arch/arm/boot/dts/imx6ul-isiot.dtsi
@@ -161,7 +161,7 @@
 	display = <&display0>;
 	status = "okay";
 
-	display0: display {
+	display0: display0 {
 		bits-per-pixel = <16>;
 		bus-width = <18>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
