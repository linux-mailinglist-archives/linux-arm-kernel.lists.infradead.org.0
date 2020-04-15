Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8B31A9C79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KAWmNrB3+5WJn9dzfRBNZPSOGiYBJnDdWZS85c9ORw=; b=YVC0gPyUxR9cIH
	3GiYBIz4NdwugqyOJYMDn4J6NrO2sqUkASzSizeo1nvm3Xhe5DtCoGJyZjOW19y9+iSYGS1O42nRc
	LlH7OUAofaEMgTp4Mox0iMzT58mDu8lh0ncB602F8I6pM6MFGq9PobCPsCpsu6nqy1zvMPpupyZ50
	OMNaQ9U74Ya95ngdHyTgtFxNhz1Nr5SOPZQZzWBrJawJldtFEn4NOXtZacQrmEuwAbBbNO70t+bGM
	ai3X6RMA73R+akPhFJ5XoVID5enzeClSzfMtSZTnNJQHFVMPk1U/4AYQ+JFP4wZ2MV0jR8HHDCUqB
	GMElnkSjewNRZSmPy8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgKZ-00007X-Fs; Wed, 15 Apr 2020 11:35:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgJs-00063Y-Cr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:35:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 064722137B;
 Wed, 15 Apr 2020 11:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950503;
 bh=WX4FlKyay9j1hWgu6xpp6v0VrZMy0wIewRZTNsRtM3U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XqBtNRbGmcY6ben3e4djsiE6BYEQbjImAOqJoyXDSCamKDLpCUjcKAtzuq0An4Zd8
 0SA5mbfu1DLzxIDzZd8WT3hF58wgy3u1qCaBPo1Ak4NAECXtDMJwh9JztwZ39MWD0n
 PjfDtRnT/UEXl197EDaowgJ00O0wtslID9WcnC6s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 015/129] arm64: dts: librem5-devkit: add a vbus
 supply to usb0
Date: Wed, 15 Apr 2020 07:32:50 -0400
Message-Id: <20200415113445.11881-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043504_532007_EBF58A76 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Sasha Levin <sashal@kernel.org>,
 Martin Kepplinger <martin.kepplinger@puri.sm>, devicetree@vger.kernel.org,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

[ Upstream commit dde061b865598ad91f50140760e1d224e5045db9 ]

Without a VBUS supply the dwc3 driver won't go into otg mode.

Fixes: eb4ea0857c83 ("arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit")
Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 764a4cb4e1251..161406445fafe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -750,6 +750,7 @@
 };
 
 &usb3_phy0 {
+	vbus-supply = <&reg_5v_p>;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
