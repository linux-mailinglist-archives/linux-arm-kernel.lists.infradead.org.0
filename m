Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7849D7A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GQ8SmmSMJx3W73cU79b2vWIKkXqZlZ0PuvdKMGNmJc4=; b=bBCf6Yfq7hoxh0LAl/5q1aYU32
	JyKC34OnG1OvxUT+6ETVBiHRZCBTPcQxZ/N8FQBqV3gCI4cNSlRZFbnAt06OSym3h3NC8hwyfRN42
	MtC+QqhHeFSFCavzE7M8+VdbSefS+JISD3fMXQ40RGDxt+ZkXZnPL6NfojabJdMYQ1labxsaW+zgE
	k6j+jZersSdLZPNpZNmS6HiHIx0s6Mkib+mJu5DL+o+/3RNsU+6tUEljDOcdl5vQoXfSyp7FgckGG
	Iy/KllpHZSM/PLYy9Sy4R0Iw+bI8m/puAqBThPa4fle7Whp6+iGHYF3N6snXGGclc+G50RKbAIINI
	qhVSd2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Luu-00066W-5J; Mon, 26 Aug 2019 20:48:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LrH-0002q6-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:45:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id d16so789167wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EeoSOO9P8rB2c6o2qSam9CM8ucP9QSVXMBjzLutJqVA=;
 b=eNvJTE4RS20+765BWxr4qe19suSF23z2UcHRM3AOrys6MDLHN7seyrjTkBXKualyDL
 H4H+5KMRmxeb55kiRpo3D3K0OiWg3SDSjn18KIQM+qfWDAp7wy0uj4mNxbI/e5b/yRsw
 a67FEb7F11WCDa2Z45OSKrK6/KXYUDWuRi89/1FNCNNT1lpgYmLedf+iqNuHe0iCpRki
 Dy2wDRxRpAaX//+99l5cHV9hXbHxB+ObDivOuFF20d5li47VVi1/Ioup+ZLLWgfZvi4d
 XCpnpvhFWSh8PlP418NyLf3wfdgaWNR/PD+8Q926I5s0OgB9c8REYkvA0AXDAwWc/0wB
 FLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EeoSOO9P8rB2c6o2qSam9CM8ucP9QSVXMBjzLutJqVA=;
 b=ApOgYPOBOPYFidNg2a3GY1guZAPILHQtYn/6WqPAQ8iVEwu022ULJlzggnWJv2Y65P
 2PFrc1HO6qb3toYB0josmenz5z9m6Tdh/8TXxjoZAeo8ANEC4TMpI22CKVqj3HG4EJRk
 WvfHpqkm08CjShixtb1KuhFc4PfdHM9qQ0X/aorrT/FxVacX4p9RSvVmYBt2tpggmRxB
 /jRGjTF8OTcXSE3zbCiwTx3iSwBJlicy0TpwC5lmumLONSFOYmorvP6c4wv8lEvGF3lT
 g1CXJt6XfJe10Rpx28BTWv3NXD55JF0dlpiLKF6DHYjKkGbS1lAcFHFhNEONFBSb/av0
 R+nQ==
X-Gm-Message-State: APjAAAVDP1bQCbMq3EUxPj6L4iNLXoy2zN5Gloju4eKrphaQWF0KZo6v
 CZiveNMAxdZA7gvwYCIA2IJOOA==
X-Google-Smtp-Source: APXvYqzCaQcqfRjUVEK6f/KlqGWwQzrm1CEta8su/KPZxHXkcmAMWTMFnEyazerSjVJpd+RLtVBDFg==
X-Received: by 2002:a05:600c:228f:: with SMTP id
 15mr22665714wmf.160.1566852297896; 
 Mon, 26 Aug 2019 13:44:57 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:57 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 08/20] arm64: dts: imx8mm: Add system counter node
Date: Mon, 26 Aug 2019 22:43:55 +0200
Message-Id: <20190826204407.17759-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134500_268790_20DD5D95 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MM system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a7412755a..89ef22a8f81e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -510,6 +510,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_24m>;
+				clock-names = "per";
+			};
 		};
 
 		aips3: bus@30800000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
