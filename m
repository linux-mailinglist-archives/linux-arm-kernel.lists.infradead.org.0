Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1A9112C22
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IObuSPnyUrXQeaTdgS+tE52Tl8Hc148NZjGN2Rxy3Ro=; b=k68YnGD2lstVqu
	I6Zy+JNQhQHoEovG+ZtL8ZdQJKLNG1yxrsQTakiyYRrUFG5wMI+FNjUn154W3dl6xFSEjhfuw2Xki
	HOujL/xVVS3SObFR/rGRsXFUsxK0yKfZPgqGgR2WcOPYRchCdmU3Ilg6sxRCdjfVUAWVJcAWBHLiv
	FSCXskwNSwqAmJadh+8WqBAUaIFAvcqJLtGb1oIOCU3LZHTDkI0eLa9jJNHVufHlhvMEFBogbLhTN
	nwJ6Q2MKn5EnxndCJ33I8Ci2ipMWnTMfwVb5kSSs5uh5hL0TNVaWsTKQbo4ajEG4pfo6o+ksct6gj
	/AcomNdY6XBneIluSmqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUDD-00010I-VE; Wed, 04 Dec 2019 12:56:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUD2-0000zN-2m; Wed, 04 Dec 2019 12:56:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DCDE2B35E;
 Wed,  4 Dec 2019 12:56:44 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Florian Fanelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: bcm2711: fix soc's node dma-ranges
Date: Wed,  4 Dec 2019 13:56:33 +0100
Message-Id: <20191204125633.27696-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_045648_270745_DAF1DC1C 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 mbrugger@suse.com, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Raspberry Pi's firmware has a feature to select how much memory to
reserve for its GPU called 'gpu_mem'. The possible values go from 16MB
to 944MB, with a default of 64MB. This memory resides in the topmost
part of the lower 1GB memory area and grows bigger expanding towards the
begging of memory.

It turns out that with low 'gpu_mem' values (16MB and 32MB) the size of
the memory available to the system in the lower 1GB area can outgrow the
interconnect's dma-range as its size was selected based on the maximum
system memory available given the default gpu_mem configuration. This
makes that memory slice unavailable for DMA. And may cause nasty kernel
warnings if CMA happens to include it.

Change soc's dma-ranges to really reflect it's HW limitation, which is
being able to only DMA to the lower 1GB area.

Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

NOTE: I'd appreciate if someone from the RPi foundation commented on
this as it's something that I'll propose to be backported to their tree.

 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 5b61cd915f2b..d6a0e350b7b4 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -43,7 +43,7 @@ soc {
 			 <0x7c000000  0x0 0xfc000000  0x02000000>,
 			 <0x40000000  0x0 0xff800000  0x00800000>;
 		/* Emulate a contiguous 30-bit address range for DMA */
-		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
+		dma-ranges = <0xc0000000  0x0 0x00000000  0x40000000>;
 
 		/*
 		 * This node is the provider for the enable-method for
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
