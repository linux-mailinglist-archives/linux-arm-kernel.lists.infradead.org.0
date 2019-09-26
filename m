Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35807BFBF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 01:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjdP9LiBQTwZjoao6S9h3pA2fnnicDN8jISc+3X/Ats=; b=Whz1WIs6ZVRpPt
	hNJFgmLBL0HShBXkceZMwclah5kqcdNbflYEkr5OYFH7RsvttPAIuJ8qMi3Fgtr7Vr6BxSXSy1ong
	K4LH/hFdQ3eRLt3skM2XikK86lofaaRaSBQBQVaptV5utOM11T9nbF3kDvs8kD0q187w5kFYGgEVC
	i2Jctn/j8hJs4T2iwfqa8a+6GbaRv1FtUA9MxE7ymDCkXdtZEtcamyE7sRmHTwXNv+dzUejSKhRCS
	Y/QnYc7NOkvtIgeTFR4/G1qXVOyJ4Z+fHbVw1d9h8d7PIUvTOuxVvOr8nRw5vZb32rIEY3QABdHpC
	h8lZHJwNMJhbZhiN3dyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdBt-0000n9-Ci; Thu, 26 Sep 2019 23:28:53 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdBf-0000ig-1E
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 23:28:40 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C27EA891A9;
 Fri, 27 Sep 2019 11:28:26 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569540506;
 bh=rAUvLPAfWgWX2H5eqfh6QWkokkEOuv0sRFKi68bW+K8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JB36U0KSnpnlx8YF1jJPhEhP5AhZnmpoIwR40mzFa78b871sZeSFwlmSCNCuql6LC
 w1A2JyKaE6YRCHux7qC4IB8h/oVFu300iBiXhLPke1KMzHW2PtnomqzGlsvDcKpcrw
 R7y8hed96I1Kv0qEKM73z2AHAaA85Rb5vcIz5/7++CO53G3R7592ZMr+mH9AFNAaIT
 58Ug022CDVphFs2fKo6RZSSQf43phwM3FQa242V1y6nQaTTUd7h4dZwhZ0pMXwlD+1
 3BuRXmXwm7IpY4ZUz3KCZKhwQ8Rp79OlWfF9aHgT6ueOAO4ZkzJSWH6RTyTiBG8IF6
 4cpsE+DAAvW7Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d8d49980002>; Fri, 27 Sep 2019 11:28:26 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 4D56B13EF59;
 Fri, 27 Sep 2019 11:28:28 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 9641428003E; Fri, 27 Sep 2019 11:28:24 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jason@lakedaemon.net, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/3] ARM: dts: mvebu: add sdram controller node to Armada-38x
Date: Fri, 27 Sep 2019 11:28:19 +1200
Message-Id: <20190926232820.27676-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
References: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_162839_245053_0CE1B3C4 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Armada-38x uses an SDRAM controller that is compatible with the
Armada-XP. The key difference is the width of the bus (XP is 64/32, 38x
is 32/16). The SDRAM controller registers are the same between the two
SoCs.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/armada-38x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
index 3f4bb44d85f0..e038abc0c6b4 100644
--- a/arch/arm/boot/dts/armada-38x.dtsi
+++ b/arch/arm/boot/dts/armada-38x.dtsi
@@ -103,6 +103,11 @@
 			#size-cells = <1>;
 			ranges = <0 MBUS_ID(0xf0, 0x01) 0 0x100000>;
 
+			sdramc: sdramc@1400 {
+				compatible = "marvell,armada-xp-sdram-controller";
+				reg = <0x1400 0x500>;
+			};
+
 			L2: cache-controller@8000 {
 				compatible = "arm,pl310-cache";
 				reg = <0x8000 0x1000>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
