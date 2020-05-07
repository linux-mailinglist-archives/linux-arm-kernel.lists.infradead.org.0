Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B81C83C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X7lyMou2b77uQ+Fri8OUmbysnf8lxTCqQXAgEVizF6o=; b=F0+
	eJUFNptA5esYBhciFTyfoA9tpTCYaajI9p0EKFvTbsw3oMJ6YpQczATN5T8xkoftYaZrbJwgBxTVX
	UuM23/uAA8JBlnN/HUPcPdkOThx5dcnoJLo6InEH2OE7QU2XXbfm0SUvSp1G2C9GABS/zkbKK0Ca1
	zqfAaz/xqDDZvb+CkYyAIIC3D3oQo868UEGYhvSqU5mSuAAtWXxfnir5jg58v+//npwGDC9+8c+TF
	QUQMWOPd25/wK0V8pME4PqK0RB0Sjz49o4fHC4pTovJTRoio6F2/Ol6vLKFf9DBUeGo0KFwKfdlID
	u+KZA8sYapDMiZzhqRaZOImJTF67RLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbFp-0003gI-Mb; Thu, 07 May 2020 07:47:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbFY-0003cX-Kv
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:47:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id p25so2597517pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 00:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=AR5Zu3h0zYcp2CjYSCzPv5BOBji1VqKwGPKlVLR0QF5Uo3TGwx7XJKWyLDyI+su6CY
 WEcR6iVRdAJGvmCgEY6pKJ0Cm2D5yWjW4ZfyIILIu5rBLKHNaeCZ+DRzxu3SRQzF/Yvc
 L8umyfpq2yFYf7Lm2HACE/KCjlW+4Ecg24dueY4O74JKLhJU/x+51Q8JVyg/QOiDbgcd
 I5ChzDJ4tg1lm6D6yTvW9vLUJSLCLYy3rh5ZaMhCcr35nRL/HfOsYF9+8hG8JotvzWoF
 kiK/LwSbnYfA5bY+jk8irL/cDe82nl9Y8WxllKjEzJcJHgeu0sYQCrIuO0aFyWYpdHAI
 R5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=ioWmty56jTTkNSAckdRQpYWnymhF25j6Er6stkdGAkMeok5QTCvze5dz8G3mKsTPwH
 blsCIzEeTOhVtDtIZKxgbzWHnGy9T5f7uElzVmWFV3qWNg9sYtr+jXFSayMqot+ueC/C
 /Wd+ARCnNogNWc9SvMBIHJgVvBrGaR8jYGYP35ybX9WFKmLnF4nc0ZLOAld1+RXbHpVq
 5Jb8kirgom34FrdC/9rVHLIyantFQ5LE5el0yKjKqJNamzwGb8n1Cv+NXiTV5gW82eVv
 gPO5z37JhFlS4hguKOyyx8rSjepvhHclLmCMbbkCbXz2t2OKqbGw5ajVsuEIPHrg7x1n
 g89w==
X-Gm-Message-State: AGi0PuZQ+nHpJ2e+d7rzU8F2ADlWXIXMxyaaMq8t6f6UPZGG85aqlTEC
 VbLGf3H7cDs1GQM7+ESufm4=
X-Google-Smtp-Source: APiQypJSPQuY+csp6bCCGwKD3ZC1sC7/TB05ndt59XXU0LqPCVDPgfV81xHWnSNnl5MlKhMSWxCOMQ==
X-Received: by 2002:a63:6cf:: with SMTP id 198mr3353646pgg.59.1588837639579;
 Thu, 07 May 2020 00:47:19 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id x12sm4011292pfo.62.2020.05.07.00.47.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 00:47:19 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 2/4] ARM: dts: stm32: Add pin map for I2C3 controller on
 stm32f4
Date: Thu,  7 May 2020 15:47:15 +0800
Message-Id: <1588837635-14267-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_004720_732604_A49E3153 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds the pin configuration for I2C3 controller on
stm32f4.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa14..051f336 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,18 @@
 				};
 			};
 
+			i2c3_pins: i2c3-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 9, AF4)>,
+						/* I2C3_SDA */
+						 <STM32_PINMUX('A', 8, AF4)>;
+						/* I2C3_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <3>;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
