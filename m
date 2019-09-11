Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448BAAF93F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBR9OG1gDzZQZAyAO5WEYkd42+efZm5sCsUjD7yD9mo=; b=hOYQ6HWzLwiH0B
	PVitkzJmNiSuy6ZnIerdxWmtg5hpdJjDYaPlBs53KgF2GE8/2Jn5qf1tk3c3AOcdX6dA9pjh/9svG
	TgtOwTpzxMwq8ep8ctPAHSw9grnY6QosVFQuqWvY6P5/IXLXXDHHI02jWwBIIVJllzDoJTlCZZjF8
	w/S4Qkjx9zq2iAY1A/nmhKNRGtFuGed+U9g4jEFWIAIw1TrYHA4bUJ19lW0tIEAlxZXw5ws6P+Qjm
	YtVbpvhTsQrGYcyFo1S1/D2Ths4gU66l+D4Vvl5RhF7tce5jpTYv4x0vSsG6uDizSSC7PG7NayhGm
	6V/xOIbtjlPdrhAoXCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z8z-0002St-Of; Wed, 11 Sep 2019 09:42:33 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7X-0001WD-D2; Wed, 11 Sep 2019 09:41:05 +0000
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
IronPort-SDR: wY8f2ga8V2IRFMkn0ahExW/9YEIfKpnOl9kklFjs2v+fyftn18mYz7TJxptgQLQckmzVAw1z3K
 9pAhWpEZ0imk5zMhSmptllqyz9T6XmGjOhAuX1Ifnuqn7x74rFDWgQCs00yd7KH9w1hcmbmwbH
 z6UF2ELazJJqsGLfi45KqvyXq81fzKA6tRlnHKHgv4fgac+VGOl6CbY6mRbtNbzYTkNHruzQrQ
 60X/vSk9vkdYs+pOBTS+YQ5iG42YcvcLNPAJuMJezQ9Jd5do4gjc6RIFoqXYQTBjtrEbHMqnDR
 mf8=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738622"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:40:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:40:55 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 02:40:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HY9GoeY21pnpxakx+Gu1yvz9gI7UvCvwytbCcQNR4Q/adtFgg5y898eMXDpVkFnb7IgukH/620sz5P2XyRbzo5yLM7DNm1f8jyUPgNUBbGAv8its9Iq5to6xLwANKxoBIV1TohgGZNjtJk1pti+DFARaPK4KWnpMy88ClMy4iltDbiFPAiH+GY5ECK6qcCUNaTRfRQT6QnIUaQscDZDtKYwjkl6RBZC26djBRz8k+ImI1XRpPzsNEpmqSd4KB5lhl1rC3KOqhzWI/5nHZHJ0S0odVT2GUCoUV/OMxvKgFJee3PEHfR9L19gDx3N1F1XRmoE/8UkNhsyZEEj3r2LAPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=va4NZk5W0SH3KYgLmKu+1uj3chUPl8MmQy5zCcFI8n8=;
 b=TP9yfG77elwfuMdVAkYTW0UNobp7HnEq2qbF5hyl9S9VNOCvhyTzXy8Z/wkC+m3stESyZT7+TU8qpVNVUWj14+/6KtEAGmmxFJsCBHikDqoUZilX8+E8wwGLrqeCYYkP7l1GrXt/I5oj4NaOkfnkQ/QQq4rgTmdxsJ799afobvsiyOht3D561C9n8Vrjt1MWij9cH73dgsUdB+M4CooDKbHStU/ObNvjrWUmjZPItNXSLMMgwp6ZAE5ux0ZRD/ah7Q9LAVvm2cXwWKPihh+IjIjRM8N3vbdlbKCdMWXB90XbAnE3TMMdIk1NPRUgE9ON3zv60qSg4V9xw+E+FIYf2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=va4NZk5W0SH3KYgLmKu+1uj3chUPl8MmQy5zCcFI8n8=;
 b=sWSrCDVmLQhzilepcsEcSVe5IUj04cFA/Nxi02pKLhAfqft49Mv8ydHwyR1mTVfkUTT9mSo7w2EAi+uFrluhLju4DsiY2/sdtf4Y2X4lccKM46JXcXKwf/cjIx+vKD46Sfyc74Nq+s6wh8+VMsb4Hd8BgQZF6IhKH2SSarWzz14=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:40:53 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:40:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 03/13] mtd: spi-nor: cadence-quadspi: Fix cqspi_command_read()
 definition
Thread-Topic: [PATCH 03/13] mtd: spi-nor: cadence-quadspi: Fix
 cqspi_command_read() definition
