Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA31256F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:36:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC/ba7j4vGwNaNonFwJz5zX3Rfpb5gd4utYkMIC7ZTM=; b=AHNvXowF6BDxyy
	n+6O5GJTaq7mEKmXIoi5l9BwERqx1d0IbMBp21J79xgrw81m+NvBkckKkk6bBCMGAK2/632j2lUO9
	mBGxkCfvOiHP5gMFsuYvQVkaHjPrKej4fW0EJp/g8pmnVwIz8UgxeIXyBSyrum2ALt71uwKH4BSHJ
	k9TE+72hhqnX1bXFkq3EojBCSELrUVShOsiwh/1ISNjFlsq0oSUgV+opRfHYo40KCr8Q+pdqRoyyW
	kGrTETLfN8mZUomtjLsOoOl3zU9tlv9Q1AfEDS2nHjAqaX6MnzviYcngsdRLh06/nfigIVNXdf3dr
	7rQ7Dg9bPTWQgi/uuatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhvm-0007cK-Sv; Wed, 18 Dec 2019 22:36:34 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhuz-0006yP-Lp; Wed, 18 Dec 2019 22:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576708540;
 bh=8ZRx4y81hHZJO5QcZ9dH2x8e4A8ig8L8U4hPDWTL4Fk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fe2soDgPKrDPbLobU0YHjkE1t5sDoCYUJEGoHfb/g/2Z7KqElN/UdgAHwRZmDiREc
 PcaTYrxfy/Ijwr3D/A6W8IqwtR4Fne5eNZq6ahFYtX5L5vQkbX+dufqJIjfaOpwwzj
 TBpG+e7BY1l0lhVCEa1ldJhF7XRL47qOfuMn1hF4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.137.218]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LkyEb-1i9kXm43q1-00andm; Wed, 18 Dec 2019 23:35:40 +0100
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 2/2] arm64: dts: rockchip: RockPro64: hook up bluetooth at
 uart0
Date: Wed, 18 Dec 2019 23:35:23 +0100
Message-Id: <20191218223523.30154-3-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218223523.30154-1-smoch@web.de>
References: <20191218223523.30154-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:l+ItjJlDtrlJ5iojY1W0IyP/csk5hm2m8TkpvkslsWVninqUkpA
 ipZrdB6978T9oj9RLdlqMYhKf0Qbh8NeKm8W+z/MQkNBVQ/XpiFWMvsaA/4wbaR/xTEVvc9
 sFRkTUen1CfyoiWXVNXvtuAHlGOSSJjDIsW3od43x49M26JZsQT7SnbNo1KkW3NL/L6l5Tm
 w2M9Q9ABcjb9MQvpperqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CbjWo1dqzEg=:Hbg+q57jVTLeibDUB3tmYB
 eRtooKn3Rjj28azAkhZ5O1P9Y2+u3I8PLA7rCufMqYwuli8FdZA4Psktiak87x2+2xvtmCA6N
 Zdlgn/pC+p3wNYQOOEFhHRJwbFn6ObVOyxVjQZ4zKf8zz/bVtHFVdQeS4mbZgnBFOV9cqdDfA
 THGLaa9bIF8iB9O+Nn7Gd5tOg3z3PNB1eT2uGNKCSc+T4JoaTjiiwQUx/TLWBTpI6S6gWLpAO
 u7BErTwJ868JilKT5usTdVMOchGIUIQI21+iJ2/Zmua0zUvwSphemKVrNpjX/RNajQOLqcBpD
 EPZvSm6pb4CFiSDUxaEs+3CwDlvQGnU5KajQeo8CSUlf14QyJlnWSjeREcq+6mh6+W3fh1MCC
 +wQzpfNnglBRgYJ/sbyWD7U/fUIly4Aq2G3O1hXptrtLCDCZNOkhotw6+XmrE3fS1IilIROZS
 S/SsBiYWysdO97ZUlETBuPWGslruHPv9h2c3/KQGltXOLy/Q4KEudxg8BRqm/7XLWr+vIW+uq
 f7EGWCGNB711qBhqccfwXGdlD3ti3OD0Fxrcsxu1xsebbDvs4SNj5C4aJPVpDa06d9R3cM7Sq
 WMfSgG5WQK02zxb8FuXInHm0bXsOO+sKB1sjE9DcmqyjE6y5odGVtWDVcdBnoyqNYVcmw5MX0
 JT+2ntrWifF0nQgNXpZPcct0bomAbpRPJecXxFOdWD8FxTVBEYR7FnjKAI34G6Bci5veqrFqa
 T3/dEhFQKrwXx1vT7bDPY7eR5PB2GSUqO6CEH5rgTVnvXr/BoJNOMi+AUHfIJe0lhilw4Tl9B
 252vNQPyhXqTD0vRK+CvSMXVcus4ot7K0eRc2bZvPCbtJBrJTgvqOSXg7viw0XNG0gmB70SCI
 0yT6GzmVyXavOd8OSdIAcD7o56xVFwQshJkV+AMEIN/00VMFYyNZBwLFVm5QMZzwNA6iQn1md
 Jt7VUNzNuf1S4ztJfDIF4+TLogciV/69b/NpsHmyDwRPLWr3He7vJ1DmK0yn0NcPCZ5lvQjAC
 d/YJht5XNvSGJYg2JIXFAueYDSSC7juWdMSFs2y5wOOYNjIx5ozXyeMScssdZ6mZOM9jZ7m5f
 PSYgsDqE/D3rFE1f9tnER+wA5Lsmbv4yfG5/btl3/fCF4d1l6lhBOh27T7Vv+JVxccSXPpz8N
 x5Bbjct/VQLe8X9u6Aj7xsbfMc8ewlogHEQLLIIoXcqnYtOHKbV2jAE8HuITHZdkn14fIHsqB
 eiceuuOwQXnJkqUFlSiBIHXtjXZHzO1gBdd81uQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143546_011436_A533CFB2 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.218 listed in dnsbl.sorbs.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
changes in v3:
- fix bluetooth clock name as reported by Robin Murphy
changes in v2:
- new patch

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 9fa92790d6e0..d9206730c88c 100644
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
+		clock-names = "lpo";
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
