Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E71210C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 00:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2YMQJuucMSP2uoQSkE48QF6x20AijUaDNfAiqEZUKCs=; b=gkFv9ADjQxkzmP
	gZpRwKwqMJb79bN9cYc6+xsFhrMUXwVzkkWgChc83g0bVuJCm8UYC8SvCep4j0VacVwifcxU5HZum
	ziiwlr7zkbaY1x7meomGqoXHQsbADB/2RmcoUR245S36TnqkgPrG66Qtw7V0q2qpBWUw5TfY0icbq
	4rItHhJ8fyUj5XzxJrpHeKE/tskt1nsYQMbhevYumvpHlK7XObbiUVhyIC7h/YElbXQ4LChjSHiMA
	CIbJzMKOYeltflZnjoOaXrq1D06ZRyfUC5DYAZH/2erzSiBhmmAowZpqPFpDkwoXDSJKZ8bo3vs/i
	9gCM5BoE6wiG1dA6Pqlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPIY-0001cN-6X; Thu, 16 May 2019 22:56:26 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPIP-0001bZ-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 22:56:18 +0000
Received: by mail-oi1-f196.google.com with SMTP id v2so3812211oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 15:56:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gk+wQtnm4tRRfZYtvlk4b2pxbAfDQTPWkdKNCH7e3p0=;
 b=QznsbBKhfct6anP3CPbENYNbp2+i9irXoL0VsdtODovWN6Yg2KJLVwS3p5y2Z9d0NA
 CiEWwroTI2uIaEQOSmH1Xiwlx6LiNXSpcvfWK9vokfS3BGh37AWgBzcpe0ioPCkxKv/3
 6auRSt4zswQaq1i8ypOyN1SSNxBkkPZ631gu5lAU+UOuCbNpkzP5AvWs0PTBDdOf2GG1
 II2hmCkdDoSvQelUwnHFNYpOVXl93EvKvRf0klGz08cdOchq2Er4LfDgFcc2RwtESV9F
 CrKvALLwSNBvb4CiEfGIfG5G0iZhlgo6deyI7yzPH+//2OXif2dQ17iQycfxeWqUnq82
 K/vA==
X-Gm-Message-State: APjAAAVX1Ta+rEqyiQXv/6VQOws+XXMeUsEQusXEI2ykMnmHvtOnUt0Z
 C0Bts1vcYMnD8QujmwAFWA==
X-Google-Smtp-Source: APXvYqzs8xJQ2Ok1f2GqXZC31v0mN+vwM2xYsnNgq7aDavrzbs8JsIB4fqpJDYPvQ3pHPsDDOLkP+w==
X-Received: by 2002:aca:72c5:: with SMTP id
 p188mr11344090oic.116.1558047375964; 
 Thu, 16 May 2019 15:56:15 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id h2sm2195347otk.25.2019.05.16.15.56.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 15:56:15 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and property
 names
Date: Thu, 16 May 2019 17:56:14 -0500
Message-Id: <20190516225614.1458-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_155617_163911_C89CA057 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While properties and child nodes with the same name are valid DT, the
practice is not encouraged. Furthermore, the collision is problematic for
YAML encoded DT. Let's just avoid the issue and rename the nodes.

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/at91sam9261ek.dts    | 2 +-
 arch/arm/boot/dts/at91sam9263ek.dts    | 2 +-
 arch/arm/boot/dts/at91sam9m10g45ek.dts | 2 +-
 arch/arm/boot/dts/at91sam9rlek.dts     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9261ek.dts b/arch/arm/boot/dts/at91sam9261ek.dts
index f681cd727010..02b116b48c3b 100644
--- a/arch/arm/boot/dts/at91sam9261ek.dts
+++ b/arch/arm/boot/dts/at91sam9261ek.dts
@@ -49,7 +49,7 @@
 			atmel,power-control-gpio = <&pioA 12 GPIO_ACTIVE_LOW>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9263ek.dts b/arch/arm/boot/dts/at91sam9263ek.dts
index 13d415c22a69..924fe563f6fa 100644
--- a/arch/arm/boot/dts/at91sam9263ek.dts
+++ b/arch/arm/boot/dts/at91sam9263ek.dts
@@ -111,7 +111,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
index 46107c2f1ab9..5226e952a729 100644
--- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
+++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
@@ -236,7 +236,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <32>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9rlek.dts b/arch/arm/boot/dts/at91sam9rlek.dts
index 27d8a1f44233..a000a459f17b 100644
--- a/arch/arm/boot/dts/at91sam9rlek.dts
+++ b/arch/arm/boot/dts/at91sam9rlek.dts
@@ -37,7 +37,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
