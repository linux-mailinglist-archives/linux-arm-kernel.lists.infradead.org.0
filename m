Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DE81C87D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X7lyMou2b77uQ+Fri8OUmbysnf8lxTCqQXAgEVizF6o=; b=hOo
	orkpKIOIZijhlJR4PMUBAsKGcrTUbIq/gnZ3wbqYSOyCgwzBWqYVLQlz+BiT4pO6wsXIgf+3rD7/C
	RncesYBe4ma7lxK2DrMYyIj27swU4YUVIZxfu+SA1WDt6oeVFNtq3EGwXo7VHPLte9rSQHp6TtE9D
	+AkQJ1GeCWROsfjecFq2vq49UwJJRaZ/2JliOSS3J536c2cEhInjiksCxm49+Rt5UaFZCt2CJXv+s
	cLe0VczHOWhTFTPi8L/ubbPidmQNXiLdil0rBUQst7bsmiIl3qUHuLwzozivJK+fh4zc0rQKWbQaD
	VT1eR1haKTHNnXPmoAgQjCA/wM2hQbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeVC-0001jk-RY; Thu, 07 May 2020 11:15:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeUp-0001LO-BD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:15:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so2867289pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 04:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=tRS3YV17LbENu+VpnAc6CsLvuTRwOuDXc5iJ+rNe7z1ZO6/Sggfny1+zIo8dgIBpZl
 kg+jH7StyEUzti01YgpBJvS50xXVsSZk3qBOmgrdfdK/6mJRSYp9xCTa9h8RTdgk+zNR
 MOGHWMYooC5XgYl2CVraN6sJlD4oyzkNOJ9qfqDgN0PBukAP0vj1efJfVDp/2rElpjnz
 aPHvuRIN45z334PdXh+xEyNJR9cLcN0kv8bjI7cdDr+f9JnUN6DCrIgnToM8gTA9sXTt
 duS1BlGzDgKWYzGKSaOp1DKNfzojLz4Dnecot1rd0U6jMcjqBnEEmoQLRuAtBF4kGyVD
 YFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=jsx/2Q0tskkyKTln59BYnacia5tozP9TxoQKP/sF80Avcmc43ln3QjEjnY76bR25cS
 OD5DoJ4En+Q97koNZSwVZ0MVyJxD+UHwHZq0ix96n7wC+YPwTJ8LEFZ6WK/1p/AXpm54
 g/d8hgg3NCKtcA4n5CEjQEkzpvXGwqkEhNSPb47lyhMEbwcMjtLKXovjuIkebUdQEa5u
 dv6/8pMDoAT1JvjEQkfTJzhfa1IhaoLOyrWLoVOaY8zOtFvfMMipeX566BA/U0Ii8bue
 6DdLABOTkIARzVQjWesrcbxYHqGczTPm6zvYwgsocAngd00fDmaVCpGUSKgzjgAFLDja
 u+zw==
X-Gm-Message-State: AGi0PuZqN5pnKqGSt6zHNAFyAF2Dp8d9T+WFSoANxJjCJQUCbzzptOTl
 TnUpO/Bjis3jLMRt2tXcZoM=
X-Google-Smtp-Source: APiQypIPageHHo5o6CT94w6iXvoqpKWIPl0+2Om0RAPGaNvLr57cPx3lh7dN6T0Lq0Wney2FP8ukbg==
X-Received: by 2002:a62:7555:: with SMTP id q82mr13021927pfc.136.1588850117599; 
 Thu, 07 May 2020 04:15:17 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id t74sm4729687pfc.64.2020.05.07.04.15.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:15:17 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH V2 2/4] ARM: dts: stm32: Add pin map for I2C3 controller on
 stm32f4
Date: Thu,  7 May 2020 19:15:12 +0800
Message-Id: <1588850112-24297-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041519_585444_3AF14B09 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
