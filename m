Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC710CBC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZHyf26ip3d1vhoGWWjhlPozL45DG9PLBBK8UiB0tOY=; b=hsEQvLrgP6bHTE
	zUurU0yBLnrFb0pJsZvRXqn0002plvwZfkrOrWBXjiB3/DtsR3w+zuqckOntt/RvhBwXnttD2m+n4
	CS1nUVm1KP4/reG+6nMc9Fud05ZUbUw/IekKb83Y0tBkHMe5V0hUn0TIBbd/SW9Jazi38eJwtxy0s
	vxy8Eo9G/H2ytdG9XARR7t7QyRFBsOWma1qECB63r2e/Co8r52xSK/PFMrmtu6MXKfnOBqMfYyNzt
	XhGd0EXm12t8uUvP9Yyh9+MAXvlgOjN0l4iL2jTWEv3JCEP5AxneL5qSWfKztRqbx+cqtwYmqqmpL
	bcZA1B11aY44cDDoke8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLnu-0006yX-C6; Thu, 28 Nov 2019 15:34:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLn3-0006hW-B2
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PS8hZ/FNZ5fnmFnMC7wpuYE5CME6gqxRCzSgU7yOKOk=; b=DYApBAuvOF3gRsyp7fXVjEgE/R
 mTRfhfOM5BVlheIUd1VI7nfpUIjaydlK+o5izcwUOKArR4ccYyhncI0l2wD+BiptLWoPpuRrFICe+
 FDBWQFZNIQngCuqxla2rOX2zpphZrh2AECPq+Itv8fIsPqGpyVay8GLDrotC8Oqpi93EWPgMOdad6
 ZMpNt9x902qwjoO8rJ/lAnMSI2i2rAM6FXEAyX66wlylalsrwKHaUHChIi4ETljh/Kxy0a5/rCdnr
 R5BkfAzHmlvOWuUWAjmtQgLry58AXr+I0G13psHdnezADvuMEldXuGFJWrme8muQoXb6JTUJvAmVY
 ARKVoClg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEo-0002uG-R4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id e10so19658754ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PS8hZ/FNZ5fnmFnMC7wpuYE5CME6gqxRCzSgU7yOKOk=;
 b=Dwl4dqLdHHKnldphnAGAr1ToN610EqBZwSqoR/hgQSNxfsV/4wXOcOzAUM9uz6FotW
 9qwt38QjaaeFHldetsUOgPoIM24I2pCcWdKTSDI7nv8y8op+zapWHlf8st+tVkHCz7P5
 bh30cwYMxpmBmbI75/QPPKlSxYLuOhMWYJifE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PS8hZ/FNZ5fnmFnMC7wpuYE5CME6gqxRCzSgU7yOKOk=;
 b=NmwQ3ggY6QOxAx1+vj5LThjkfjLnwGwWMABhLGe+j81yj03oFGMVDz5G5JmnLJTQb+
 aDBtOD9vSxuvB1sluev1ar6I1M8TeAh+88dYxZf36P7dMO2L8MPdwNIvd8kS6vsdmtjq
 VswvfwZXVTeKszWT0Ca9nHnvmVL3F2MGS0RWKL4o6NqycBJ/H7FAU7hPLigJnkgUlkB+
 7bbFiM7eCfRnCnO1odLSfYlvdAgJulZaUrdeIxlX3OH8CT4yvx4MUWP+EUvjoWaOX5qe
 ph8Cw8dbKN4t3EqglUFQCR+ldGhZfyRFYPglBpOk+ezoOE6yZj2ofXKz6PzfkxwBk2lQ
 TiVw==
X-Gm-Message-State: APjAAAV6xIWm90kS0LHI+jKqI5M+Dvi9E440HSGXqULN9RzHcmffoOOB
 VwOhxVW+rXU76bFogqENEhMfnw==
X-Google-Smtp-Source: APXvYqxr+KXWNUM6J8K1e3cWke7H28D8dBWc6wxWxJZiGdbp/JimSWw2nVOwCFqjHzoiT5BiVmBGsA==
X-Received: by 2002:a2e:3e08:: with SMTP id l8mr5147340lja.236.1574953064981; 
 Thu, 28 Nov 2019 06:57:44 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:44 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 30/49] serial: ucc_uart: factor out soft_uart initialization
Date: Thu, 28 Nov 2019 15:55:35 +0100
Message-Id: <20191128145554.1297-31-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
Acked-by: Timur Tabi <timur@kernel.org>
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
