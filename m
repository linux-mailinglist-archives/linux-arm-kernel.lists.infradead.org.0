Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3512AF95E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nb26bs2IaVywPhODjIKrOGI1WRz/uh1yWZXbP7vgXvQ=; b=RM4akRC0KAHOWv
	nZs8o5ko/Vwn9LA9JXycA9J42INvUnrxjui8h4MyS8c9LNUUnyJ1IqqDf4Cj1fzzxEDH8PAWNPz2c
	MrCkUjzhxhwBoNBsWehtFmjzH7Ufq5nbFL2ypumdWOo3OtKE1mfKVF4r2HsCCmxG0waGdyjYHlaPr
	VgQ5nPZme5FhCBCM5VyRF4876LzfVK/oGSF2Kp80tiv3OFZ8DX7y3GTkjvt7o962v0Dn+9i5h73PI
	T7KtNSJ8gN7UDGhILgMkOpmceR1iTJ/w3o+WC/lhk9rZuebwfQxrUO6o9qHSI06LtzhrfdKxFBhJw
	lnwfMTWn3zLfTGDrBUTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zDV-0007ko-Iw; Wed, 11 Sep 2019 09:47:13 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7n-0001jn-Kj; Wed, 11 Sep 2019 09:41:21 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: wAoiZQkTCTIcQQpf4J2MACYd7uwA4RJWIn/iRVlDDgviqgmj7EkbMDjDlQ9MzicFd9+ueUBETu
 B9G+Yq5x7jgO1CuapCSOVnNcD1mafWGVfsay2LeqS0VdHnbfMU476F4VJIRWH2A14QZg/El81c
 NX5IMkFP2ugBiPS/aK6O+ca1Mgsavaym1nC989kXaA0biVR4YQiugaphlggmvziQYYyvZD2Ar+
 qT1rHt2MfCn7PCBjpNIXw+PuKKRbM22emWbw535VyR7cb5Nf4Cn9O9+LJbsX74AVRP3jAgiRfb
 lKc=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738759"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:16 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 02:41:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hE7dvUtxfP3nYYR+jx2KvHKsgE/QgI3WZs2c9YqtkDCNA72SL9npM4BO7kYhSUTVnN9nsrmDbUSkNuQFmr9/3csBE8P55xCS5QQDx02ZNEkYQkgwGyG4NcCP5uB20sjdSsg5rO1UMjJAOsGkTBZ4804hMtuIPHURFeH0s3barIsgat4HjJgyxfgW6h2j/FFw2/bXe39oIW3wf9hR8G+dNmOg+ukn+DrUrqy2XNG6SgCTPi+Nv+7cA2MuDSFfz4ZobfUmmXkM4J4mPeh0vVWeyyvUtn0p5G8qXH1Bo7YastAbzYjhi5S8la5Hu8YG9Zk9QAuKuvnn/mkghEw7ADvQLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfqUSFSwLbv6ard5jShVooDcVVg3AjoOjmTbzdaRlRM=;
 b=JikqNapV9vP4JK0tzL3O8aZivV1hOTjAYBHcRNw5gP5MLGy+qED8MLv/5iVTP8BB2J7Wc3orM8UrH3pqoRn4CV0EradpGPA+n54pxQAcSqChaTci7STKxhbjcaXxbOfLPZaNEKKhcd3udaEmusGLzHdGleQtBJfYNZ+7bE2qEe/Dg2rY8TAsQUSJRosOXjCm/5PDJn6uvxyZzunBLO06REmdxQl/moeQP5TBzWNXm+mdDIQPa5bClHukATdSawIMiH/53tfMsQvGOTiI73MYFoA7SnYLTIz8CsIhQ0cSBS1N2TFsYtdD1MrK9r9FHel9j4ogtRcxn1+7owhunqoElg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfqUSFSwLbv6ard5jShVooDcVVg3AjoOjmTbzdaRlRM=;
 b=dQ+luuw5Gr31IT0lGPF5s/weMhfmDvoV3ts2PPsdA8pafuWsVuKaxRG8t/EgU16zKxMqYmUwUk6QlWF0QuvDczsG0FCupr9fCC9UPNd6zvV4kYamW1XqjorI3mtjGmq3LHANrTGZTCt86tgWnTiQnWW/ldHe4HmxoyW4mU+c+ck=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:14 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:14 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 09/13] mtd: spi-nor: Rework write_sr()
