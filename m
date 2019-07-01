Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC29B5B6EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwD8cZzFOL6/GxU7dx+1mhd4FaAjz0c/vEzOU7+8lGE=; b=GOqQLlWQcmVkU1
	SG347TgQmS4cDeDq/l04Gpix5XJXv6oar4u4iYS6psKEXd8lPOFMAMcoGRYFtmR7Eru5Gr6TE18UH
	L4U7PS5Q5/kgFhxokPOgjUZVKTxF0XhYgp1YUqCo+HLGY8Ry7/NfSL1ZhJzeX4vWUSu19UAmez9L4
	jZqOyNMOsaBOLllsHKFC1HSLCqVy2R3DpJaZlr+8IFnQLtF+1GaMy2wTy+NRQtjKlsJ0OT5Ke19lK
	QURXWmLNLG9CmDM8lVaMvmY8eGOrAseh6j/oEWJCcLYw8bWuRb9qvdyqE+gROKG7pooq8NqxIoWZb
	kWvj0zTvWDlM+JLy0v3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrlg-000339-6s; Mon, 01 Jul 2019 08:34:32 +0000
Received: from mail-vi1eur04on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::617]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrlE-0002s1-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3IBWTns70/XMt3MlxwdiFLOpelMkSq1B0urghU0TsLk=;
 b=kziNvTcDwDE2SnuFae6hBNWDH34pW+lW3qDMkHUtiF4lI6PFB0Yi9aeBQzn/ucYYZz6OEJ5A0WGzWXcXu2Sv+Wj4EJ5BidCn23drL/ZyCZJU1uE8zjelYXMqBe1+3wz48LjJy5j7QCbU6hbL4sday4CoB4AroGIT17JzJMKLlao=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3842.eurprd04.prod.outlook.com (52.133.34.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 08:34:00 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 08:34:00 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "ohad@wizery.com" <ohad@wizery.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "linux-remoteproc@vger.kernel.org"
 <linux-remoteproc@vger.kernel.org>
Subject: [RFC 1/2] dt-binding: add imx rpmsg compatibility documentation
Thread-Topic: [RFC 1/2] dt-binding: add imx rpmsg compatibility documentation
Thread-Index: AQHVL+e7C93AkdmlXEa1zEYGHM5qZg==
Date: Mon, 1 Jul 2019 08:34:00 +0000
Message-ID: <1561968784-1124-2-git-send-email-hongxing.zhu@nxp.com>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0004.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::16) To AM0PR0402MB3570.eurprd04.prod.outlook.com
 (2603:10a6:208:1c::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 859d3848-1b85-4fd2-aed0-08d6fdfedd82
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3842; 
x-ms-traffictypediagnostic: AM0PR0402MB3842:
x-microsoft-antispam-prvs: <AM0PR0402MB38424AA62DC111B2290032768CF90@AM0PR0402MB3842.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(305945005)(86362001)(446003)(186003)(6506007)(386003)(486006)(2616005)(476003)(76176011)(7736002)(256004)(102836004)(14444005)(11346002)(26005)(50226002)(66066001)(2501003)(8936002)(36756003)(8676002)(81156014)(81166006)(6116002)(3846002)(2906002)(52116002)(99286004)(68736007)(5660300002)(478600001)(25786009)(71200400001)(14454004)(4326008)(71190400001)(73956011)(66946007)(6486002)(6436002)(316002)(66476007)(53936002)(66446008)(54906003)(6512007)(110136005)(2201001)(64756008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3842;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9IcPzTLJGaakrT/jF1fWHitt4q3YX+pSXD2m2I6qYj03Q8RKXwoNELm+JEzsDWxRO1z7GAWZVX58Vlw77bN1GFuaZkmMzfriRXpyErqEoxIMzfF6/X++99ZPmXDLprx+tjSXSSZF8pIT8CXR8spJUpJid37hZzXx3j6zUpIw6XsBOsYjD5hMypyu3SUxEForRa6R6zrvT6naDbEa41sy3TK2kmxPk9B/VVqd4HdDVmE7twgLDGDmG6DcXlCuAarh4tMyCiXPX5AIrWoYCDufwdr2X9wKfcNB6gyzq/AZR26eRyPZRvbDeimKBrsZodvR/YiJ/jQC73CYDqI+4HcAMwiCWzuS17uJEnfld0xtZxZgOmEYh8SXOD+3oZrXGkcmO7jzvFB8gNPHsAN5d+n3NHHZlaVd7nwF4ANsLzNd8YM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 859d3848-1b85-4fd2-aed0-08d6fdfedd82
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 08:34:00.1972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3842
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_013404_441987_0E5BA844 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:617 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx rpmsg compatibility documentation.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 .../devicetree/bindings/soc/fsl/fsl,rpmsg.txt      | 75 ++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/fsl/fsl,rpmsg.txt

diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,rpmsg.txt b/Documentation/devicetree/bindings/soc/fsl/fsl,rpmsg.txt
new file mode 100644
index 0000000..7267756
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,rpmsg.txt
@@ -0,0 +1,75 @@
+i.MX RPMSG platform implementations
+
+Distributed framework is used in IMX RPMSG implementation, refer to the
+following requirements:
+  - The CAN functions contained in M core and RTOS should be ready and
+    complete functional in 50ms after AMP system is turned on.
+  - Partition reset. System wouldn't be stalled by the exceptions (e.x
+    the reset triggered by the system hang) occurred at the other side.
+    And the RPMSG mechanism should be recovered automactilly after the
+    partition reset is completed.
+In this scenario, the M core and RTOS would be kicked off by bootloader
+firstly, then A core and Linux would be loaded later. Both M core/RTOS
+and A core/Linux are running independly.
+One physical memory region used to store the vring is mandatory required
+to pre-reserved and well-knowned by both A core and M core
+
+Required properties:
+- compatible: "fsl,imx8qxp-rpmsg", "fsl,imx8mq-rpmsg".
+- vdev-nums: The number of the remote virtual devices.
+- reg: The reserved phisical DDR memory used to store vring descriptors.
+
+Optional properties:
+- rpmsg_dma_reserved: The reserved per device dma pool, that used to
+  allocate the shared memory buffers from the per device.
+  And it is optional for some platforms, since the system dma pool
+  is used to allocate the shared memory buffers directly on them.
+- mub-partition: The partition ID of muB side, that's optional
+  and used on i.mx8qm/8qxp for partition reset. The default
+  value is 3 in driver without this property.
+
+=====================================================================
+Mailbox used by iMX RPMSG
+
+- mboxes: mailboxes used in the RPMSG transactions.
+- mbox-names: names of the mailboxes used in RPMSG.
+	- "tx":TX channel with 32bit transmit register and IRQ transmit
+	- "rx":RX channel with 32bit receive register and IRQ support
+	- "rxdb":RX doorbell channel.
+
+Example:
+Rpmsg node in board dts file.
+&rpmsg{
+	/*
+	 * 64K for one rpmsg instance:
+	 */
+	vdev-nums = <2>;
+	reg = <0x0 0x90000000 0x0 0x20000>;
+	status = "okay";
+};
+
+SOC level dts node definitions:
+rpmsg_reserved: rpmsg@0x90000000 {
+	no-map;
+	reg = <0 0x90000000 0 0x400000>;
+};
+rpmsg_dma_reserved:rpmsg_dma@0x90400000 {
+	compatible = "shared-dma-pool";
+	no-map;
+	reg = <0 0x90400000 0 0x1C00000>;
+};
+rpmsg: rpmsg{
+	compatible = "fsl,imx8qxp-rpmsg";
+	/* up to now, the following channels are used in imx rpmsg
+	 * - tx1/rx1: messages channel.
+	 * - general interrupt1: remote proc finish re-init rpmsg stack
+	 *   when A core is partition reset.
+	 */
+	mbox-names = "tx", "rx", "rxdb";
+	mboxes = <&lsio_mu5 0 1
+		  &lsio_mu5 1 1
+		  &lsio_mu5 3 1>;
+	mub-partition = <3>;
+	memory-region = <&rpmsg_dma_reserved>;
+	status = "disabled";
+};
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
