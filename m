Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0B17623B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DP9g2Scq68c38R8xLhEKWKkUfzoTUwPkBc7Yb6n9WOg=; b=lviLElRLwm7bSI
	mNtRkUXITJonmPZUvvrzNT6udk6rrSiNNPkem9XxCfiSBXZjtTTJ7t0HowIwQxtRa8ZY8DbKrY9Ns
	SX4FF+Qxny0uGklK0+3pwwkJXznWEQx5Fhh0Kuoja0Z2aK+x4Wcj0VKb6u180lhESXVM/JHytBkjs
	TcPfq6Fl4yRiaAjcrTkQUqn1CRJrzyOvmzPku235H+DmVZ4uA3V7aVbP8govuteFcJpxbZGqgAnHt
	opflutkD/+SlZHK+eMlsXLMTWTaVZrz7/naM2RfAVE8rkf3vp8St3DltTDpCB8xGYshuOHoGL7BGf
	19Z6vphoeth3mo0YMw3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pcN-0003VH-Sy; Mon, 02 Mar 2020 18:16:39 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pUR-0003J9-32; Mon, 02 Mar 2020 18:08:29 +0000
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
IronPort-SDR: FeesXFe03mlIMxX9h9R26WuNWfh6bPFMpibVw4ZzPgl5EpGgNfRkBznVMui9fTykx6Z5j4ZjYE
 qw6V/R5FebuwqfH9UmHV3SbC1AUqHK49F4Pr6geVyQsrvuig38izjkE1BaNRnr2VNLeaqdVrg3
 rI1mbdl9TgqHVYiz7IYUuMVTvGzYrLdqcH3zhbLC/3WRXTBRvhP6YJS57ui/uTnjEHi5MiS8f4
 AcHTUZWb5/dQZzBCDj+SKgQ3lxz6ZOfvD885Ns3fK5B8A4NFR6sE7A9se9dF4jZ21JtuItEc83
 /IU=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4204978"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGzPAkIBoWp8FmdKQpRyene0nNbZsfAmImkzUINX9iHOv2bvOXhgvWZCiLGnifbj8lIYch6AjpfxpL5GkMAYk7fOgJydC7egafTZovMElFd4vxSECRfb+lpxZLfkL9Ne7mM9utApL3XaMIg3nSh37LsgmduWQHbJGslZaUNdvNES3eD1No36qEiT26qoIYx78lmWJE02hQXNXYih0i5DShFtS5ulTDuaaA95Xq/CdAcExeILm+Rn6urg/jnYXBddkucl4Q6qkd/Z9Rq+qZpeyrY1MpnVfs0aNquEz3l3sOykvS+EQjkuMkvKTRcmKIcpNNOE74+cifZmGLTTA0Am7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=28efHpy5+qnjNQZZXz8oaJ/XvGQVPhWHcj0wIyNGM74=;
 b=oDsutyyUf3VcgQPTW2bx26upAppyllIUXndmwMUoriibPSfzUo3HBH0yoIKmM3xq1Pu/8xqWWWzniTcpG7+8n1PxPQO/S1B7UvSjonV03Fj457VcDP1qXK+hyKve/ms3fQs7QcpN8AHgtxTKzigKl9lDTfjqsmUkty/4OEpOoN2g/tFnYf4IMDVSddPJlykHXnNELaxamc6XzqW6d6RhgspNMpvlUKDiPPCmm4Rn+km4uyTK8MJFRUqZtHc7UQf3tbL34s7a6+utUFIBSXlsnPTzV/xgsVHWf33y+OnG6D4paqH96AabrDQM9aQkuXwNb7I4jFHQ2IH4XgA4aHXkJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=28efHpy5+qnjNQZZXz8oaJ/XvGQVPhWHcj0wIyNGM74=;
 b=tzFnqR6yG2HIwwKT2SLEYSIqMGc645dE2/awdeK7eCMZx5rRqoNmvBCCUgLAAyyHTh/thDe/0X/8dnuSmSOLHA2BozRFs8+59u348k/rgLpmzOzi4bo/qzPiYkKqomEr00c8r3ZG4YPierBqc5z5n0UVgskoIZ0IoP0Fmge79Kk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:52 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 11/23] mtd: spi-nor: Move GigaDevice bits out of core.c
