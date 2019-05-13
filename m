Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6CB1B7B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hmfQe08YHI591eNNRjIFzpx07dExcWJe7qtcAB3BaPk=; b=eaf
	3Yk0LGB+I9ObEUp0lO2crc25XDd5z9lSsrVWNlsEMWr3fDfm3nxeGf2p+/yKTW8r9XMb8fdYJXs8j
	UxhiNfR4+yJmO8OyQaeCB+FVk5NbOBP9dJ5uJ0EGjsj/UWeR6aWYibbzIpiaxO1Z2D8nBGxAdfd1g
	n/QSPuJLz/Tpultv6nZ4AOBaaczhIWAcZaCMobq/Rwo6s/+CgYQuRnhCctj2pt25IhmP/NwUhpWiN
	Z4WKtynxN7pWuHeLjBLKfm58CjguJOsVx/tJEB5w4ai5YLQgpZXWW75IP5nqvTB310CbztpPdMdDR
	iJUFESZbpPJ8A4siRQZ1BW20bje8Oqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBY1-00084M-Ok; Mon, 13 May 2019 14:03:21 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBXm-00080F-B6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:03:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id y22so11379987qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 07:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+8F5XxGZnh5/5CeEfDg7k9cl8zq6SzSMq0SqfKVdO5I=;
 b=YHs29aYfkvZi5wT5CdeI90I45/B0+H9NCDM7XkKjfKWRwdk68Qor+gSWJzpeYzwk41
 DnxAL/dUDI99lNkDSoEKyJJUsz174L3SSZDT9ald5qVWu9hR5EtB643mA666xAtmk7Mp
 8LZ/D+PiBxV7ghWYEpCWluk6alkm8yjfpdq2Ug9uOPpAQVeAF/RDLpjR2Q7HdOFPLatB
 1e2LaegEhEABKOhoJLddVjSNE5L0MQoJpUg9abfDenPpqJ4OzqRTqQPacOKSjPIt7Xhz
 iomGZ8/bZw+ccG8Llk1/5x6+sqEWTOSOjpMLY393iz5rfrTwG3q+9JFs+X+vTc61ZMSl
 oGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+8F5XxGZnh5/5CeEfDg7k9cl8zq6SzSMq0SqfKVdO5I=;
 b=MxpaLeOm4LM6AtSYS5yQKgL2+X2Qjwygs/Ye/ahz+f0ID3RZrzzPFibO/1olZTfMQY
 CLPaKfJ03fnL2rea+HCyViYY56EX8Yod51nm29dK9gecBOV6KhlFZ3RXZ2QsJQg0XPjj
 1zMYo6/mL6YBZW5MtmoXM/jjAa0HOtTvjPe5mJRwQWuCkrLIqdDUYu4wbzuLBSbhWXLv
 Hw7AqkCKZtKKJhFGoTqTTykCx8PuwUmghhqoUp0PB6SwXUp33GZQ58oi7x0fBMQS3kkq
 FtgHG2ExrrkJ1CONo36lwLq+6tq4hRtDsyG35t1wLp3EImNmIJjA0dM3+O1iRcuGpLtE
 ioIA==
X-Gm-Message-State: APjAAAWD8xL2Ox5ZoyXJsyA7cFnciPVWOPKp1hvcFRqg4f7jhK1vj+lQ
 YTqtZmXVLbXAOIiC2IEVpWE=
X-Google-Smtp-Source: APXvYqyOo+qd6VLqhX5lh3wOpKj7P0tTzSttC5+pQSGtZdDMgW6JRyzw39nvGVflutU5UdZKmbIvdg==
X-Received: by 2002:ac8:2bb9:: with SMTP id m54mr24135349qtm.303.1557756185091; 
 Mon, 13 May 2019 07:03:05 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 l16sm6559103qtj.60.2019.05.13.07.03.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 07:03:04 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
Date: Mon, 13 May 2019 11:02:59 -0300
Message-Id: <20190513140259.17525-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_070306_377849_9998F8A9 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, cphealy@gmail.com,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the i.MX8M errata document [1], there is an I2C spec
violation when the I2C clock frequency is 400 kHz:

"e7805: I2C: When the I2C clock speed is configured for 400 kHz, the
SCL low period violates the I2C spec of 1.3 uS min"

Avoid this problem by running I2C at 100 kHz instead.

[1] https://www.nxp.com/docs/en/errata/IMX8MDQLQ_1N14W.pdf

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 7a1706f969f0..8603fb1a78d0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -253,14 +253,14 @@
 };
 
 &i2c1 {
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 };
 
 &i2c2 {
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
@@ -376,7 +376,7 @@
 };
 
 &i2c4 {
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c4>;
 	status = "okay";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
