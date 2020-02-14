Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BD915E879
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOD22EfKCyMg64O8KV4H1OUAI/hHtjmMdWS8om+/EJg=; b=pi8GjY288ygeEZ
	j9a+QkTm60KaFSd1qmiKKzID8pHdNgFgGCg9bq++YnbOJnkPMv/hhKnhCevOf8bRrBcpoScD+FBNj
	RhaqYWs7KvrZQO2cSAqXKimsTQFKDSvMvv1OdK7s7fOkaW+FLVe0DIkpSSFlOe1cu5HM3s/R75R3F
	zRmkGGm7c6+6qLNdh5rFOuwTr/jw8Jj9ufemvk6ndVSxEfr7BO8pgBr4Q5Ghx1IyqLB4cGyTMykGe
	Qix7/PRlp4gX510KXxcEPoWDsKbDV6uOiL5tMjDjCnLgS/0DSoGiwOOxgqaN5xslut+6p9PRaqGj9
	MK9WsVJh1BKrA/0QWchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eKX-0001pg-5r; Fri, 14 Feb 2020 17:00:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dwL-00058a-4v
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Zu4xUe7839wFCGuupt5+76prEnV/BJ3W8q8SSuCCUBo=; b=PipmmKWjJgwtoa2OSmAjBvBhbg
 WyyTlE8hIulBDjhQNyBjwd6CDPrPzWc9rRdtGj80QujzPsKEV85Y84wYdLvXEInqNd6x5Y4/aGJI0
 BcDYHZjuiQ2CWhOiwntRrXXiohnBQtP21jAdHzMCicHRnhldi+7os/sPBGi2P5QcNswoxaJg/iVpA
 F1eOgQwhoiEt4l7S6d1dQhsko12tQH2qP4n3fQHVVRIaRFJOK3PbBpsMUvCrcq66P68e9R4griDPD
 qbooP+lW4FgNJ+cQOjqqRkJbMb/nOY9Z78OesYFflKqVWfHSYGAHMzTyd9Fj99s1mZOSgK9MinnBJ
 N2JGWOqg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dc8-0002Ro-FS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 336E7246D2;
 Fri, 14 Feb 2020 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696887;
 bh=XqHntQ68nAA1PkhJZLhzZ1cKTnOr9ceFKNXlAqKnqBA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Nhaf9M8LDFS7Qv3pR2bbTeWyzFwwV7IJnBWGCtQPu/p2cW4MX/OM7Kpnow/9aRFL9
 GjIQpRJDy1iLAUdjSCP8qshobUJ+BmRnpySzKlUCg2xhqvmxuU2o6Npe2Da6jwxlFe
 MdI4LkYgogoYQ5SzbvMo9er+8o9HU43e7YWGOHbg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 140/252] ARM: dts: stm32: Add power-supply for
 DSI panel on stm32f469-disco
Date: Fri, 14 Feb 2020 11:09:55 -0500
Message-Id: <20200214161147.15842-140-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_161448_750143_A5A61992 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Benjamin Gaignard <benjamin.gaignard@st.com>

[ Upstream commit 0ff15a86d0c5a3f004fee2e92d65b88e56a3bc58 ]

Add a fixed regulator and use it as power supply for DSI panel.

Fixes: 18c8866266 ("ARM: dts: stm32: Add display support on stm32f469-disco")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/stm32f469-disco.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
index 3ee768cb86fc9..eea979ef5512f 100644
--- a/arch/arm/boot/dts/stm32f469-disco.dts
+++ b/arch/arm/boot/dts/stm32f469-disco.dts
@@ -75,6 +75,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vdd_dsi: vdd-dsi {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_dsi";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
 	soc {
 		dma-ranges = <0xc0000000 0x0 0x10000000>;
 	};
@@ -154,6 +161,7 @@
 		compatible = "orisetech,otm8009a";
 		reg = <0>; /* dsi virtual channel (0..3) */
 		reset-gpios = <&gpioh 7 GPIO_ACTIVE_LOW>;
+		power-supply = <&vdd_dsi>;
 		status = "okay";
 
 		port {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
