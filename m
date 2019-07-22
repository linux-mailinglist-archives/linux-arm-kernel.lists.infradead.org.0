Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A11670A2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekOolP6EsX7ouWPg/0weHrDGng9DZSC6f2+B89x4CCc=; b=ix8SBpj1SJhX5B
	1fVpVgXBdoPkF9E9nvVaC27pLCyFklkHgBpMZvaXw5wlW7jr00ry9ub0TgGevQYm4faaRkhfrNE95
	nfgaDpwhL5wtxCfw3DLJKkfqBqcpHgszU51i54/qtJSb9nE5Cf24vL3Xboqy0FcsPksUIKAqyqZui
	7S+E1rxCX7bFMY6zNslo0oYl0t/FW5F6W2bZLwk1G9WuVeLIItn4DIYWd0KkJbwXWrIL3pW1jz9La
	SdGVETIzREAKPVPqGitBk8XqjIDqs8x+Rg2xJ9ur0LxcV9bGT9kwU0VwCvNhZb/s6PnfqBOHDkKf6
	b95arNx0p/6i7SVXuT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeO2-0004O9-Ph; Mon, 22 Jul 2019 19:54:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeN8-00047K-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:53:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so36474209wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6o0P2aAvSBeZTbjnVSOrNVsoOphy6FmgNYN1/PGj4ik=;
 b=RYJlh3p8fH+hfwgDEY+vxzFwtIPT13Vk+vYhoVp2cx4akbniuYF/sHg06H2km4eg42
 hq2jLVNwm0Q78N5rzgbt1rhHqc+YMm0aiX6pDaHypW1QkGAGK51gvoPrR9OxdFFlqEbH
 qrZUe5RmXEkabw+4WwiJzZ+T+oxYxRaLFCX7bE2eAnr7H0Ksz6ujHjFm3wzMBw0Plt4P
 y+IpyCpKKtj5hz/YF/6vohKDWY7emzFLpfqDemLIcsxumFMnBf5dALIG5tfoCWe41K4c
 xCIm3Sy3hIYGRsyxuQie/W8ZjdpRq8AlzkowsgZoi1qrf76v7L7irr8yWYK0L7Vxid90
 EpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6o0P2aAvSBeZTbjnVSOrNVsoOphy6FmgNYN1/PGj4ik=;
 b=a2QYmJotFYDimh/8gge5C84FO3+9U1kFEVSw7MUW8ZscBnheQMwGnlS6GgeVAcCBe2
 2sV1zPYRXL+rm954ZWEpDRECK6EhJHAPHZ/6OQcBTGrAuiIAOay9f9cuv7RKiTmeiAFf
 tNRcWqhR8/MysfqehdevoXS09FpAqt6inBm8lnOPI5YO8iwD4xZLyJkZdJ3m2PbSXSc+
 kGt5EuDdkItcsWJHWdR5yFy6PZUH+P6UqOm3zOTFvQe+B5v5YmXIcslaTZh65XNifiku
 cEh1C4fZhU0+MzDT7d0SGsSWKLBxR2ATVntnIec5TFHUqULl/dbVW5soM2xgUxg3tXpa
 9pLw==
X-Gm-Message-State: APjAAAVvNwvmulDhAP0+CIIUQ7QKbVIsxpuUkFKtoWf/t337knOcilZ0
 v5AcyP0fO0GkK3obhB6jk8M=
X-Google-Smtp-Source: APXvYqxAcn/w0rck6qGmO9csw5Ep2yDM/kQvtSot8bn2yHnCKiH0cCssbRkIhRUVc9mWwBVceVrXFQ==
X-Received: by 2002:a7b:c748:: with SMTP id w8mr61730407wmk.36.1563825199664; 
 Mon, 22 Jul 2019 12:53:19 -0700 (PDT)
Received: from localhost.localdomain (nat-113.starnet.cz. [178.255.168.113])
 by smtp.googlemail.com with ESMTPSA id c65sm37382975wma.44.2019.07.22.12.53.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:53:19 -0700 (PDT)
From: Evgeny Kolesnikov <evgenyz@gmail.com>
To: 
Subject: [PATCH 1/5] power: reset: Add UART-based MCU poweroff DT bindings
Date: Mon, 22 Jul 2019 21:53:01 +0200
Message-Id: <cda16032dc5679a557230cbdb63702b105782b3b.1563822216.git.evgenyz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1563822216.git.evgenyz@gmail.com>
References: <cover.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125323_065241_8C8E2875 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (evgenyz[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Evgeny Kolesnikov <evgenyz@gmail.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds device tree bindings of the poweroff driver
for power managing micro controller units that are connected
to a board via the UART interface.

Signed-off-by: Evgeny Kolesnikov <evgenyz@gmail.com>
---
 .../bindings/power/reset/uart-poweroff.txt    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/uart-poweroff.txt

diff --git a/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt b/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
new file mode 100644
index 000000000000..86d036271b51
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
@@ -0,0 +1,38 @@
+* UART-based PM MCU power off driver
+
+Some devices have a microcontroller controlling the main power
+supply. This microcontroller is connected to UART of the SoC.
+Sending a sequence of characters tells the MCU to turn
+the power off.
+
+The length of the sequence, baud rate and the timeout to process
+the command may vary from device to device.
+
+This driver could be used for WD My Cloud (Marvell SoCs), QNAP
+(Kirkwood and Orion5x SoCs) and Synology NAS devices.
+
+Required properties:
+- compatible: Should be "uart-poweroff"
+- reg: Address and length of the register set for UART
+- clocks: The tclk clock
+- cmd: Array of bytes, the command to send to the MCU
+- baud: Baud rate [75..460800]
+
+Optional properties:
+- byte-delay: A delay after each byte of a command, could be useful
+              for sloppy MCUs [ms], default value is 5
+- timeout: A timeout to wait for the MCU to process the command [ms],
+           default value is 1000
+- override: Boolean flag that indicates if the driver should
+            prioritize itself over any existing power off driver,
+            default behaviour is not to interfere
+
+Example:
+	poweroff@12100 {
+		compatible = "uart-poweroff";
+		reg = <0x12100 0x100>;
+		clocks = <&coreclk 0>;
+		baud = <19200>;
+		cmd = [fa 03 03 01 00 00 fb];
+		status = "okay";
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
