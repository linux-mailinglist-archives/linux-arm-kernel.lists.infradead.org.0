Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E117624F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+fnsRj9Oxgorms/95aYNm0ESjbtcRqHWokr5nOxabc=; b=tYxczTXYlSK2u/
	e3b8nu4g6iXUvraWg0cpgjuW3QEnEsvQ8fxW86iAXScoH8l2wnL5EPMYftJsHl3yA3O7+MDmZG9L/
	ULOTM0IpKgmxFHUPi4FgUiL4kvgYuRmtemIlqIYVhbnyfhVZkx+lE9fNMNSHaeMIEcSAsgjxtKdQm
	QLlpcbgDa2Y6PqL8LOM3Huqg4fL02cWHl05xdWdNAP1FIHFgSYJXinjgMc6GaD1IbGQYjDQpxMB0t
	8Sw1l5sBsD88zSNE9CTT2jozYprrApywfwDrB2i7lI1/AQCPanxrARaRTtEOmAFgeG2iP4kXGdo74
	NUg+TGIOqhi0KG8fk6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8peF-00056Z-BE; Mon, 02 Mar 2020 18:18:35 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pUP-0003HZ-MP; Mon, 02 Mar 2020 18:08:27 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Gdynk4wH5VsBlEn/ivDUv6fGjrR7HweRqYiy8C0Y7wz8dxjNnSlHqnJ8lNZuUmMvHwHWQSGKWc
 ehx1Gqpe9dZIeY0O+BnJstslRy68ytU/Ld6nLjzoKkjvunslYvfQCIYKlX+T/28K77uS/r6WPL
 fiCWSh2xMng2s2BnS1H2iHpmGte3d27pFU947zuwL1vxESJJ3ZA3zVYPVl1k9C20lao32T3ARI
 r0c4nbc/fUyurb7cKdZtv2xMg9ISfCoJNIh0WrFn9HBoTjYB+Jo6oFeSiO/NhedM28zP9LuJsh
 ieM=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4204984"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:08:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wvy982zR/UEq74nMA0bLJKDCA0vxizv6wF+Pn8+BjXyIcUBxLQFkvy9do1cGPnegs/DYEhFcB0obe8eA4jn6Q4ulEJBNWCwdcj2ediM+Aa/gA86yvLUA/YjMSvySdwTXybfyDG5VPM+uSGJPkykY8CRMgysT3rfdyrsAVxhAzCLgMhZkgpVyZ7+37gPbMCcwqBVLfwdvPlmDtI+msTlPUa7i557Ez8QPUKzzUdf+pkjrzhknaELQRLDbP1gsODRD61qGyODrkhGKXsU+IoRki6yj12tI9c4oJaEszm+IEC8OhJE11I2X7aDooD4M4EdzZWF2oGpKEDcmv8kFHj4ObA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PdYbgl/NDtwsXtvy3otduiBQUF4UHGBVCLzB3KUDp4=;
 b=Eged3tAUxNV1NxrEMN4UtFL6UKUbi5m3R0jCZts6GKqo5fmkTPfxnFCe0TsO4yiQ5udBKienp5fGaKeU7OfQDkEgdCQR4CN3t5gBO/cGJAOY7jDgf8ihxyCBqEkYGRSrqaqpiwo9MfN6+yTfv7/GEgvSfqp06Klqf+J7Kqvj8uTwBEb1ATi8FIaREXUwNLMSZMt/YlEi31EwsoTEhdxqJfTuwUWxmXb9MVhVtdiDC/ZoH1SWn2h0gEt/LWdCJg/aFPJAZ+f321k17HanC3b1NVY7xfQYGbcVrDw5X0gWjlGBAZtKwtpnDf43MZRFG5vw5pMwxG3wwbz4EaYKKtF6YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PdYbgl/NDtwsXtvy3otduiBQUF4UHGBVCLzB3KUDp4=;
 b=qG+3UjvAUIuonbM8M60PsXTBOaKEpZ7pYQioA20jTY5osU0mghS8aweaCTdbHV6le5VYCnhfub6Xa7YuYEm35/wZ7jMa98E+xJFutrjJYlv/+xddZYwzYhBcM0SbqDWB6ti4aroK+8WbVkAhqiZhf0bAhQ5Ebwp0lOa+jzjrC4U=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 13/23] mtd: spi-nor: Move ISSI bits out of core.c
