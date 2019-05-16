Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E82202A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Dlck3mBE/o08BI2/8nyFk3BolmzBXbQ4IFKox2n0Q4M=; b=MFv
	pPUT17olkWRA76nhRddzpw7utcrUAITnQ2MMb08yonurui9yElJL8bVhakeVdpSWxnyKkrCS6AO5v
	pXkAv60GzzgDI6/e4t/NATA+KbICwMQfSJugLd9l9TUUCSj87R3/sindUXv05rc+mX3SaOZf0a35x
	xA3jzWx7Q2uo8XHoWtRLFYg2C5P0C0KOkARFeGjJlOGHS3a1yM7yQ+v1d64hbdl7I4JPfq8Zkr7+m
	PiKjeT8peQTNFJ9tHLTxZJeXtHqpZGRqvOGD+Kd0+0G1qtmjH0AN6fN9ucDqyabvjP/uqA9nd3j0h
	SCXu2FqLHpJlGPT5QDX2NME8VAFWJvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCpy-00063d-6u; Thu, 16 May 2019 09:38:06 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCpo-00062y-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:38:00 +0000
Received: from localhost (unknown [IPv6:2001:bb8:4008:20:21a:64ff:fe97:f60])
 by plaes.org (Postfix) with ESMTPSA id 69D87403C4;
 Thu, 16 May 2019 09:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1557998932; bh=kd8HHQHYAXLACCGTSACw8a42kGWpfQ/F8JYYcsX/XT8=;
 h=From:To:Cc:Subject:Date:From;
 b=jH2ib0aB8kM/3QqLSov54Qsvzt1Gz6UDaSf3xKUE1ERRcNWA6GTDMwbatPoPCYAl8
 0sUvQhWVe4kOF96+8yUpsrTcIOJj9lnO4kHOzRh5y2pPmBMDseHcBu+M4k8ZAfhxPt
 78eWowcQbsKwn8f4OkVKsaO3a32bZHhXIaZo9qJKJEcn8D1+VuT/stjcPvsAzuxH9i
 RoVCd9nLHBTKd3cInIc2R+elbR1EBV5BD+iOZZ0sjka1YNDLqTqbJRkRAaDXvx7bTC
 GF+iMeunzSF4JAQXJlhjVhC2SLGnvLyYd7VYdHJX72afshMvMxm26NI3BXSkjXMo8x
 hRMXmq4JAoSOQ==
From: Priit Laes <plaes@plaes.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: sun7i: olimex-lime2: Enable ac and power supplies
Date: Thu, 16 May 2019 12:28:50 +0300
Message-Id: <20190516092850.3200-1-plaes@plaes.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_023756_980256_4CF5D917 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-sunxi@googlegroups.com, Priit Laes <plaes@plaes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lime2 has battery connector so enable these supplies.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
index 9c8eecf4337a..9001b5527615 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
@@ -206,6 +206,14 @@
 
 #include "axp209.dtsi"
 
+&ac_power_supply {
+	status = "okay";
+};
+
+&battery_power_supply {
+	status = "okay";
+};
+
 &reg_dcdc2 {
 	regulator-always-on;
 	regulator-min-microvolt = <1000000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
