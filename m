Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D01E1A3D88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdHRDNeDYyEck5RfMrSuuVAyloPbATkjGqTkbu+N5LE=; b=ZF4O6Lbi4broZm
	K3lPop7pRr6Jd02NeCccxTP0hZbTLOLndgCvpqD0AHdZrNOARfuMRF4DH1qFAPxD/Ocu4/2n15H9C
	+OJsTtQcBHWJcFEPy0FOWPhfkJAe5qZlHwcI6Jr+sHkL8R1c1fpywUddYZD+pw7eLNaYuMxuQEn/A
	8sZ6jOdy2CszVvVmjS0zkSEkfdZfTRZSRNgMZ08RO8sEngV/dwRAUXnluX49lhViPrv1uTgbUOEJl
	uf9s5VAA6KNKJU+MfcMwVTjQTJ80g6Xe9qip0XWs+smN8DowV7q6lDaB8dtxmlefIZHmyyEHPz5iM
	8/+H6Rcx9Ewp2c6tYG7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhr7-0003RC-MT; Fri, 10 Apr 2020 00:49:13 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhpt-0002UZ-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:47:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id x62so593030ede.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a14CUzpnGpaGv5dqUvAXTePxj5EaRSdIRWci/5zAkWM=;
 b=T54WVr0f4ocGL79xzwZP975p3f2YyA0/5A0mdP+YGo9pmXJJXsRDk7VPwQscwpAHx1
 ZZppHBemzYJCtE2a+zH1yHdeKfugxwFT2mdIi+xKiYCCRjdMiIxyoMMx087hwYCA+4zj
 /OlxiFd56bzU1CH6KU+079LWF5Bq5o2K2QCck2uIzqgvukSiLwNw2eHGiuJU+PhxcBO4
 VJhEuRBJTelU7depw9VQqFRvtvm6uZJpm0Tw3b+D08jRWamOWnKWQH+Htft4MyLDwFrR
 T+pX8yMu0s1SVAUczekj5wwpWK5bSHhCK72ESYuJppeFhhAgW5jP90N+OgJTFT0fG0tG
 3y1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a14CUzpnGpaGv5dqUvAXTePxj5EaRSdIRWci/5zAkWM=;
 b=CrKZfInIDoWbhIASG/QxuYLnvBV3rfGo7SqtViqKRaAlao2nmpC6lpZ79REex3dJHL
 o4aFodFtALi3S8KEhrs515npfh6Q6WE9ENcU7hx9SyXwoK0nU63qhSFJrr2iDIc0hhT3
 daGJBup/wknAe1t+Kn6Dy0RIiQLGM+RxZj2UJBiTeWGtTJF+PKtOGDoCJsm/UxGwtZ0A
 GP2qPQmD8xI0l2YmAzdh2fC9mXbhM0V/toIQrmnfbZ91UuD1PY8SIe2hkDloukRozgmh
 i+lJ7feSl9NBp24nGcl/CFYsUJwaPjQ0JbUxo7P8Wlv36nugD2wM8aFU9jzsi4gQC5zU
 xeFw==
X-Gm-Message-State: AGi0Puaxa9AUaOpy7TGFnoqaAJOc+WzJ22b4OPXh3eFCf7pVX7Jb87CB
 uwmkMRADVbKvO+HOb5AVYQY=
X-Google-Smtp-Source: APiQypLvgG31h2JAiJ4I9uBgeYyo/rkkcxrJMy4IA3mBlMc4DdltbrM21eJVNk/Yzl5aRHNkGsWTkg==
X-Received: by 2002:a17:906:48c:: with SMTP id
 f12mr1637382eja.93.1586479675986; 
 Thu, 09 Apr 2020 17:47:55 -0700 (PDT)
Received: from Ansuel-XPS.localdomain
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.googlemail.com with ESMTPSA id z16sm30523edm.52.2020.04.09.17.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:47:55 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 4/4] devicetree: bindings: pci: fsl,
 imx6q-pcie: rename tx deemph and swing
Date: Fri, 10 Apr 2020 02:47:38 +0200
Message-Id: <20200410004738.19668-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410004738.19668-1-ansuelsmth@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174757_460852_144A7A30 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TX Deemph and TX Swing are now defined in pci.txt, rename them to follow
the new name.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/pci/fsl,imx6q-pcie.txt       | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
index de4b2baf91e8..937442a4c2ab 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
@@ -19,12 +19,12 @@ Required properties:
 	- "pcie_phy"
 
 Optional properties:
-- fsl,tx-deemph-gen1: Gen1 De-emphasis value. Default: 0
-- fsl,tx-deemph-gen2-3p5db: Gen2 (3.5db) De-emphasis value. Default: 0
-- fsl,tx-deemph-gen2-6db: Gen2 (6db) De-emphasis value. Default: 20
-- fsl,tx-swing-full: Gen2 TX SWING FULL value. Default: 127
-- fsl,tx-swing-low: TX launch amplitude swing_low value. Default: 127
-- fsl,max-link-speed: Specify PCI gen for link capability. Must be '2' for
+- tx-deemph-gen1: Gen1 De-emphasis value. Default: 0
+- tx-deemph-gen2-3p5db: Gen2 (3.5db) De-emphasis value. Default: 0
+- tx-deemph-gen2-6db: Gen2 (6db) De-emphasis value. Default: 20
+- tx-swing-full: Gen2 TX SWING FULL value. Default: 127
+- tx-swing-low: TX launch amplitude swing_low value. Default: 127
+- max-link-speed: Specify PCI gen for link capability. Must be '2' for
   gen2, otherwise will default to gen1. Note that the IMX6 LVDS clock outputs
   do not meet gen2 jitter requirements and thus for gen2 capability a gen2
   compliant clock generator should be used and configured.
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
