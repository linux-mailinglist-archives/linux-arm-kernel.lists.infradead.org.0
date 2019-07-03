Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CECC5E555
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aD7KI0OBlHm0v10QTaoWZrd8Usw9WmukrHSAsTXlhBM=; b=ik+/Ywf+skf/EB
	plC4N3E5Ao/e3dzVTwMFe5Ivk5gZcQfk19xqh58SVz26lY4tqBdNxjdXKSvzVWqGzLTqgZfDGqHuf
	xu9EaC/5xDzgyT0dzWZW4j9n6vMTkFXv0wSGeWPzLyNSabH+GTAQe7Y2PVJyFZJxYURUcMlWrqiJ/
	bRTz7uUBeNvPl5BJ3M+qtVRKEjexcu6e+HlPPFiSlZr9S1/AOBvIJ4TPAdN/Ubto25gy8pSU+P5c5
	s3/3XNxxN4xNG0R5HSGURBOfW8D2qrtChx0S7XV5NfhkOE7kKGisVA8tmguZsNDg2tMMvZp1yqtgi
	QvYswUhp9I3MHaYPcccQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifEF-0001Mc-Nd; Wed, 03 Jul 2019 13:23:19 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifE3-0001M2-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:23:08 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M28O9-1hgjPt2sY5-002TnS; Wed, 03 Jul 2019 15:22:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: bcm47094: add missing #cells for mdio-bus-mux
Date: Wed,  3 Jul 2019 15:22:45 +0200
Message-Id: <20190703132255.852025-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:lvCFNj9rbQR8RjOV+MdKMN2bThGvAL+qaIb0oH5aGJue3TtP6ln
 d06sVHt6EYjIPOROSrbU6OtWl5LwghmnPvShGgDdr3Yx4Y58LgyPOn61l1tQj64jSgrSV2V
 oHrxr3wIM2tTby06bedxGhM2+S+nwWbrAlQRvfny4jBGFGMXWaOpDANZEBrzusRolOE6GIs
 9n6vd3A5ulAq03Ib8PKNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l7jljqs9bFs=:KFglj0618tLWnyn1ATzAdo
 uIUjTjubRhoedfMbin5H/FoTO8PCiZnOMjlibAiNvYNuNQkqF6IpoB1/sukRqXavCjJN3ns6Q
 MjoA1M9xS+JQ1sG8JAvyo1lrfuhs2aHSWNSFAYx29AA0lmdl/+RBUP/NrDJ7+HXqY9RRPPNF9
 1LzieIzos+QwFS+NBtE6CtxLBBOlpvB5qjD3/c7WoQWxgEuIhUTWnNBSU4LS2+LecsGP62YZp
 aEFAktZAd3XCcf0mKPJSR7Ve7E8YuFmyZgXgW4ZORNtRtdeYG74+T1X0ZNNIyokWWUHgahgNk
 xPI54+54p7TsXAifdYSWElb1GBDOCAE60Mg9eTZYAs93zACU8y2rxWSxGtvCY0yIkZLOabu7h
 NDhsnZyokdN5PN8i8S82mU+OZBwvvwZNmYrDgFBw9UhvN7/7FywSmeLHzEjRR7D8PHYauM6lT
 mCX8fbSF4pUiJuZs8637L59AHoiwbZ9RZ9kQAqA7kl0N47Xp6DVp6FqYUTV5cVkQE1L/p10xq
 wd3ZKhtMaH0PJnclTiU584ON5yxmjoaNe88mmnTrFboypT1NZGa2bLjq/ucSFwe79a+sQx9t0
 A9XznHTmFTHmEnfa9Qa2b98+K2psiYq/Jw4uI+n36ELcC8kOoMEvGAo1ws4o/nJi5/MQ1KD0C
 53TlBlpT5EY/JYztPcttty21x9Hl/LKdWBie9hpYxBPQIL9iLqbr9eOjWgjpS66ak2T6B0LOX
 c8Ar9G7tUYlIiPW1X8VzC7v+t4xTACx1gtnZOA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_062307_408969_A796A08A 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
 Alexandre TORGUE <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
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
