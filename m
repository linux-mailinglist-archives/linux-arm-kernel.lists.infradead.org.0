Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFB7702C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LIN1MD6YBY6Ntx8SLh3X/1REzc+ei112WbL9/vJbxds=; b=BXPsQaM7lpRp/2
	pMpQehTISPGaLp4geSiQ6+pXevpDKUU/iv3Sx1uYTiM9SciOu6Sh41JYWEzmFju7Mi+3cUb6oVHm9
	f0iYcAZe3T+GfS9Zc7MXiJO5oLdkAG8UH8D/tWcKmDKRXvBzuRHPUsQbywNG/9ZHzgtz+hcillXl8
	3QjHjZ9uFSOeoWWcwQI9rr5QdqevsV+wvGSXXcbw3FxTPtZ7+YaazLQ7x+6jHYN4dtZQv+bwO5dAx
	P7iKrGym+KDNhgvldnsJaJoAuAVi5bU78ELl94H4AG/Nm98Glmx4n0hmoK65vwf55BA2wpjB2sDFR
	61A1j5FR8S3Fb7VlOkOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZkI-0003gA-BT; Mon, 22 Jul 2019 14:56:58 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZk1-0003fb-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:56:42 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MK5BG-1i8jzE0TaY-00LSju; Mon, 22 Jul 2019 16:56:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] [RESEND] ARM: bcm47094: add missing #cells for mdio-bus-mux
Date: Mon, 22 Jul 2019 16:55:52 +0200
Message-Id: <20190722145618.1155492-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:58kYNxdp/4/OvhkcephOLG0lrEtZe2zmOjPbxM1QiGret2IP62K
 Do1CrdRVKb3+q8wqTdH7sLCUMztu0hZBtmcPCx2tU5t1bN6fqmAX5v7tFL5dTerwRm7NA78
 vBDVQPQJEQJr+H8tE7RL7zNIElfZINbjxoqrt3+SrLnqTjtOs72amePfZHcm3eh+Mva1jPh
 R6XjmO6j/3/U8K6YpL3fQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wKqZgt1dv0Q=:6PmNuljPMLdDh28rDeVivF
 OIkrLJ8ck2n9NBA9aF9puJX5cKE2GwHKs8yWZoMQhdvRJWx3YtzPYW93AezeahKzZ+FrdyGTY
 2d8EU5ssFXVht9gwbWC0rabvnKxcMSUg0SIsZtaQlHE2z2OTUrNKwgFuHxPV0ln3AZBkMtiy/
 MW86BXbXaFkrjFGxlNaFiezYwBNZj9XlDk581sTpfH/TLoeYQuaA8AwHdW28zdc6q6PFqo9l/
 qH+yzwdMi4hyfpzGR1vy/K6s7sYlh5iqr4R1ILEWgQ/IvWMnPCEnkiARJGQ4BYRdBOuQ7dUbR
 CoWJaQ50nf3kyQ7RWFHbx5usz/syTZyjKnoo1BL4DB0H1joXwbsQgvHRrhr88WvPfcKwimLP9
 YQmTk6/G7eT7YHZjtVt+x0NjO0TGKpOoCfg92EALVOtaYBR9BR2jnq9wwNXmyEqh2MTILgxpW
 15ivrfMNoJJYf4jU0aJ3BVgMPNMHPW1/XWT2gCJzcULM32KAQQFX1L1fv4qe4Z0wXRFJM/sEs
 qxu3D9H7fJTn/Xty1lgo01Tte8iaEp6rJ8rnRfBtYxk4ua3PaI+tHj6urOmpCukAIM93blLR/
 PfHzLFb8Sm0gn8xfJdKee7hp7BKpAMMDRZ7vQh95hSDKpR6DqaJY9ZGhHdGxnomSJwPV/5snS
 GBY/lJtCJZzp/LnetfqnTXyzS+Kohh+yF4IWXn4v8PM2nB2GJOdw+YhO9ZfHmaCKkimR5eHmt
 Wab3l4aEr9owkWzpYtmUxyF0l9N1ULaK3PNbyw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075641_744536_F4403FE7 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mdio-bus-mux has no #address-cells/#size-cells property,
which causes a few dtc warnings:

arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #address-cells value
arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-cells value

Add the normal cell numbers.

Fixes: 2bebdfcdcd0f ("ARM: dts: BCM5301X: Add support for Linksys EA9500")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
As Florian is apparently on vacation at the moment, let's merge this
as a bugfix through arm-soc directly to get closer to clean allmodconfig
build.
---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 18d0ae46e76c..0faae8950375 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -124,6 +124,9 @@
 	};
 
 	mdio-bus-mux {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
 		/* BIT(9) = 1 => external mdio */
 		mdio_ext: mdio@200 {
 			reg = <0x200>;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
