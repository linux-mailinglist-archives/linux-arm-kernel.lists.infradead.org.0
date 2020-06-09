Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28F51F39A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pY8IKSksnXFn5V7UtB32azWW3A6X8r4AiAqYceq3+Ko=; b=pILLirJ35GzR9I
	lF1OTfjMHASr9LfAUDLZXxrOlJN3y6NaLAmkyV7Ul2U4TT4oq7/1haxWHMf+z3tSl2G2PWz3Ei6Yf
	bHRvoiMa2gMW0vXyzKRm9SdI7KhPiEPu7MhRtQgvKwqw85j1JJq0PRQkOKHJnVl5FX7Ab9WwoFiI+
	bqW8txLcSkcMs7+L76xJpTMzdmz0ZP0p4cl7noIduE5WYAmi4r/bG+wiPhxwOWsMMm9lgW1LjHbMz
	no6TpIjEOW7wN4pZnuAmaBydCwhAjwFWNzQjf4r6rwPJguYl4FKHmFIY+w+tTAE9onc5EYxKwSn3H
	X4DdeYXwzzQ7LMwFf13Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicOA-0006Sf-2Y; Tue, 09 Jun 2020 11:25:54 +0000
Received: from mail-eopbgr60062.outbound.protection.outlook.com ([40.107.6.62]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicMH-0002U5-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:23:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YjmSV/Lya2LnxEvvsfEPOkAHGcJgey4Iwj2Vcr5nvOHEjqWcDxZm5OWVpY0q+EzR60ZEcGzjj1yI3Ktohw47XNCXpm3dpzVA0PVBSECmJQ96plEmOV/wkD+QcSrCHVL5f3trABwKc/UcBk3NSVkyi13KtGDMUniRCfKTDkwIVPxUqFbqdPrYszxdHD5FObNoURFmsi2Gh9uxak8dJZWYgGSlCO3+Int8ik0Qqg4KjM6nkChtkQ0WVf6L4Vp0z0izlZyzG6q1QAXwvxihtqdZQuknFpWvdvyB4QFUQGtK0yjPZ8gfveIiYKqOO/BrB1bX6fQRayUDKu092+M1CTxt6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb2iSjwpZHYsE3KCI9+2iTK60OIDs5FkpAvv2TiiRBk=;
 b=EMlik7tibEkS/KTskvIND0kSb6QxHTeCA4Wy3hiWJMhFb40sEw+DJM91nfoPHHVR2FRm/cL2UihjZrlwAJxjbq7ATkgM5otBlvGa0KDIvKt94dUbWmGzCLEc9KyCnBugSYjmwJjoSIVnafXNOzXsIqKo08/qb+JLaJvS4ro1jXCbM6tz27UHLBdwFEzqU2Sikwt6pdCRdqKgV3faDRVjkOVK/RnhU/3l/nXHqayLvBBMZRrMA4PdDGZH0wSKHsE+3pR3/FG+3Q8qkVcCaTOIsivCFm2l9PgcaPho8zlxIkjTcI1DSxiIowvzNluUa4xBf6Z5pFOkxG+RhYFTndNKVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb2iSjwpZHYsE3KCI9+2iTK60OIDs5FkpAvv2TiiRBk=;
 b=IljScxy/uAEVOnpCEEnrwEewpJMVD4RFROlAkv03nJWX5b4ILMgaQijgHbjQqct6zr68VX1KXDI4lT3wOuQgojqvxuNlchNL+RbRNpChvG5oQOZ0ZCWgFt2RInjhsEoKreZNXza+fqMBiCBBcoz/QrUEWeiBwsrKYCzsC1L29QY=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VE1PR04MB6622.eurprd04.prod.outlook.com (2603:10a6:803:121::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 11:23:52 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 11:23:52 +0000
From: Li Jun <jun.li@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH 6/6] dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3 glue
 bindings
Date: Tue,  9 Jun 2020 19:12:45 +0800
Message-Id: <1591701165-12872-7-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
References: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
X-ClientProxiedBy: SG2PR02CA0069.apcprd02.prod.outlook.com
 (2603:1096:4:54::33) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0069.apcprd02.prod.outlook.com (2603:1096:4:54::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Tue, 9 Jun 2020 11:23:49 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d8e4a52f-f952-48a7-1a59-08d80c6796c6
X-MS-TrafficTypeDiagnostic: VE1PR04MB6622:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB662213F2BD924CCCACFEE78C89820@VE1PR04MB6622.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 75IXlFsjAFA8GMKdQdW60e/3+0tP2Hr1TMjbh896dfjBrhiGoSJ35Z7Z8GZodU7GnB4hEZvYoNCZXcgNQizMCiMU4FV5Gl5ChSeDtJzoqUPmGZ9sUrEerZkyidG4zwKKUADIkcwvqmYVCpLXaLgfJVWcwScLN9ivbE4Z5DTGImIagbWQpZ+LaqJfxqRqtQjrULUWGCLTDn7XKmQI3NNMNT6RDRGFxcvJ3mtpwb5K6UZzOLBGtfitLQbiBmwdt3SzwY+wzTP5SB+0LhkjZwAS3O+6kc1xBrXiYrbNxlXhnrau0oTrqTdqxH1fBy5PjJojG2Vpo8Vl+UUlkJ5qLGeRrcpxwDiZGNcd7pjRfQxD3g70TYfTViNeJ+M4MB6qs8AqMESoLkKvHR8Pc6FtTkdPnr4EBC7kG6d6hyH6LvYlKgeg+2CfX/Lhmu43xwHZZj6ut2s03FnBuvn95daJGlsYylqIHsdi5oCE6Whr9mzwg0s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6528.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(26005)(186003)(8936002)(8676002)(16526019)(4326008)(83380400001)(86362001)(69590400007)(498600001)(5660300002)(66946007)(66556008)(6666004)(6486002)(2906002)(6506007)(36756003)(52116002)(966005)(2616005)(956004)(6512007)(66476007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 1jJfodwmo/x3L5t7kzK4I/qPsSkaiePyY/sTAAjsuXoumge8QfesHCi4iaeohaoyRkYCMhltsCSqkTTI714of106LU3s0FHSrstXVkW5GIdUUG73oj7DNNi1vkbjJKCdYm0WSRtsIUAFYxpPUjOBT3VKBPnsH5HlSB2jnMAWgax9HG4SRwj2iKLB+VZHm7cqhuiaKs01ZaNIhm6zYyzUineaYEDtc/C8eLswAcGTHQ/XGSs+1INP7ATRalqpsc7bu3BLu+CwMq+fxHEEqUumeZOtsS0ovQ152SPnH9XaMDvHE6yaK9yQo5+3utobnZaPGHN5WLc/h30H+6pbwUZj+9icD7uEkLat0eZLmWY2i7A/cPoSSRO2Ri9D5R84KoWRM0VZiGe4wXlNKVjQrxaqQLLv/1gUf/zz/HlklC4g+JyakZM7LZ5ACyNgQB6FjyHpMx9qo1s9tewyU7prw5fwREFEfF4kCkK2FOZlFv3msL0=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e4a52f-f952-48a7-1a59-08d80c6796c6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 11:23:52.5943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iPfPrZz/2vef+Hdxde735Yuk+5KomyZV8CyTT58aiIzgWNerkNea/4x5HZs7ceZz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_042357_373032_E7A969D2 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.62 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: peter.chen@nxp.com, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP imx8mp integrates 2 dwc3 3.30b IP and add some wakeup logic
to support low power mode, the glue layer is for this wakeup
functionality, which has a separated interrupt, can support
wakeup from U3 and connect events for host, and vbus wakeup for
device.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   | 87 ++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
new file mode 100644
index 0000000..823db058
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2020 NXP
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/fsl,imx8mp-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP iMX8MP Soc USB Controller
+
+maintainers:
+  - Li Jun <jun.li@nxp.com>
+
+properties:
+  compatible:
+    items:
+    - const: fsl,imx8mp-dwc3
+
+  reg:
+    maxItems: 1
+    description: Address and length of the register set for the wrapper of
+      dwc3 core on the SOC.
+
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+  interrupts:
+    maxItems: 1
+    description: The interrupt that is asserted when a wakeup event is
+      received.
+
+  clocks:
+    description:
+      A list of phandle and clock-specifier pairs for the clocks
+      listed in clock-names.
+    items:
+      - description: system hsio root clock.
+      - description: system bus AXI clock.
+      - description: suspend clock, used for wakeup logic.
+
+  clock-names:
+    items:
+      - const: hsio
+      - const: bus
+      - const: suspend
+
+# Required child node:
+
+  dwc3:
+    description: This is the node representing the DWC3 controller instance
+      Documentation/devicetree/bindings/usb/dwc3.txt
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb3_0: usb@32f10100 {
+      compatible = "fsl,imx8mp-dwc3";
+      reg = <0x32f10100 0x8>;
+      clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+               <&clk IMX8MP_CLK_HSIO_AXI_DIV>,
+               <&clk IMX8MP_CLK_USB_ROOT>;
+      clock-names = "hsio", "bus", "suspend";
+      assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI_SRC>;
+      assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+      assigned-clock-rates = <500000000>;
+      interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+      dwc3@38100000 {
+        compatible = "snps,dwc3";
+        reg = <0x38100000 0x10000>;
+        interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+        phys = <&usb3_phy0>, <&usb3_phy0>;
+        phy-names = "usb2-phy", "usb3-phy";
+      };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
