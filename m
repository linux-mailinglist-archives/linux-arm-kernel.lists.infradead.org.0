Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104ACBADEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 08:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQTe/QkQ6CkT2nCTGSyiEyD/rkL9ze2F5Ua6pxo3Xa0=; b=Qr3hf9RXqpt1zx
	1D5r7jV8o9tMHvgyzBYnU/aZHm6P1tsJKAGoK+URyg+KW4eMpM2RaUvMxziXtwcQJz2T+/I0T6U8T
	TY3VZ/G4A9AmpkyAXPqEmPb8tqODt1n0KbGe5uEP7rIqfCxyAuQvQbhT2sKk7ZCjS8UlLF3Pbp9J/
	rf7Nw/P8YWuLhIpxr1wruMR6CPPEC1+0IuM9b9bD6zfjUlVCna5prQShT3KmIzg00/Lpl+Qy07SDa
	6v0CZmMVs5ppAtgTYIzdZ34CcFp48geXirdZ/M93W3hWtIimknmZcS6/naCK+6U5zj4Ewn9eKy5AU
	ONPYexvorvQDAQCr/tZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCHzJ-0006Q2-6a; Mon, 23 Sep 2019 06:38:21 +0000
Received: from mail-ve1eur02on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::610]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHy6-000685-Aw
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 06:37:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvjAWa0ZUVhuPAwPJH1hbwieFdJe+SedWH8hXM3WY5Gkw/qLS0+/2h0o5hQLGQw4spm5bo+kDp/za3+poi9+bOBazcjXHjdFeU1zedsbWcz0SpI1ftE4U2S0VDQm6itLrOsu3AOYfu7mY7XWdQJRyJdjpjsQQHWfC18pNnXR/TmGTlMc0Q4spZS1j3pWNfFuKiTeg5NDTCOlBhxhmnViFeVk+GECjW2u+o2dkXoy7rN4VE+rGevkhoEZLV8rGEPXDI+caH3GzjhiZa8W9McPz/Le++qz1z7MqFj9XUBfp/mSfGRRQFwhKoGMLVAPlZcD7Sc5GN2fBJD+3UtBzFdhFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZEmrTrLvcHhk4Rwl/9jaIFU1TZCoQCs1/2nesl5Lhs=;
 b=ErEcqTtzGBoa3CtopA1c/i+rLTdH+hDOMTzeavfqDhdp/EawwRqBEjoxcf4X6/rQCP1E3Jd2i00pEzd0Zg+RxMZuB9Esn+s8gVDnYtrd+M23Gf74+pIbgweNVG9TeFBTlfSvvIXD0ysPu8TcESAygpXkFWNrQO2v0ekDGCLOCdPK1tFryJUHaS/VrN5+3lY7u8xaWbKVgy0K0yZZvAW6fhET6IH9q+s85bBa5YsTfv8tUiu5cjDTK5e7U/oIdpnFeCNU3wRW+rWvbL8wXuBAI8kDipCnEvTyVR+EspnzfewmXQmbJIOnnDR62RTxzwmBTnb/hiaOt4FR3iZkoyz/bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZEmrTrLvcHhk4Rwl/9jaIFU1TZCoQCs1/2nesl5Lhs=;
 b=eKr5c6Oz8mXTSyLe/rPILle3jjMvi9ePNa4csrARXHfV5fhRaubY/jeGgUNCMyqSaIzGfRBZTDyy4Z5mrQVkMpdZgIVBu+gzefVEGn+aGCuVhws8k6GOUgsxMjXnVbHfHplhgeaBlBbba8k8F4zpCzN9uK/TipvdPEEH3jrfFNc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4449.eurprd04.prod.outlook.com (52.135.148.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Mon, 23 Sep 2019 06:37:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 06:37:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V7 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V7 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVcdlQHZZUGWoiukCCEZMk/7qClA==
Date: Mon, 23 Sep 2019 06:37:04 +0000
Message-ID: <1569220514-27903-2-git-send-email-peng.fan@nxp.com>
References: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0009.apcprd03.prod.outlook.com
 (2603:1096:203:2e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7793165-2abd-49b0-48b9-08d73ff0726a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4449; 
x-ms-traffictypediagnostic: AM0PR04MB4449:|AM0PR04MB4449:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4449E16913CB88286D9F451188850@AM0PR04MB4449.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(2501003)(2201001)(305945005)(7736002)(54906003)(66066001)(64756008)(110136005)(66556008)(66476007)(316002)(66446008)(6306002)(71200400001)(6116002)(4326008)(71190400001)(86362001)(256004)(66946007)(6512007)(50226002)(8936002)(7110500001)(99286004)(52116002)(25786009)(76176011)(6436002)(26005)(3846002)(36756003)(2420400007)(8676002)(2906002)(11346002)(81166006)(81156014)(186003)(15650500001)(102836004)(446003)(44832011)(486006)(966005)(5660300002)(478600001)(6486002)(6506007)(386003)(476003)(2616005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4449;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jbo9zsu9ZX9xlJWaO9hLBVe7tRf4mQF0vlPUEB0NUISeYpISvkdOEs4n9+WMsB3t/7q8hSZk2QTrDAmPDZCwT4u/fBidlObQqElV5OYziCVRPywraVCja/AAc577uZ7I7fLjCkDedvNooeIHbgOrdgyPo/lFF0K03izlWa7YPsOWC/9AXfhIZWdyjcJi2+0sQt7VRYs2KAvDl1fFoCDa0NMHkYwT6xEQ8KKX5DxlyDI5iqYVs5eUb7PsnZMAwzNfVVPwXutyGMIWoApcUvsuyg8PTRx1VuiQ/e4dXMhcgLe4KFcbHtEPvuCvzaQ0gCfGFgv1XNW8JU/1UjglxuZO2P+fWAIlh0iHJJcaifHpIge3M21uY9uQsjKpI56Ut8cpe3TEkHVW8VTSiCNT6tBGrGyd2D7bQQhWBGHQdVx+Tew=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7793165-2abd-49b0-48b9-08d73ff0726a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 06:37:04.5000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90OakBBbkpAOui4zs/t/FA22behxiFUMCnoSBHJrqZUI59cqryOPxQfo0HG2gSAZa0FcdaHbJHaRWPbMWs+jbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4449
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_233706_376532_6791B4BB 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.3 FORGED_SPF_HELO        No description available.
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
 .../devicetree/bindings/mailbox/arm-smc.yaml       | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
new file mode 100644
index 000000000000..8764ad2726b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
@@ -0,0 +1,95 @@
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
+  This mailbox uses the ARM smc (secure monitor call) or hvc (hypervisor
+  call) instruction to trigger a mailbox-connected activity in firmware,
+  executing on the very same core as the caller. The value of r0/w0/x0
+  the firmware returns after the smc call is delivered as a received
+  message to the mailbox framework, so synchronous communication can be
+  established. The exact meaning of the action the mailbox triggers as
+  well as the return value is defined by their users and is not subject
+  to this binding.
+
+  One example use case of this mailbox is the SCMI interface, which uses
+  shared memory to transfer commands and parameters, and a mailbox to
+  trigger a function call. This allows SoCs without a separate management
+  processor (or when such a processor is not available or used) to use
+  this standardized interface anyway.
+
+  This binding describes no hardware, but establishes a firmware interface.
+  Upon receiving an SMC using the described SMC function identifier, the
+  firmware is expected to trigger some mailbox connected functionality.
+  The communication follows the ARM SMC calling convention.
+  Firmware expects an SMC function identifier in r0 or w0. The supported
+  identifier are passed from consumers, or listed in the the arm,func-id
+  property as described below. The firmware can return one value in
+  the first SMC result register, it is expected to be an error value,
+  which shall be propagated to the mailbox client.
+
+  Any core which supports the SMC or HVC instruction can be used, as long
+  as a firmware component running in EL3 or EL2 is handling these calls.
+
+properties:
+  compatible:
+    oneOf:
+      - description:
+          For implementations using ARM SMC instruction.
+        const: arm,smc-mbox
+
+      - description:
+          For implementations using ARM HVC instruction.
+        const: arm,hvc-mbox
+
+  "#mbox-cells":
+    const: 0
+
+  arm,func-id:
+    description: |
+      An single 32-bit value specifying the function ID used by the mailbox.
+      The function ID follows the ARM SMC calling convention standard.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - "#mbox-cells"
+
+examples:
+  - |
+    sram@93f000 {
+      compatible = "mmio-sram";
+      reg = <0x0 0x93f000 0x0 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0x0 0x93f000 0x1000>;
+
+      cpu_scp_lpri: scp-shmem@0 {
+        compatible = "arm,scmi-shmem";
+        reg = <0x0 0x200>;
+      };
+    };
+
+    smc_tx_mbox: tx_mbox {
+      #mbox-cells = <0>;
+      compatible = "arm,smc-mbox";
+      arm,func-id = <0xc20000fe>;
+    };
+
+    firmware {
+      scmi {
+        compatible = "arm,scmi";
+        mboxes = <&smc_tx_mbox>;
+        mbox-names = "tx";
+        shmem = <&cpu_scp_lpri>;
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