Thread-Index: AQHVaIUAjGjr6NFz6UWJoT/iOQDEAg==
Date: Wed, 11 Sep 2019 09:40:53 +0000
Message-ID: <20190911094031.17615-4-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 59d25498-b5a5-49e5-32ad-08d7369c232e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401746101181B07AAF2102BF0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Tiskkahdd77JWYk5VIAdSYeoWglC9tcWoRqafw5CpYRyjXXCxgXKzaaKZWXtHta/TJHN9EXHQYOyN/QUSdKoQUSdXYoojv0tGtFAM91R9vw/NAXfsdAlEHpiIOEx0PYfBowcQIIVSENwBfWOwK27asAeg0jAYdgDnQjvvUESAVTue0K0R6nNLHiuXFP+WjGl6FJ1Qy1VPO6TettJuNzLU/x8P4xb83W+vfrPQyLtbVrN/3HjALZlZ91gvGmsVYep8xr7wAJJjckxoM7fLnD1h8XaFBCJVhY7x10l8+NZPLL10voGvtbmhRQ2GZxjWMu8ZFCqmewBGkRbq/XxnbUN0hbdttn04uPNdak29elypp7DVS2OHkOD6k/qhEJowoIlSADWeTva/5PcG7x8GMHCi1D01n4RjPHb2rwuWIXbvcM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 59d25498-b5a5-49e5-32ad-08d7369c232e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:40:53.3370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FDRpXGOL9PFWgKGYzTmZikobQgURYg8JxauKc+dQ/1niKasJn7GxwtCNspKoAUCg70K0D25zsRzTdAX3msN23e/Y/670YUcwJqMU7Wmv5zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024103_715689_0CD96E31 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

n_tx was never used, drop it. Replace 'const u8 *txbuf' with 'u8 opcode',
to comply with the SPI NOR int (*read_reg)() method. The 'const'
qualifier has no meaning for parameters passed by value, drop it.
Going furher, the opcode was passed to cqspi_calc_rdreg() - drop it,
as it was never used.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index ebda612641a4..22008fecd326 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -285,7 +285,7 @@ static irqreturn_t cqspi_irq_handler(int this_irq, void *dev)
 	return IRQ_HANDLED;
 }
 
-static unsigned int cqspi_calc_rdreg(struct spi_nor *nor, const u8 opcode)
+static unsigned int cqspi_calc_rdreg(struct spi_nor *nor)
 {
 	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	u32 rdreg = 0;
@@ -354,8 +354,7 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
 	return cqspi_wait_idle(cqspi);
 }
 
-static int cqspi_command_read(struct spi_nor *nor,
-			      const u8 *txbuf, const unsigned n_tx,
+static int cqspi_command_read(struct spi_nor *nor, u8 opcode,
 			      u8 *rxbuf, size_t n_rx)
 {
 	struct cqspi_flash_pdata *f_pdata = nor->priv;
@@ -373,9 +372,9 @@ static int cqspi_command_read(struct spi_nor *nor,
 		return -EINVAL;
 	}
 
-	reg = txbuf[0] << CQSPI_REG_CMDCTRL_OPCODE_LSB;
+	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
 
-	rdreg = cqspi_calc_rdreg(nor, txbuf[0]);
+	rdreg = cqspi_calc_rdreg(nor);
 	writel(rdreg, reg_base + CQSPI_REG_RD_INSTR);
 
 	reg |= (0x1 << CQSPI_REG_CMDCTRL_RD_EN_LSB);
@@ -471,7 +470,7 @@ static int cqspi_read_setup(struct spi_nor *nor)
 	unsigned int reg;
 
 	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
-	reg |= cqspi_calc_rdreg(nor, nor->read_opcode);
+	reg |= cqspi_calc_rdreg(nor);
 
 	/* Setup dummy clock cycles */
 	dummy_clk = nor->read_dummy;
@@ -604,7 +603,7 @@ static int cqspi_write_setup(struct spi_nor *nor)
 	/* Set opcode. */
 	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
 	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
-	reg = cqspi_calc_rdreg(nor, nor->program_opcode);
+	reg = cqspi_calc_rdreg(nor);
 	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
 
 	reg = readl(reg_base + CQSPI_REG_SIZE);
@@ -1087,7 +1086,7 @@ static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
 
 	ret = cqspi_set_protocol(nor, 0);
 	if (!ret)
-		ret = cqspi_command_read(nor, &opcode, 1, buf, len);
+		ret = cqspi_command_read(nor, opcode, buf, len);
 
 	return ret;
 }
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
