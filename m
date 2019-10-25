Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6190FE4240
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 06:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cikx6ln9AdTJ3x2dxUmzHTZv+L/YhLS8qRXjCPgBvl0=; b=hUTPCfkNC5RL2Z
	pNeSG56goJ/xC09SUNxm7tQxEZ1JaN4OAzKZM+wf8l+9uIaD1qC9MIMcDg3GEqtjWfM6+PQGg0BUw
	sxq1mstUAIKTulWUDq8VQFvLE3o02lKwDu1a4uX7ISQvoZiOF/tORAKIOEEcepDcWgReSX33TdtJQ
	3aCfiW+m9krMLKoaB27rXof17ae/paZhY3YZH2/ihg0aAywjvLq703vtrMncwR6FVv4cFHkz2pq8N
	ruNYAMRJCP7g2loc2N0LTIdjXHbN2HTYu0uEIb3/5QutR4peEvxcveRJJkqx4OLKICPEbjzECdyy2
	vhnvpWj/i2jj6As9ojGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqmj-0001rB-Bz; Fri, 25 Oct 2019 04:01:09 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqmX-0001p3-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 04:00:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 01FB9891AB;
 Fri, 25 Oct 2019 17:00:46 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571976046;
 bh=vxyX8oV8LDZHeHypVqKDTFk3B/PkkdVWLm2WW9YuFGo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=tWuVPeEj3eXulN1GFnKsZJz5Ec5giL14Rf44NwS4NVXy7eqaOu301MXJ2WSf7DJZY
 breWmX6LJRPaDNURvRULvH3Y61xlY1tgWQms/OFxms2RNv6aEozY0EMRVoyewovy5J
 IW2Yi/drPFyQytysW7k1NtFxMAyKdaq8yYK7f3lFd5AOPoWU7XF1uuFG++53JcuhCt
 u1oJA2Mfgvt4mbCRi7XGG5C8Pcr8N2BvgLrmQaBdM3hoXNcEGt+tsYjU2P/B4eAo4d
 4ybRe2PtQlcGRdC5iurGe4lEu8GG2YkbsHd7KtJUKrvakgqgmvIZ8VK+ZLMZtX3Obm
 J+/P3bl/rCJjg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db2736d0002>; Fri, 25 Oct 2019 17:00:45 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id AB52213EEEB;
 Fri, 25 Oct 2019 17:00:49 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id C073028005C; Fri, 25 Oct 2019 17:00:45 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linus.walleij@linaro.org
Subject: [PATCH 2/2] ARM: dts: NSP: avoid unnecessary probe deferrals
Date: Fri, 25 Oct 2019 17:00:41 +1300
Message-Id: <20191025040041.6210-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
References: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_210057_674145_39679C5B 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pinctrl node is used by the gpioa node. Which may have more
descendants at a board level. If the pinctrl node isn't probed first the
gpio is deferred and anything that needs a gpio pin on that chip is also
deferred.

Normally we and nodes in the device tree to be listed in their natural
memory mapped address order but putting the pinctrl node first avoids
the deferral of numerous devices so make an exception in this case.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/bcm-nsp.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index da6d70f09ef1..dd7a65743c08 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -172,6 +172,13 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		pinctrl: pinctrl@3f1c0 {
+			compatible = "brcm,nsp-pinmux";
+			reg = <0x3f1c0 0x04>,
+			      <0x30028 0x04>,
+			      <0x3f408 0x04>;
+		};
+
 		gpioa: gpio@20 {
 			compatible = "brcm,nsp-gpio-a";
 			reg = <0x0020 0x70>,
@@ -458,13 +465,6 @@
 					     "sata2";
 		};
 
-		pinctrl: pinctrl@3f1c0 {
-			compatible = "brcm,nsp-pinmux";
-			reg = <0x3f1c0 0x04>,
-			      <0x30028 0x04>,
-			      <0x3f408 0x04>;
-		};
-
 		thermal: thermal@3f2c0 {
 			compatible = "brcm,ns-thermal";
 			reg = <0x3f2c0 0x10>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
