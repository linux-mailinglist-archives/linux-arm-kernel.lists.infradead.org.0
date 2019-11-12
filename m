Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0A9F9078
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6VA6jdlWwgWCA+UdFzGf3YXqWW8X8CV3PeRFs/FKQI=; b=duATSlauA0FWG9
	WgAkV+wAIqsEKobmE9lnEB3OGs7LhauqONH9GbVwfmX+8aIWXKp3SqYDmHSb6zIsFe4mhEK5HplTk
	Of4slBDdffjgOMsFB6YGpvD3q/2Lyb8/pKGJxofOW5kzn1uPyIWt81maMcUGinthFEEbaJvswXpQE
	2fHaDtBZGqSWJwb1uGNoy6qoXGDiMZuZ0ADEz60QDdMuoLz4tspEeJ56rnVPhSb3OwsZDGVDx57C8
	4xK6XV/liXSr750f5ZUPwuRxe/y+8wga+helczKQvwG+KnzHBIV9CaG2GkRrYZby/6LGgzd0tW+I6
	sFP7g8Pa8Gw7iewKgGnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW6L-0002XC-Ey; Tue, 12 Nov 2019 13:20:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW5l-0002IV-SB
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:20:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id y186so7019602lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cKIBvY0x1yD+bD+aWV0JUrzlsZTikuF2aQL24o02BNY=;
 b=cIRUpNYVEGfnB4/ePtiAKp638xTywK5olGdZniL8LqHCeTTnZP6CM6JV2Ms3GrXRRk
 AqCiiJuz0X+oxu5/+deCblXULlE5Tkm2SG7JtZFx1fYH/5HPrn5ZW9YDBVfBzofobcwy
 k6zuthunUE9C/THVN4JviAwdYW2x0a0efbMF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cKIBvY0x1yD+bD+aWV0JUrzlsZTikuF2aQL24o02BNY=;
 b=BjlLNpOxGC+auv8nm5L6ptndL00IPCKtXIcpr9vBdElYGAruoI5l+9iYGVCg3MXGe2
 FHO53NWMKLOuacdpcaHzg4xDQleU8BWY5AoydbsagI3uZ8ODSOckx31cXxxf84JSlUXj
 8xqhelTr96DiO9k9915dq2BVjNjN44JYWLkSXi7fAHeM1wfwMkLP/3MTEziZkRt35Kiq
 NPNxFyXfiBT3cFszcHxILt8c31SzgTLYFNH0nQFKMHLog1Fyxygzmz+HxRhmIXEU+wgA
 XYbI2nqOTAj2EFW09C5izuptxz7fFaqFBBcx6Xy3/0blI4fQkHhOuIf33g+GD8zmaCkJ
 oc4g==
X-Gm-Message-State: APjAAAU2aOZzxDSvLo5zhTWL8lGV3kMSml586sKLtwQk1beCZ1F+qX/X
 QA+ni77twCwQkzLJtRvHXug9Ig==
X-Google-Smtp-Source: APXvYqx9C+B7+dzh+DExhVDk9zF6QbqRPQQJ9ESPQGY6lCuTE2m4r60+gVHrE26XPfc47YPvGhzkIQ==
X-Received: by 2002:ac2:5deb:: with SMTP id z11mr6866390lfq.35.1573564817247; 
 Tue, 12 Nov 2019 05:20:17 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id f20sm869050lfc.75.2019.11.12.05.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 05:20:16 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Date: Tue, 12 Nov 2019 14:20:10 +0100
Message-Id: <20191112132010.18274-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052021_923033_D0122E64 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Oltean <olteanv@gmail.com>

On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
have interrupt lines connected to the shared IRQ2_B LS1021A pin.

Switching to interrupts offloads the PHY library from the task of
polling the MDIO status and AN registers (1, 4, 5) every second.

Unfortunately, the BCM5464R quad PHY connected to the switch does not
appear to have an interrupt line routed to the SoC.

Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
index 5b7689094b70..135d36461af4 100644
--- a/arch/arm/boot/dts/ls1021a-tsn.dts
+++ b/arch/arm/boot/dts/ls1021a-tsn.dts
@@ -203,11 +203,15 @@
 	/* AR8031 */
 	sgmii_phy1: ethernet-phy@1 {
 		reg = <0x1>;
+		/* SGMII1_PHY_INT_B: connected to IRQ2, active low */
+		interrupts-extended = <&extirq 2 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	/* AR8031 */
 	sgmii_phy2: ethernet-phy@2 {
 		reg = <0x2>;
+		/* SGMII2_PHY_INT_B: connected to IRQ2, active low */
+		interrupts-extended = <&extirq 2 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	/* BCM5464 quad PHY */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