Thread-Topic: [PATCH 13/23] mtd: spi-nor: Move ISSI bits out of core.c
Thread-Index: AQHV8L19yOHfwZv2WUaAV9jwywSakg==
Date: Mon, 2 Mar 2020 18:07:52 +0000
Message-ID: <20200302180730.1886678-14-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9245ed43-e168-4270-cc0d-08d7bed4a081
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142138DAA3ACB672C4F04F1F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KQW32EEFgnqZYkAH4oly7v3boTvh4MG8P9h7hys4qYBn8IOmIwsd+sYIKhKtORpSL+ogLNbDnE/2HPjSPIfw8eJNKJ0xdKVKuMulxAckjhFcb0KVqaHOXoUXmIqYvYh4ZSlx/tFZivcn3fZI3ZanMkGyivjkqdnsH8lCYZQIAI6ol4hS48ekI0l61VKYnYa0f9T/Eveo07VRvn3YcIL5scPbIi7G5dj2LRsSrRcfRZ5eikH7GD3RV0txJDWAlk6ebST4Rw/RYfqLrtkJEK3MSWD3X5b08QZ5c/ug13ogbcpS3FlsRNOzmEuimIOcmoFiSrmzaXo1Whp0iHpmE55veG0JLPCjtmjLBgzx5H4y2mOwgKhzv+2saRmZvvk5zPhAl+Etwu9qwjlgngyxNgPtqLH2VAtBcKVgLg8nXwAmybRrBlSf+kG2vWAltjiy7hxW
x-ms-exchange-antispam-messagedata: j/p9iDiWy/+mL0t0LpCxDYhue4DLh4RRdaqebEx5NcluY1FklVRHv6lE9yO+gkArZjwzOU+HCOvXlRE7NzMqVlhYDgSSouXlfC1x33dTWC5+w0dyvRvdB71pgC0qX5SZZ/sAmr0ATF5CyKfvAG/ipg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9245ed43-e168-4270-cc0d-08d7bed4a081
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:52.1345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9L4uwgHTu/Lfptij+BxQoE7J/yE9PS/WkjKMoMgH3TCJ6RyiFVaE6HZT9AiQrblNmee/E2w4AvL6wqBIHkLj6dI6d3N9sFRqUIVfPshvWkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100825_834267_2D6488C7 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 Tudor.Ambarus@microchip.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Create a SPI NOR manufacturer driver for ISSI chips, and move the
ISSI definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   | 66 +---------------------------
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/issi.c   | 83 ++++++++++++++++++++++++++++++++++++
 4 files changed, 86 insertions(+), 65 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/issi.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 8eb741a27fa7..5c849f104cc4 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -8,4 +8,5 @@ spi-nor-objs			+= everspin.o
 spi-nor-objs			+= fujitsu.o
 spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
+spi-nor-objs			+= issi.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 2f47852a3a01..d781cb9af182 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2005,28 +2005,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int
-is25lp256_post_bfpt_fixups(struct spi_nor *nor,
-			   const struct sfdp_parameter_header *bfpt_header,
-			   const struct sfdp_bfpt *bfpt,
-			   struct spi_nor_flash_parameter *params)
-{
-	/*
-	 * IS25LP256 supports 4B opcodes, but the BFPT advertises a
-	 * BFPT_DWORD1_ADDRESS_BYTES_3_ONLY address width.
-	 * Overwrite the address width advertised by the BFPT.
-	 */
-	if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
-		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
-		nor->addr_width = 4;
-
-	return 0;
-}
-
-static struct spi_nor_fixups is25lp256_fixups = {
-	.post_bfpt = is25lp256_post_bfpt_fixups,
-};
-
 static int
 mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
 			    const struct sfdp_parameter_header *bfpt_header,
