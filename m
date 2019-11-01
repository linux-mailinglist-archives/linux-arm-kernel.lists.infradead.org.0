Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92720EC0B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Jw2yK0pfk6Pvl/93J7tw1X21yGhL7K+R968/MyyIXGo=; b=eNX
	Gu5lWZkQDvfW36/K7+GAyenv0WbSBnh9uO1M1QtqHnu4zVb1CK6aG1tzEfKxCGhsli7b6c+jvp8+c
	PYis9gjdaO8MJseKHXU6xvjfF2BDQB7lNnzT+IAV8S/f4+4C604AEwpTDgjLQrcq/yPkZN08JJSpx
	Spt/Kr9Pt/VS7TvqcRVQZ6CDOiglSem6vQzmRWalAGRH+CEmmwRIs2lvj+w493U5SR1SXPAWgeMZB
	9IDxxobbUSzCW9imLztGnikkDztiODGlMfbqee1sSHONbN96trSAfxqC7njkjKjs08B6wLJ+Ormq0
	1OPjyd1XjTdFG5QW2OsJLb9hpqaEKdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTTI-0000jN-F4; Fri, 01 Nov 2019 09:43:56 +0000
Received: from forward100j.mail.yandex.net ([5.45.198.240])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTTB-0000ii-GC
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:43:51 +0000
Received: from mxback1j.mail.yandex.net (mxback1j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10a])
 by forward100j.mail.yandex.net (Yandex) with ESMTP id 8504E50E1839;
 Fri,  1 Nov 2019 12:43:45 +0300 (MSK)
Received: from sas8-93a22d3a76f4.qloud-c.yandex.net
 (sas8-93a22d3a76f4.qloud-c.yandex.net [2a02:6b8:c1b:2988:0:640:93a2:2d3a])
 by mxback1j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id ueOKE66uVU-hiH0HCV1; 
 Fri, 01 Nov 2019 12:43:45 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1572601425; bh=6STKUVn3hs66m/B2u/OEo0OqpFI5/3aIr59jZz5/T2E=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=WdGBQFDof5hH+PCdpBaEYo7mLVeAis2GxYnJgnc1WVRRKoKkm3mGgLaHLGZjnmslp
 s/BglP7lcYRpqnFIPOahraENV8kw+bgRePHmb920IQ4SreCpDMwt6z+S1oYn3ppfbR
 VnoruJLEnHy9EXPSuu6vFGxX2iNsiWvJwWj6pseM=
Authentication-Results: mxback1j.mail.yandex.net; dkim=pass header.i=@emlid.com
Received: by sas8-93a22d3a76f4.qloud-c.yandex.net (nwsmtp/Yandex) with ESMTPSA
 id 8sDgF13QBw-hhUu6OCQ; Fri, 01 Nov 2019 12:43:44 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org,
	robh+dt@kernel.org,
	wens@csie.org
Subject: [PATCH v2] arm64: dts: allwinner: bluetooth for Emlid Neutis N5
Date: Fri,  1 Nov 2019 12:43:33 +0300
Message-Id: <1572601413-10353-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024349_716370_B920A041 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Emlid Neutis N5 board has AP6212 BT+WiFi chip. This patch is in
line with 8558c6e21ceb ("ARM: dts: sun8i: h3: bluetooth for Banana Pi
M2 Zero board") and other commits that add Bluetooth support for
similar boards.

Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
index 82f4b44..5bec574 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
@@ -23,6 +23,8 @@
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&pio 2 7 GPIO_ACTIVE_LOW>; /* PC7 */
 		post-power-on-delay-ms = <200>;
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
 	};
 };
 
@@ -56,5 +58,16 @@
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rtc 1>;
+		clock-names = "lpo";
+		vbat-supply = <&reg_vcc3v3>;
+		vddio-supply = <&reg_vcc3v3>;
+		shutdown-gpios = <&pio 2 4 GPIO_ACTIVE_HIGH>; /* PC4 */
+		device-wakeup-gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
