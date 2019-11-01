Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DDDEC3F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wnYyL8a6VneArt156UwHBToso93o9avXZYJflc1oMdw=; b=tl6Mjaq9CAf1E2h7lihLGNwrGG
	B+3MUMEijPkBYoQE3bJIebRx2nLo/PRrx2gYSPfZAb3FtPO6c6JVvTW/ca5bA4OuHgRRB2dWwquOK
	+GhNYNWuVAw8DvBzNuqnF8oadndGwlmbH73DAHsdUsA1YN1WFEtxW4ujPp6nXJeWfNhH0OhMw3rgr
	Ez6ToB+k3TlJujHF09e7dR0gBAmlRwOLM4Pm3eJn2Hfzt2pT8HAelyFP4qAjWT0Yc30DpS36xgyWb
	w8xvVGnyoq5yi5dDU00MLFJycnhyHmJYbe+PN3pDSe/yVHPJeILXsQefwMOpb4TXrjh2mUehQgZ9o
	5O4zbnVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXDh-0005AI-MC; Fri, 01 Nov 2019 13:44:05 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXD2-0004ir-Fz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572615791;
 bh=mEh+x+3L1b8hpI6ZWmfCju/bOUL39/Dd9BRJ+2nObT4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PtVBxoI/SK+6xEvg1ZZo/HuF/tuOPnLqu+thDi7KHYnTfE9x/4eInk6cMQd4lEZ7V
 m+V75PmzVlo9uufNrv5J58RhefcWg/iH0h59JzkDg01rWu78kGrGlTo5i02717NE2p
 UHHY3NQdytJWTHahI+5F1E9c8yVBNmQHmA0xeBIE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M8hZJ-1iMOTe1cET-004mP3; Fri, 01 Nov 2019 14:43:11 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>
Subject: [PATCH 3/4] ARM: dts: bcm2711: Enable thermal
Date: Fri,  1 Nov 2019 14:42:28 +0100
Message-Id: <1572615749-9524-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ViqU/VzUpFCBeYdz3DMy0XjDhbi83+YFTtFiwdUEVCrb12y0xJG
 JHSeurEL6x2c0xITdynQuAUktcS2actjWiIcNA9LKW6tSgbU4IhAqr/yb80wmiiZXDdkkxU
 RtaDv6oRxWUJAIbdWQfDHlrNwKOTXsQFLGnYK7ocTLyLfIIfqYH0GRhzLYCHKV4Go2SCjyw
 iKXWGy7Va5HhUkYZWj9vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MjkymLFkrhU=:1Ws8atzNbDZdaq1V4d/LKk
 v2eazIzDsKJlqd4spVvQ/fNN8dFUjNONZGSxKKSajuNU+hi6m1/Z0ZMTXsHhktDhj1vYKHdr1
 8AvacTavjC2bmm74rP292jyJc0sEpUwSII4vRfMtr0xSjftUBuF2A1g1hp4gT2Fg/EaCBviA1
 0dVn5FRaQkRHilVQ71NtftEPpZtX7wKhxfYUI0BGmVTuXPjL+nV28FLte84HJZcMwvjtcV701
 jq0ZmBZVt1uISeZNouLQRKpy3D1JR9iGbRegmrbfiVCFRDQHpBVg+HBjrN6O8gAH/jztdBUVc
 vMDoM6/F2Y8gb1gyTpJVleVsfeJaWYgLs53duUvmADHitN/mlU8WqmDBEV6DBf+lWP7Qe4xqc
 KvaClEpno6dNx7SO7gDwrxuVZWUd2wMmoun+hu44juAusckaDREliL3tlxeXDObtJF/XTdFlV
 Dke/fzIrAl5LkM7utm9FZHGfQ50hjTo5dS/rrOgJDGyYpxhUwvXt9Cm/g6hw69KOdAx+giiTg
 LBuTuDBRTCQG+rB9TOT3fac5pSdvubD+OCSc+Jvaaz+lgMH9teTg/WcEe3OgYteiEEDPDYcib
 I9C6zN4KL7/2mtHvjuXfT2IKDp9WQcCbPkL9nzpNLmEdQLHxlCRJjg+36y0nlIMmhayuTbbmf
 4yTVOJAUumLulA1ZvR5MLYJ15TIVFQXQZEvP0kF/5xKe3tW5GUJDYnTwoiQ3EscYCGOQP3GCB
 DIJlVjZX9luHL2/SdwBqCvrxm1GZ83sidrinQAdc3z8ldM1hIQOvId0b9EHZ0HCgq2OQvXw3j
 h8odivHAkN9wLj1eW//NTO14VC0mQt4FsXt0Boi7oGecLLnd3c8vWPHCsWE4zfqVyXHlD10Qe
 4ee/D/Cno3QBz4We1PKvlfMsj5ezI/uSLxe7vLfQAJEXlVcvAgl4tajfDQcaSyhuYVFQuLuit
 eq+MbaCn41hcG7a2D/ZdCiu0qYw7zPJf2G+fbSzdIuROxfjCaMmiDGbzYQmGuwX+7d4PfyHMx
 9CngQ3dspgHJGQwxxdHJ5CWjkDYSBajueTHBrvWNgV1pUScO+USCwW4NAi/5jla0R5ppV1FhQ
 J02uoOPYATV1xXlblla1F8YueZWT5CYkwdcyCg6zkjm5DbHXztkNCkJ3erEpju/qRxUbmRl/A
 qw2f6wijiiNORLjJDsekKtUegmWjWrgQUzVoihKPe6qfwXiZ/CdZ8kJ+qdPlsnceZxRKiqM+t
 zivh29+ZZwvMkagY80nc5iVJzCURgwZfAVwHe6A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064324_824333_1E1D2142 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables thermal for the BCM2711 and the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2711.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac..950e43f 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -46,6 +46,14 @@
 						 IRQ_TYPE_LEVEL_HIGH)>;
 		};

+		thermal: thermal@7d5d2200 {
+			compatible = "brcm,bcm2711-thermal";
+			reg = <0x7d5d2200 0x4>;
+			clocks = <&clocks BCM2835_CLOCK_TSENS>;
+			#thermal-sensor-cells = <0>;
+			status = "okay";
+		};
+
 		dma: dma@7e007000 {
 			compatible = "brcm,bcm2835-dma";
 			reg = <0x7e007000 0xb00>;
@@ -317,6 +325,7 @@

 &cpu_thermal {
 	coefficients = <(-487) 410040>;
+	thermal-sensors = <&thermal>;
 };

 &dsi0 {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
