Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437D1D01FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQEkNBd/mFzOjo6FhhiImTHSoRfqCqUrlgZrRlia+mQ=; b=ALsalIuyagaw8r
	36e/eyU6iQwah+vMOaevQWANqycJ9PUZloEd/uHFLr6OO/Td4NAtaoO3WM5eANV68E8ymS6bnib95
	IqQ+nLuTTCv3hdN0rtUbi8NyzMa1mjfv1hJjrajGTmelHlF6dJjceqMvFkOdUQ6jHe64vUSLH5jwl
	udVMZqgKpsthGeN201dyG/3POfvE03oPQWPwsQvsHRt425vPQ4wV1B6URpSofH74A83rWbY5dB0BE
	4JGChol33zAjZ65oYd/ayp0FLwEvz1KpVHdfcVKfP9v9KqvBVCLsuycpkc2EQaTrJwydNH21bOpd9
	/semAY88xrK5Jes6Phjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdIt-0002ok-TG; Tue, 12 May 2020 22:23:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdHz-0002A7-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 22:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589322130; bh=JFe/nwMSA6vjCYShOxGSMoLkzCpZNbpdrhZDImIOA/U=;
 h=From:To:Cc:Subject:Date:References:From;
 b=MvLZ0+OT0w6t9T1roThSn1RHOcYbUluUau/zL6wlyhmuWJ6PG89U+sUmG3yKJQOdw
 emI/0T8uIhd7tgBbmCeAy7rat0LL3eMNNEjbKoWT79KVAp6LFmbg0YsSeGSjkCaIGh
 5g7hgQ+zZqIuvmDKPOiFVORdEo2RmSmIE5pDAu2c=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 4/4] ARM: dts: sun8i-a83t-tbs-a711: Increase voltage on the
 vibrator
Date: Wed, 13 May 2020 00:22:05 +0200
Message-Id: <20200512222205.1456300-5-megous@megous.com>
In-Reply-To: <20200512222205.1456300-1-megous@megous.com>
References: <20200512222205.1456300-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152216_054967_9E3A2992 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vibrator motor is weak at the current voltage. Increase the voltage.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index a278a1e33930..1e086e979348 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -434,8 +434,8 @@ &reg_ldo_io0 {
 };
 
 &reg_ldo_io1 {
-	regulator-min-microvolt = <3100000>;
-	regulator-max-microvolt = <3100000>;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
 	regulator-name = "vcc-vb";
 	status = "okay";
 };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
