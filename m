Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58171486CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8BiN5J1stefBJJ9khqrQ8T+j79csgKAVcuaczgXN/Q=; b=aOtB9zMlu5wqDM
	XSHT+m9eh0aM9pwZ/GvsXHzH3Ic79Bs5qvgVDAknGE5GOjCW3a1GGGc5ujQjDQ9pGAID29LNgq4Jn
	SYxdcIP0QZcuu4SqoX18o3zqkItOZCZptU2THratPRXSrixd15IGNbkGU92fXuqhcRbImB8kNqOUW
	AOz9rCPacybom54XQAUhNkNRXvMHEtz9fvKc54PEtxDVTkILPXkna/6146BSuBe4nFr9xrVF/lWnt
	lb8fiN/mootOdIcWTnws2fPuVNdnkGWnBg2gbDcD4va7qgWXujWawfbm6Pa99/oy6CnIBUe9Kc5QA
	cfxpKwUKCNqhJONe8Jlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuznb-0000lv-DM; Fri, 24 Jan 2020 14:19:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzmv-0000Sj-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:23 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D15F42087E;
 Fri, 24 Jan 2020 14:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875501;
 bh=dUHXIG6MtZiAEHdpM8ABRLLmWi1FRJw9J1lJsLzRkpA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0Lxw9QeM1KY0qjR6LqFUXoAzhApDXwVR86iE/ZYtP5535dz+jJ5MQcmmWqiz1lMmN
 dVV/QQuxKh8c9PjlEqcjY7WjCPW972bQAHEeJmyfGO3J/34GTovE1RZQses8k673j+
 2Qqm9qoylzU+lW1sPT2/jQ8ZLyYT1gvXpZw+mKCs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 003/107] ARM: dts: meson8: fix the size of the PMU
 registers
Date: Fri, 24 Jan 2020 09:16:33 -0500
Message-Id: <20200124141817.28793-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061821_970140_CF35C7DB 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[ Upstream commit 46c9585ed4af688ff1be6d4e76d7ed2f04de4fba ]

The PMU registers are at least 0x18 bytes wide. Meson8b already uses a
size of 0x18. The structure of the PMU registers on Meson8 and Meson8b
is similar but not identical.

Meson8 and Meson8b have the following registers in common (starting at
AOBUS + 0xe0):
  #define AO_RTI_PWR_A9_CNTL0 0xe0 (0x38 << 2)
  #define AO_RTI_PWR_A9_CNTL1 0xe4 (0x39 << 2)
  #define AO_RTI_GEN_PWR_SLEEP0 0xe8 (0x3a << 2)
  #define AO_RTI_GEN_PWR_ISO0 0x4c (0x3b << 2)

Meson8b additionally has these three registers:
  #define AO_RTI_GEN_PWR_ACK0 0xf0 (0x3c << 2)
  #define AO_RTI_PWR_A9_MEM_PD0 0xf4 (0x3d << 2)
  #define AO_RTI_PWR_A9_MEM_PD1 0xf8 (0x3e << 2)

Thus we can assume that the register size of the PMU IP blocks is
identical on both SoCs (and Meson8 just contains some reserved registers
in that area) because the CEC registers start right after the PMU
(AO_RTI_*) registers at AOBUS + 0x100 (0x40 << 2).

The upcoming power domain driver will need to read and write the
AO_RTI_GEN_PWR_SLEEP0 and AO_RTI_GEN_PWR_ISO0 registers, so the updated
size is needed for that driver to work.

Fixes: 4a5a27116b447d ("ARM: dts: meson8: add support for booting the secondary CPU cores")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/meson8.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 5a7e3e5caebe2..3c534cd50ee3b 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -253,7 +253,7 @@
 &aobus {
 	pmu: pmu@e0 {
 		compatible = "amlogic,meson8-pmu", "syscon";
-		reg = <0xe0 0x8>;
+		reg = <0xe0 0x18>;
 	};
 
 	pinctrl_aobus: pinctrl@84 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
