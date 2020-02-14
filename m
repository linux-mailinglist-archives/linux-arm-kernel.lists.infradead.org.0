Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047AF15E258
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/wLwu+vTmWX3eKZhn7gsFYjJg8j3yM5gTF1i4p/3l0=; b=fJQ2pdKr46RPg1
	jx3s32LSl4+TvHXL7cRbf7BTm0dmHd0oHp6M22wA2BvCRvkBV44qA5Ck6GXSoCjkgR+XPsT7z5GkS
	6NN/IMyYGJhU9UBj13IgnJgm4JA1h+pqbPJH5jPBFAj86KVQqf+0RX01+n1Q7iGbBZWm6PC0RKMKA
	3WkRy7jFe7GxMKipdFaMkfH4hJ/vc0Y0Sfguhjb8Tqswbx4ccYNm7WccLzqlJC39hLKs5LdIuMPeN
	kuephRU5VT1Jf3xVjBlBCytSkUrS0LwPiRmPYBCV76dVeGyswpb9odCEaY43YXav6k4u3cwE9mPIV
	96s2qgl5FOaokM8r8vgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dkB-0006a8-GS; Fri, 14 Feb 2020 16:23:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dSl-00040Z-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:05:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6BA224676;
 Fri, 14 Feb 2020 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696306;
 bh=P6ka74hq+S9cWlwpKuE4fkuQlUl5IcnNTOP1eCnSy9s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Eb+Ff3wQgUGP5N42xGIwwpD0vUqzOJGilk1xMCHIEzhR9lW9TjUX7BTV+iUNkBYvE
 ShE9q5WZ5ylKj/UWMU/ZS45KzgebjzibH2JcDjTAUKmTQG5Bz6TGAadkD6gAVe7lgj
 hOutLUc8FUQTkv4F5j/wpJthnkItInhj73UY8Md4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 150/459] arm64: dts: uDPU: fix broken ethernet
Date: Fri, 14 Feb 2020 10:56:40 -0500
Message-Id: <20200214160149.11681-150-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080507_698225_EBB60C69 
X-CRM114-Status: UNSURE (   9.10  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 1eebac0240580b531954b02c05068051df41142a ]

The uDPU uses both ethernet controllers, which ties up COMPHY 0 for
eth1 and COMPHY 1 for eth0, with no USB3 comphy.  The addition of
COMPHY support made the kernel override the setup by the boot loader
breaking this platform by assuming that COMPHY 0 was always used for
USB3.  Delete the USB3 COMPHY definition at platform level, and add
phy specifications for the ethernet channels.

Fixes: bd3d25b07342 ("arm64: dts: marvell: armada-37xx: link USB hosts with their PHYs")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index bd4aab6092e0f..e31813a4f9722 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -143,6 +143,7 @@
 	phy-mode = "sgmii";
 	status = "okay";
 	managed = "in-band-status";
+	phys = <&comphy1 0>;
 	sfp = <&sfp_eth0>;
 };
 
@@ -150,11 +151,14 @@
 	phy-mode = "sgmii";
 	status = "okay";
 	managed = "in-band-status";
+	phys = <&comphy0 1>;
 	sfp = <&sfp_eth1>;
 };
 
 &usb3 {
 	status = "okay";
+	phys = <&usb2_utmi_otg_phy>;
+	phy-names = "usb2-utmi-otg-phy";
 };
 
 &uart0 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
