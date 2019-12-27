Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2ED12B709
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZywehv+MKT2qU01UpsC08eK9gARjhGOTlfvPwyJDQI=; b=nN4X57ciUy0E3C
	xXPKozaJKC9E7QxIiHUUUCGnnvmd8dfscuUbiMxspPICdICPOs8sziIVrIVrkGwKSrt5fUg6FTso1
	6M78s2Kg1+L4UjCWaosoAoTxdACuMumBV+mV8jWmHFTS58o1uF4uT1gsPgTnjWJllKokRiqukty19
	y7vWPoJPLgt514xJLqwnc2nD1bBFp5jiyiGooHYiRYcqH8kiUOXcyoMyrz9EzPUPBmb7IS9zjQTzr
	a56aYBgysj5Qe5YHr/Nmd1DYt859RNe4KaRoFUdJ2OJ+5L7xRHC7KxFY9FnQJskSq/LNu+ULsmCnx
	nce0rSORgXP95cNBNxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikthV-0004dH-AV; Fri, 27 Dec 2019 17:47:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktew-0001XU-S7
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:44:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65BE621D7E;
 Fri, 27 Dec 2019 17:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468662;
 bh=8ly01OGIEPnk2p8j5+xPUt2405IE4J4LAvf+++GTJN8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gTelMYU+VeBH4dRadJ//po0y5oAzqZhzkJpsu7ed/FSPGMt0tMSvd9W4M/7KQaxH6
 i0hDR/eecanNzWNScyWI4CipXZ/K+cecHpTZvjpxTHXc88ojmkWGEwzZNXxB461sO2
 TJYqEbM75pQDNfa/MJ290rVbj0U1hbipCqEB0UeQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 23/84] ARM: dts: BCM5301X: Fix MDIO node
 address/size cells
Date: Fri, 27 Dec 2019 12:42:51 -0500
Message-Id: <20191227174352.6264-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174352.6264-1-sashal@kernel.org>
References: <20191227174352.6264-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094422_965521_A50D0B8D 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Simon Horman <simon.horman@netronome.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

[ Upstream commit 093c3f94e922d83a734fc4da08cc5814990f32c6 ]

The MDIO node on BCM5301X had an reversed #address-cells and
 #size-cells properties, correct those, silencing checker warnings:

.../linux/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dt.yaml: mdio@18003000: #address-cells:0:0: 1 was expected

Reported-by: Simon Horman <simon.horman@netronome.com>
Fixes: 23f1eca6d59b ("ARM: dts: BCM5301X: Specify MDIO bus in the DT")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index bc607d11eef8..a678fb7c9e3b 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -350,8 +350,8 @@
 	mdio: mdio@18003000 {
 		compatible = "brcm,iproc-mdio";
 		reg = <0x18003000 0x8>;
-		#size-cells = <1>;
-		#address-cells = <0>;
+		#size-cells = <0>;
+		#address-cells = <1>;
 	};
 
 	mdio-bus-mux {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
