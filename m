Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960EE1FDAF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yw7jNS/hMTclihdkirPpt9gSmnuGBLF1L4B1Slpa2qw=; b=foGuLN3Z2Cr9Mr
	JVBvCa4N3Y7DxP9FYMD0kFvzV9k7RM6xestA0MbAbgTBVV4LPkHfQiN96DG68O3y1PbYvJPKH2p3K
	WEnEwvteMDhFxBsoBe/hBsC5CZ05+J0TlSPvrxsny9GY8jz6OEQNDTWe/GpTtIxX6oBRwFFZCCKXy
	jCPffmxL/0EpOxPSa24rQXIZzyQaAXyAbDB6TWxVvvwN3WN7DYdpIKgxRTieG5NqZGpsT2Hx7uMw2
	RzzX7jh+uDqLgzKN0ov/aFh/9YgWP0zQfAoNKoqV7HgqvMWEdO8qQuLcO6UR1SGCOQImJeHs0cORW
	A8D3NBEik3zAZsR+DVIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlj3U-0005DM-Aw; Thu, 18 Jun 2020 01:09:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj2c-0004gH-My
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:08:32 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 239E321D6C;
 Thu, 18 Jun 2020 01:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442510;
 bh=inQ6fBwnGkvWMuEiTQOAKZvZoNCHTgESJuWH3PswLnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zfrjFbVBXXqui+DQ5iCJJui2Ol2tPlzgau1de2gov4xympUJ8oxoJ/LmV0/hq2yRQ
 uXpqUgIMJ5xnulfx8TzSNY7vLjEJVmhyiLohuHSW7W4gzhK+v0vSRIF+P//VL0fJG/
 hHUCdHrMzLp8o3mLoAhDPGiUnczbYD7gy42X4MFY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 018/388] ARM: dts: stm32: Add missing ethernet PHY
 reset on AV96
Date: Wed, 17 Jun 2020 21:01:55 -0400
Message-Id: <20200618010805.600873-18-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_180830_771924_17C36F28 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Sasha Levin <sashal@kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marex@denx.de>

[ Upstream commit 010ca9fe500bfe365860b50220ff80541c18f0e1 ]

Add PHY reset GPIO on AV96 ethernet PHY.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 425175f7d83c..081037b510bc 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -92,6 +92,9 @@ mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
+		reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <1000>;
+
 		phy0: ethernet-phy@7 {
 			reg = <7>;
 		};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
