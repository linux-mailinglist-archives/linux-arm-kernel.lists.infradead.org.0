Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F5970A2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMXO8f4ZIXU3jpmzgDf0+Hbt+8hp9t99E+6iaW5IpvY=; b=iH0in3jaeGwjGQ
	jFKVrNo8lxi7iM00n43gWhjfRbb5aiLD6Bqaj4TpUC7u3q+coR7fthDPlZdtzPt6aNDqrcIN/1tFF
	EDg3DqZqJaFp337BmVxl1rFZtsnZtJojzFXrQyh5dKgo0Kc5JQMk5Ww2Por9yawq9+cj7kEjFBctY
	o5rLACDKjwC3M8luOMoipfjLnmy7Yw3eBVoJYN5oydN4i3Z+v07KVcZcz/g9cbEBf6eDn7bzSDMZh
	I45VySnJekBhgF/ikLi+cVfopEXzmzxauPO0eXsHZQDd5g/L481TVrLyq+ts4vbebjEoNy9SBENlA
	T3k3c/i9WfhagxXzdy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeOQ-0004cS-42; Mon, 22 Jul 2019 19:54:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeNA-000484-59
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:53:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so36341013wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LSlpALgO5S3R0TyDNNvgRiZnKC8+OxLqhsNNnaICjPw=;
 b=cFBQsyJHHatx3JSkJdhvrebXeVJ31a0VKFML6K3ScUwBUFuvBQ6L6CZbdJ2/GdtU2N
 vk4kUD4CMe45B+UAU5a7Gap5p2YnMl5BbFPB12440cHBuThu0mPoBlwJ2/ja+rayW6A5
 Z6jrzHt29FOd/FTRMTJuRYUn/GJMl6wf3Vl4TCGeoVStK8Tx9pthnP3b+9bAF5lAKWrg
 NvBzRlqP6pg/z2eZiPaQ3a9mby89HjX/sqnaedi5+odKcKymV4JWEJ7qbpRK9Cb4+0sV
 yJwcZzj3F807D9V9DkKi4/MLXbUWXm/mWvk87Pg+L6ue0SPJC0XB97/xXdX5uOhwyAHM
 ShSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LSlpALgO5S3R0TyDNNvgRiZnKC8+OxLqhsNNnaICjPw=;
 b=DaF47j9lhY9Rt3bw+dd0QpV53hLfT+NFg9hPTbyi2AKjNTu7bvrXS2q3KsnzpNTFWY
 AM3OfmcYs9MNLebMPdI93qptAqtxg29C0OrObicwAT5SA63LIVrtSQ1PdywG+iST6W1J
 +mj4bwDcuK+xfnw0n6iQPmAHn81BguLw2SVzFwDHUkVHsJgS/JgFAUfHXWn3eDqLktlQ
 l6BuPBhWmkQULX4oYLwSET55CZZez21rY8TKFUArfH6VaT453c320jHfthXKepgQSGe8
 AZGaD/hP/0tkgfWShzz30leR/tl6uQ6iqd9Zu/osPlpiA+SzlqlislZ9+LRZvVSKTgGm
 5MVQ==
X-Gm-Message-State: APjAAAX86HyNVQcOhyMXLVOiF7lG76EvjOTXd2sRwX+7YCC5LabHaJqm
 I/KPpAJplH6dKzQj/Vpzz9k=
X-Google-Smtp-Source: APXvYqz85kfxUOA8R7vP4BPYFKPdWETr5bWy98ysJmybNus/vONpVvl7FJFmHS4slzONzL2fYE0sUg==
X-Received: by 2002:a7b:c947:: with SMTP id i7mr67082094wml.77.1563825202676; 
 Mon, 22 Jul 2019 12:53:22 -0700 (PDT)
Received: from localhost.localdomain (nat-113.starnet.cz. [178.255.168.113])
 by smtp.googlemail.com with ESMTPSA id c65sm37382975wma.44.2019.07.22.12.53.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:53:22 -0700 (PDT)
From: Evgeny Kolesnikov <evgenyz@gmail.com>
To: 
Subject: [PATCH 2/5] power: reset: Add UART-based MCU restart DT bindings
Date: Mon, 22 Jul 2019 21:53:02 +0200
Message-Id: <98b32aebe39a7b6b3ace1c2ef6f51428e8284946.1563822216.git.evgenyz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1563822216.git.evgenyz@gmail.com>
References: <cover.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125324_390917_FD8ABB38 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

This adds device tree bindings of the restart driver
for power managing micro controller units that are connected
to a board via the UART interface.

Signed-off-by: Evgeny Kolesnikov <evgenyz@gmail.com>
---
 .../bindings/power/reset/uart-restart.txt     | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/uart-restart.txt

diff --git a/Documentation/devicetree/bindings/power/reset/uart-restart.txt b/Documentation/devicetree/bindings/power/reset/uart-restart.txt
new file mode 100644
index 000000000000..bf831d9bdff8
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/uart-restart.txt
@@ -0,0 +1,39 @@
+* UART-based PM MCU restart driver
+
+Some devices have a microcontroller controlling the main power
+supply. This microcontroller is connected to UART of the SoC.
+Sending a sequence of characters tells the MCU to reset the SoC
+and/or MCU itself.
+
+The length of the sequence, baud rate and the timeout to process
+the command may vary from device to device.
+
+This driver could be used for WD My Cloud (Marvell SoCs), QNAP
+(Kirkwood and Orion5x SoCs) and Synology NAS devices.
+
+Required properties:
+- compatible: Should be "uart-restart"
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
+            prioritize itself over any existing restart driver,
+            default behaviour is not to interfere
+
+Example:
+	restart@12100 {
+		compatible = "uart-restart";
+		reg = <0x12100 0x100>;
+		clocks = <&coreclk 0>;
+		baud = <19200>;
+		cmd = [fa 03 03 02 00 00 fb];
+		override;
+		status = "okay";
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
