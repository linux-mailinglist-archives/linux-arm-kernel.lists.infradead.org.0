Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8D7B524F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UyFaAphJoP/EtbbpAK2K2M1lnVzIf2NhKXaB1mGlMg=; b=ETikw/mOJdaNiF
	nx0+W+K/BdYS834EDVP5Tsj5wUKO8O3RtyEz4lRKES/IVYWLWY0X1aT9AKx0fI21kn9mpU7oRCZVY
	zjFXJ9xKkZbvUG/RyvyvkP2js8cWJ/BXo0OhvBKdI/phuCnnezDkz/U48EnrwLoyijQXxVssIQ2yZ
	yy8vkzblmBNiNcQQCv7I4WzSTWhxwuKm4Sf1x3b4BOXy83L7n0zy5c7VH8PmM+qprHYcJMxUFwwIr
	9PYkD+8Clvd6seEFKCSQVVV/nVdByoBmqRRGxXIYRwXPHLkXiluWHcjk62LciY9MTeqpRm5luE9D7
	/T2MJL6+xyl7Ysgt/xIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFwm-0006lM-2M; Tue, 17 Sep 2019 16:03:20 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpA-0007sv-Sx; Tue, 17 Sep 2019 15:55:31 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WhD/gKXdmtKOsC5G1jtxVPmuCExP/KJdRxnoggEdQihOiueL2RBFGuJftNyNca0Moe73SKYMwa
 NfUP1NlwAVqbz+X77mkOgUSwY1hWSNbkNQ01U1VpwOWvwaqK7E0NDaBPTR8lsFTQPpKwMyOcWU
 xZpHmmy6sIIWxyqt05DNeVAEkQolvfLGy2rLFYT1sAtfeAStXJlTMcw3xsR3ZYZglJeFQ3xa4Q
 OEvHYGvjUCYqM9Gg7yLeffYDuNasAw3Dl2V8sfhmdTnOHo/gsn3tySdNa4pbIeMMte9e82xNhN
 Zvw=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="50797882"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:16 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Sep 2019 08:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrry2eM9cAI0/lyTfXR6WgJTWnmEglz0Ts+k+TSmdUm8pM1r8nCQ5kUkJ8RDj6HrtsNXfy+x3NV35D1JZRnqWhMCtpjHFQT/7r1vpres/f4OxJDT5RlqOuYoCi39ZRCxkNGEeZKPCc9Fx72JkSo+ThZvtAJkAqyS+CRhj1eC2jAO/HeIzIn3JVLHZ9wdWt+yiEGEXPJx7lWQbjboNpzazeOKE3xC+xTU/bOYu8aV9mvomKRh+skh17xgArhDAVLr7LgZnYTooFI92qJhVjUKEXPt3fae0rGEBqggA8TVYxzqJoldBmakf8rTn/ZPOQxzCF93VVYW8ApwOA5pcOmxQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wkd0mb/TC7YEpC7rS/UP8xltuN5LoRChsbp6da+fX3k=;
 b=nuMADUFv6TqtQTxXRiVr4kh2IORmoljtDHC7QYUfiQI33+vvkOHeAdSZAHhlNnlaRVzxkrhxxRI6sN/oEVv+ov56VV0biZmpy1wz5tsDHw34GI16pcffEJubs+grTvhoCTh5MCXz6ve/Dxw/NLEIv8Pbd1hwqv9WNGoi7BTbbrjczmhS4COSY2AnqxUl7MLDAhzKiIRHe44bFyrFj6COMYeGhB7iUYVJzchEBB0LNTn3W+UT2r3XjQcs+m8a43ssBcfOhQZYUqegOgDybnuDDVak+RLnjWApO+n+OYKijdN/c6akeEnhaiZ8UDIqRvg/zXF9Nnx1kNlIPzDtNbT0eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wkd0mb/TC7YEpC7rS/UP8xltuN5LoRChsbp6da+fX3k=;
 b=MnTZOzbhVqOr14ED8qs2o2Kh+sVhRiuEVHRghIHJ/C2XAHsxql+wHYZAoB7xkA9ajGcInjYCs9JrhPr5xTZCgZCpwXuLfbp+spaXK9iX+EKCrlGGiQd9vXR7ZnnzhDjxGdyE+6pFZXtOZUf3eXG2qEu8RHJm85wyuTQ8/X7064c=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3725.namprd11.prod.outlook.com (20.178.253.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:13 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 10/23] mtd: spi-nor: Rework write_sr()
