Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC9BF1863
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ye4C2mlm+LZMH1JV0400kKk46ZlEzoFf/NoxVpiBZoY=; b=kr4cDEb2eSTBh0
	MYIfmOzdPTtVDrZa4bBGyvnhvRYaMqwYagvPAwAHfC7Z6ki1QYHpoJ/O9R202qQnTq3KUHoFHpZMm
	ZP93Y7+RSMaBqnpmCwdFZpo620Lh34InsKJe5EQAlCkW0gu8tbgslzm4SEurrYQU1PXzLKMvEHfGk
	BD2UrCXUTSV/+3naB0ooNCV6B71QnjbSNiZQH0oLBT5VFo54xzCDorj1OcMd8m6axPLZFVNqO0GYn
	KZueq62VQSeRRyktBE+f6ys7MNF0qUZuUEhC6Cc/+N0Lq862tAtANSPgYyyPE84c4vbCZkh3gXoSq
	LAivnBXucglmwh38DZjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMDZ-0006cj-W6; Wed, 06 Nov 2019 14:23:30 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMDS-0006bm-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:23:24 +0000
Received: by mail-yw1-xc41.google.com with SMTP id a67so9617150ywg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eSWVp70y2kpyJk9Cxl49/cxLR3cgjAESMYLS12E5oUY=;
 b=bWzySGaI1gx56KAqizix5H7Yk63JM+hiMx+HiAX2uSV+XOVSC9t6Jrkst9wSIn/yLa
 Xcu/wWwfjHrzCGL5RS/ikhES7rrC7bIxuo/xobxeHHdGdiupSqBrywwc01R4ggjyVVwT
 6JEpWFWZxnJ/BBGpPpEnMjKz3Upd/nuofT7yj7MARsElGSSh3VroG1/9NtMtS9asMnub
 XLFSnfkiGKtLmEppBnfnGIvYYIlvm1VLadl1ERrUOnACBilCnP8g/fKJMCpoXlfG+JUY
 67VOsBsBFFpozYlaQHVQN8dlLJyN6q8JLY/4aG2J/Ve/avl4AYaZ4kmHQxum19YIaqTs
 NVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eSWVp70y2kpyJk9Cxl49/cxLR3cgjAESMYLS12E5oUY=;
 b=gZKD+lbq3fp8XjRbmEV0HkTxYacPHwD8uStNVSa7Tw8VhN6/F8F+ibJLgKFVuZOvgX
 N+vuCwHDl/bsjBT8p95mjsdd7gVhQ+PKaD30vJ5mHXnRCD1Dzwi7uQmIncmAOzlnGoNU
 FCLevG7ovHKWl1aDzijfajADcUzhdPcu3aaRO+Yv+S74pXM7aQ4uhYW7kq4X5UXb1t1i
 9cbxHJRhbakscwV3G8AcE4WR34p28LwBnK9a4ViAoYHYPzwgS67oRHNtLWMcXRu5ULu3
 C7JxzKG0xzjnT6rCdCYNohJevv1mraLHbHan8cUa6dMXmYwjoASnLVbdnUFT3cL7Ojyr
 2dfg==
X-Gm-Message-State: APjAAAUziajX4gWl8lLN3dJH+dancjYblym70qJ0EsPbrOCeNSOCpW5W
 TEpGXMCDjYydJxmAAhQKoP/odVWjyvE=
X-Google-Smtp-Source: APXvYqzoYMq5gT/9eBMtyUIJu1a4USxwCNgZTNpjMjW3B/XCmy9qZhYAuVQhtBUvi/iW0mEQY3Xf8A==
X-Received: by 2002:a81:58c6:: with SMTP id m189mr1437100ywb.25.1573050199708; 
 Wed, 06 Nov 2019 06:23:19 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id f203sm4436246ywa.106.2019.11.06.06.23.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:23:18 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen
Date: Wed,  6 Nov 2019 08:23:08 -0600
Message-Id: <20191106142308.10511-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_062323_567638_67FF30CF 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LCD used with the imx6q-logicpd board has an integrated
ili2117a touch controller connected to i2c1.

This patch adds the node to enable this feature.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
ili2117 support is scheduled to be introduced for Kernel v5.5.

V2:  Change node to touchscreen@26 and move comment about 5.5 to under the dashes

diff --git a/arch/arm/boot/dts/imx6q-logicpd.dts b/arch/arm/boot/dts/imx6q-logicpd.dts
index d96ae54be338..7a3d1d3e54a9 100644
--- a/arch/arm/boot/dts/imx6q-logicpd.dts
+++ b/arch/arm/boot/dts/imx6q-logicpd.dts
@@ -73,6 +73,16 @@
 	status = "okay";
 };
 
+&i2c1 {
+	touchscreen@26 {
+		compatible = "ilitek,ili2117";
+		reg = <0x26>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupts-extended = <&gpio1 6 IRQ_TYPE_EDGE_RISING>;
+	};
+};
+
 &ldb {
 	status = "okay";
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