@@ -2064,35 +2042,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* ISSI */
-	{ "is25cd512",  INFO(0x7f9d20, 0, 32 * 1024,   2, SECT_4K) },
-	{ "is25lq040b", INFO(0x9d4013, 0, 64 * 1024,   8,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp016d", INFO(0x9d6015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp080d", INFO(0x9d6014, 0, 64 * 1024,  16,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp032",  INFO(0x9d6016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp064",  INFO(0x9d6017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp128",  INFO(0x9d6018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp256",  INFO(0x9d6019, 0, 64 * 1024, 512,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES)
-			.fixups = &is25lp256_fixups },
-	{ "is25wp032",  INFO(0x9d7016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp064",  INFO(0x9d7017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
-			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			    SPI_NOR_4B_OPCODES)
-		       .fixups = &is25lp256_fixups },
-
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
@@ -2173,11 +2122,6 @@ static const struct flash_info spi_nor_ids[] = {
 			     SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			     SPI_NOR_4B_OPCODES) },
 
-	/* PMC */
-	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, SECT_4K_PMC) },
-	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, SECT_4K) },
-
 	/* Spansion/Cypress -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
@@ -2366,6 +2310,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_fujitsu,
 	&spi_nor_gigadevice,
 	&spi_nor_intel,
+	&spi_nor_issi,
 };
 
 static const struct flash_info *
@@ -3145,11 +3090,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void issi_set_default_init(struct spi_nor *nor)
-{
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-}
-
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
@@ -3183,10 +3123,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_ISSI:
-		issi_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_MACRONIX:
 		macronix_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index c4c23efaa68b..b4ed9acbef63 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -174,6 +174,7 @@ extern const struct spi_nor_manufacturer spi_nor_everspin;
 extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
+extern const struct spi_nor_manufacturer spi_nor_issi;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/issi.c b/drivers/mtd/spi-nor/issi.c
new file mode 100644
index 000000000000..3a1c34c41388
--- /dev/null
+++ b/drivers/mtd/spi-nor/issi.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005, Intec Automation Inc.
+ * Copyright (C) 2014, Freescale Semiconductor, Inc.
+ */
+
+#include <linux/mtd/spi-nor.h>
+
+#include "core.h"
+
+static int
+is25lp256_post_bfpt_fixups(struct spi_nor *nor,
+			   const struct sfdp_parameter_header *bfpt_header,
+			   const struct sfdp_bfpt *bfpt,
+			   struct spi_nor_flash_parameter *params)
+{
+	/*
+	 * IS25LP256 supports 4B opcodes, but the BFPT advertises a
+	 * BFPT_DWORD1_ADDRESS_BYTES_3_ONLY address width.
+	 * Overwrite the address width advertised by the BFPT.
+	 */
+	if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
+		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
+		nor->addr_width = 4;
+
+	return 0;
+}
+
+static struct spi_nor_fixups is25lp256_fixups = {
+	.post_bfpt = is25lp256_post_bfpt_fixups,
+};
+
+static const struct flash_info issi_parts[] = {
+	/* ISSI */
+	{ "is25cd512",  INFO(0x7f9d20, 0, 32 * 1024,   2, SECT_4K) },
+	{ "is25lq040b", INFO(0x9d4013, 0, 64 * 1024,   8,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp016d", INFO(0x9d6015, 0, 64 * 1024,  32,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp080d", INFO(0x9d6014, 0, 64 * 1024,  16,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp032",  INFO(0x9d6016, 0, 64 * 1024,  64,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp064",  INFO(0x9d6017, 0, 64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp128",  INFO(0x9d6018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp256",  INFO(0x9d6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_4B_OPCODES)
+		.fixups = &is25lp256_fixups },
+	{ "is25wp032",  INFO(0x9d7016, 0, 64 * 1024,  64,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp064",  INFO(0x9d7017, 0, 64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_4B_OPCODES)
+		.fixups = &is25lp256_fixups },
+
+	/* PMC */
+	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
+	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, SECT_4K_PMC) },
+	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, SECT_4K) },
+};
+
+static void issi_default_init(struct spi_nor *nor)
+{
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+}
+
+static const struct spi_nor_fixups issi_fixups = {
+	.default_init = issi_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_issi = {
+	.name = "issi",
+	.parts = issi_parts,
+	.nparts = ARRAY_SIZE(issi_parts),
+	.fixups = &issi_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
