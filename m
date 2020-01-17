Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55FA1414A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 00:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=clDwxeShsiFLCn39afwbclbInFPHvoxSBl0mf8V0/zM=; b=Q16Nvv1eVpyzNq
	nt54yB169NeB5OW2SZKJfdhMWgPYDfUs4iTVEsNfyR/vvpofRqvht9ui+TYJo6LP2ZdEQLB8yL9O5
	Q+1hsL3k89dA1iKFJaTXTATOvvZJEclnwgaUfSGEXc8tihaM6UF+y4HJpgQeDXCUwhmSuHApUyhdg
	jTnST7KMC+YWC32X535N/e20xJ1uSVItgKkQlqnoxHjAAlc5/jShxpX13qi4hv/gJalmTv+rztQ8v
	1ia3wjuPC3QJLUYA0YI4OG6M/hroX1zAM5mUc4pB8OYDkToOBP+i5XDkorSG82Hr8mNDPVCDhRDxT
	pcPYjpNkKZy91sRYOEAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaju-0006ts-Lc; Fri, 17 Jan 2020 23:09:18 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isajS-0006mG-Vw
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 23:08:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id d62so23658671oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 15:08:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kM6E5RI0gVieeVXW7R7Tpe2qYJ/SdGRuJk38JqzG80A=;
 b=H4rUwsBOZY630wyt2ElvW0EdwZ8VlvGOHva0ZOrDocYgk0JgYPPeE3+MS/6lLxsa5O
 adxzB4pZNuKjez8FEncMt9rfBAJBD4v1jjwNxj8TNJJnXcfxrhv9xqUirJn0B70R6t9P
 cIZUPoXDDeAMdo+BKZRdbU5Yf7xLrlVsrd0vk7XN7q8FX6RVVZ1wGtDMa5+fVpoEf5cF
 gdrrJORFE1ilRJlhqQwdNYQD+mPDuFirSJvJjLRgGSLnRsjFiNfSLOfFY1S/uo+lLCJ0
 VYziEptk+4wWbpwqaIqpWlUbeTJdv7bTTmfKHPxxsU0u4eP6BpEJ0EVuiKmUYoOrD0Zp
 9omg==
X-Gm-Message-State: APjAAAXQf6NkxGK7c+/3sQw2+B5gq5kv6oziJA+bPa9yL+MNgy6yQlIc
 lZnateHoFscXzvme8TTo2A==
X-Google-Smtp-Source: APXvYqzaCWlwXj5q4arj1fmnxMYbL1aksXCZLq/DerNjVsRxT+FDSFmcAs5zUNcDcY6JlHTwZn0oeQ==
X-Received: by 2002:aca:3542:: with SMTP id c63mr5245144oia.135.1579302530055; 
 Fri, 17 Jan 2020 15:08:50 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id m185sm8272443oia.26.2020.01.17.15.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 15:08:49 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: imx: dts: Kill off "simple-panel" compatibles
Date: Fri, 17 Jan 2020 17:08:48 -0600
Message-Id: <20200117230848.25330-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_150851_062251_50E0F373 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"simple-panel" is a Linux driver and has never been an accepted upstream
compatible string, so remove it.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/imx6q-novena.dts          | 2 +-
 arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-novena.dts b/arch/arm/boot/dts/imx6q-novena.dts
index 61347a545d6c..69f170ff31c5 100644
--- a/arch/arm/boot/dts/imx6q-novena.dts
+++ b/arch/arm/boot/dts/imx6q-novena.dts
@@ -107,7 +107,7 @@
 	};
 
 	panel: panel {
-		compatible = "innolux,n133hse-ea1", "simple-panel";
+		compatible = "innolux,n133hse-ea1";
 		backlight = <&backlight>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dts
index 3749fdda3611..5d3805b07032 100644
--- a/arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dts
+++ b/arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dts
@@ -25,7 +25,7 @@
 	};
 
 	panel {
-		compatible = "auo,g101evn010", "simple-panel";
+		compatible = "auo,g101evn010";
 		power-supply = <&ldo4_ext>;
 		backlight = <&lcd_backlight>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
