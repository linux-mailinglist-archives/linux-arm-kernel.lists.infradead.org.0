Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B05129669
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 14:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z3Dkj+rPodyBeIs4iX/zPxkpQd966NietXybeJ5BqK0=; b=u2fqpo01HL1Pz1
	B8MieQcLidrLqKsgB8XmvwrG4Mwv6a6a2ZJc7Ue6grxEfNgnXlTEmw80lEiaZspComlkb06nWeGMn
	u9mIPgaDB9idOaoF2XnJXlATQdf+8C10kXKZWGAlz+gN/JcH5E96seq6QW3xb2OWDwqjV7uocHAHz
	jtTErCg7Q51m2pvHIhylmPmCIEVqo+i8uwXK0GSmbUkwYqMYynOGEaAd8VjxZyg8sVGockQIwL1yq
	8V69FVYlb+fJhTKAEAI0VwxOjWjVxl3mxxX+MtlDAFCVRJBg/j+GCkiwigQHWZeYz4sx1GxHz9ksv
	Amo+e+SFDb4lz5wa7x8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijNbG-0005rK-Cy; Mon, 23 Dec 2019 13:18:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijNb8-0005qZ-Nu
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 13:18:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so8806080pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 05:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YI1v+z8jxNo/h/j7idm/0EKSnx3iifQZL/1wkb63EVY=;
 b=NC56cI6/Z/H7oTnHAnJ09gyexnPHn4BiJOYPYq5aP1muAWM1ORzqA8pzUEOnRw8nYp
 epKje1I/XIJaj3u6zbTm0w5yn0zlcjh8hsY25dOubLMowIQeW/O4dHnate74cyV/EuHs
 y/9WSbvBsEDXIbs3cLMoD2zHjg1WNY+/hIkXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YI1v+z8jxNo/h/j7idm/0EKSnx3iifQZL/1wkb63EVY=;
 b=c1b6jba6zRdLkkccCuLhmHH6eIw0mWSw+qrvUU6yHdDx0O/dL3fItwLVya4OIQgTP+
 vWTOYFz1s3pOpsDS6zIwKDhXGX8haXHNp0Gf2R4UiFx3UvT7HOO80O3n14ztsNzWxvT/
 i7t+1wbTAkQMusyfEzS08lSlKm5HI/yEIFLohkJrq9eXkH4W8/0UwbLwU4a/ycJ1lUsR
 jI7lj06DOaUlybD98e8L36lZEgg4oOiw3D8MighCEXwsCw3dPb6I26RMqFlMYQE9mEcz
 4HxH9UG4xTzE+RHPAqIB4u0tG+45Qj2MMJVYXhlFtu+rFpIMg2ZIY1GIz9CErNZv61h6
 MQSg==
X-Gm-Message-State: APjAAAURcNy38mEJ2Mh/sJBG9ZfbEKrXA8iF2KXfzkHhBK0zZH/3kseb
 DplHUO/BfmOLOaCjGO9Nrv9upw==
X-Google-Smtp-Source: APXvYqyGVdeczBs5yRxyBCpYz4pqjAoDs2yBT7CWuKxBsDQCMyszUoKgfbCh2g1PZKtcKNMYizSH2g==
X-Received: by 2002:a63:3245:: with SMTP id y66mr31152112pgy.234.1577107088874; 
 Mon, 23 Dec 2019 05:18:08 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.226])
 by smtp.gmail.com with ESMTPSA id h16sm24731770pfn.85.2019.12.23.05.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 05:18:07 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: imx6q-icore-mipi: Use 1.5 version of i.Core MX6DL
Date: Mon, 23 Dec 2019 18:47:50 +0530
Message-Id: <20191223131750.2589-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_051810_917079_267BFF50 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EDIMM STARTER KIT i.Core 1.5 MIPI Evaluation is based on
the 1.5 version of the i.Core MX6 cpu module. The 1.5 version
differs from the original one for a few details, including the
ethernet PHY interface clock provider.

With this commit, the ethernet interface works properly:
SMSC LAN8710/LAN8720 2188000.ethernet-1:00: attached PHY driver

While before using the 1.5 version, ethernet failed to startup
do to un-clocked PHY interface:
fec 2188000.ethernet eth0: could not attach to PHY

Similar fix has merged for i.Core MX6Q but missed to update for DL.

Fixes: a8039f2dd089 ("ARM: dts: imx6dl: Add Engicam i.CoreM6 1.5 Quad/Dual MIPI starter kit support")
Cc: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/imx6dl-icore-mipi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6dl-icore-mipi.dts b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
index e43bccb78ab2..d8f3821a0ffd 100644
--- a/arch/arm/boot/dts/imx6dl-icore-mipi.dts
+++ b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
@@ -8,7 +8,7 @@
 /dts-v1/;
 
 #include "imx6dl.dtsi"
-#include "imx6qdl-icore.dtsi"
+#include "imx6qdl-icore-1.5.dtsi"
 
 / {
 	model = "Engicam i.CoreM6 DualLite/Solo MIPI Starter Kit";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
