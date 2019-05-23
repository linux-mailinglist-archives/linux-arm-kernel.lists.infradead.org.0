Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9E4275C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 07:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJXkmvoAdqdK/Jze68PBH/rWp5RJfNMVTtnRHVT9ZQs=; b=lguYD4HNWy8gs9
	+eA9Mv6rVfWMp/xhiak+I2RRWMCAP/cm36YnNUoJBGG/GDOXceVnXRVhB5+NwHtEonNKvlKIPTufC
	DIgE3ucKeJeLa/eT9qLTZfUNc3OiPL1Fgv16+mMkzDQEiDss6S5l5lx6LDlUs9uDumJghyUe8IMzK
	/QShoJz7GjUgJ6Lbfr83nNVuVt46bbju8PG2U4xcxkkSUTSoTb99DE5uisa4VQycgJfgtImv+kLm3
	of0URWVAsglEPJ6e+9+HlW2ebdm46q7o9ASujxwrv6eVPH4TcdVUr5/Mk6XWfkHv3KNIMxjRGKIOi
	LreeDXo+yy1Pid8xGqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgdO-0007Dx-9M; Thu, 23 May 2019 05:51:22 +0000
Received: from mail-eopbgr10086.outbound.protection.outlook.com ([40.107.1.86]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgd5-00070E-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 05:51:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtKNTwaKLzob0itOvH8iWjYzWGHKZZWtULJ1yn3w2II=;
 b=s8iIeKRx+MBs86dEV1LMbKaBYiwOwHFQcyfjhstPHEJ5j0DNqf+YfqE/lDEqiQPoB0fQgVtoG9TYUTfIDyhyEtFVfbiBIKOhhJdqBZbOJkpIDXZnXhCM/F4F7SaZMb6kAsfAiIUhZzLtZKTzAdXaA3cA9j6fgRr2Qs+sbyqMLAU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3956.eurprd04.prod.outlook.com (52.134.93.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 05:50:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 05:50:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>
Subject: [PATCH 1/2] DT: mailbox: add binding doc for the ARM SMC mailbox
Thread-Topic: [PATCH 1/2] DT: mailbox: add binding doc for the ARM SMC mailbox
Thread-Index: AQHVESt+5fp+4ZxwMEmNHJCtGp/VNQ==
Date: Thu, 23 May 2019 05:50:58 +0000
Message-ID: <20190523060437.11059-2-peng.fan@nxp.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
In-Reply-To: <20190523060437.11059-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0040.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecf51b94-0f2d-4601-2daf-08d6df42a0e7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3956; 
x-ms-traffictypediagnostic: AM0PR04MB3956:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB395615967ED4EC99223559F088010@AM0PR04MB3956.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(346002)(396003)(366004)(199004)(189003)(2201001)(86362001)(6512007)(7110500001)(256004)(6436002)(6306002)(44832011)(486006)(2501003)(2906002)(2616005)(476003)(6116002)(3846002)(81166006)(8676002)(25786009)(6486002)(305945005)(81156014)(8936002)(50226002)(2420400007)(4326008)(53936002)(11346002)(15650500001)(7736002)(316002)(446003)(186003)(26005)(14454004)(66066001)(68736007)(1076003)(36756003)(71200400001)(71190400001)(102836004)(5660300002)(347745004)(386003)(54906003)(110136005)(76176011)(6506007)(99286004)(66556008)(66446008)(66476007)(7416002)(66946007)(478600001)(73956011)(52116002)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3956;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JXL3dIoOZdZqNPGrNhAq5vYhmav5WqYMdZ73VFtEXIb+gs1vjXXBmQh4H1LDjWSp1hSCiT4IvIegnoKGYQ7CTmbOrHkIalsRGV5O+fGJZTBr2QjCmsibR8SYut4f5Jb8IA66radeYBcGMv15DKVmDBgqEm/lRHZQ7aN64CGA+cA+RnaO8kMq5cAV5zQWqoUOPUWkK6KoflFPlLZs2U6rHEEUFIryup3QX2GZj2TLkDTZaQDDjhVwrQl0ZTDA2nZcnGrbravQs7NOgP7uCK8ZUTiO3z3bho93/iLPbvVmsP8GzLD05lehLe9r1btRIye7IGpuJyeZqmLTbavcFwRYddPQt2KOz/6EVP5CBCIptqb/deORpcmui+WT1VE+QQtvTDOatxww+ZCcIlUOg8NAGVyBEvAKU6OL1MtRIdxAkyY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecf51b94-0f2d-4601-2daf-08d6df42a0e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 05:50:58.3462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_225103_266801_A9EA8BFC 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARM SMC mailbox binding describes a firmware interface to trigger
actions in software layers running in the EL2 or EL3 exception levels.
The term "ARM" here relates to the SMC instruction as part of the ARM
instruction set, not as a standard endorsed by ARM Ltd.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V1:
arm,func-ids is still kept as an optional property, because there is no
defined SMC funciton id passed from SCMI. So in my test, I still use
arm,func-ids for ARM SIP service.

 .../devicetree/bindings/mailbox/arm-smc.txt        | 96 ++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
new file mode 100644
index 000000000000..12fc5997933d
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
@@ -0,0 +1,96 @@
+ARM SMC Mailbox Interface
+=========================
+
+This mailbox uses the ARM smc (secure monitor call) instruction to
+trigger a mailbox-connected activity in firmware, executing on the very same
+core as the caller. By nature this operation is synchronous and this
+mailbox provides no way for asynchronous messages to be delivered the other
+way round, from firmware to the OS. However the value of r0/w0/x0 the firmware
+returns after the smc call is delivered as a received message to the
+mailbox framework, so a synchronous communication can be established.
+The exact meaning of both the action the mailbox triggers as well as the
+return value is defined by their users and is not subject to this binding.
+
+One use case of this mailbox is the SCMI interface, which uses shared memory
+to transfer commands and parameters, and a mailbox to trigger a function
+call. This allows SoCs without a separate management processor (or
+when such a processor is not available or used) to use this standardized
+interface anyway.
+
+This binding describes no hardware, but establishes a firmware interface.
+Upon receiving an SMC using one of the described SMC function identifiers,
+the firmware is expected to trigger some mailbox connected functionality.
+The communication follows the ARM SMC calling convention[1].
+Firmware expects an SMC function identifier in r0 or w0. The supported
+identifiers are passed from consumers, or listed in the the arm,func-ids
+properties as described below. The firmware can return one value in
+the first SMC result register, it is expected to be an error value,
+which shall be propagated to the mailbox client.
+
+Any core which supports the SMC or HVC instruction can be used, as long as
+a firmware component running in EL3 or EL2 is handling these calls.
+
+Mailbox Device Node:
+====================
+
+This node is expected to be a child of the /firmware node.
+
+Required properties:
+--------------------
+- compatible:		Shall be "arm,smc-mbox"
+- #mbox-cells		Shall be 1 - the index of the channel needed.
+- arm,num-chans		The number of channels supported.
+- method:		A string, either:
+			"hvc": if the driver shall use an HVC call, or
+			"smc": if the driver shall use an SMC call.
+
+Optional properties:
+- arm,func-ids		An array of 32-bit values specifying the function
+			IDs used by each mailbox channel. Those function IDs
+			follow the ARM SMC calling convention standard [1].
+			There is one identifier per channel and the number
+			of supported channels is determined by the length
+			of this array.
+
+Example:
+--------
+
+	sram@910000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x93f000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0x93f000 0x1000>;
+
+		cpu_scp_lpri: scp-shmem@0 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x200>;
+		};
+
+		cpu_scp_hpri: scp-shmem@200 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x200 0x200>;
+		};
+	};
+
+	smc_mbox: mailbox {
+		#mbox-cells = <1>;
+		compatible = "arm,smc-mbox";
+		method = "smc";
+		arm,num-chans = <0x2>;
+		/* Optional */
+		arm,func-ids = <0xc20000fe>, <0xc20000ff>;
+	};
+
+	firmware {
+		scmi {
+			compatible = "arm,scmi";
+			mboxes = <&mailbox 0 &mailbox 1>;
+			mbox-names = "tx", "rx";
+			shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+		};
+	};
+
+
+[1]
+http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.den0028a/index.html
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
