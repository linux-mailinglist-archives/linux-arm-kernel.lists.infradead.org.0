Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9227C237F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YftL66aoR5bMoMly2CPnTwngDOOuObnSBTcJGQ8B02Q=; b=t0N
	jjOJ+0iywmtqEOUXssVhm3xwNLRF75PUbwX+GoMjF8Xry1MFqzHR1P7bg6seAapfTM4/thjgGb8b2
	YUFbihbRXoQlrwQ3MCHrkGEdMSCFF+if7g2Qvig6zJqX77ijEDiRhB9Wvl7N2b9ws2Df8r3vUdkUK
	4GTSqTc/DwaZlrBHecNP0RJKs6BaP5Uh4IJaAU8HinYQPs8InJG9eoUmeA8i7cO5QytoHck9uMVX3
	7k9K9nH1+ehbTCIDTo9LpJjrRJl+lhdWGRn+UTz6QUZjaoynDohbu0IyaVlxOtUX8rxLVu9cWS8bN
	mLwQSzavBJFR0RIVaXwccbeWd3eSj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiHE-00083d-LZ; Mon, 20 May 2019 13:24:28 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiH7-000835-Kh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:24:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id z6so8748456qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rsvHVsIkAw5q/p4kNbSj/zeUXNvQc4j7K0lVXubmICg=;
 b=o6F2qAdg/FF6II5zlDpf5A1jwhfg4WqJzX/gPaG00nu+4/V0nqP27nGQMGVIdvdyfB
 Q32/xeIFIcIX+UgMX5RgbgX7HABLKAGRiy4ezLoFh5mC0CLX1v13DrZZT2eFRlljOJTn
 B0X3CTIC2SLb+DqxzoMdBpWyAj1CklcSE/jjPc/1RoAjs+L5586ztnLWzi5va9YuZUDN
 /nn0rOfRu+UO7BdxT+5hwD+/VfdP5cFhWKBwu+K84NFnYsNxAZNjtC/sw4J73FDkCC95
 9zCSnRV/hj7na9SzfRYyeOYMLEdXyV94QDw8rAcw066V3gtZQNyRLML6LhRzrqybtzE4
 F4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rsvHVsIkAw5q/p4kNbSj/zeUXNvQc4j7K0lVXubmICg=;
 b=nOaWMQlkXzKVNvrk0A5BVvwc40C+LpXOxMkAcislB/FhFqMZyd8RTh5nJhjqJ5GYTI
 0y/cHoYt5PTv/5GVa1rVKaRiaj+o6u7tZSbJtgPOxr1VjHa7ylqutFFddvFATdNE4T+A
 tOY//vyQ0RyAUgYG0BTomaTvY0GdYP3kijT7zkOxP2qtWCenvXifIar3TGjzq+KGZhb/
 r720gNSjLyj0M/NQxqWxleroYtk/e0Px7OEi0lOBW80e7R13DY29tQ7kM4NwWeLMxW0S
 0BAynY18JUBBEVamalchsry+VRYdhe1OMZlVBBkXBUDGyPdT7IPEQcV50BYDDoT7rqgB
 cgnw==
X-Gm-Message-State: APjAAAX9thlECIVqOOx9oviTq0GkfSMjyajGnJOO902A0Ji0XGN+M9LU
 UJSpEt8JSkrL2h1iSbwU2yE=
X-Google-Smtp-Source: APXvYqyEgqhlANxVjrMUSSrskyifcYz7vVo49mM4N76/EdHj0B6xMJK1NCHukdavlFO7kHRgmr8+Mg==
X-Received: by 2002:a37:684a:: with SMTP id d71mr32813029qkc.25.1558358658659; 
 Mon, 20 May 2019 06:24:18 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id q24sm2080269qtq.58.2019.05.20.06.24.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:24:17 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH RESEND 1/2] ARM: dts: imx53: Add capture-subsystem device
Date: Mon, 20 May 2019 10:24:10 -0300
Message-Id: <20190520132411.8540-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_062421_704760_23A73B1A 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, slongerbeam@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steve Longerbeam <slongerbeam@gmail.com>

Add video capture_subsystem device node, and include both CSI ports.
Prepare for adding sensors by adding the parallel sensor anchor endpoints
to the CSI ports.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx53.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index 9b672ed2486d..ed341cfd9d09 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -31,6 +31,7 @@
 		i2c0 = &i2c1;
 		i2c1 = &i2c2;
 		i2c2 = &i2c3;
+		ipu0 = &ipu;
 		mmc0 = &esdhc1;
 		mmc1 = &esdhc2;
 		mmc2 = &esdhc3;
@@ -71,6 +72,11 @@
 		ports = <&ipu_di0>, <&ipu_di1>;
 	};
 
+	capture_subsystem {
+		compatible = "fsl,imx-capture-subsystem";
+		ports = <&ipu_csi0>, <&ipu_csi1>;
+	};
+
 	tzic: tz-interrupt-controller@fffc000 {
 		compatible = "fsl,imx53-tzic", "fsl,tzic";
 		interrupt-controller;
@@ -158,10 +164,16 @@
 
 			ipu_csi0: port@0 {
 				reg = <0>;
+
+				ipu_csi0_from_parallel_sensor: endpoint {
+				};
 			};
 
 			ipu_csi1: port@1 {
 				reg = <1>;
+
+				ipu_csi1_from_parallel_sensor: endpoint {
+				};
 			};
 
 			ipu_di0: port@2 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
