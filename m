Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4610217C84A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 23:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sekBkb20d4l1TJTdazUzhhh34QZNe4Ld/OMI+mSXFbo=; b=TTmoBTj88qmjNj
	OpdhMo0asSN6mwTw5+HA80JoRDmt/oCiB8O982wChrHC/3ZYl+2z4BMWr+0bMqAiueio6sNglqVZr
	qRGLxcSMsOW1/j+qs3JpQIMajedG/+S4CPbRKXu4J42eo4EzknxJtukbIgDEskxXKYDz7eWfxJ9QY
	sGnxCqoK48bAITza63rBYUJHQxY0hTHsIKeWgBMVJWbvliMa0mFmtqUdLjCSPHOZWqeaJykKbkjY+
	XynXTA+nuTWM3F8WjqDSHXGUMrwYNM6dn9bD5hMMJYVwukugjoVat/Rqnn/0qUn0pZNn5bUivELZL
	EP1xX+IXSSq+PVNCgvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALRl-0004u2-BB; Fri, 06 Mar 2020 22:27:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALRL-0004nr-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 22:27:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id l184so1779044pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 14:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aeWGyVhSQlBwiMFchxY/x8zvKPyDAht51wdM4LGPaMo=;
 b=OJlbFWUtTlgzus9WEg4N3tRl6P5CYlHkRBNYM3Gldbs2eQTew1H7qa/996L6qmDxXq
 IpUDapzYB+xKEOgMAmL0TaIIScu4BpnVSD6HrJtwNA2y0q9wO5Ta+2Z44/9uxpvdhasR
 oo+euUGZ2J1ZqyZgw1EwVnS54iI2yCbvBl0GY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aeWGyVhSQlBwiMFchxY/x8zvKPyDAht51wdM4LGPaMo=;
 b=qKOlgqmTBWmzsqvf/qb8V+3VeZsZ4zRa7/3/yDr3kiJkYx4Ez/SzAsS4tTtbEN8bfr
 3ql6kjk0eUJn9ZxUj5vdgcdypCzH+hYVHaTfITQWPr/83sLHx9Sd2F/xnvra4xTHKI5V
 Vvcwx/DOMrR09gU1Zq3jMLzdAK47vOiVKRz25nWwfiPLaz2OvPvrrwDZzjGqcy3sdJsa
 EfLGLL/lNijcw0+aQ05RJO6djCv+rtrsZKat2FyZ5Z6L9RD1KbtV03Vq4WjGsBuq0kqy
 w5RW8yDXLcOlgbvoC3T7I3/C+ckPtOzdruiioWR0DdcAzMXubmFkRTkg6+/RlXHQkoBs
 BETA==
X-Gm-Message-State: ANhLgQ24wP2hrH7NddEug1LSmYIT0DjmnWHZy/w+GhTbPS9OF3ojjfVl
 fXGMHtELNzvuHdkzkk7vhWXmkg==
X-Google-Smtp-Source: ADFU+vt8dZkS4FIomsYdEorgdQI9ZuLx45WIO/FKY615N0QhD3Iqa3QnSbVOSov43AVKbWzILUMkgg==
X-Received: by 2002:a63:112:: with SMTP id 18mr5258545pgb.116.1583533644783;
 Fri, 06 Mar 2020 14:27:24 -0800 (PST)
Received: from kevin-Precision-Tower-5810.dhcp.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id
 v8sm10504805pjr.10.2020.03.06.14.27.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Mar 2020 14:27:24 -0800 (PST)
From: Kevin Li <kevin-ke.li@broadcom.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: brcm: DSL/PON SoC device tree bindings of audio driver
Date: Fri,  6 Mar 2020 14:27:05 -0800
Message-Id: <20200306222705.13309-2-kevin-ke.li@broadcom.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_142731_715020_7FB101F3 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Kevin Li <kevin-ke.li@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
---
 .../bindings/sound/brcm,bcm63xx-audio.txt     | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt

diff --git a/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt b/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
new file mode 100755
index 000000000000..88e404a8145f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
@@ -0,0 +1,29 @@
+Broadcom DSL/PON BCM63xx Audio I2S controller
+
+Required properties:
+- compatible:     Should be "brcm,bcm63xx-i2s".
+- #address-cells: 32bit valued, 1 cell.
+- #size-cells:    32bit valued, 0 cell.
+- reg:            Should contain audio registers location and length
+- interrupts:     Should contain the interrupt for the controller.
+- clocks:         Must contain an entry for each entry in clock-names.
+                  Please refer to clock-bindings.txt.
+- clock-names:    Should be one of each entry matching the clocks phandles list:
+                  - "i2sclk" (generated clock) Required.
+                  - "i2sosc" (fixed 200MHz clock) Required.
+
+(1) : The generated clock is required only when any of TX and RX
+      works on Master Mode.
+(2) : The fixed 200MHz clock is from internal chip and always on
+
+Example:
+
+		i2s: bcm63xx-i2s {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63xx-i2s";
+			reg = <0xFF802080 0xFF>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&i2sclk>, <&osc>;
+			clock-names = "i2sclk","i2sosc"; 
+		};
\ No newline at end of file
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
