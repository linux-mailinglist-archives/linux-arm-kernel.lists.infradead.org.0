Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D757213262E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C8/IjYw9r+lC+90os3SoX1U5oh5ezEGyesS02RXlwu4=; b=C1k
	tcYMuRFhwsvbvH/CpngwM2+GOrSLtCCk4FEN66aaCguGUbjsXI0ffDRE63Z8GQLCzXr7YYVywEShx
	IKKdP+KU6Zn0cORWCqTlH9l2gbMC/EIcOyYaZ4LwndAoovK3aWCIIQZZHx5f2bky+wwYHwWMtAQrt
	HsTRRckHhPXLWZvY/6WVoeHn5mXK6bLbZ3w9qo2WjHYX2Ltbbe6mmW9x06XXnxJ0JXfU6jI8qOEAC
	8G1RLwiM9FEOcifF2YJG28lrKCOyWNQ+2oJ0mPykAT/RiYg9Pk4hzieEMfYqzCyehvbXzta/HbkHu
	RnBLDN6c5Dw+O/5BDr7GpD6C67TkKjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionz7-0004UH-Qk; Tue, 07 Jan 2020 12:29:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionz0-0004TZ-OK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:29:16 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A809D2072A;
 Tue,  7 Jan 2020 12:29:13 +0000 (UTC)
From: Shawn Guo <shawn.guo@linaro.org>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: [PATCH] arm64: dts: hi3798cv200: correct PCIe 'bus-range' setting
Date: Tue,  7 Jan 2020 20:29:08 +0800
Message-Id: <20200107122908.18025-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_042914_805853_3A3F6180 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PCIe 'bus-range' setting is incorrect and causing the following
message during boot.

pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])

Correct it to get rid of the message.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
index 0a30aaae6bf2..4d1a3d1fc31c 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -569,7 +569,7 @@
 			#address-cells = <3>;
 			#size-cells = <2>;
 			device_type = "pci";
-			bus-range = <0 15>;
+			bus-range = <0x00 0xff>;
 			num-lanes = <1>;
 			ranges = <0x81000000 0x0 0x00000000 0x4f00000 0x0 0x100000
 				  0x82000000 0x0 0x3000000 0x3000000 0x0 0x01f00000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
