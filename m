Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B735D16278F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WAChkLFguUn4i2qcjTU/iU5o3zULC66wzKw9Tt+RB84=; b=VdVRWDGgTXtWED
	MozqvUEZZ17SW4J3bZk86Ns1DJyyCqkw5NURi0ngrFZVTTcFP3danki2iezAJHP87xQF8AtlZbXO/
	3e7any9hWGfDWXGv8IiM9kCYDzy6bOylk230TRs8YJgea4myHSY40YbxZibB3zIGq6UvpVthd/ywv
	LfDY4fU6if6rYdzBlVcZNRl3cNv/Yt2FSSNEGlp0WlxrISIIw4JiqP6m+EIAdtVj3pGHCIpgWLKk+
	/zx/pLmuR6lQhvfr3XI73Ae+OdsHhc9m8nYn9HYjAZJZS+udiq2ZhCOESJDyBC657yoPZ3BoWRTv1
	KS5CmgpZ9NySizxcUYkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43ON-0000kt-5T; Tue, 18 Feb 2020 13:58:27 +0000
Received: from mail-he1eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::619]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43OA-0000kA-30
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:58:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQCBgVlo5mVJ1MjwEwxDqpH2Rl0Tu1hk+vuA+J/CpUextoIXMukAu/9dA8USBAtDfP8LUwZ2p9G/6/zR6zzbnE5juD+MQtovC8Ukb0suezO19ahBEdo/rQJ7N7Gc2UsPSYSlPiTDbe34B3X7sjEWAhqYH3EDrdTVSHNpoTv1Y71CJgm3iG4z41jTtGGN7TThZwNYilZxUKKhenJQchnB3dZTea8BL5MH26/hPY2XEhbbpdFHWNU4MB6m6DeoAMBf86LHIEjvXLL1MSU4p9JYD+yfcQ3FiC7g5KFj8Kr+I0w7syMe2p1C0smZMsPJMlxt3AV0vqduuWl7vs97pWdPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJlTOSDHMSSxjh1mIVjhhod5cXHRUVxcxxsjJrsHE+8=;
 b=C8UhYoUgU2fWirXgjn5KrDZjrn5FquOawv7nG4i6xhdMbuf6Otp+zkzJyyfZMhyfMj8dlqZJSPB+1Lxaai5E4IxDOWf8lDcrAed+ebNoeNjo/wcMLDgZeUydTmItZAqj5q31/BWqYp/j6r3PvonNdc8WWzwUWqzsby5ARIOV9h7UZqb6QLH3E1+kmRnJ7yXScjokzh58TdKC9bkcfJfjPBjTPgRLR8IRoxt44qQua5oJNmL4VqUHOtVoQ2SPf1HL/WpNIRht/SaFGB24pAAifUEuKGacW12TTZ/Bo+zN/koQGtEYB4gI0MvNX79WJQlpZprqhrpYBBEhK+HdwIzxgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJlTOSDHMSSxjh1mIVjhhod5cXHRUVxcxxsjJrsHE+8=;
 b=gXzvdSOYgj1DRlbDuVRY/k7o6EhKLwj7Y+t+rNkM04HoBeuym00rLBez31efhBFzAq7yU8b9Ev6iwW4MTJZ/EnjW+YYlYMSbCpBp4FuQqVzz+4XqDWPWSxxbXhcf9VZoqaaZ7aMezw9y9Dk2DWs8tga0AYvJxtMJyOE9sJtdvfE=
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com (20.178.82.25) by
 AM0PR06MB3939.eurprd06.prod.outlook.com (52.133.61.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Tue, 18 Feb 2020 13:58:07 +0000
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::586e:bd84:8aec:a50]) by AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::586e:bd84:8aec:a50%4]) with mapi id 15.20.2729.031; Tue, 18 Feb 2020
 13:58:07 +0000
