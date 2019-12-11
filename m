Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2921911C0FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JV0vs4GyRhnzV7HgOmTnxrbR9fU3QK8NpIGzb0eieY=; b=oJbVAVELzWctyY
	reJy8KgCx/TJ2YDC5hNrjp6bUzQ0k5iZyMdadOz8OUwGyHVT7clF4Q7JTPUnvVP10I2vuvOF2pTr5
	JY1Z0dwDag08LAwcdY8VvJtsC2GUwm3dML2i8GtWRgWR8C78TNa2LOrnkil64aDwwMXbBIBkZ8aVe
	BqGI0Ce9iNwo5y91icewBqn98gyNwsjkhhXapaFYVmErrwS6CDrrFmjGtz27vRlKiOb9m6tngzfX0
	rYHWXf98a64NosIvBK+M4hmof1xGM6SyRLd/sOWz0aSG7w3DLCHyrOXcvJ62bKPUWh4XluBhDmciG
	IVjwZJsUCUiucc2fXBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBok-000261-Lf; Wed, 11 Dec 2019 23:54:54 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnG-0000sN-LK; Wed, 11 Dec 2019 23:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108398;
 bh=K8Vc5xH9CLUyhrYV9Z9NpTgYitA6qCYeXvgl/cznLdk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZhH62FngPLmTZ+IdrSHvMTvuAiMhumBY/SSyMoqsurhoPfd3fZXaEoxerGDMPlHjc
 RGGgLowA8MYk0+FXeCMWwDc/e7/etUgg+Rm0lQGOXje99HVfuqJFRZLzVM4cvsk4c5
 WNIBYFcBe6Huwt27d8GE4Fxc9fUdRatekxMjDJtc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0Lvjiy-1heUNt3nx6-017VQ6; Thu, 12 Dec 2019 00:53:18 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 8/9] arm64: dts: rockchip: RockPro64: enable wifi module at
 sdio0
Date: Thu, 12 Dec 2019 00:52:52 +0100
Message-Id: <20191211235253.2539-9-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:L21aj6hQ1G9ozqVXJyR+jL3/TO5bynJLSxDfhNGSe1Rw8oAm7Wh
 SVbp+ikLF/2EPn0nZmcvm5YIG1HCByn4xEDa6rPlPUysF3CFVxpvW50QQTgeJolHioJK8a+
 vdtFIORtgibmAbPh71fTBffw+MK2aNpzNorAtB3WPMz41+9VonHT7at7a9EV1JZncEZYKD9
 RngAU5nMIJf2AKSkXN0KA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YSBqNQLYU1g=:j8cAXIxiWNNd35q6LT3OgX
 GeM/7AHZpfcEVoLkEe0tdIkPDboYEbx/M6sCY/dFFjl/xi5QWOsUGg5Mtl9vpb3w8V61El126
 6ciCK/PWyuYSXsg5t5NKcZNeP6zqNDAu6w6NBnWjC1YPkMSCaMLmXCENzVoxQTm5XiV2KtbKa
 hlt/w9GlUq9hBprFAIsIQEamSJ6LTXNfbVm21xplliLvq0qQw1wKEoEh9OQMcVdDARFOUvhQw
 ONmNaMTaTQ0zy3RN1lEKVCHcmykRAnmPKlwRULsUy6b3NG/J04bDlSSp/5311GpYSRI8TCTHp
 9WrHbOdmI9sV/Oq6TAapfArLVtA7SySEELnaaA/It6/YyyIzqkm5ah24+1rrvFy5uKx2UdZIg
 +RC5KFBVqGkUN8gLqZrJgg6xb3gsLJgYPecb0Q9az1mZjoqH90hyUDsofJGDFkJ101FQwYfcx
 3G2941vByhX8BLwnpI3Z4NmUqe4kk/JNuV5zzoShWAhKgPQcnxv3HfFq5gozRJGQQslgQlWrJ
 VEIAv0fvnCWyKkIGuoJhSiqLKScs5BoGqrhpkAcJQ8N8Wt3Q+hLsoEMw0tCXz8FXbp1iScb1c
 ZAEbXhR/9ekLXIEQJI2wQYahmWk8+l/lN76Nka4NLxxXds4RsHT8hWBbvDKtCSC98KJRdN9VW
 b2bUPH129AepFZWXvVbDJE9VlTg48F4b2J/bEk3uwgvdoPlMArK2NV+i5p9gYQp8vpH9Bz+ab
 lVQn7AGzRcroUWIr/SjYVm58CRjtTXR4w1LP5q4jDl0wzZULOMDgH1l9vVgTtjIcDhUO0tGD/
 FgJwFX6JpW7eyPltGaXd3oxs3wPuNPaeJuRwI/59N9TViAzNpNjuwTQQRxZCvIOTXXw6Ijx+i
 dIyyAZyTFUTjKJxqCharuCPksb49t5hXGDWd/4H8zhr05gldjjNXJyGFLQiCcGUoTwKtj4WMO
 8vjeAgaV1S5ZrCyZ/phs4zowE5RI9e/SK5of3G3rnuO+LnorAm1C9zU0vO+FBh5m96e1AhNN6
 8rxHhOolIq5XgOCLE+LY4FGU2LrkWy6N88hYlH+S9wxT+e1YMJ2D8bT7ogEFOrRjnxUrKn6BO
 79fvSsbso36Q3YyJtWMP8mQ65M7FlfDE912iCJ2NJkZ4iejDoP6SVcXJAU6HEc7YUCp1cqt3+
 iJFon6kjMAfrt4C1HCGRy50OtqZYYXkeu5FeVrrvuk9+r8u2vT8v/Oq0aRQLoyg0MESknOIQQ
 f14pcRgZltqtlGM4+1o8kmNR/eYGRFzOoLYk//Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155322_994241_6C9DE567 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
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

RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
The BCM4359/9 wifi controller in this module is connected to sdio0,
enable this interface.

Use the in-band sdio irq instead of the out-of-band wifi_host_wake_l
signal since the latter is not working reliably on this board (probably
due to it's PCIe WAKE# connection).

Signed-off-by: Soeren Moch <smoch@web.de>
---
changes in v2:
- add comment about irq in commit message

Not sure where to place exactly the sdio0 node in the dts because
existing sd nodes are not sorted alphabetically.

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
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 7f4b2eba31d4..9fa92790d6e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -71,13 +71,6 @@
 		clock-names = "ext_clock";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
-
-		/*
-		 * On the module itself this is one of these (depending
-		 * on the actual card populated):
-		 * - SDIO_RESET_L_WL_REG_ON
-		 * - PDN (power down when low)
-		 */
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};

@@ -650,6 +643,20 @@
 	status = "okay";
 };

+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
