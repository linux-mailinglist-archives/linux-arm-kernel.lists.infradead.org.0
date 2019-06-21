Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21544EC46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ReqT9KcQwz5K1R7k0FJLRoFV9M4zSUJwhzGwRa0JkOM=; b=pypHjpPrGESrFNNgDiikabdevq
	9AzRd8Y6uE/Z634h7bGwKooEMtFv/SPM047xdTtZLo8EIyemfvqtdWcHa4RZD0bRVnNFGyjUu60db
	t5VgZxYD4jDO5MBumjWgiZIXKynpu6Brfvpd+IOUN0E8GO2LEm7Jzw+lpN44D3M63DMie2IgXOuEr
	10eVdJa1rq2I2XqztbcFCFYk6u5lcLPI/pvotip5pML0vLCyQAGLdmF99pOo2kRrNFsnIbTvBQIJq
	b5KrY4LL/6/4oSM7kmLop++mBcAXseWUqknvVxhVUB8U84bbWcPx+kFNGQMuEGiCNAFSfr36ibovB
	rA8Br/RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLdd-00046N-7P; Fri, 21 Jun 2019 15:39:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcw-0003kZ-Ax
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:02 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 001852009FD;
 Fri, 21 Jun 2019 17:38:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E39D8200071;
 Fri, 21 Jun 2019 17:38:56 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7482B20629;
 Fri, 21 Jun 2019 17:38:56 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 5/6] dt-bindings: net: Add DT bindings for Microsemi
 Felix Switch
Date: Fri, 21 Jun 2019 18:38:51 +0300
Message-Id: <1561131532-14860-6-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083858_535415_8F1C7356 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DT bindings for the Felix ethernet switch, consisting of the
VSC9959 switch core integrated as a PCIe endpoint device.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 .../devicetree/bindings/net/mscc-felix.txt    | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mscc-felix.txt

diff --git a/Documentation/devicetree/bindings/net/mscc-felix.txt b/Documentation/devicetree/bindings/net/mscc-felix.txt
new file mode 100644
index 000000000000..c91c63ba524c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mscc-felix.txt
@@ -0,0 +1,77 @@
+Microsemi Felix network Switch
+==============================
+
+The Felix switch device is the Microsemi VSC9959 gigabit ethernet
+switch core integrated as a PCIe endpoint device.
+
+Required properties:
+- compatible	: Should be "mscc,felix-switch"
+- reg		: Specifies PCIe Device Number and Function
+		  Number of the integrated endpoint device,
+		  according to parent node bindings.
+- ethernet-ports: A container of child nodes representing
+		  switch ports.
+
+"ethernet-ports" container has the following required properties:
+- #address-cells: Must be 1
+- #size-cells	: Must be 0
+
+A list of child nodes representing switch ports is expected.
+Each child port node must have the following mandatory property:
+- reg		: port id (address) in the switch (0..N-1)
+
+Port nodes may also contain the following optional standardised
+properties, described in corresponding binding documents:
+
+- phy-handle	: Phandle to a PHY on a MDIO bus. See
+		  Documentation/devicetree/bindings/net/ethernet.txt
+
+or,
+- fixed-link	: "fixed-link" node, for internal ports or external
+		  fixed-link connections. See
+		  Documentation/devicetree/bindings/net/fixed-link.txt
+
+Example:
+
+	switch@0,5 {
+		compatible = "mscc,felix-switch"
+		reg = <0x000500 0 0 0 0>;
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/* external ports */
+			switch_port0: port@0 {
+				reg = <0>;
+				phy-handle = <&phy0>;
+			};
+			switch_port1: port@1 {
+				reg = <1>;
+				phy-handle = <&phy1>;
+			};
+			switch_port2: port@2 {
+				reg = <2>;
+				phy-handle = <&phy2>;
+			};
+			switch_port3: port@3 {
+				reg = <3>;
+				phy-handle = <&phy3>;
+			};
+			/* internal to-cpu ports */
+			port@4 {
+				reg = <4>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+			port@5 {
+				reg = <5>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
