Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E64183C8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P8IvYCCXFREcKdsV3io8/ov8Pxo55zSkg2E9/hZgx18=; b=bBH2fDlWEeSMTQ
	/7aKzu6GIlvZXOFWPPwortLIn7hLKH704MGdYDBQ+QTl55kjBJ5FuW8WNYd3yovIG8/hYUB/m+/fr
	HIWti7fbAAF3/izKgEADJgDsOLQd+9OARp7o7Okr4feQXUtD7jxRK/ZKOAFGG9VXFkRz2TjUnGHTx
	ao6qsQopyB+tormW7rafHQ7DfB4oHsbYzm4eMYkgIZ5P1oPMdsLpQQ14pGgauCwxcK5Cdf5AQb+V6
	Ot0bVp7+NkIuJc0iFBeMCdihF95zOm0WkA78RPlx+MWCZqtlFQobDTqD9xiV+4VFgaPfdPCYuIx4n
	Rsq5QtOeWARTCu1aE/lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWO7-0006Wx-Ad; Thu, 12 Mar 2020 22:33:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWNx-0006VS-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:33:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id v11so9649517wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cDWsgDLGuZCMn9GDO0QtBYwdt4yNCxsID/A8c6spG+w=;
 b=F8GXxd/Up9QSlBTh8YYTrd18ZkncJ/tcs2fUV2pLzyVB9dQnU5tXHAqsvFSZpS37DF
 /RP8bFO35uANJ9prIV3av3xnZJ+YXjM41536qUknZrD+kVPSkjQZjTet7qzzEd82FfCj
 50Xu0bVXaJ/pLJshtDXNTrWU0nyssx9Q7z2jE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cDWsgDLGuZCMn9GDO0QtBYwdt4yNCxsID/A8c6spG+w=;
 b=n/xpn6T5DKd0+x0KEItP5hfYYkIJj3DXme+KDTDXiNNoCV0aZzkrsEQrLAutGJrD1D
 ecWVE5qi3dezjObS5eFoC5afp6d6xMwl6t1MlIw6k825qAr0yH8i7ZwyFVWl4e6lthAw
 G17WcaoACVDdcp2jmg2SfZ/DX0acCZrndcA5PVcUSHuNluTjkGwtQCRt/45qTHt5vO3F
 0HKTrsUB6oj+Vq8n4lrzz9N7ak99EdMGr7xvDrnUjPLSEnM2g5JRdc/1kj55ZbEEUCwq
 Jwzai27PiRPkiVe/QM6WPTwbwPwcrYjKQFxiZDZG0NFPOYf9+BSTPPNijUXrKosncehc
 KFMg==
X-Gm-Message-State: ANhLgQ3WYSL64PPvvOT1G6VkHLwWdKK2UWlY3+F6K3rIITAH1TQAqz+p
 eHvraDdA93h9rEsaH2ic5dumdw==
X-Google-Smtp-Source: ADFU+vtnUqNpWBj7jS/ZVk56MTaBujLMSdSyvo4Y3ZV8FcL31mlYMjdAQ/fuQ5f+5qNnmf/72hXOZw==
X-Received: by 2002:a5d:6a4a:: with SMTP id t10mr13392404wrw.356.1584052378564; 
 Thu, 12 Mar 2020 15:32:58 -0700 (PDT)
Received: from kevin-Precision-Tower-5810.dhcp.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id
 o10sm2964144wrs.65.2020.03.12.15.32.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 15:32:58 -0700 (PDT)
From: Kevin Li <kevin-ke.li@broadcom.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 2/2] ASoC: brcm: DSL/PON SoC device tree bindings of audio
 driver
Date: Thu, 12 Mar 2020 15:32:40 -0700
Message-Id: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_153301_779504_207FA30B 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 create mode 100644 Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt

diff --git a/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt b/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
new file mode 100644
index 000000000000..007f524b4d15
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
+- clock-names:    One of each entry matching the clocks phandles list:
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
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