Thread-Topic: [PATCH 10/23] mtd: spi-nor: Rework write_sr()
Thread-Index: AQHVbXBKtPPmx1X0Qk6m6KvCcAvgdg==
Date: Tue, 17 Sep 2019 15:55:12 +0000
Message-ID: <20190917155426.7432-11-tudor.ambarus@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190917155426.7432-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0302CA0007.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 361aabc7-6174-4944-9d73-08d73b876cb1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3725; 
x-ms-traffictypediagnostic: MN2PR11MB3725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB372593C24A11660FE5184CA8F08F0@MN2PR11MB3725.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(136003)(366004)(199004)(189003)(76176011)(52116002)(5660300002)(71190400001)(2616005)(6486002)(6512007)(476003)(11346002)(81166006)(6436002)(66556008)(386003)(6506007)(26005)(66446008)(66946007)(64756008)(186003)(66476007)(102836004)(316002)(446003)(2201001)(110136005)(54906003)(8936002)(107886003)(478600001)(50226002)(25786009)(2906002)(86362001)(81156014)(2501003)(6116002)(3846002)(256004)(305945005)(7736002)(7416002)(99286004)(36756003)(66066001)(14454004)(8676002)(71200400001)(4326008)(14444005)(30864003)(1076003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3725;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K7Tsuy8nW3rVOyW7/DaK8RrrHLr9Y2Uf6XylJOHh36rUH+yEbyFkcXrNrJD7IR07la83l2jzXjpBWNLW0uuHtoSneZup0pQKzqVnSJ90QAfaf/HFaO1YNimE8e+1B67jmDWYFCDZXxEoeVnv0jMe/muCyJhkol6AwZkoWNESoUpCHlNl1dR8kGZOodJwdl6lYVMEa/9lOZNoSCPKU08deGOsxfdDuDaOvf38/dXxlWmw/RzHQVmROCSML0i9xZ2y3C9FpF+MjOAt/vSd3RyHRSTCN+2Q/RfPNxORxzxZAfuwiatDIVL6p/jVBkjAgHZtccN3fwnN/WSrH4UhdVSH397XJn1Eik0uarO4wPBKOzDuny/kTC/nAD3KadsvHIMMkdnTcQ0r88XiE1ayMG+bNcMmKQmdthRXqzLCCblPyQY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 361aabc7-6174-4944-9d73-08d73b876cb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:12.9306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mAkdvZvFIpFU/wXv8kpexnagjLl/DLodK0Rk93cMQ3XKRvu82jAD0092e+BLgzgfDBkeb3NcN5jDYnt2Znx+qpe5bQgDTqldHAkQbCfLmWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085529_263397_EE7DE5E3 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Tudor.Ambarus@microchip.com, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The Status Register can be written with one or two bytes.

Merge:
static int write_sr(struct spi_nor *nor, u8 val)
static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
into
static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)

Avoid duplicating code by moving the calls to spi_nor_write_enable() and
spi_nor_wait_till_ready() inside spi_nor_write_sr().

Move the spi_nor_wait_till_ready() together with the spi_nor_ready()
methods to avoid forward declarations.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 426 +++++++++++++++++++-----------------------
 1 file changed, 191 insertions(+), 235 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 151db98f7d49..89800bbaa179 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -537,25 +537,198 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 	return ret;
 }
 
