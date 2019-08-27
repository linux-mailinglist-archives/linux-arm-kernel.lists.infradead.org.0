Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5672B9DE86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+FGFN3wFaIARlv8OI5mUTq0cFc640mBJQegz2bGVx2U=; b=Cuy
	gtN07MbSp55RE68cyY4SmkKm0gO/yChdiUeflDKxsXar/jF3fyrcNe8lZ6Rh2T+pmdf5M4+3ufuIY
	+rL2g5qxmBSH502++vrMtPtzE/E/+mYGOvmnouSZItHjmaaERgliql31dFJFfmnKj2G7+YRzUL2SY
	IbWt80zZCPEeEXdUpSmB/5jaGDGsE1neGyw1WM3+jNOFklanEA65EM53pmBfEwgNYVTETZujdHIk+
	dn6H/gPSHztI9zmw36H2aHKZ9cfYmplh3a0N41P5N+FWI8RLFM/0Ca9zngSndJUv7TkmhljdaJraQ
	GsVNmPHioh8N5xH84dYNXZo0uemmItg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Vhp-00048M-GH; Tue, 27 Aug 2019 07:15:53 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Vhb-00046d-0u; Tue, 27 Aug 2019 07:15:40 +0000
Received: from zhangzj?rock-chips.com (unknown [192.168.167.153])
 by regular1.263xmail.com (Postfix) with ESMTP id C11D9690;
 Tue, 27 Aug 2019 15:15:27 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15961T139881246357248S1566890113084555_; 
 Tue, 27 Aug 2019 15:15:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3ad0733fd004bc1499c4d958c0965038>
X-RL-SENDER: zhangzj@rock-chips.com
X-SENDER: zhangzj@rock-chips.com
X-LOGIN-NAME: zhangzj@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elon Zhang <zhangzj@rock-chips.com>
To: heiko@sntech.de,
	mark.rutland@arm.com,
	robh+dt@kernel.org
Subject: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
Date: Tue, 27 Aug 2019 15:14:39 +0800
Message-Id: <20190827071439.14767-1-zhangzj@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_001539_228031_5E777F0B 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Elon Zhang <zhangzj@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not every board needs to enable crypto node, so the node should
be set default disabled in rk3288.dtsi and enabled in specific
board dts file.

Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index cc893e154fe5..d509aa24177c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -984,7 +984,7 @@
 		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
 		resets = <&cru SRST_CRYPTO>;
 		reset-names = "crypto-rst";
-		status = "okay";
+		status = "disabled";
 	};
 
 	iep_mmu: iommu@ff900800 {
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
