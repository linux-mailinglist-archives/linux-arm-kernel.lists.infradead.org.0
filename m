Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D41F261C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0isuSA4Ylxd6qyQL32J5yDITOg02UOkZL3AYRjjX5Y=; b=aAJFtRdGYEhzmO
	x7gmsSkpkCDJNdMhbbAGq4SsDtC7K8/bJazW4hLXeojyEa+eeRibEAcYZ5TezTzoPLA3MamXx8rDc
	5ax9j3UKqzL9+bjgpTrTG7M6KBzAL6ZUo7YVfxtKro3Ct7ocsgIkhrGLJfS5+y5mtn3pmttPg7f0a
	xFhonvP9NgfIbqyDNUJNNsurf+fkJwnyWlkIP2efXDSJQrjvTz9u1qWjus5aO8u9pgDr3soZxEKQF
	8s0mV8ZFZjlosIXvbHGB87G1nc0oEWqBtqeouvpERiZK+r8vIsQzMS6A7j7T075zTH+DBTnMTt+14
	NB9G7+OythUNbe+PeLpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRKv-0005ut-S1; Mon, 08 Jun 2020 23:37:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR2G-00050u-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:33 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD9F020872;
 Mon,  8 Jun 2020 23:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658311;
 bh=xpvaaBkLd79clqel1Y5dEhDBT9B2XLcDO9yj95ulUmU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TOV6b3cxqoJIVkW8C5dUqzWagINHv8lOlo1CnlEWcta/+kE+j9XIoEYV82vGNaNlg
 opkBS0VFDpMIYc0YsIqSAv2CwAGZWS+a4xUjyioktq9SNTMK6dect2kMs/7SacquGS
 nagGDi3zLEAJ+T5AxyFtwgmDOXQOT8/BbkbirzzI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 312/606] ARM: dts: mmp3: Drop usb-nop-xceiv from
 HSIC phy
Date: Mon,  8 Jun 2020 19:07:17 -0400
Message-Id: <20200608231211.3363633-312-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161832_465171_9C0F8AC5 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lubomir Rintel <lkundrak@v3.sk>

[ Upstream commit 24cf6eef79a7e85cfd2ef9dea52f769c9192fc6e ]

"usb-nop-xceiv" is good enough if we don't lose the configuration done
by the firmware, but we'd really prefer a real driver.

Unfortunately, the PHY core is odd in that when the node is compatible
with "usb-nop-xceiv", it ignores the other compatible strings. Let's
just remove it.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Cc: <stable@vger.kernel.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/mmp3.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/mmp3.dtsi b/arch/arm/boot/dts/mmp3.dtsi
index 3e28f0dc9df4..1e25bf998ab5 100644
--- a/arch/arm/boot/dts/mmp3.dtsi
+++ b/arch/arm/boot/dts/mmp3.dtsi
@@ -202,8 +202,7 @@ usb_otg0: usb-otg@d4208000 {
 			};
 
 			hsic_phy0: hsic-phy@f0001800 {
-				compatible = "marvell,mmp3-hsic-phy",
-					     "usb-nop-xceiv";
+				compatible = "marvell,mmp3-hsic-phy";
 				reg = <0xf0001800 0x40>;
 				#phy-cells = <0>;
 				status = "disabled";
@@ -224,8 +223,7 @@ hsic0: hsic@f0001000 {
 			};
 
 			hsic_phy1: hsic-phy@f0002800 {
-				compatible = "marvell,mmp3-hsic-phy",
-					     "usb-nop-xceiv";
+				compatible = "marvell,mmp3-hsic-phy";
 				reg = <0xf0002800 0x40>;
 				#phy-cells = <0>;
 				status = "disabled";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
