Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF9EC0AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g2Kz1ZJ9pAs5RW7+NCio0vpANG5rDyLgag+6OjztHJc=; b=rZ9
	sMKMtSEmhSWHp2eB5KoX5ws2yGgu0IGDUlfX5mEqT72Ve1YvgMcf2G8mScevUtwfG2yeVln2y6hqL
	iFS850yhgp+slym563RUm2b2RZW81JBItGrW7WhIeNhokYW7xtP9yBWxbKWgy1CI2f4CkcztEJzdy
	OL44IXPT9lcpBr9pdTDtqYr9LFlSPW7eCbwiSxPrcVftw63kPeLhnMVXDK2tBxL59DsbQYPvvRImy
	QIHJAwrb4BxluCH/1P7lIEtwTUo8yIXhLa5h4HQFDL4Fn2abYCZJQL47tIogyGcp9rWg6qPDdh24B
	q4AjekSZpFGOO/PFvboVzWSXD68FKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTPH-0005lE-Q2; Fri, 01 Nov 2019 09:39:47 +0000
Received: from forward105j.mail.yandex.net ([2a02:6b8:0:801:2::108])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTP9-0005ik-HY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:39:42 +0000
Received: from mxback13g.mail.yandex.net (mxback13g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:92])
 by forward105j.mail.yandex.net (Yandex) with ESMTP id BF710B210D9;
 Fri,  1 Nov 2019 12:39:29 +0300 (MSK)
Received: from sas2-69645cccb3fe.qloud-c.yandex.net
 (sas2-69645cccb3fe.qloud-c.yandex.net [2a02:6b8:c08:bd8e:0:640:6964:5ccc])
 by mxback13g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id p9I8LAmAUH-dS1Wu3Z2;
 Fri, 01 Nov 2019 12:39:29 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1572601169; bh=UN0pzwk3CX7uZAugr6Kv7p1iduaIAzWnVboku1O5ZF4=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=k6bzO1lyWLSVVsUY+8GFVW7iekwvDCw+JtIDKEKPIroNpVmEZKqTauxHw7lXsTMTZ
 pvioJxOuiE2xGQM/ZcaiNBYH34R04HdRUtp4MNCBSb7H7pJ2JQ5zaJFP3quaiK9KKn
 WoNr/xypPmVR8nmEex9jANgmSVReVyAHv4ke2l2c=
Authentication-Results: mxback13g.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by sas2-69645cccb3fe.qloud-c.yandex.net (nwsmtp/Yandex) with ESMTPSA
 id GY8u6ZZUqg-dRV0rq7b; Fri, 01 Nov 2019 12:39:28 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org,
	robh+dt@kernel.org,
	wens@csie.org
Subject: [PATCH] arm64: dts: allwinner: bluetooth for Emlid Neutis N5
Date: Fri,  1 Nov 2019 12:39:20 +0300
Message-Id: <1572601160-8200-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_023939_765840_E20CFD9B 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:801:2:0:0:108 listed in] [list.dnswl.org]
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
line with 8558c6e2 and other commits that add Bluetooth support for
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
