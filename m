Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD946146BCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wXCfgWJeujyHJH10M7Zbr1zRVdT42mpijCoZc0pPyFs=; b=SJhQrSEtB1SZNo
	UKa1o3RII+/1jcPUUN9wFG6WQQcDwGGErdJPGFLDwCEaLAGyod4USbB3ptjjOa3KfDJiC9r8JJAML
	v38spX9KZ2ythoa7xgtEkayS1wKtDISYiJnKqioQe53FYuLyI9YQ3XM1G9YVvknAG2FfOv0hVwqsB
	h5GCTUQ2bMFb6gHqWK77CcnH6gGsALHTN/HWcT/IKcbBbTWIU3YP0hg58+uD0DvZxccJZCNvGVIqx
	6q6NAL/+S+VjXRdwO106xjWsT/G3Zvo9dHAsFuOxqAwojaziIhCTJtHEO4DuuQfqukT3uGmzYaD3R
	Luj+2wjS9x/sgg0tGmfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudpY-0001WK-Rg; Thu, 23 Jan 2020 14:51:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudpI-0001Vq-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:51:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D04B22073A;
 Thu, 23 Jan 2020 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579791080;
 bh=qwjT1k7arS9rQREQURQjHA4saI268kWfWYFoPTPxwLo=;
 h=From:To:Cc:Subject:Date:From;
 b=z+W6mqrypTzfzHLK150eBe5a9+F3TlZ0P1kU/SMx0fSCG6cfyGLwEYa77mJrzJKws
 mE9jIaAH+tWX8SIHAGmlYOGonrrwTKEetRQ7NnBNCJ6mgtq/Zc1YvRqZx1Iqfo+gPd
 yY1HFXU2vrJxaCw90ICiRdde02bu4sTL5gH2sKYM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iudpG-000yDf-2B; Thu, 23 Jan 2020 14:51:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: fast models: Fix FVP PCI interrupt-map property
Date: Thu, 23 Jan 2020 14:51:12 +0000
Message-Id: <20200123145112.22170-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: sudeep.holla@arm.com, liviu.dudau@arm.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_065120_492506_8075A5E6 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interrupt map for the FVP's PCI node is missing the
parent-unit-address cells for each of the INTx entries, leading to the
kernel code failing to parse the entries correctly.

Add the missing zero cells, which are pretty useless as far as the GIC
is concerned, but that the spec requires. This allows INTx to be usable
on the model, and VFIO to work correctly.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
Resending this, as I seem to have used the wrong SMTP server...

 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 62ab0d54ff71..335fff762451 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -161,10 +161,10 @@
 		bus-range = <0x0 0x1>;
 		reg = <0x0 0x40000000 0x0 0x10000000>;
 		ranges = <0x2000000 0x0 0x50000000 0x0 0x50000000 0x0 0x10000000>;
-		interrupt-map = <0 0 0 1 &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 2 &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 3 &gic GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 4 &gic GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 2 &gic 0 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 3 &gic 0 0 GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 4 &gic 0 0 GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-map-mask = <0x0 0x0 0x0 0x7>;
 		msi-map = <0x0 &its 0x0 0x10000>;
 		iommu-map = <0x0 &smmu 0x0 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
