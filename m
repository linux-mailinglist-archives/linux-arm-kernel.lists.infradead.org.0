Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C2FF4CD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbJd5Rh7I8p5bn3iToS0kL1VUr4lfA3F3z+au8iqnIE=; b=SAeaCihDqi4pJu
	f8vCPwaxgut6p05F63sWT3FVRiYEccSzAdEzOHVNfDI8FomcVtoQArRHncV2/PQXQbkJrGq/TGSaC
	o0z955MqS7JknPcjMsSQ00ZkO5E8DHNxevKB4UFPMFSC1lu/KWeYOXzWmuHwH59C3Zpk/pxg9wkhQ
	NYNWquh702hlHO8PNFE8n1SKnbTcs8SWfSjwysxhFu6Qcc0ZEoUMne3F0SjCRFuquJuxW4/YZHQau
	X8PW39JEZVOrlJmLGeP5jfxgUcprShNNsXIuYGodrX0eWeb59Ks3TRHFLx0Vr4KzfdLw2pf+6auDN
	B6CoSxFEnAryjiuAsmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT43d-0006tD-Eh; Fri, 08 Nov 2019 13:12:09 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3ty-0004k5-9K
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id j14so4394752lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D4oV4L5jtcWTxjf1oA8VyXP7dsMMZPn/dF9MUNC7L/c=;
 b=aPlA/IoEhffEEFblnc9V412rJ8ksNjaxqTklchpJf/K3W357zmqd5+CvTMVOjUGR9f
 vHpBOP8gHlMWtsf0tBnmICEexywoHMojiuEDFPSR7FbopkcwuW99c0TFG3mLnJli/rDJ
 uIN1m9iOBe+LG2yqEIrL2SRuPet7yWk+uHSH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D4oV4L5jtcWTxjf1oA8VyXP7dsMMZPn/dF9MUNC7L/c=;
 b=CHE3X9nBJAz2x71mGbPCLDaFlyM8Zn0BifnlVrXCcJv8VymUBx/RHSE0BUyhwKqo21
 m7/iGBIf7nSwKqvKf3t5axSgsATb2/QT9/n68j7B6nSqT5bNGNT/iigWUrg3VW0cQej2
 vq8+J1Mez4TS9PkK/sDpCXTCN1wFrON5PqBPnhiwmweGm1mXNvTivqPu20H0IieSrcJs
 I90NXbzapV4ohB8jMF3L5eDcPdiDELZfLJSYpbx1W0j1jXUDhBYH0ZM7gB2bXmxM367M
 q8qfBV33rNHOdetE7ptnV+VKcVtDU06zY5juu4CdoLnGU2fAwNdCj3d12chwf1eQe4EP
 mIjw==
X-Gm-Message-State: APjAAAW8n364Pr4njzeURKuRyisGQjhJHoKLye4WcD5lBQ9hC9mzrdqI
 UY3hBlbAizkFpGR+vKkNdcJrbg==
X-Google-Smtp-Source: APXvYqx/gMz4mkd5jKISKNXvWqvyaBmxQjDUwz3+6YpcYYTuJ8t1hWtanWE3i6cbS5YimIzMWNnZtg==
X-Received: by 2002:a19:911c:: with SMTP id t28mr6379304lfd.84.1573218128817; 
 Fri, 08 Nov 2019 05:02:08 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:08 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
Date: Fri,  8 Nov 2019 14:01:08 +0100
Message-Id: <20191108130123.6839-33-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050210_399803_86CDDECF 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For this to work correctly on little-endian hosts, don't access the
device-tree properties directly in native endianness, but use the
of_property_read_u32() helper.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 41 +++++++++++++++--------------------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index 313697842e24..f5ea84928a3b 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -1256,10 +1256,10 @@ static int soft_uart_init(struct platform_device *ofdev)
 static int ucc_uart_probe(struct platform_device *ofdev)
 {
 	struct device_node *np = ofdev->dev.of_node;
-	const unsigned int *iprop;      /* Integer OF properties */
 	const char *sprop;      /* String OF properties */
 	struct uart_qe_port *qe_port = NULL;
 	struct resource res;
+	u32 val;
 	int ret;
 
 	/*
@@ -1290,23 +1290,19 @@ static int ucc_uart_probe(struct platform_device *ofdev)
 
 	/* Get the UCC number (device ID) */
 	/* UCCs are numbered 1-7 */
-	iprop = of_get_property(np, "cell-index", NULL);
-	if (!iprop) {
-		iprop = of_get_property(np, "device-id", NULL);
-		if (!iprop) {
-			dev_err(&ofdev->dev, "UCC is unspecified in "
-				"device tree\n");
-			ret = -EINVAL;
-			goto out_free;
-		}
+	if (of_property_read_u32(np, "cell-index", &val) &&
+	    of_property_read_u32(np, "device-id", &val)) {
+		dev_err(&ofdev->dev, "UCC is unspecified in device tree\n");
+		ret = -EINVAL;
+		goto out_free;
 	}
 
-	if ((*iprop < 1) || (*iprop > UCC_MAX_NUM)) {
-		dev_err(&ofdev->dev, "no support for UCC%u\n", *iprop);
+	if (val < 1 || val > UCC_MAX_NUM) {
+		dev_err(&ofdev->dev, "no support for UCC%u\n", val);
 		ret = -ENODEV;
 		goto out_free;
 	}
-	qe_port->ucc_num = *iprop - 1;
+	qe_port->ucc_num = val - 1;
 
 	/*
 	 * In the future, we should not require the BRG to be specified in the
@@ -1350,13 +1346,12 @@ static int ucc_uart_probe(struct platform_device *ofdev)
 	}
 
 	/* Get the port number, numbered 0-3 */
-	iprop = of_get_property(np, "port-number", NULL);
-	if (!iprop) {
+	if (of_property_read_u32(np, "port-number", &val)) {
 		dev_err(&ofdev->dev, "missing port-number in device tree\n");
 		ret = -EINVAL;
 		goto out_free;
 	}
-	qe_port->port.line = *iprop;
+	qe_port->port.line = val;
 	if (qe_port->port.line >= UCC_MAX_UART) {
 		dev_err(&ofdev->dev, "port-number must be 0-%u\n",
 			UCC_MAX_UART - 1);
@@ -1386,31 +1381,29 @@ static int ucc_uart_probe(struct platform_device *ofdev)
 		}
 	}
 
-	iprop = of_get_property(np, "brg-frequency", NULL);
-	if (!iprop) {
+	if (of_property_read_u32(np, "brg-frequency", &val)) {
 		dev_err(&ofdev->dev,
 		       "missing brg-frequency in device tree\n");
 		ret = -EINVAL;
 		goto out_np;
 	}
 
-	if (*iprop)
-		qe_port->port.uartclk = *iprop;
+	if (val)
+		qe_port->port.uartclk = val;
 	else {
 		/*
 		 * Older versions of U-Boot do not initialize the brg-frequency
 		 * property, so in this case we assume the BRG frequency is
 		 * half the QE bus frequency.
 		 */
-		iprop = of_get_property(np, "bus-frequency", NULL);
-		if (!iprop) {
+		if (of_property_read_u32(np, "bus-frequency", &val)) {
 			dev_err(&ofdev->dev,
 				"missing QE bus-frequency in device tree\n");
 			ret = -EINVAL;
 			goto out_np;
 		}
-		if (*iprop)
-			qe_port->port.uartclk = *iprop / 2;
+		if (val)
+			qe_port->port.uartclk = val / 2;
 		else {
 			dev_err(&ofdev->dev,
 				"invalid QE bus-frequency in device tree\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
