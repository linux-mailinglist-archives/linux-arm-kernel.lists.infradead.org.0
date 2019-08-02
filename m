Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6717F51D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxFDL8ii+k2a4vOJVjPF38NhX5zwdXCjnd+/2WPzV18=; b=HV9Zdy/WPvn+Bv
	4fP8AnBNSKaq4gFt+YSM9/gWmmeTTeDC8U3izOO9GcKVaN/njagYbeHvv8PovNse2hXgtyLG5fxcc
	ByY1tGjukbROQ+g4S51dbW2GOpe+dyo19DGu6e8vs1mMsu5a2/FGXzRJgP+0unFsPqWD5x+zIa7CV
	D6ykOQ8ZMF9CN5U3OgVrFHbuhiShalPXK8ZD/tHDvabiBR0LbVwnfpxsgBQ7IBC6jggQtej0CaMOk
	9XUYNClun2D9r6b9AU4r4wweqQKy6CP+EvIRKJmE5O5b46O+Dfex6HAFY96l47bIGETxdBkATNlQK
	kd0d3XUvdPqSsXedc5rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUtA-0001UC-KN; Fri, 02 Aug 2019 10:34:20 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htUsm-00012W-N8
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:33:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 392238053E;
 Fri,  2 Aug 2019 12:33:55 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id GTGZmojTwtNJ; Fri,  2 Aug 2019 12:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id CC0C3804BF;
 Fri,  2 Aug 2019 12:33:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2YN-mUj7Y7gi; Fri,  2 Aug 2019 12:33:37 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 5E57A8053C;
 Fri,  2 Aug 2019 12:33:36 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 4/6] ARM: dts: mmp2: add camera interfaces
Date: Fri,  2 Aug 2019 12:33:24 +0200
Message-Id: <20190802103326.531250-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190802103326.531250-1-lkundrak@v3.sk>
References: <20190802103326.531250-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_033356_903045_4616DDD1 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Supported by the mmp-camera driver.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp2.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 21432cb9143f7..68b5470773232 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -170,6 +170,28 @@
 				interrupts = <54>;
 				status = "disabled";
 			};
+
+			camera0: camera@d420a000 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a000 0x800>;
+				interrupts = <42>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC0>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
+
+			camera1: camera@d420a800 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a800 0x800>;
+				interrupts = <30>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC1>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
 		};
 
 		apb@d4000000 {	/* APB */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
