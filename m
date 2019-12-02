Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA40B10EC88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 16:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rlZBGur5Hx9Y2EbeoJdklrWnEyYrMgNweNMC3W6kcW8=; b=WTCc8U2jWifPPI
	6yPpDXY38GqnQ5tj8+83G/x1AzaVgTwyyx9rCyPFdJ+pYuxJiuhbst6CdS4FeFNfJD0lSuzCijU9Q
	6oQCpffCaGmshU26OVLovnF+tQLc1CUyAEmNrl0Lj4OTh8+diV8rRGq5VL43yR6axr0o5csgsKiTV
	VrcRDqEZEOth5LllrLjNKTxzHVrqsBKe2CHeFt/58tUFGyszdxuFSMFNUWVe8shhegi01wavj4a3c
	sjoKdOIwF/+aYwnTcRilma2BChtvWaDgTtGM7ldKvSY6EeCw/cGLIEOqhSFW40WS979HcuqasqoBF
	qc5rBYd2kYuuvVEQJn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnoK-00040U-FI; Mon, 02 Dec 2019 15:40:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnoF-000408-K7
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Dec 2019 15:40:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qxhDF0663v1hbvbZByeK69uarzcMA+FhFaj7j+FZi1M=; b=jzl8V3X0EXaJuFz0+E8rz57HDH
 ZIJQgFfuzPmQtt3+FStrONR+CkXfDI5a9NzYcRXfbTz0sDNzOl2IeqIk0885Chj5nay2GP6eH5AX/
 W+ZzDiyD5yZKBkw0ACs8NuFGqSq3zpdfI+T6HGRPqLI/DIgvsQrcdpq2nttgrhBmzZ9hF0eJvl8Km
 iTDzrH8lGHSl8eRNUPd2HvmkbnPFmARV6GM8ydBOSjUAyf18Vz9tn5Ihw+6PGjQsu5keG31Si1y/7
 HowyzO9lmw65d15FHUBLV0E3PnSP8GaT+ZiezLAulQtCxrp0jFEwPS1LFrLpQRcsE6YqndtkyHzMl
 DgBJW16w==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnod-0003jI-Bs
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 15:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1575301134;
 bh=qxhDF0663v1hbvbZByeK69uarzcMA+FhFaj7j+FZi1M=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=X39EcDwtdvb1mbB0zPxP+C+ZyfwzT/uPbezVmrJk+6gY0Kwl838ZmbHNS4eyzBtLH
 5Xbrg8xKbJ90MCH86H1eVvfaUEnVR3T0v6+LnT9gOiIb9nGyIP+6xno87v4mox4u18
 kQnUEh/ft4hqmfes/UHOgK0+glCe5yHOwQGOnUHk=
X-QQ-mid: esmtp4t1575301131t81f1i73m
Received: from Home-PC.lan (unknown [39.180.30.185])
 by esmtp4.qq.com (ESMTP) with 
 id ; Mon, 02 Dec 2019 23:38:49 +0800 (CST)
X-QQ-SSF: 0100000000000040C7101F00000000O
X-QQ-FEAT: EUGmOqWjSYKrlczS1C5GpZ8p2d1quYLjG/gMMWe9CgTsVmZYPXb7FBtwYAbDH
 B0wgDV/bUXf1oOmaOAuDJS347kNatFUsZjkHcMQIp92g7q/WDdD/7eAmRsWVK4TYJx5Dfrv
 hDs60f4EYOEM9jI+mjaKtjTgD1be5qn+jau4+ZaF1q6Lf6uycP5d04KSzv2WVdzb/EudUb/
 75M9jx2HUWY6bGlBdZrMGAMpv/j8F0g7/oeSF59eWuN5aoDiP6/7v1uwRL7pLcsnzOTt+7+
 mbtaO2RkIfF4w4kJmbHS8StZOk7irllV8QsA==
X-QQ-GoodBg: 0
From: Jack Chen <redchenjs@foxmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Date: Mon,  2 Dec 2019 23:35:40 +0800
Message-Id: <20191202153540.26143-1-redchenjs@foxmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:foxmail.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_154047_603521_B3E10DEE 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (redchenjs[at]foxmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Jack Chen <redchenjs@live.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jack Chen <redchenjs@live.com>

The Tinker Board / S devices use a special chip variant called rk3288-c
and use different operating points with a higher max frequency.

So add the missing operating points for Tinker Board / S devices, also
increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
cpu can operate at 1.8 GHz.

Signed-off-by: Jack Chen <redchenjs@live.com>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 81e4e953d4a4..09e83b3d5e7d 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -113,6 +113,17 @@
 	cpu0-supply = <&vdd_cpu>;
 };
 
+&cpu_opp_table {
+	opp-1704000000 {
+		opp-hz = /bits/ 64 <1704000000>;
+		opp-microvolt = <1350000>;
+	};
+	opp-1800000000 {
+		opp-hz = /bits/ 64 <1800000000>;
+		opp-microvolt = <1400000>;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
 	assigned-clock-parents = <&ext_gmac>;
@@ -175,7 +186,7 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-max-microvolt = <1400000>;
 				regulator-name = "vdd_arm";
 				regulator-ramp-delay = <6000>;
 				regulator-state-mem {
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
