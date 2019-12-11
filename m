Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCD211C105
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77nNhtLBZf6t3XsA8HVcE9vOn9eiHsnKyQSaeBv4eH4=; b=erqPQqzwTJqJG5
	Fkijlaup3CqeKK5MPaTHG0DT31sFIvJMRiblV3upMGO3WxWvh2k8Lc+a2YhihAv04g6dsDg2yYyR2
	+6ePEWdHbKvONSmQjNCEuF4Kc9MSGPSupG6Pp4Cd1hVh7906wfwtrWuR6B3X6zZoXfP+df6Hw3CmM
	7ux/6pFDQL7bGFu+KyYzJbpK9RzZJwaBVrYpBc0hMJELGzOmX/+Y1cU2i5Qe6sCSJytJn8ykajbRr
	iqABA0/BOpnebcHr9ZBKzYJeYg0sdcwW/HETvvzV9vgw4+JOxGeOKa74FCSXKuo7BJOTcnbjK1fAy
	a+VpXkHQ+2HfFH+3NKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBqD-0004oE-6p; Wed, 11 Dec 2019 23:56:25 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnK-0000vD-If; Wed, 11 Dec 2019 23:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108399;
 bh=vpmcxnQM8xeIOrgf/nLMbY75MJAw3JLGxT3wkvLPkbo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BzrHW2OM7bnwDihbgxHzNh8UPyn71b0KWUeLA7jUPedIlK3QHYVlS0idBZM47pmbx
 u/s2Oorz8KhTT7wAZjxE29vQzv+lZoxVuVp4hoCqQLSOFesdNtpM70cAoxjkN8VesG
 2tWns90UzykDW0PtQzGz1+jRSE3N5Me3UUJVdcqs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LmLoU-1i6PGv079u-00Zwng; Thu, 12 Dec 2019 00:53:19 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth at
 uart0
Date: Thu, 12 Dec 2019 00:52:53 +0100
Message-Id: <20191211235253.2539-10-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:5PDFH2F0gjxlcHEJO1q+UhhYMk5qrPh+R32KnEj09Ga2cRHNb6a
 WRvTk6+wPGns5t79V6A5yoGWG8mUNT8/17s9oA0//bPLHcW6hDWVFW/oVkXNIt2bhpPEv0K
 lJgNfkZq5I4mKhPg5g5ld/AlrjfJATF9j+BESdBC3KhzSqzdzaYD6z9e2CNWxmPy1A8KAmw
 LisOj0yPMWY6dMp/VuCwA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tpVInoJ1RDg=:TY0Y8jY4BRFGaskvGFkBNh
 jwQgF+B6L5pOwcYFelXXSOSs3JUoLAzMJmi3lQHZG3zagTYa5ec3EmFKy2zWyjjkqDUYmfbxM
 SklKG+S9WrhxwukxqP48U1AB/c/nkv8Ff2Xxxxb/v4YznBy5PI9OANBHdeperFGLIG2D117rG
 RKU4govznHCUe4vzIx50qc3MBAAnQ4k2axKbCjCdQU0KZy+HjR1nMtaVUrRwb1ea0HyzBwg0v
 2oCg2XkNnBcaXqHeWTlqOG+FGoqnL19Syz4pKB+6GznH9jaSzQ49pjSd0q5JW5aw0gpCIqDdB
 q9HHB2tBJnKWHpvNmU7FfDZLZfcQPmWdK9owN/pIZOECF3V5KEXziEn6mZqordxnGDC/EInQq
 Lc4ISJgfJXU01ERmUroP2kb44G08JMtDG/qID9OWX9Gl74/gmZYYw8gCDf+xFPfg7ne6iZAqC
 nac05Sz6FjuQUc3H2J4BQcykdjrcBmF8s5qPACTOr5o86gvN90J8gCo87hR1QOGBaw1o/hHXh
 C20wpBWRlzCZSb81nOVbKt8H387nsw9GoYEnXJ3Ib3laZ4zoX1Zuk81CECo4zINJuY1ZTzkVb
 DHyJrRg5Tizk1YhMJ6y4BK+AgXsuWHS/7hG65fBo1U9e2+rWKIdrPb0ik4QJfDN01a1Ze9IpZ
 lZiM5ydyw6NLK9fS4k8cOWwAEE68qFwCMz5otMcDMUqA35FbAGlyfa12OmyhuNpOH8bNZfuCU
 S7kgGnpZm3AvTqOyKfJRic/h9o8vQtE5hSm7PAePDr8nPLp3PttDhdzcURTllw1Nhm77lMKTk
 q8h8HiV8VS7tg4nviLnyDNvrXDnDmiBB0fGzrRCyEjLQlg4wNk8r+WEXd64pLBrrYZYLr5UKy
 gFlIeqT6utsFoLYYGvAEkLXzJgj3ByToaly7FQr1YJej5cze5QoWGV3qAAfUBCnwXk8cBurre
 Il3LMG4GJKHlRMmtui9X93CJgjPhpYIwZ3FjYfOkDvlTs6Jz9IrOM7Dyd7gXPNGtpHxY8ZRPZ
 wZYfDyXjuZ7Ttli5eXTV6CgECOYT3ldVewSf8S96IRRbruiTZ43w8oe7R04a0mxVwh30YbRTS
 EZBwgktnaiZGCVaau1310BTCnvJMj0zHgswDCshOMY/l8q6kzKyWK4+ZSNbj25ChQuw5CBa6N
 W8cppyIDzVq9kBEvrDAiEUoq3h94zApYs2Lgs2Rb3fUbwaQqcf4n0XEpjL8FdAxA6sYX4gwGK
 viCgHHeD+54tWUevFFwkG18p6Ilf+g0GP4UA1Mw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155326_940100_45C9934E 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With enabled wifi support (required for firmware loading) for the
Ampak AP6359SA based wifi/bt combo module we now also can enable
the bluetooth part.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Soeren Moch <smoch@web.de>
---
changes in v2:
- new patch

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 9fa92790d6e0..94cc462e234d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -561,6 +561,20 @@
 };

 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	buttons {
 		pwrbtn: pwrbtn {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -729,8 +743,21 @@

 &uart0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "extclk";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
 };

 &uart2 {
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
