Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D3DE2CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 05:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rBGLmEHoJOPPLqDvX1UkSHOjlzEdAV4SqWWPr7jBHsk=; b=UrlOU/KvCe3j+aesLfs77ity7p
	d2w84oXPCXEX9qsBIA0Bq8jUA4RnFg9hZGNaJX2Q6gUH09qOEw7drfXA+qHY8yahthj0sJ26e/PVt
	JsBjGB1r6ddbb0K3sc6smqUYzJJMbCPj+TzgBzdpjWxfAV4wAx5ZgOxA2zdwnK51y2yvQTg0vjFyN
	hGjSgW3S1CX5vpcNQbvyeYz5lPmKbj/I7IDHZnGfvmrWeS9eKw0wGPd+F6aukltYCILfnGGJbD01c
	1MqUm1a8NHSjnqZxZuGAoXn727pFNrfZaGm3gVW1W4LCrlBdRA+LmK5KUttZUo2z+eoXJfP90rjhN
	kLxHFndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOhv-0000lB-4s; Mon, 21 Oct 2019 03:50:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOh6-0000EN-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 03:49:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 373311A04BB;
 Mon, 21 Oct 2019 05:49:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C869A1A02C8;
 Mon, 21 Oct 2019 05:49:10 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 05021402E5;
 Mon, 21 Oct 2019 11:49:02 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v7 2/3] Documentation: dt: binding: fsl: Add 'little-endian'
 and update Chassis define
Date: Mon, 21 Oct 2019 11:49:26 +0800
Message-Id: <20191021034927.19300-2-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021034927.19300-1-ran.wang_1@nxp.com>
References: <20191021034927.19300-1-ran.wang_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_204920_619052_50AE46FF 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Li Biwen <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ran Wang <ran.wang_1@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default, QorIQ SoC's RCPM register block is Big Endian. But
there are some exceptions, such as LS1088A and LS2088A, are
Little Endian. So add this optional property to help identify
them.

Actually LS2021A and other Layerscapes won't totally follow Chassis
2.1, so separate them from powerpc SoC.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Change in v7:
	- None.

Change in v6:
	- None.

Change in v5:
	- Add 'Reviewed-by: Rob Herring <robh@kernel.org>' to commit message.
	- Rename property 'fsl,#rcpm-wakeup-cells' to '#fsl,rcpm-wakeup-cells'.
	please see https://lore.kernel.org/patchwork/patch/1101022/

Change in v4:
	- Adjust indectation of 'ls1021a, ls1012a, ls1043a, ls1046a'.

Change in v3:
	- None.

Change in v2:
	- None.

 Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
index e284e4e..5a33619 100644
--- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
+++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
@@ -5,7 +5,7 @@ and power management.
 
 Required properites:
   - reg : Offset and length of the register set of the RCPM block.
-  - fsl,#rcpm-wakeup-cells : The number of IPPDEXPCR register cells in the
+  - #fsl,rcpm-wakeup-cells : The number of IPPDEXPCR register cells in the
 	fsl,rcpm-wakeup property.
   - compatible : Must contain a chip-specific RCPM block compatible string
 	and (if applicable) may contain a chassis-version RCPM compatible
@@ -20,6 +20,7 @@ Required properites:
 	* "fsl,qoriq-rcpm-1.0": for chassis 1.0 rcpm
 	* "fsl,qoriq-rcpm-2.0": for chassis 2.0 rcpm
 	* "fsl,qoriq-rcpm-2.1": for chassis 2.1 rcpm
+	* "fsl,qoriq-rcpm-2.1+": for chassis 2.1+ rcpm
 
 All references to "1.0" and "2.0" refer to the QorIQ chassis version to
 which the chip complies.
@@ -27,14 +28,19 @@ Chassis Version		Example Chips
 ---------------		-------------------------------
 1.0				p4080, p5020, p5040, p2041, p3041
 2.0				t4240, b4860, b4420
-2.1				t1040, ls1021
+2.1				t1040,
+2.1+				ls1021a, ls1012a, ls1043a, ls1046a
+
+Optional properties:
+ - little-endian : RCPM register block is Little Endian. Without it RCPM
+   will be Big Endian (default case).
 
 Example:
 The RCPM node for T4240:
 	rcpm: global-utilities@e2000 {
 		compatible = "fsl,t4240-rcpm", "fsl,qoriq-rcpm-2.0";
 		reg = <0xe2000 0x1000>;
-		fsl,#rcpm-wakeup-cells = <2>;
+		#fsl,rcpm-wakeup-cells = <2>;
 	};
 
 * Freescale RCPM Wakeup Source Device Tree Bindings
@@ -44,7 +50,7 @@ can be used as a wakeup source.
 
   - fsl,rcpm-wakeup: Consists of a phandle to the rcpm node and the IPPDEXPCR
 	register cells. The number of IPPDEXPCR register cells is defined in
-	"fsl,#rcpm-wakeup-cells" in the rcpm node. The first register cell is
+	"#fsl,rcpm-wakeup-cells" in the rcpm node. The first register cell is
 	the bit mask that should be set in IPPDEXPCR0, and the second register
 	cell is for IPPDEXPCR1, and so on.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
