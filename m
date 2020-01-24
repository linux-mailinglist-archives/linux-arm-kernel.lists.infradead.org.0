Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33111487C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPgpJkPU3JCoBaMkGertObYYP+WB08HgrlGN/jvUlGg=; b=rzKb2tonKTA4Zz
	PoF09ViF78EfqAWzF3U4d3PVZ1Z/pvdsyVXG+LkLFRamR4x7manqv1q8yS+Sn/gwe59BKaPjjgKPq
	B8pKKX2RnxwQJxCscbBE/JyEcqEYxZZ81+mEqTHGKQiV3dGVCPkzD36mJ2XSn51j7womRVZ57nBj9
	/U9VqnDmbD1Ww0l11uBnPmfd857ED2jaum0LVzgb1hhFicEDvud1fJ1TJMAGSWGHfMPspgCKCdAhD
	14avqHdkZv8KQvXR6POHmNOqwp6553e0mjG+SLdh5z7RgjU1IEqnpz/hzTUy7pX9SP13PvQRmTCPu
	rBA3zw20s6gWfB34yiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuztl-0007h9-8i; Fri, 24 Jan 2020 14:25:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuznW-0000zJ-So
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:19:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD1F8222D9;
 Fri, 24 Jan 2020 14:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875538;
 bh=yYkdvZfWRqRnTJkQxbICX9j233kcKaHvQHhe2M4H1gs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wkNPJTBIPDLH4FkG8gnc++0gO+PIcNecD9RbEvMZSO650CKpvbpAi1VhN00X0fQ7I
 zpS+6Nc+rya0tvP50yC+TMrn7/OwXZv7+VehxxYncYvV7bsnPTE1TXL/BE4wxe0Ezx
 degMhqu3iJoo4GMAwcVbl8Mh4yMo7nnK5C5je7sE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 035/107] ARM: dts: imx7: Fix Toradex Colibri iMX7S
 256MB NAND flash support
Date: Fri, 24 Jan 2020 09:17:05 -0500
Message-Id: <20200124141817.28793-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061859_580609_2ECBAA62 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sasha Levin <sashal@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

[ Upstream commit 4b0b97e651ecf29f20248420b52b6864fbd40bc2 ]

Turns out when introducing the eMMC version the gpmi node required for
NAND flash support got enabled exclusively on Colibri iMX7D 512MB.

Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D 1GB (eMMC) support")
Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx7s-colibri.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
index 1fb1ec5d3d707..6d16e32aed899 100644
--- a/arch/arm/boot/dts/imx7s-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
@@ -49,3 +49,7 @@
 		reg = <0x80000000 0x10000000>;
 	};
 };
+
+&gpmi {
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
