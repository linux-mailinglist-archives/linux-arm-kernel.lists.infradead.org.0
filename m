Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5576EF5E8F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 11:57:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B4MHBBhErIN53aks4pcxBqaFRdSyA1F8trBd7mni5/U=; b=gA7
	O/VEH2Wzmbe7tyzIqa/ipGMNbzs3+T9/YMxL3HcCRdflkJd1CZZmAemGy/xUC3iwVIlxMgABcFGB+
	RL6pK+wMx8sRiQyNayqShxMLapsIRa2hs0hMxdKYb6TB6c/jDePfiwY5y6uah1PFmXx7fNSmkTo16
	rN4QvivIi2X+wHlCBFFzqwwqKpcJJoPRww/33uErP3CgOWlzfwwWj+funBEhYwHgth2ZBXTiC36GS
	1hi8WR1jeVd/XQ1jmBAgKh3rS4cIsT9uEvRwd7eRP/9RFotOUJomEXD12PpIWaDtIKo+mHRjCdQ4l
	hrtIWT2q0fLvyqpl8euy3SDMJegQX2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTOQU-0003SU-Dg; Sat, 09 Nov 2019 10:57:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTOQN-0003S7-Aa
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 10:57:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id u18so985903wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 02:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JHLfdo8EDYpxKc5h1UVzYd5rkwgO5xInaju1os9b+ho=;
 b=SfmDrMNFhZrsAWXRX9Nk5Koc/lkJ6XYxu32hCyrsCin2aAcMyn0oie0m+oobQbQ74W
 9YhqazEroPzLtEjVmTQD7BcMEaaaXl795pYJp9bme3oBttWkPqXjrm9SE43wmJDyFu11
 o1VT3TOucgjsyqvcDOwOVZWq3C5Wu21rNAmN4vCC/fYG8MbRGMhMZYs4EZKa2OWO2o2q
 F7jhzABV386Zk9F4v4LFklNGpqqE7GUs/55ny5MeUh8ABfp85taeVVfAdskUG8+53NZ0
 RtGWo1z1VPJB5JoCJ4N25e3toiXE0LjsNte7cSPp4tX5oTFuFFGiUfGXsboDvYYDGuBo
 ITKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JHLfdo8EDYpxKc5h1UVzYd5rkwgO5xInaju1os9b+ho=;
 b=MS3vVQME4ly7VVfRFfyTXdBfCI/dZPycwYc56nc2Y2KZpNWFV39R4qHUYcJSiDOVCr
 3UlExFa5NamZPnJ8W1b4Mojmn+3O09TZnmckle1i6lV8aMD+K8tLDWAToQ6l8OY0Gdgq
 OO9pJms+ZYkZZz4n8frCU8I1ZJFUx/uFsm0+CLlIzsyijaNenRPUHKrGwBOrKi5gOWac
 T6PAhvq1CD76IsJUpknoO/MF7VQVNVfOQTltSKgl7W8AMS87TwpLWcws7+GgwKaco8jO
 UMupZ9aDWvrd7SiQ8DnF3n/k5yH/QH7qfNKxzetJd7481JjkllUb8e+P2Ez/zpELKfNJ
 w1yw==
X-Gm-Message-State: APjAAAXigl3RfnE7eNdXuRaB4XuoF+ZXbZRRH/T2gzrqA1wVYq5BsiHa
 KMMieVcONJ+GU6IFEF0LORc=
X-Google-Smtp-Source: APXvYqxhXAZg/XDWVA2jUZjEBESbC0l9FJaojQQtz3TAEVdRDHSDneX5AN2Bqc3wy8oUC8OTUHaU8A==
X-Received: by 2002:a1c:6146:: with SMTP id v67mr12605556wmb.102.1573297017263; 
 Sat, 09 Nov 2019 02:56:57 -0800 (PST)
Received: from localhost.localdomain ([86.121.29.241])
 by smtp.gmail.com with ESMTPSA id l10sm14846296wrg.90.2019.11.09.02.56.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 02:56:56 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: shawnguo@kernel.org,
	mark.rutland@arm.com,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Date: Sat,  9 Nov 2019 12:56:42 +0200
Message-Id: <20191109105642.30700-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_025659_390239_AD840F52 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 robh+dt@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
have interrupt lines connected to the shared IRQ2_B LS1021A pin.

The interrupts are active low, but the GICv2 controller does not support
active-low and falling-edge interrupts, so the only mode it can be
configured in is rising-edge.

The interrupt number was obtained by subtracting 32 from the listed
interrupt ID from LS1021ARM.pdf Table 5-1. Interrupt assignments.

Switching to interrupts offloads the PHY library from the task of
polling the MDIO status and AN registers (1, 4, 5) every second.

Unfortunately, the BCM5464R quad PHY connected to the switch does not
appear to have an interrupt line routed to the SoC.

Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
---
 arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
index 5b7689094b70..4532b2bd3fd1 100644
--- a/arch/arm/boot/dts/ls1021a-tsn.dts
+++ b/arch/arm/boot/dts/ls1021a-tsn.dts
@@ -203,11 +203,15 @@
 	/* AR8031 */
 	sgmii_phy1: ethernet-phy@1 {
 		reg = <0x1>;
+		/* SGMII1_PHY_INT_B: connected to IRQ2, active low */
+		interrupts = <GIC_SPI 165 IRQ_TYPE_EDGE_RISING>;
 	};
 
 	/* AR8031 */
 	sgmii_phy2: ethernet-phy@2 {
 		reg = <0x2>;
+		/* SGMII2_PHY_INT_B: connected to IRQ2, active low */
+		interrupts = <GIC_SPI 165 IRQ_TYPE_EDGE_RISING>;
 	};
 
 	/* BCM5464 quad PHY */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
