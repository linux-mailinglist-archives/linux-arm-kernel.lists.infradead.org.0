Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50AEFC500
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9qwHUN2MiR7wF5pTEFodsySdmEksUGpSA4tQWdQieA=; b=HBCFlE70HyhOzP
	/vTNHXmp+gDjbt+WWWkT9wlzpnDSatL6MPa8oRLjyPyVvYmgxcDQQVRpi77lXCOr18YN05LMyl83L
	E2k3FG3pOlOD062Gz9K7IqUTeAbPIhnm2IUyxTjpLi+oGRjePbOWM+iO7dfnMU7L+C8xqNNfqVVXa
	hlLfYT7n7+nBuGOQVXIFqbg3dgIIjTmzyTws2iu0wTxg/YxmW8qj1RPR7xvGK47fZe8Agh6PUwrJB
	dts9WTo5sHv52hrkDxEq+0JwL/4hvC2uItCAmVk6ytdPpagcMYXjm7cX8m3Yift3T7ZfGS03K3Rx2
	eQDTnAEmB2pzuPWNNTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCuY-0004JC-G0; Thu, 14 Nov 2019 11:03:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCu1-0003xc-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:03:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id n5so6175961ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 03:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jb+MOMLuIdaHgEwx11sXFvRMBqWhHSyGkvnIDPsupdw=;
 b=WOUcLW3G2Iayeuu5sPm24T439/72x+v6kvdOeZ3yyOFnInpWwaMAAiMlvEh+zz1v99
 KB41QGiNZmpNupPI2zSDjYAUMw+jOuNTtO6FDm4F9YE1ldnhegAL+Omp0xYCregSGy+S
 Zq9g75zHJ0vatkL7Y7LxTzPd5/s0ZaJslKRZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jb+MOMLuIdaHgEwx11sXFvRMBqWhHSyGkvnIDPsupdw=;
 b=ay5o5gnKyIyPHvIVptmOP/k+/1H8IOgJSjVsEuOZIjrdUZmeIBiKSsbunLl+MayN9F
 msP5EZ/2gqR/gWL++AIcYUxXLLVF1lidKMo+2bta64CoBtTUo6LwTtPMi+7LiH05nEdj
 gKaXAUtUs0EtW5Wyn89hDHSysQNccnnqgXGMCYY13Nx3Fl5CnY65u3fj8prVo2laIcCS
 DeF0nJqZzDtXCRfVCVXy40LN5ZtoSWHDn6h01rvYWjwcqrTPKQkIirZmZMh38Xzz+EmJ
 6WTDkpMthr9eAeXRs/63K2x9akdLbqhznmZqWdW/hZuFrMqVk7LERKoI0jrCD3Ozavch
 HMyw==
X-Gm-Message-State: APjAAAVMRjzr9MI/EvCdktkuxqg2NGs0Rn21GF2tpyQLc9YvRpMphZJO
 69DAtLlXzNQu5bIJoO6R9qBwXA==
X-Google-Smtp-Source: APXvYqyjNPi9tG3t/0IsBhpN6J0yN3A7dgHIGn4FZvEHTpjYDUeeXcxIhq+h6bgnCPrbA2iTYR8Fgw==
X-Received: by 2002:a2e:7307:: with SMTP id o7mr6253561ljc.10.1573729379406;
 Thu, 14 Nov 2019 03:02:59 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x5sm2498795lfg.71.2019.11.14.03.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 03:02:59 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII
 PHYs
Date: Thu, 14 Nov 2019 12:02:53 +0100
Message-Id: <20191114110254.32171-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
References: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030305_697095_87D6FB23 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
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
index 5b7689094b70..9d8f0c2a8aba 100644
--- a/arch/arm/boot/dts/ls1021a-tsn.dts
+++ b/arch/arm/boot/dts/ls1021a-tsn.dts
@@ -203,11 +203,15 @@
 	/* AR8031 */
 	sgmii_phy1: ethernet-phy@1 {
 		reg = <0x1>;
+		/* SGMII1_PHY_INT_B: connected to IRQ2, active low */
+		interrupts-extended = <&extirq 2 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	/* AR8031 */
 	sgmii_phy2: ethernet-phy@2 {
 		reg = <0x2>;
+		/* SGMII2_PHY_INT_B: connected to IRQ2, active low */
+		interrupts-extended = <&extirq 2 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	/* BCM5464 quad PHY */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
