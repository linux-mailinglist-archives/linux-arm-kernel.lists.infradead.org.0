Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5776210D90A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIwREGyzmm/hv/89a85c2uQLsibfh7C6t7oR2Xj8D/o=; b=j2azQ4zZiST8i+
	TYyqpyEXd6P9kJtzjnTzAwd1rm4yJTyty8cBlH+a/KksThelL1py2XnWjzP/CYu7mqv9wWGt5HGBH
	ra1FGoYBT1oKzjQyvstwvuHpDHPzjiMxXiXMzzbWLC3UG2OpupuDBDcqggN8bOfSjelOVNOR/yONY
	1i5Hyj3wwwBDzljEuAgt9DL03A48dbP0ncKkrahO9Vi8gnwfJJNkCv6ol8zecjP9pmps87R2QB/e/
	nwMy6IOsM4NgliW2jow4pqcZNlvLFRh10V+L485DjdkJ7aJ5WwKzwFSWGdWK5zhCojwTWJOmiD4Dr
	m6bW/T0xGaBF8tyq+QNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak2T-0004zu-D8; Fri, 29 Nov 2019 17:26:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak1e-0004XE-3X
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:25:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1U-0003DB-My; Fri, 29 Nov 2019 18:25:40 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1S-0003Aa-NK; Fri, 29 Nov 2019 18:25:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: support.opensource@diasemi.com, lee.jones@linaro.org, robh+dt@kernel.org,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, joel@jms.id.au,
 andrew@aj.id.au, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v3 5/6] dt-bindings: mfd: da9062: add regulator gpio
 enable/disable documentation
Date: Fri, 29 Nov 2019 18:25:36 +0100
Message-Id: <20191129172537.31410-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129172537.31410-1-m.felsch@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_092550_146496_75AAAF4C 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the gpio-based regulator enable/disable documentation. This property
can be applied to each subnode within the 'regulators' node so each
regulator can be configured differently.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v3:
- adapt binding description

 Documentation/devicetree/bindings/mfd/da9062.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
index b9cccd4c3f76..863b1199d875 100644
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ b/Documentation/devicetree/bindings/mfd/da9062.txt
@@ -74,6 +74,13 @@ Sub-nodes:
     Attention: Sharing the same GPI for other purposes or across multiple
     regulators is possible but the polarity setting must equal.
 
+  - dlg,ena-sense-gpios : A GPIO reference to a local general purpose input,
+    the datasheet calls it GPI. The regulator sense the input signal and enable
+    or disable the regulator output. The regulator output is enabled if the
+    the signal is active else the output is disabled.
+    Attention: Sharing the same GPI for other purposes or across multiple
+    regulators is possible but the polarity setting must equal.
+
 - rtc : This node defines settings required for the Real-Time Clock associated
   with the DA9062. There are currently no entries in this binding, however
   compatible = "dlg,da9062-rtc" should be added if a node is created.
@@ -111,6 +118,7 @@ Example:
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <3600000>;
 				regulator-boot-on;
+				dlg,ena-sense-gpios = <&pmic0 2 GPIO_ACTIVE_LOW>;
 			};
 		};
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