Received: from ubuntu.localdomain (193.143.230.131) by
 AM0PR01CA0001.eurprd01.prod.exchangelabs.com (2603:10a6:208:69::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Tue, 18 Feb 2020 13:58:06 +0000
From: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
To: "wsa@the-dreams.de" <wsa@the-dreams.de>
Subject: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Topic: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Index: AQHV5mNyTIn2+pYf+Eu7yiopaV9KGA==
Date: Tue, 18 Feb 2020 13:58:07 +0000
Message-ID: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:69::14) To AM0PR06MB5185.eurprd06.prod.outlook.com
 (2603:10a6:208:107::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ext-jaakko.laine@vaisala.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.19.1
x-originating-ip: [193.143.230.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 696f6641-eafb-462b-8e32-08d7b47a94a9
x-ms-traffictypediagnostic: AM0PR06MB3939:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR06MB3939D2C175A9F3634513D321D4110@AM0PR06MB3939.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39850400004)(136003)(366004)(346002)(376002)(199004)(189003)(6916009)(26005)(54906003)(2906002)(71200400001)(6486002)(36756003)(1076003)(6512007)(52116002)(66476007)(186003)(16526019)(4326008)(66946007)(478600001)(966005)(6506007)(81156014)(81166006)(8936002)(64756008)(66446008)(8676002)(5660300002)(316002)(66556008)(2616005)(956004)(107886003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR06MB3939;
 H:AM0PR06MB5185.eurprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: vaisala.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Kg+tzfUF54x29QJc73D8RW102e3RY2v6w1lx3WSldFLtGyzg4XJL8C3uIJmsHxCDXFMSBj0XgSXP72oUYOxYG8j02t+d5uvSXCpUh8+U7Ug7kVad9r3GeKmnwzpGSHEwzXq7/ntzhSmgva4uvWSF/fR/dhR/p86oRDZg/S1genLsYhxFEiebIl4ThfW6I7/w1kogw9sIZTNeX/9WktkE98kh4HvJ9NiQq2kkH1XDDpGYGoHlrD8jekkKRTUDb74R8Kc1qSltPVAa21cY90VCFUtqazXGo9AyEVAiSlNbbo1BGOai+ZWygz+P35bdxgXNNPxpwWhFIfjVx5DWmmGX+X7kV0o6ONuYbMWpEiFbcjycrAPZ2yWxX7H0UoIKptUCJyo4sJqj0RdFJEsxR50X3R4YZ1rVO7W6EItZiRWYA193xQSOukQlkXSd++QZfEMrUKhIlpmzsQa88Qw0NnXurVUQlTgsz4VSbaPfg2t+An0FwfDn7pVyfwXpaqvaep6QQsEC6qMal2GFaSB1wwPsg==
x-ms-exchange-antispam-messagedata: +4pX3Jp08IKTm/QKjdBnq2pDSjTt3PG1ItEjRQjbTFyd8nL5EP6ncbQp87qAss+l0mVi9K5h0rP9JGVX8BGriNJ7e3Ko7eVz8cWizbv4hv5wgefqjFWf2QeR24Bck9nBSu0qtkJdjh5KCgUKwGns9Q==
MIME-Version: 1.0
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 696f6641-eafb-462b-8e32-08d7b47a94a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 13:58:07.1183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u4+HDE5hmOVe6UCaJ2e2cYsOnqwExdJ3mITFj0N7l6mXMgrf2KSRklcC1KzV4PuL+AG7Oxzj4mJEvmPezLkaXbKcn19iYHnPk7U8gnNFFs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB3939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_055814_218754_DD4F0CDA 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I2C master operating in multimaster mode can get stuck
indefinitely if I2C start is detected on bus, but no master
has a transaction going.

This is a weakness in I2C standard, which defines no way
to recover, since all masters are indefinitely disallowed
from interrupting the currently operating master. A start
condition can be created for example by an electromagnetic
discharge applied near physical I2C lines. Or a already
operating master could get reset immediately after sending
a start.

If it is known during device tree creation that only a single
I2C master will be present on the bus, this deadlock of the
I2C bus could be avoided in the driver by ignoring the
bus_is_busy register of the xiic, since bus can never be
reserved by any other master.

This patch adds this support for detecting multi-master flag
in device tree and when not provided, improves I2C reliability
by ignoring the therefore unnecessary xiic bus_is_busy register.

Error can be reproduced by pulling I2C SDA -line temporarily low
by shorting it to ground, while linux I2C master is operating on
it using the xiic driver. The application using the bus will
start receiving linux error code 16: "Device or resource busy"
indefinitely:

kernel: pca953x 0-0020: failed writing register
app: Error writing file, error: 16

With multi-master disabled device will instead receive error
code 5: "I/O error" while SDA is grounded, but recover normal
operation once short is removed.

kernel: pca953x 0-0020: failed reading register
app: Error reading file, error: 5

Signed-off-by: Jaakko Laine <ext-jaakko.laine@vaisala.com>
---

Applies against Linux 5.6-rc1 from master in
https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git

I would like to point out that that since this patch disables
multimaster mode based on the standard I2C multimaster property
in device tree (as it propably should) and since the driver has
previously supported multimaster even when this property doesn't
exist in device tree, there is a possible backwards
compatibility issue:

If there are devices relying on the multimaster mode to work
without defining the property in device tree, their I2C bus
might not work without issues anymore after this patch, since
the driver will asume it is the only master on bus and could
therefore interrupt the communication of some other master on
same bus.

Please suggest some alternative fix if this is not acceptable
as is. On the other hand supporting multimaster even on a bus
with only a single master does currently cause some
reliability issues since the bus can get indefinitely stuck.
I don't think there exists a I2C protocol compatible way to
resolve the deadlock on multimaster bus.

 drivers/i2c/busses/i2c-xiic.c | 52 +++++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index 90c1c362394d..37f8d6ee0577 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -46,19 +46,20 @@ enum xiic_endian {
 
 /**
  * struct xiic_i2c - Internal representation of the XIIC I2C bus
- * @dev:	Pointer to device structure
- * @base:	Memory base of the HW registers
- * @wait:	Wait queue for callers
- * @adap:	Kernel adapter representation
- * @tx_msg:	Messages from above to be sent
- * @lock:	Mutual exclusion
- * @tx_pos:	Current pos in TX message
- * @nmsgs:	Number of messages in tx_msg
- * @state:	See STATE_
- * @rx_msg:	Current RX message
- * @rx_pos:	Position within current RX message
- * @endianness: big/little-endian byte order
- * @clk:	Pointer to AXI4-lite input clock
+ * @dev:		Pointer to device structure
+ * @base:		Memory base of the HW registers
+ * @wait:		Wait queue for callers
+ * @adap:		Kernel adapter representation
+ * @tx_msg:		Messages from above to be sent
+ * @lock:		Mutual exclusion
+ * @tx_pos:		Current pos in TX message
+ * @nmsgs:		Number of messages in tx_msg
+ * @state:		See STATE_
+ * @rx_msg:		Current RX message
+ * @rx_pos:		Position within current RX message
+ * @endianness:		big/little-endian byte order
+ * @multimaster:	Indicates bus has multiple masters
+ * @clk:		Pointer to AXI4-lite input clock
  */
 struct xiic_i2c {
 	struct device		*dev;
@@ -73,6 +74,7 @@ struct xiic_i2c {
 	struct i2c_msg		*rx_msg;
 	int			rx_pos;
 	enum xiic_endian	endianness;
+	bool			multimaster;
 	struct clk *clk;
 };
 
@@ -521,19 +523,26 @@ static int xiic_bus_busy(struct xiic_i2c *i2c)
 static int xiic_busy(struct xiic_i2c *i2c)
 {
 	int tries = 3;
-	int err;
+	int err = 0;
 
 	if (i2c->tx_msg)
 		return -EBUSY;
 
-	/* for instance if previous transfer was terminated due to TX error
-	 * it might be that the bus is on it's way to become available
-	 * give it at most 3 ms to wake
+	/* In single master mode bus can only be busy, when in use by this
+	 * driver. If the register indicates bus being busy for some reason we
+	 * should ignore it, since bus will never be released and i2c will be
+	 * stuck forever.
 	 */
-	err = xiic_bus_busy(i2c);
-	while (err && tries--) {
-		msleep(1);
+	if (i2c->multimaster) {
+		/* for instance if previous transfer was terminated due to TX
+		 * error it might be that the bus is on it's way to become
+		 * available give it at most 3 ms to wake
+		 */
 		err = xiic_bus_busy(i2c);
+		while (err && tries--) {
+			msleep(1);
+			err = xiic_bus_busy(i2c);
+		}
 	}
 
 	return err;
@@ -811,6 +820,9 @@ static int xiic_i2c_probe(struct platform_device *pdev)
 		goto err_clk_dis;
 	}
 
+	i2c->multimaster =
+		of_property_read_bool(pdev->dev.of_node, "multi-master");
+
 	/*
 	 * Detect endianness
 	 * Try to reset the TX FIFO. Then check the EMPTY flag. If it is not
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