Thread-Topic: [PATCH 11/23] mtd: spi-nor: Move GigaDevice bits out of core.c
Thread-Index: AQHV8L189u/J/tcBg0STzFC5Ld2G3Q==
Date: Mon, 2 Mar 2020 18:07:51 +0000
Message-ID: <20200302180730.1886678-12-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adada42a-1df0-46aa-35d3-08d7bed49ffc
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142F15CA713DF4D4905269BF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: 9mNqv0DoRbHoGmkHUT8mB85ve4ZUHd5ZphO8V+L6SbdXk834DBXqy6swG92J4dzp7WomHAvidu1pRL7V9aKTcjp/xrzQtlJ8Z0zQTLx2jJdMIUv/tLPSw1+Ml55NpT+ov9Pi8eibMciKZIWgzdsTFLazijUh10SbUza88MqlJ4V8UZAvBp5Pm4mYSOqMKdZfvqEFML3hiJi0F92SXDhC7C9pVZJb36TOpZkY/wYILOI43QCDOc4/8yK6qzaZhw2DzgfTbyZ45iXJAqeACUa4wgJFUKbnS4UQNlpE63D8a63Far/vZjvkkH3NMtID9DgrDo39E3USn6NSCQ5ZfQlz+oRC0VzjmpxgW8Q2Ud2oPL3vaUj97ZM1ADP/LtEKt1Ig6fFLfntY/mttmbJfoT0aTJRnHsOZJdYrBXzZaU9NYSxWZ1dbJMkc9chJ5pRYAPm6
x-ms-exchange-antispam-messagedata: qn5hAdcl/YkklziJep35TRkjrEeBr6vV/Po227zOM8GAlQH8RBz7JEiXH8PxV1qq2SBhDQMnkXizpf661HghjHvYx4YsjHwFRnM0juXFKwu/PwNvgOmQXThPGvNDk4ejPeox0uvr85xZKlkBSY6/Og==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: adada42a-1df0-46aa-35d3-08d7bed49ffc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:51.0652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dkXvj74YaakFf4N1shlujN8nMeIFQwbSzQVnhrl+peUo6BmadEDQaXb3z6lLOceZAZ6UBulfbLn1fX+c5otSyro9npv6tHSVBoyQxQUTkcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100827_287081_8DA7DA3F 
X-CRM114-Status: GOOD (  12.08  )
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

Create a SPI NOR manufacturer driver for GigaDevice chips, and move the
GigaDevice definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile     |  1 +
 drivers/mtd/spi-nor/core.c       | 60 +-------------------------------
 drivers/mtd/spi-nor/core.h       |  1 +
 drivers/mtd/spi-nor/gigadevice.c | 59 +++++++++++++++++++++++++++++++
 4 files changed, 62 insertions(+), 59 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/gigadevice.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index ca6222d98b0f..38f704be4b03 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -6,4 +6,5 @@ spi-nor-objs			+= eon.o
 spi-nor-objs			+= esmt.o
 spi-nor-objs			+= everspin.o
 spi-nor-objs			+= fujitsu.o
+spi-nor-objs			+= gigadevice.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 3f3955bbbb70..8520423b1104 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2052,21 +2052,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
 	.post_bfpt = mx25l25635_post_bfpt_fixups,
 };
 
-static void gd25q256_default_init(struct spi_nor *nor)
-{
-	/*
-	 * Some manufacturer like GigaDevice may use different
-	 * bit to set QE on different memories, so the MFR can't
-	 * indicate the quad_enable method for this case, we need
-	 * to set it in the default_init fixup hook.
-	 */
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-}
-
-static struct spi_nor_fixups gd25q256_fixups = {
-	.default_init = gd25q256_default_init,
-};
-
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2079,50 +2064,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* GigaDevice */
-	{
-		"gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q32", INFO(0xc84016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq32", INFO(0xc86016, 0, 64 * 1024, 64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q64", INFO(0xc84017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq64c", INFO(0xc86017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq128d", INFO(0xc86018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q128", INFO(0xc84018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB |
-			SPI_NOR_TB_SR_BIT6)
-			.fixups = &gd25q256_fixups,
-	},
-
 	/* Intel/Numonyx -- xxxs33b */
 	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
 	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
@@ -2428,6 +2369,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_esmt,
 	&spi_nor_everspin,
 	&spi_nor_fujitsu,
+	&spi_nor_gigadevice,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 1b9f7402e5ff..c44802a05532 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -172,6 +172,7 @@ extern const struct spi_nor_manufacturer spi_nor_eon;
 extern const struct spi_nor_manufacturer spi_nor_esmt;
 extern const struct spi_nor_manufacturer spi_nor_everspin;
 extern const struct spi_nor_manufacturer spi_nor_fujitsu;
+extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/gigadevice.c b/drivers/mtd/spi-nor/gigadevice.c
new file mode 100644
index 000000000000..7930e4490dab
--- /dev/null
+++ b/drivers/mtd/spi-nor/gigadevice.c
@@ -0,0 +1,59 @@
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
+static void gd25q256_default_init(struct spi_nor *nor)
+{
+	/*
+	 * Some manufacturer like GigaDevice may use different
+	 * bit to set QE on different memories, so the MFR can't
+	 * indicate the quad_enable method for this case, we need
+	 * to set it in the default_init fixup hook.
+	 */
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+}
+
+static struct spi_nor_fixups gd25q256_fixups = {
+	.default_init = gd25q256_default_init,
+};
+
+static const struct flash_info gigadevice_parts[] = {
+	{ "gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq32", INFO(0xc86016, 0, 64 * 1024, 64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq64c", INFO(0xc86017, 0, 64 * 1024, 128,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq128d", INFO(0xc86018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK |
+			   SPI_NOR_HAS_TB | SPI_NOR_TB_SR_BIT6)
+		.fixups = &gd25q256_fixups },
+};
+
+const struct spi_nor_manufacturer spi_nor_gigadevice = {
+	.name = "gigadevice",
+	.parts = gigadevice_parts,
+	.nparts = ARRAY_SIZE(gigadevice_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