Thread-Topic: [PATCH 09/13] mtd: spi-nor: Rework write_sr()
Thread-Index: AQHVaIUNuiiiOlNvQUOQaJUlrdpWKA==
Date: Wed, 11 Sep 2019 09:41:14 +0000
Message-ID: <20190911094031.17615-10-tudor.ambarus@microchip.com>
References: <20190911094031.17615-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190911094031.17615-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0118.eurprd09.prod.outlook.com
 (2603:10a6:803:78::41) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1813b362-bc7f-4a54-7f75-08d7369c2fbb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401D33E1FDFD3B4F96507F6F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(14444005)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(30864003)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3OK4YAYo6p28fOMabAXNB1FB+uBgmeCRcawdMcBTlvrhTwsA8gcTwAFbdzniVyCf2Lhjzgjv1UKe372102ZKAxndNKn7iyMoBQaWy7HdlUJfwDexHomCP5hXNE6PRI85/0jza2zdTl9w6/aiP2Hi/m0X62+FNwl/q4sxHg/vYiYlpxKKUPWFagZ5FEq48U5VnqwcDi5/T7FI9i0tj+W62krmd2v0VMV2FKtyn+Ri1HKnDzAQW586R5RVTYD7f2CB70DXf2D4btcOnXePSHYk1ibVoFNSeKsjj/GKTsrSUD1W2qx2A7dU3C9psl9CSlUO++Jq2bdmAueC8zHm0o5JnYlY21Tt4LVa3EEx8w7bgcxp+E1ZWFKvQV9qcuRqY69+uwxzQgPpBWQEqiRbMGY4EWJxal/DkM0wg/PTPTzQU+4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1813b362-bc7f-4a54-7f75-08d7369c2fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:14.2667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KdT8NvpQBfCf+X9TvTXHcHT4x8iXVXzlQzjuuuEJY9XvPfjmDTv5gGzuUYj4NyoIdlyV3KPnex54sX8CNjA2yDJVez0afW5qoTGmRT8LVb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024119_939806_70162830 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tudor.Ambarus@microchip.com
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
 1 file changed, 190 insertions(+), 236 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 781564c9ec2f..a903717788f4 100644
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
@@ -1376,15 +1394,7 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
 {
 	int ret;
 
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	ret = write_sr(nor, status_new);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_write_sr(nor, &status_new, 1);
 	if (ret)
 		return ret;
 
@@ -1714,49 +1724,6 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
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
@@ -1778,13 +1745,9 @@ static int macronix_quad_enable(struct spi_nor *nor)
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
 
@@ -1831,7 +1794,7 @@ static int spansion_quad_enable(struct spi_nor *nor)
 
 	sr_cr[0] = 0;
 	sr_cr[1] = CR_QUAD_EN_SPAN;
-	ret = write_sr_cr(nor, sr_cr);
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
 	if (ret)
 		return ret;
 
@@ -1873,7 +1836,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 
 	sr_cr[1] = CR_QUAD_EN_SPAN;
 
-	return write_sr_cr(nor, sr_cr);
+	return spi_nor_write_sr(nor, sr_cr, 2);
 }
 
 /**
@@ -1909,7 +1872,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	ret = write_sr_cr(nor, sr_cr);
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
 	if (ret)
 		return ret;
 
@@ -2027,19 +1990,10 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
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
 
@@ -2078,7 +2032,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 
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