+static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
+{
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_XRDSR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_DATA_IN(1, sr, 1));
+
+		return spi_mem_exec_op(nor->spimem, &op);
+	}
+
+	return nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
+}
+
+static int s3an_sr_ready(struct spi_nor *nor)
+{
+	int ret;
+
+	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
+	if (ret < 0) {
+		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
+		return ret;
+	}
+
+	return !!(nor->bouncebuf[0] & XSR_RDY);
+}
+
+static int spi_nor_clear_sr(struct spi_nor *nor)
+{
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLSR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		return spi_mem_exec_op(nor->spimem, &op);
+	}
+
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
+}
+
+static int spi_nor_sr_ready(struct spi_nor *nor)
+{
+	int ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+
+	if (ret)
+		return ret;
+
+	if (nor->flags & SNOR_F_USE_CLSR &&
+	    nor->bouncebuf[0] & (SR_E_ERR | SR_P_ERR)) {
+		if (nor->bouncebuf[0] & SR_E_ERR)
+			dev_err(nor->dev, "Erase Error occurred\n");
+		else
+			dev_err(nor->dev, "Programming Error occurred\n");
+
+		spi_nor_clear_sr(nor);
+		return -EIO;
+	}
+
+	return !(nor->bouncebuf[0] & SR_WIP);
+}
+
+static int spi_nor_clear_fsr(struct spi_nor *nor)
+{
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLFSR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		return spi_mem_exec_op(nor->spimem, &op);
+	}
+
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
+}
+
+static int spi_nor_fsr_ready(struct spi_nor *nor)
+{
+	int ret = spi_nor_read_fsr(nor, &nor->bouncebuf[0]);
+
+	if (ret)
+		return ret;
+
+	if (nor->bouncebuf[0] & (FSR_E_ERR | FSR_P_ERR)) {
+		if (nor->bouncebuf[0] & FSR_E_ERR)
+			dev_err(nor->dev, "Erase operation failed.\n");
+		else
+			dev_err(nor->dev, "Program operation failed.\n");
+
+		if (nor->bouncebuf[0] & FSR_PT_ERR)
+			dev_err(nor->dev,
+				"Attempted to modify a protected sector.\n");
+
+		spi_nor_clear_fsr(nor);
+		return -EIO;
+	}
+
+	return nor->bouncebuf[0] & FSR_READY;
+}
+
+static int spi_nor_ready(struct spi_nor *nor)
+{
+	int sr, fsr;
+
+	if (nor->flags & SNOR_F_READY_XSR_RDY)
+		sr = s3an_sr_ready(nor);
+	else
+		sr = spi_nor_sr_ready(nor);
+	if (sr < 0)
+		return sr;
+	fsr = nor->flags & SNOR_F_USE_FSR ? spi_nor_fsr_ready(nor) : 1;
+	if (fsr < 0)
+		return fsr;
+	return sr && fsr;
+}
+
 /*
- * Write status register 1 byte
- * Returns negative if error occurred.
+ * Service routine to read status register until ready, or timeout occurs.
+ * Returns non-zero if error.
+ */
+static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
+						unsigned long timeout_jiffies)
+{
+	unsigned long deadline;
+	int timeout = 0, ret;
+
+	deadline = jiffies + timeout_jiffies;
+
+	while (!timeout) {
+		if (time_after_eq(jiffies, deadline))
+			timeout = 1;
+
+		ret = spi_nor_ready(nor);
+		if (ret < 0)
+			return ret;
+		if (ret)
+			return 0;
+
+		cond_resched();
+	}
+
+	dev_err(nor->dev, "flash operation timed out\n");
+
+	return -ETIMEDOUT;
+}
+
+static int spi_nor_wait_till_ready(struct spi_nor *nor)
+{
+	return spi_nor_wait_till_ready_with_timeout(nor,
+						    DEFAULT_READY_WAIT_JIFFIES);
+}
+
+/**
+ * spi_nor_write_sr() - Write the Status Register.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr:		buffer to write to the Status Register.
+ * len:		number of bytes to write to the Status Register.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
-static int write_sr(struct spi_nor *nor, u8 val)
+static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
 {
-	nor->bouncebuf[0] = val;
+	int ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	if (nor->spimem) {
 		struct spi_mem_op op =
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
 				   SPI_MEM_OP_NO_ADDR,
 				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
+				   SPI_MEM_OP_DATA_OUT(len, sr, 1));
 
-		return spi_mem_exec_op(nor->spimem, &op);
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
+						     sr, len);
 	}
 
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
-					      nor->bouncebuf, 1);
+	if (ret) {
+		dev_err(nor->dev, "error while writing Status Register\n");
+		return ret;
+	}
+
+	ret = spi_nor_wait_till_ready(nor);
+
+	return ret;
 }
 
 static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
@@ -741,161 +914,6 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 	return ret;
 }
 
-static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_XRDSR, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, sr, 1));
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
-}
-
-static int s3an_sr_ready(struct spi_nor *nor)
-{
-	int ret;
-
-	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
-	if (ret < 0) {
-		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
-		return ret;
-	}
-
-	return !!(nor->bouncebuf[0] & XSR_RDY);
-}
-
-static int spi_nor_clear_sr(struct spi_nor *nor)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLSR, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_NO_DATA);
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
-}
-
-static int spi_nor_sr_ready(struct spi_nor *nor)
-{
-	int ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
-
-	if (ret)
-		return ret;
-
-	if (nor->flags & SNOR_F_USE_CLSR &&
-	    nor->bouncebuf[0] & (SR_E_ERR | SR_P_ERR)) {
-		if (nor->bouncebuf[0] & SR_E_ERR)
-			dev_err(nor->dev, "Erase Error occurred\n");
-		else
-			dev_err(nor->dev, "Programming Error occurred\n");
-
-		spi_nor_clear_sr(nor);
-		return -EIO;
-	}
-
-	return !(nor->bouncebuf[0] & SR_WIP);
-}
-
-static int spi_nor_clear_fsr(struct spi_nor *nor)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLFSR, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_NO_DATA);
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
-}
-
-static int spi_nor_fsr_ready(struct spi_nor *nor)
-{
-	int ret = spi_nor_read_fsr(nor, &nor->bouncebuf[0]);
-
-	if (ret)
-		return ret;
-
-	if (nor->bouncebuf[0] & (FSR_E_ERR | FSR_P_ERR)) {
-		if (nor->bouncebuf[0] & FSR_E_ERR)
-			dev_err(nor->dev, "Erase operation failed.\n");
-		else
-			dev_err(nor->dev, "Program operation failed.\n");
-
-		if (nor->bouncebuf[0] & FSR_PT_ERR)
-			dev_err(nor->dev,
-				"Attempted to modify a protected sector.\n");
-
-		spi_nor_clear_fsr(nor);
-		return -EIO;
-	}
-
-	return nor->bouncebuf[0] & FSR_READY;
-}
-
-static int spi_nor_ready(struct spi_nor *nor)
-{
-	int sr, fsr;
-
-	if (nor->flags & SNOR_F_READY_XSR_RDY)
-		sr = s3an_sr_ready(nor);
-	else
-		sr = spi_nor_sr_ready(nor);
-	if (sr < 0)
-		return sr;
-	fsr = nor->flags & SNOR_F_USE_FSR ? spi_nor_fsr_ready(nor) : 1;
-	if (fsr < 0)
-		return fsr;
-	return sr && fsr;
-}
-
-/*
- * Service routine to read status register until ready, or timeout occurs.
- * Returns non-zero if error.
- */
-static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
-						unsigned long timeout_jiffies)
-{
-	unsigned long deadline;
-	int timeout = 0, ret;
-
-	deadline = jiffies + timeout_jiffies;
-
-	while (!timeout) {
-		if (time_after_eq(jiffies, deadline))
-			timeout = 1;
-
-		ret = spi_nor_ready(nor);
-		if (ret < 0)
-			return ret;
-		if (ret)
-			return 0;
-
-		cond_resched();
-	}
-
-	dev_err(nor->dev, "flash operation timed out\n");
-
-	return -ETIMEDOUT;
-}
-
-static int spi_nor_wait_till_ready(struct spi_nor *nor)
-{
-	return spi_nor_wait_till_ready_with_timeout(nor,
-						    DEFAULT_READY_WAIT_JIFFIES);
-}
-
 /*
  * Erase the whole flash memory
  *
@@ -1375,15 +1393,9 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
 {
 	int ret;
 
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	ret = write_sr(nor, status_new);
-	if (ret)
-		return ret;
+	nor->bouncebuf[0] = status_new;
 
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
 	if (ret)
 		return ret;
 
@@ -1713,49 +1725,6 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return ret;
 }
 
-/*
- * Write status Register and configuration register with 2 bytes
- * The first byte will be written to the status register, while the
- * second byte will be written to the configuration register.
- * Return negative if error occurred.
- */
-static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
-{
-	int ret;
-
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_OUT(2, sr_cr, 1));
-
-		ret = spi_mem_exec_op(nor->spimem, &op);
-	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
-						     sr_cr, 2);
-	}
-
-	if (ret < 0) {
-		dev_err(nor->dev,
-			"error while writing configuration register\n");
-		return -EINVAL;
-	}
-
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret) {
-		dev_err(nor->dev,
-			"timeout while writing configuration register\n");
-		return ret;
-	}
-
-	return 0;
-}
-
 /**
  * macronix_quad_enable() - set QE bit in Status Register.
  * @nor:	pointer to a 'struct spi_nor'
@@ -1777,13 +1746,9 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
 		return 0;
 
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
+	nor->bouncebuf[0] |= SR_QUAD_EN_MX;
 
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
 	if (ret)
 		return ret;
 
@@ -1830,7 +1795,7 @@ static int spansion_quad_enable(struct spi_nor *nor)
 
 	sr_cr[0] = 0;
 	sr_cr[1] = CR_QUAD_EN_SPAN;
-	ret = write_sr_cr(nor, sr_cr);
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
 	if (ret)
 		return ret;
 
@@ -1872,7 +1837,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 
 	sr_cr[1] = CR_QUAD_EN_SPAN;
 
-	return write_sr_cr(nor, sr_cr);
+	return spi_nor_write_sr(nor, sr_cr, 2);
 }
 
 /**
@@ -1908,7 +1873,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	ret = write_sr_cr(nor, sr_cr);
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
 	if (ret)
 		return ret;
 
@@ -2026,19 +1991,10 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
+	nor->bouncebuf[0] &= mask;
 
-	ret = write_sr(nor, nor->bouncebuf[0] & ~mask);
-	if (ret) {
-		dev_err(nor->dev, "write to status register failed\n");
-		return ret;
-	}
+	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
 
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret)
-		dev_err(nor->dev, "timeout while writing status register\n");
 	return ret;
 }
 
@@ -2077,7 +2033,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 
 		sr_cr[0] &= ~mask;
 
-		ret = write_sr_cr(nor, sr_cr);
+		ret = spi_nor_write_sr(nor, sr_cr, 2);
 		if (ret)
 			dev_err(nor->dev, "16-bit write register failed\n");
 		return ret;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
