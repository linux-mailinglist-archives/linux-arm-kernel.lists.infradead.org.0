Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20691704B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/laokypJf/mRKnVsqKtsrE1gtT0IoKXyaLuXWkzUAxk=; b=RPmxQfRTCJJYvt
	t/L1K7smMWF4bh+qlDYzm3zNPidTCgwCNQPZyIyT/OP8HPY/wbbZiojEjKfGKGI+33ibSpwuJqICI
	/CvzPmGguzjeWLqJ2SZSpNBnVGnHM6zPj2X7E/Dl7SSmDXilKJMvUY5fEpepTqrocr4ovNAIV1jaN
	+79XQpEdrsom+wZKb44P0LQQrsxhJQy+VcF43kk32IoZDoCDKSdtXFXknTjVsFMoixE7+ORkPf8lP
	dRA0EVxtTKYRymp259PFhmDFOjwkqzCNPwV34nwfc2ICWo8MJYh02QPwvdCLrR3o6zaZiPlJXNfly
	tT5MSJ+Lb1KuoM4FaFJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zpC-0007CP-6f; Wed, 26 Feb 2020 16:46:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zp2-0007Ac-QB; Wed, 26 Feb 2020 16:46:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5C95AADE0;
 Wed, 26 Feb 2020 16:46:05 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: bcm2711: Add pcie0 alias
Date: Wed, 26 Feb 2020 17:46:00 +0100
Message-Id: <20200226164601.20150-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084608_990826_B5451FB7 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some bcm2711 revisions have different DMA constraints on the their PCIE
bus. The lower common denominator, being able to access the lower 3GB of
memory, is the default setting for now. Newer SoC revisions are able to
access the whole memory space.

Raspberry Pi 4's firmware is aware of this limitation and will correct
the PCIE's dma-ranges property if a pcie0 alias is available. So add
it.

Fixes: d5c8dc0d4c88 ("ARM: dts: bcm2711: Enable PCIe controller")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index cb3385262705..479f6828d73f 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -21,6 +21,7 @@ memory@0 {
 
 	aliases {
 		ethernet0 = &genet;
+		pcie0 = &pcie0;
 	};
 
 	leds {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
