Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC58100442
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4/fdwYsSjA8A8+6MojTzwxDBNavwhB32CydDI7TIRE=; b=i+pFr3YQohHHB1
	gsZQtcNiDz6k0kP9Tnw7KLVahb+8ukuzaIbYMhrVE6WOm0T0HAI/r4OQ8BjwVCWucvzVUsWphvH77
	MeWiLfT/oCQFiiNew2Bk9pgYewi7aRrXJgjE4TsnZHZlLgRiPL2xCK4uSjAGuzB89OtddN9tL2oYD
	LFtYFgLvMzUwDRvqNFHkASE7DFMu0397+WTbIkeRd+1Biyrr/U/L5HkMNmh/rMvvYtv4fY+IwbPFb
	ymR9VzIg4ne4RP4ZEskud6TDRe70r1PAu6Aeg0ebhHqaODwPn4pHmZH+8HP3nhkDb1MMqrfZGsV+9
	wL7hM2dUcmn0XVA9BWeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfI8-0002yN-Rm; Mon, 18 Nov 2019 11:34:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8d-0001QD-RD
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id 8so18378568wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A4Xv5WoIG3tnGwzAreyDrYqib6OrZF77Ddvl40A6T0E=;
 b=Qahpq8oC4s5U1BprkuQwE8TaUGAI0Fgn8V+TNP81b/BISbrKjHXGW+yyn0Fz6bRUOG
 g+R59I7cQ3XCw+8rgIW51bLHJXKVp0LYz/2FTt59HnZv+vUKgQXjFAKthQN5P1V6QPCC
 IAyYJ4L0vvepnYg9HnhTSFAU9TNdsPN2p8B38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A4Xv5WoIG3tnGwzAreyDrYqib6OrZF77Ddvl40A6T0E=;
 b=gsx0SCsScNt5F7MFFDqteSEqEf//gzBJLTOxllwZgtfbd/OQgH9LM185BET3WiVCVk
 5zq2dKgE/BpsTi1Iel63z3x6JdIlOMCB6+6UNm7xt8tX1zX/q6l0vKkY9aB/MllD1UE0
 5uEY5F5lV8pSGtOomBd8f5Il34Mc5a8u3eENEWA0kK9VQtIb6p6VUut6F134jqzEkLPP
 K9ZNIZ8JF/6xiIxjAEZx1JTRmS7XiuhbMI/yRr9EiMhV8NizT3ASYYAd5pqIoqmsKlPC
 +iduI0BqnjljbJFg/jB0jMHdhYFX1QAq2cJpObCfv1q/SRqfkhoc0H7WoZ2nwIY/mxl0
 37/g==
X-Gm-Message-State: APjAAAUXZY6Io+pIIvYnHbChjjQWQ83Fn/Bt+9YhEhUNWfPItoaupLXg
 cDvC6Bu/QSK3abLHYUU60+icvg==
X-Google-Smtp-Source: APXvYqyvUbkkQ8XxZkPus9p+N+Zot3n8+DhqSZvPUgg2FEMfo/qjD+uvhx9SSnu66kalV3oGv2ax1Q==
X-Received: by 2002:a05:600c:206:: with SMTP id
 6mr30491187wmi.78.1574076250492; 
 Mon, 18 Nov 2019 03:24:10 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:09 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 30/48] serial: ucc_uart: factor out soft_uart initialization
Date: Mon, 18 Nov 2019 12:23:06 +0100
Message-Id: <20191118112324.22725-31-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032412_023496_43A39637 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "soft uart" mechanism is a workaround for a silicon bug which (as
far as I know) only affects some PPC-based SOCs.

The code that determines which microcode blob to request relies on
some powerpc-specific bits (e.g. the mfspr(SPRN_SVR) and hence also
the asm/reg.h header). This makes it a little awkward to allow this
driver to be built for non-PPC based SOCs with a QE, even if they are
not affected by that silicon bug and thus don't need any of the Soft
UART logic.

There's no way around guarding those bits with some ifdeffery, so to
keep that isolated, factor out the
do-we-need-soft-uart-and-if-so-handle-the-firmware to a separate
function, which we can then easily stub out for non-PPC.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 110 ++++++++++++++++++----------------
 1 file changed, 58 insertions(+), 52 deletions(-)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index 8a378ee5d34f..f286e91714cb 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -1183,70 +1183,76 @@ static void uart_firmware_cont(const struct firmware *fw, void *context)
 	release_firmware(fw);
 }
 
