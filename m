Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEBE9E4E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO8EUny4cvxy//S28/mCqsIndm861V3TFt/y6C+rjFg=; b=lfm/QNCeVLP22z
	EuUQBXEyw9p+b4TGJIm2FXFJJlklsZbUs8upL2NsUMrZNrFC8s553JGQfbCKQRDRfX0nVD72s1R0D
	bGUNiIzZXfmJTtX9QbmHPkMZa4uZKMsg0iD5gU5UNJm9bE5gmEWhKGQmJLYQGGjHzD7vWMsyu5J9h
	Du/P2wKwhwFdqM6OUUC6dq7OzvyNTQ0YNsArB7WnIHq7hRTiNOCraLShHHBdTrHmqmZeDLumFRpyS
	VRHU2DQ92yrFxb0jCW4kEt/inXkLD97u2W+QHJlFeHzFYofX4Ep2hOKelXL0rdPUZ9nBXtl1b4dWX
	Ix9DbVcKba5J+gdCdZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y9L-0006UM-5y; Tue, 27 Aug 2019 09:52:27 +0000
Received: from mail-eopbgr00072.outbound.protection.outlook.com ([40.107.0.72]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y8s-0006Hy-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=euInv8BvxCEECeksA/t8JfDC4+ITX8PKfwYOnPMAnEiJVTcdLc+jMZD23BqBmgeLswYenwGIPGrIFxT+E8sIZCZ1he4zB701/KRcBDHBh1Lj1QLFvqmPh1RMma6mTKAsd9oe1OeMbBbGoboD31xscjLR+HZtx0c9zA9At17vcoao+NZzlxL3sZGM//VlvwbdHtie75ZM1ueNyqfadR4RlXOv9RuuEyRvMhAuYvsmMNCqCugm+pqDOIfgkRvjwzsc6dyZrmSiaXS06wI8evfN04qRGrb8SC9R4P+q1CzPUIdH7pxh9yezT358SmjljDmxcJohLvf2a6b/exPwzXQtAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RSGU4qztqm9HXhLHcaMNJmMn/RwSOd08Dpk/3kRb7E=;
 b=B3Tdc1Sl6K2V3yaYbFYbbS0oOlMX4z4bCGJXGOzAZ4jiIH2FUEVzmTVI13B8IixyUBSt4vYYAQD+V0atADk3xe5pFL6A8xzqPoxYOwxKMauDUflGcEapklWX6iqttqSNMJuv8O07G+DJznNcmVIUlqSAHNOq5O0jnPYBKldLFuJau1c7M9f8JpbUT7j2DqhkjAH2+nBw91MR5XRWDdXQ+unO24iZFDGgY1o6ctdcUQN4CN1n5Bkz2JawSSyTMIfx8vNYrOlv5XpgmVAx/gMV/9uZpy2Ur7IGeSYgVwSU/32FlYhZVJlglJW9XGSAmvFi+HZy/OJ3CobUr9pGTxxnXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RSGU4qztqm9HXhLHcaMNJmMn/RwSOd08Dpk/3kRb7E=;
 b=WJ0sKj+60a8I5YG3vOpJRDgXNyUUPc9OZeiJSJ+cdY0/9GiLKLLtgTrpiU6xfkaVuhPhuC+3u1mdJ4HTKvksAv60EGh0wevpgazg5y8Bh4ntwFONsAHotiKh1SC9jNemAQ0Sdtda/lIBSXbXQeolgxqIzxY04G8SkQf+H+mERAI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4228.eurprd04.prod.outlook.com (52.134.126.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 09:51:55 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.022; Tue, 27 Aug 2019
 09:51:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXL0PhcurV8c5rUCEm7J1Y5VZmg==
Date: Tue, 27 Aug 2019 09:51:55 +0000
Message-ID: <1566942646-18015-2-git-send-email-peng.fan@nxp.com>
References: <1566942646-18015-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566942646-18015-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59cbe093-ddae-4f7a-e202-08d72ad431a0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4228; 
x-ms-traffictypediagnostic: AM0PR04MB4228:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4228031A6DEB618327576F2188A00@AM0PR04MB4228.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(366004)(189003)(199004)(110136005)(54906003)(36756003)(2616005)(305945005)(476003)(2501003)(15650500001)(2420400007)(486006)(6436002)(316002)(3846002)(26005)(7110500001)(7736002)(386003)(14454004)(66066001)(5660300002)(53936002)(50226002)(6486002)(446003)(186003)(52116002)(76176011)(11346002)(102836004)(6116002)(6306002)(86362001)(25786009)(2201001)(6512007)(478600001)(8936002)(256004)(14444005)(71200400001)(8676002)(53376002)(64756008)(66446008)(81156014)(66946007)(66476007)(71190400001)(81166006)(2906002)(66556008)(6506007)(4326008)(966005)(99286004)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4228;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a1z3bv9/gVAgMAypaA1yqYih6XPUBqg1Lx7m9CCpcTwXogRgagYHfkgTmn6EMyO5swAKlZEf41fwlqRqCpfds5hwFVe8D6AFXbtIexAuu8qqzPuFY98EMs3QNttMBuwxrO4noH0jjGegQEAUJx5SG+Bh2u/mGSj7w/ucvNgpZCzm0D/67ZyIDTsF/ONaHKwirG8B3F86WfUBIcmd3CHsjda4aKGRVmGUuXU5ob+dRljMDAxI/kBjJhGMZj4pmse4vEosZUwbEoMmgOBCEl3Bw5/oIgz4aT+PdWnQU3Sve6QgVy20TdZjdw7j0CnMw/PdJqE4iN6mHevm8zNzljQPHRbhTxOLiKKgRjJj1yToPGuHvHxSoAA/mFK7keITHT4RvC4fEb1aaZtdRRVLOfK3ke+/HzeS2NufvYj00tfcdmE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59cbe093-ddae-4f7a-e202-08d72ad431a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 09:51:55.1764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svXh8gdzKVnEDFNo3WFJIaauam+JnUrt29gIT27HQesqY8Zv2iuy0fz2jYBytM/T2wcM+sqmnMUeC2Ch7LFS5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025158_719518_52D2E9D7 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
actions in software layers running in the EL2 or EL3 exception levels.
The term "ARM" here relates to the SMC instruction as part of the ARM
instruction set, not as a standard endorsed by ARM Ltd.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 .../devicetree/bindings/mailbox/arm-smc.yaml       | 126 +++++++++++++++++++++
 1 file changed, 126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
new file mode 100644
index 000000000000..ae677e0c0910
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/arm-smc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM SMC Mailbox Interface
+
+maintainers:
+  - Peng Fan <peng.fan@nxp.com>
+
+description: |
+  This mailbox uses the ARM smc (secure monitor call) and hvc (hypervisor
+  call) instruction to trigger a mailbox-connected activity in firmware,
+  executing on the very same core as the caller. By nature this operation
+  is synchronous and this mailbox provides no way for asynchronous messages
+  to be delivered the other way round, from firmware to the OS, but
+  asynchronous notification could also be supported. However the value of
+  r0/w0/x0 the firmware returns after the smc call is delivered as a received
+  message to the mailbox framework, so a synchronous communication can be
+  established, for a asynchronous notification, no value will be returned.
+  The exact meaning of both the action the mailbox triggers as well as the
+  return value is defined by their users and is not subject to this binding.
+
+  One use case of this mailbox is the SCMI interface, which uses shared memory
+  to transfer commands and parameters, and a mailbox to trigger a function
+  call. This allows SoCs without a separate management processor (or when
+  such a processor is not available or used) to use this standardized
+  interface anyway.
+
+  This binding describes no hardware, but establishes a firmware interface.
+  Upon receiving an SMC using one of the described SMC function identifiers,
+  the firmware is expected to trigger some mailbox connected functionality.
+  The communication follows the ARM SMC calling convention.
+  Firmware expects an SMC function identifier in r0 or w0. The supported
+  identifiers are passed from consumers, or listed in the the arm,func-ids
+  properties as described below. The firmware can return one value in
+  the first SMC result register, it is expected to be an error value,
+  which shall be propagated to the mailbox client.
+
+  Any core which supports the SMC or HVC instruction can be used, as long as
+  a firmware component running in EL3 or EL2 is handling these calls.
+
+properties:
+  compatible:
+    const: arm,smc-mbox
+
+  "#mbox-cells":
+    const: 1
+
+  arm,num-chans:
+    description: The number of channels supported.
+    items:
+     minimum: 1
+     maximum: 4096 # Should be enough?
+
+  method:
+    items:
+      - enum:
+          - smc
+          - hvc
+
+  transports:
+    items:
+      - enum:
+          - mem
+          - reg
+
+  arm,func-ids:
+    description: |
+      An array of 32-bit values specifying the function IDs used by each
+      mailbox channel. Those function IDs follow the ARM SMC calling
+      convention standard [1].
+
+      There is one identifier per channel and the number of supported
+      channels is determined by the length of this array.
+    minItems: 0
+    maxItems: 4096   # Should be enough?
+
+required:
+  - compatible
+  - "#mbox-cells"
+  - arm,num-chans
+  - transports
+  - method
+
+examples:
+  - |
+    sram@910000 {
+      compatible = "mmio-sram";
+      reg = <0x0 0x93f000 0x0 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0 0x0 0x93f000 0x1000>;
+
+        cpu_scp_lpri: scp-shmem@0 {
+          compatible = "arm,scmi-shmem";
+          reg = <0x0 0x200>;
+        };
+
+        cpu_scp_hpri: scp-shmem@200 {
+          compatible = "arm,scmi-shmem";
+          reg = <0x200 0x200>;
+        };
+    };
+
+    firmware {
+      smc_mbox: mailbox {
+        #mbox-cells = <1>;
+        compatible = "arm,smc-mbox";
+        method = "smc";
+        arm,num-chans = <0x2>;
+        transports = "mem";
+        /* Optional */
+        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
+      };
+
+      scmi {
+        compatible = "arm,scmi";
+        mboxes = <&mailbox 0 &mailbox 1>;
+        mbox-names = "tx", "rx";
+        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+      };
+    };
+
+...
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
