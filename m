Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BEFF8141
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 21:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AGhnsGPzg3LNpDzvZscYRpOqO5v9oMZn9IBp4jVoF1A=; b=UW+OApQM3IKk2Q
	mMi8OomloBediGLbH2Cl/avYy4xb3mjvtJzAgEt/n0wr9FDoQRqsC/4anf/dvK2Wm6w9/8DtG26xj
	t79eOnpBBmdcAmR9seQXfwugv4JMOdSIitt2LFK8crKuQLfP4SNcSBIq7UZOXEV1eFm8rj2MoiJjN
	njq/CwjgiRq+g07ieMDHQGPYf8J955rnVz42yTwJgIBPEctvBpGvP1BJXtS3Oml0lUtGHNsbbJxtc
	3w7msvXrXhCCX0wNjQI5cvUVskQ7gTL0yHnJf5unMWPJJKhBaVBOoOe+cTHAHoQuCw6IfG3VV8q5g
	PsnJn25ZqL81kWMUoYvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGKd-0002PE-Dy; Mon, 11 Nov 2019 20:30:39 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGKX-0002Og-36
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 20:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QElYDqEnVjhgR2amDU3Lld5k4da0izVAi5qsqFodSsI=; b=Wgt/j1h3vFwJqKl/wU63e1862o
 qLvDu1qTUpBxaG5WJSkrtfvtgTlvAYlZrZc4iF1Fp3vDLHPBSYBM0C1pkhNTgAWQtg8a0hTe4LlRp
 EargSxDXqVuz0oEgJKO6EZMKS/2Bnx3lJUzSnNXxQD5kc9i/ML5EE4zrstdEmXSiIc2Q=;
Received: from p200300ccff07dd001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff07:dd00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iUGKM-00015Q-Ur; Mon, 11 Nov 2019 21:30:23 +0100
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iUGKM-0006Iy-G2; Mon, 11 Nov 2019 21:30:22 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: e60k02: fix power button
Date: Mon, 11 Nov 2019 21:29:59 +0100
Message-Id: <20191111202959.24189-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_123033_283775_C111E106 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "H . Nikolaus Schaller" <hns@goldelico.com>,
 Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The power button was only producing irqs, but no key events,
Forced power down with long key press works, so probably
only a short spike arrives at the SoC.
Further investigation shows that LDORTC2 is off after boot
of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
which probably transfers the button press to the SoC.
That regulator off at boot, so "regulator-boot-on" is definitively
wrong. So remove that.

Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/e60k02.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
index a0ade2ba7a21..33e02bd2b59d 100644
--- a/arch/arm/boot/dts/e60k02.dtsi
+++ b/arch/arm/boot/dts/e60k02.dtsi
@@ -356,11 +356,6 @@
 				regulator-name = "LDORTC1";
 				regulator-boot-on;
 			};
-
-			ldortc2_reg: LDORTC2 {
-				regulator-name = "LDORTC2";
-				regulator-boot-on;
-			};
 		};
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