-static int ucc_uart_probe(struct platform_device *ofdev)
+static int soft_uart_init(struct platform_device *ofdev)
 {
 	struct device_node *np = ofdev->dev.of_node;
-	const unsigned int *iprop;      /* Integer OF properties */
-	const char *sprop;      /* String OF properties */
-	struct uart_qe_port *qe_port = NULL;
-	struct resource res;
+	struct qe_firmware_info *qe_fw_info;
 	int ret;
 
-	/*
-	 * Determine if we need Soft-UART mode
-	 */
 	if (of_find_property(np, "soft-uart", NULL)) {
 		dev_dbg(&ofdev->dev, "using Soft-UART mode\n");
 		soft_uart = 1;
+	} else {
+		return 0;
 	}
 
-	/*
-	 * If we are using Soft-UART, determine if we need to upload the
-	 * firmware, too.
-	 */
-	if (soft_uart) {
-		struct qe_firmware_info *qe_fw_info;
-
-		qe_fw_info = qe_get_firmware_info();
-
-		/* Check if the firmware has been uploaded. */
-		if (qe_fw_info && strstr(qe_fw_info->id, "Soft-UART")) {
-			firmware_loaded = 1;
-		} else {
-			char filename[32];
-			unsigned int soc;
-			unsigned int rev_h;
-			unsigned int rev_l;
-
-			soc = soc_info(&rev_h, &rev_l);
-			if (!soc) {
-				dev_err(&ofdev->dev, "unknown CPU model\n");
-				return -ENXIO;
-			}
-			sprintf(filename, "fsl_qe_ucode_uart_%u_%u%u.bin",
-				soc, rev_h, rev_l);
-
-			dev_info(&ofdev->dev, "waiting for firmware %s\n",
-				filename);
+	qe_fw_info = qe_get_firmware_info();
 
-			/*
-			 * We call request_firmware_nowait instead of
-			 * request_firmware so that the driver can load and
-			 * initialize the ports without holding up the rest of
-			 * the kernel.  If hotplug support is enabled in the
-			 * kernel, then we use it.
-			 */
-			ret = request_firmware_nowait(THIS_MODULE,
-				FW_ACTION_HOTPLUG, filename, &ofdev->dev,
-				GFP_KERNEL, &ofdev->dev, uart_firmware_cont);
-			if (ret) {
-				dev_err(&ofdev->dev,
-					"could not load firmware %s\n",
-					filename);
-				return ret;
-			}
+	/* Check if the firmware has been uploaded. */
+	if (qe_fw_info && strstr(qe_fw_info->id, "Soft-UART")) {
+		firmware_loaded = 1;
+	} else {
+		char filename[32];
+		unsigned int soc;
+		unsigned int rev_h;
+		unsigned int rev_l;
+
+		soc = soc_info(&rev_h, &rev_l);
+		if (!soc) {
+			dev_err(&ofdev->dev, "unknown CPU model\n");
+			return -ENXIO;
+		}
+		sprintf(filename, "fsl_qe_ucode_uart_%u_%u%u.bin",
+			soc, rev_h, rev_l);
+
+		dev_info(&ofdev->dev, "waiting for firmware %s\n",
+			 filename);
+
+		/*
+		 * We call request_firmware_nowait instead of
+		 * request_firmware so that the driver can load and
+		 * initialize the ports without holding up the rest of
+		 * the kernel.  If hotplug support is enabled in the
+		 * kernel, then we use it.
+		 */
+		ret = request_firmware_nowait(THIS_MODULE,
+					      FW_ACTION_HOTPLUG, filename, &ofdev->dev,
+					      GFP_KERNEL, &ofdev->dev, uart_firmware_cont);
+		if (ret) {
+			dev_err(&ofdev->dev,
+				"could not load firmware %s\n",
+				filename);
+			return ret;
 		}
 	}
+	return 0;
+}
+
+static int ucc_uart_probe(struct platform_device *ofdev)
+{
+	struct device_node *np = ofdev->dev.of_node;
+	const unsigned int *iprop;      /* Integer OF properties */
+	const char *sprop;      /* String OF properties */
+	struct uart_qe_port *qe_port = NULL;
+	struct resource res;
+	int ret;
+
+	/*
+	 * Determine if we need Soft-UART mode
+	 */
+	ret = soft_uart_init(ofdev);
+	if (ret)
+		return ret;
 
 	qe_port = kzalloc(sizeof(struct uart_qe_port), GFP_KERNEL);
 	if (!qe_port) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
