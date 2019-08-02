Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EDB7F8CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ab9jktaqdDhK/Yeal8wpLJOvT8eSqQ16i/oSbjB3k0=; b=twj2YcdqBIsIRg
	TRUX8d9AHvrt8Vg3abQ9kTE33Gd15QjXD0lfdwphvkXHJzbfYDn7T+q2J4gJX4x6wUid0mqQ63c3Z
	36sf1lT/04BkL+fY5fI1vi3dJSv69bDwk8TF5pwuHwbVvhl2ZODc0oFJ8J5A7ru37TPTNrQr4wcHU
	hd7czCu5j4oXHIOUIUcxQ0QsSmHjQbP8EBHQj5PwWcz3CufaQGS7+n9jxdXzhgjjv1GVCpIkTCohN
	CFY21sNDWCEWolyKGCS2M/ylNVgpz9djgH6qrH+bZQxpa86luiZW7fucJWpLNsUFieBPzR0AVPPLO
	q0qe0ADepmEBrxQq3tGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXWV-0004eO-P3; Fri, 02 Aug 2019 13:23:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXVq-00046B-QN
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 13:22:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B215C2186A;
 Fri,  2 Aug 2019 13:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564752146;
 bh=zAEYXuHjmh3FDxvzc307uZuS5g8WgkqnI9RPEqRESw0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=motD7WhL0UTBFTEQtuvOQFTvaHDXIJcELqPnqRmzpIew2b9bPizXzN3/ve2PpeCN3
 ZpRwv3zZ6RInrIo43CD5lwTdg/6PSTpUI2/S35ZsvPrhdWovAw9xBiZUFEYTpS7XB2
 IU1WeRYboqJd6OkrU5TdA2DmWwR7TKWHJLn1JCEM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 63/76] ARM: dts: bcm: bcm47094: add missing #cells
 for mdio-bus-mux
Date: Fri,  2 Aug 2019 09:19:37 -0400
Message-Id: <20190802131951.11600-63-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802131951.11600-1-sashal@kernel.org>
References: <20190802131951.11600-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_062226_887747_9C6E659F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Olof Johansson <olof@lixom.net>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 3a9d2569e45cb02769cda26fee4a02126867c934 ]

The mdio-bus-mux has no #address-cells/#size-cells property,
which causes a few dtc warnings:

arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #address-cells value
arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-cells value

Add the normal cell numbers.

Link: https://lore.kernel.org/r/20190722145618.1155492-1-arnd@arndb.de
Fixes: 2bebdfcdcd0f ("ARM: dts: BCM5301X: Add support for Linksys EA9500")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 5fd47eec4407e..1679959a3654d 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -126,6 +126,9 @@
 	};
 
 	mdio-bus-mux {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
 		/* BIT(9) = 1 => external mdio */
 		mdio_ext: mdio@200 {
 			reg = <0x200>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
