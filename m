Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9502C1139CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doUHWvAOY1cnScFw5BMv1b6c9cXHiXI8iPC2VHSuPKQ=; b=atv0KZTEfJUaSX
	M0xGofnfwikjmcvxvLgQk8CKuwDKBrfLGQPZ6HZg+SKcfNJp635sxjbCciQvjPPlHgd1kGIpsEexo
	1fntZWxXBaWAfc6JHrYdtFNabkG8iOEqjuPtB3SB+9m9MHuwS9h79Cfw9CLiSkDbhgzCzrM77fcAI
	k0vdYI4LpU+WGkSTQIFqQd7Sm7Og2iL2Vb8rFjhyz+TdqIsRFIuTfhKbYc9u/5uCes/ZRNRsHbVbF
	J94hfbo+Xf3fmQxa4yBGdLwCA3yrkpa+eXORcnQYnyFW9ttNCFmRt6p1lm9dUvshzoBYgzF5eDXRD
	xxiYCMVYdkNEeFxobqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgl2-0001P2-03; Thu, 05 Dec 2019 02:20:44 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgk6-00081h-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:47 +0000
Received: by mail-yb1-xb44.google.com with SMTP id v2so882329ybo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yd2Q7YPR11r5oinbUH01VXPynULLPCtlISudYlOMZyU=;
 b=dZ7oQT4U2H+qzIRBhZmeTPi8Mt3dIMzOm7Hp5/V3r8x/h/EIO00FBZMSX3PlqoQSrv
 Ua9Xjpp1MH/3vnT9HJSleKk0nsEdNYw2lowXV421mkLCgS39iX5Jzm22PS7aaHUprt/i
 X6H+kHwAhaTA8H7ejrzXE2wLJsx8aP5vQtGEUbPBjBYwgdogL9oPNCFncN9gm80hAq3X
 iHn8wiooFWAwTk8zF2gWozDTciPwZFgRBM5KS1I7eZo015WAKeazOlT8dqNq+qSFplj7
 R13YpWnX6+BkhEdMFf/dgNMiwI5hD+QRrL2o2GqR2Hw5QuNk1eUIKtDuLC5ZmAAGTrDC
 qIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yd2Q7YPR11r5oinbUH01VXPynULLPCtlISudYlOMZyU=;
 b=SveKzNpcT3oSPdWOD+lDwdbq7tB3APvhym/GiDL7LSbHGExufZWwLUMRMAJilL66St
 yczi6Xt7Aw4SN4LmPyXghLAGP3nagderUoy+yWOpLfZcRVZjaJogfAtSNt/IhXtB5t7V
 n9MXqRju+qjUioubeLd+hPrxXkoemAxKxZEqXY+NSFUI9YI4yRDkRGKTfTfvmYlf4Ki0
 L2HfPvhprrnBQeC1r+pmmsOEwa8SketUgIy+eY7gqiMkKg8LKI4usqRs5XbH0+0ONDur
 m4oCp+c5jHNJ6fxy0XRo0hP/XXQ31lheyjHZwzBTBoc3fSXWOzIXi9hONFZOCDdETUZI
 tjKg==
X-Gm-Message-State: APjAAAVBksA5HPUGUuekSDHxe9wZLI3fZcdby7xy8FO/tuTb1E6q4bsI
 G5kjtdF4l6UP0ZCPnVXF0id9K12G
X-Google-Smtp-Source: APXvYqyVdj3RzhMGiTatSwC3Khz8b2JenHZUs6hXCp8QeiH6aGTz3/PIkHDqKJsFHIjOWWrugZ0pgw==
X-Received: by 2002:a25:d143:: with SMTP id i64mr4691585ybg.415.1575512384839; 
 Wed, 04 Dec 2019 18:19:44 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:44 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/7] soc: imx: gpcv2: Update imx8m-power.h to include iMX8M
 Mini
Date: Wed,  4 Dec 2019 20:19:18 -0600
Message-Id: <20191205021924.25188-3-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181946_101760_F3FAB247 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

In preparation for i.MX8M Mini support in the GPC driver, the
include file used by both the device tree and the source needs to
have the appropriate references for it.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 include/dt-bindings/power/imx8m-power.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/dt-bindings/power/imx8m-power.h b/include/dt-bindings/power/imx8m-power.h
index 8a513bd9166e..0054bba744b8 100644
--- a/include/dt-bindings/power/imx8m-power.h
+++ b/include/dt-bindings/power/imx8m-power.h
@@ -18,4 +18,18 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MM_POWER_DOMAIN_MIPI	0
+#define IMX8MM_POWER_DOMAIN_PCIE	1
+#define IMX8MM_POWER_DOMAIN_USB_OTG1	2
+#define IMX8MM_POWER_DOMAIN_USB_OTG2	3
+#define IMX8MM_POWER_DOMAIN_DDR1	4
+#define IMX8MM_POWER_DOMAIN_GPU2D	5
+#define IMX8MM_POWER_DOMAIN_GPU	6
+#define IMX8MM_POWER_DOMAIN_VPU	7
+#define IMX8MM_POWER_DOMAIN_GPU3D	8
+#define IMX8MM_POWER_DOMAIN_DISP	9
+#define IMX8MM_POWER_VPU_G1		10
+#define IMX8MM_POWER_VPU_G2		11
+#define IMX8MM_POWER_VPU_H1		12
+
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
