Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1060A176376
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 20:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InI7cdDx4zibGa5TzuKE9CcL6BHukav5oHSRKp6FWOc=; b=Eh8b7y7VecPZz3
	y3sATrhDdK/dycRRDKVl+Tgb4gCYi2l1kmLEh9Yh3VyvHCLb9qcEz2wmbGn4HgKVwFytNk0vfbtmI
	5eBunMKA7hJtRuTl5QFfYccWbu1mf7+py39dix4keH1nFMGgSGHlZtEdTBA/QG7tg95w07sdg4dG8
	xZeYIAZLdV/HbKFeAtzT0uasGy7IWPzvKO7czCngLHSYsIkPhiJW79oTSbkE9c/dPdFfKkaLFHFc3
	iJnoyjrjsWR5TutFacXbs1bfDhp8o5nMIBuMXmVtBaA2R+muWVcG5kFzaCMeOocoz1Lil8uJrs8no
	eqGPuoe5/JTzztIX6/3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qQo-0004Dd-L3; Mon, 02 Mar 2020 19:08:46 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qQG-00041S-OE; Mon, 02 Mar 2020 19:08:15 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 25a61BBHKfSEBt0787ei52j8Li18LJhSbIVdfR++kTxSS0ZFiYZ3OZy+GNFEmbWdz7A3p9amLM
 WyXAFvSSkxx2Ex8S77a5WSkwSHkkJfzwkQbZsozzW87OJbI95cBVIAp8IlXwZDQIawmh6tYupv
 Xysm7Krir2yRftqts3MzlHqwb4AeTX1XLWl0GXQWvhGnYoxqqAlWqC7lEIa5YB2Se5OjOwS9zE
 aD8hN/JaWuO7SUe0Nr0LlBhGBcwSSKYUUf+K7OPoZZcFhm0ha7csuUBYe3X3M7TUwIHPbE9R7P
 bd4=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="68560239"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 12:08:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:07:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfOjWShQvq9wN+Af5BsBrw6zaphSzQ1+oaaTcs/mSjlxeXA9EvIzmKK/0rwGqB7qf5Yh4jmztMk1WIM6/5NqJ6Cya0FxsLjKA8Ayn2F3IXbXnxVZiY24msCxjNVDS1nOQQHUNqVxMEm4Ur6QEqZzklaXqCzsjdv3Yi0CkqMbxKl2Q3RZn7cwUKgOTH6nD3rmx3nuPJgtAF7v1ZS35hk9EA8+mQ+vOtnbVxP7ZX12sCJydC5r21Y6/AxVxMfTSUp0Z2gxMAT5KMFH6mqKptHzz4Uay1K1DlO3H2HHOpdITnXF3n6S54/iGRN8s8GCEP7pMNReBUayCiOU/rzgY008AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gwj1lewlxCZuz128eBqYG52vJvp4tGNB6R+jDwK7r0=;
 b=Anp1xhwsmSzQMv95A10pA8Z2h81m5jA4JbTnfAXQ+GYSe941D3TttpYh2+GIIht3Iqg7a373dTtjlTeXEWfFmSYEOZHtf3CQ+edJTiN0EvpOLbS+chgRhMrPEeIcDGCjNw/j/FmnhGgHD4J0QdVx9trRab/oAog+2trVInLbixkT8b4YSFGXXMtog3sTbmQeyrEX18l67VrbNe51BodEIJST2LKsXJhoMjYA73VllR6VZRnkQa3f6ka76lel77n/AxpfeTnqO7VrMPqGZVwOJz9h01Ye/guhTtPQLKSKd5eCfF2v8ppQfds0eo8MKgyaFN/lNE8+hdFVmmsajxwZew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gwj1lewlxCZuz128eBqYG52vJvp4tGNB6R+jDwK7r0=;
 b=Cun2n6OKwy38J3ufkV/6EWmYh6y2XZ3hzrMvsVcA+rTAdW2DxyiV/TRjaX57H3cuaa8+pR+lnAteBj+qK7rEx1W6RiZ14qDjTisqocumN8hNTvq52mugANzIuqeYcKyNo7egAMGnDZWuEcPi9LmiEIrWdjeIQHChspuytJIDTLI=
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
Subject: [PATCH 14/23] mtd: spi-nor: Move Macronix bits out of core.c
Thread-Topic: [PATCH 14/23] mtd: spi-nor: Move Macronix bits out of core.c
Thread-Index: AQHV8L19HP3cY3GvdkWxB5UapEKh2w==
Date: Mon, 2 Mar 2020 18:07:52 +0000
Message-ID: <20200302180730.1886678-15-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f43afd0-015d-4762-19c3-08d7bed4a0bf
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142F051D74CF0EBF160EF6AF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: c2VpvChI3girNijLyFizMAdzMZU9SvbH6mqgrTxAyh8AAXcRXRJxMW8UXoQKpUvQ/83vs3mBTXCHN713YF+yEbo0wAFdpU33clElOGZPixnY/DdFoj7J4CyJSqcrMaeu1eZPcojoH/dfJFHoghqOlzwvLkCPJ1sxPlUDPPqExW9/gntujzVBzabc578t1pxxOA7RO0LejRYfv7qSNh3GJv7oDoRIhip+7n4Z7rHzwNkmO6fmZ/pAMDHzBTcunO70uqQTrpux+KpnEt5e9+myqRM6F/K3S+WCpzShqFAkFHC0TW84FpUX/umFTOasLCmilJXMrGnZt7voQHkYzoHZxcqo8SI8H6PGa/T+S9bTwBe90geQwwFQ/lHp5O9acIdfYHhGG1feVyXHVn8/BhPcDKTmSjzC8FnGnTzzRha4sTSmZzGrfS7dDvPiIV3s/kbM
x-ms-exchange-antispam-messagedata: KP6hzj5kwUWWtFf4PZahsEpZ1K6lkfPz645tmXR7u6fZkYonIaufZgpvDVHpwbOybZqwpn4BXfqE1JGVXJJN+ggVgvAEGfHWxTIM/eJE1nCwjh1K3wBrdxginUkrz8/EsFB4Wa8LtmBlF+lLYVj+Gg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f43afd0-015d-4762-19c3-08d7bed4a0bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:52.6632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41CZ+FLZJcpK/so1+0jE7aXdk+veURya04JCeQUkbVGJi+yp1xgmg4/dPPGHi1N4KepF1Z5JBx92sLs1FMOWyHqj/JMCPL41BGAl3rF3lm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_110812_858863_0BA7E3F7 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Macronix chips, and move the
Macronix definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile   |  1 +
 drivers/mtd/spi-nor/core.c     | 69 +-----------------------
 drivers/mtd/spi-nor/core.h     |  1 +
 drivers/mtd/spi-nor/macronix.c | 98 ++++++++++++++++++++++++++++++++++
 4 files changed, 101 insertions(+), 68 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/macronix.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 5c849f104cc4..c94798987801 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -9,4 +9,5 @@ spi-nor-objs			+= fujitsu.o
 spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
 spi-nor-objs			+= issi.o
+spi-nor-objs			+= macronix.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index d781cb9af182..9d0e0fc5af45 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2005,31 +2005,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int
-mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
-			    const struct sfdp_parameter_header *bfpt_header,
-			    const struct sfdp_bfpt *bfpt,
-			    struct spi_nor_flash_parameter *params)
-{
-	/*
-	 * MX25L25635F supports 4B opcodes but MX25L25635E does not.
-	 * Unfortunately, Macronix has re-used the same JEDEC ID for both
-	 * variants which prevents us from defining a new entry in the parts
-	 * table.
-	 * We need a way to differentiate MX25L25635E and MX25L25635F, and it
-	 * seems that the F version advertises support for Fast Read 4-4-4 in
-	 * its BFPT table.
-	 */
-	if (bfpt->dwords[BFPT_DWORD(5)] & BFPT_DWORD5_FAST_READ_4_4_4)
-		nor->flags |= SNOR_F_4B_OPCODES;
-
-	return 0;
-}
-
-static struct spi_nor_fixups mx25l25635_fixups = {
-	.post_bfpt = mx25l25635_post_bfpt_fixups,
-};
-
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2042,39 +2017,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Macronix */
-	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
-	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
-	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
-	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
-	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25u3235f",	 INFO(0xc22536, 0, 64 * 1024,  64,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
-	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
-	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
-	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
-	{ "mx25r3235f",  INFO(0xc22816, 0, 64 * 1024,  64,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25u12835f", INFO(0xc22538, 0, 64 * 1024, 256,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512,
-			 SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
-			 .fixups = &mx25l25635_fixups },
-	{ "mx25u25635f", INFO(0xc22539, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_4B_OPCODES) },
-	{ "mx25v8035f",  INFO(0xc22314, 0, 64 * 1024,  16,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
-	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "mx66u51235f", INFO(0xc2253a, 0, 64 * 1024, 1024, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "mx66l1g45g",  INFO(0xc2201b, 0, 64 * 1024, 2048, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048, SPI_NOR_QUAD_READ) },
-
 	/* Micron <--> ST Micro */
 	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
@@ -2311,6 +2253,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_gigadevice,
 	&spi_nor_intel,
 	&spi_nor_issi,
+	&spi_nor_macronix,
 };
 
 static const struct flash_info *
@@ -3090,12 +3033,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void macronix_set_default_init(struct spi_nor *nor)
-{
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-	nor->params.set_4byte = spi_nor_en4_ex4_set_4byte;
-}
-
 static void sst_set_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
@@ -3123,10 +3060,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_MACRONIX:
-		macronix_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_ST:
 	case SNOR_MFR_MICRON:
 		st_micron_set_default_init(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index b4ed9acbef63..9af3a701de95 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -175,6 +175,7 @@ extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
 extern const struct spi_nor_manufacturer spi_nor_issi;
+extern const struct spi_nor_manufacturer spi_nor_macronix;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/macronix.c b/drivers/mtd/spi-nor/macronix.c
new file mode 100644
index 000000000000..1ae609c44676
--- /dev/null
+++ b/drivers/mtd/spi-nor/macronix.c
@@ -0,0 +1,98 @@
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
+mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
+			    const struct sfdp_parameter_header *bfpt_header,
+			    const struct sfdp_bfpt *bfpt,
+			    struct spi_nor_flash_parameter *params)
+{
+	/*
+	 * MX25L25635F supports 4B opcodes but MX25L25635E does not.
+	 * Unfortunately, Macronix has re-used the same JEDEC ID for both
+	 * variants which prevents us from defining a new entry in the parts
+	 * table.
+	 * We need a way to differentiate MX25L25635E and MX25L25635F, and it
+	 * seems that the F version advertises support for Fast Read 4-4-4 in
+	 * its BFPT table.
+	 */
+	if (bfpt->dwords[BFPT_DWORD(5)] & BFPT_DWORD5_FAST_READ_4_4_4)
+		nor->flags |= SNOR_F_4B_OPCODES;
+
+	return 0;
+}
+
+static struct spi_nor_fixups mx25l25635_fixups = {
+	.post_bfpt = mx25l25635_post_bfpt_fixups,
+};
+
+static const struct flash_info macronix_parts[] = {
+	/* Macronix */
+	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
+	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
+	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
+	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
+	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
+	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
+	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
+	{ "mx25u3235f",	 INFO(0xc22536, 0, 64 * 1024,  64,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
+	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
+	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
+	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
+	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
+	{ "mx25r3235f",  INFO(0xc22816, 0, 64 * 1024,  64,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25u12835f", INFO(0xc22538, 0, 64 * 1024, 256,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
+		.fixups = &mx25l25635_fixups },
+	{ "mx25u25635f", INFO(0xc22539, 0, 64 * 1024, 512,
+			      SECT_4K | SPI_NOR_4B_OPCODES) },
+	{ "mx25v8035f",  INFO(0xc22314, 0, 64 * 1024,  16,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
+	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      SPI_NOR_4B_OPCODES) },
+	{ "mx66u51235f", INFO(0xc2253a, 0, 64 * 1024, 1024,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "mx66l1g45g",  INFO(0xc2201b, 0, 64 * 1024, 2048,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048,
+			      SPI_NOR_QUAD_READ) },
+};
+
+static void macronix_default_init(struct spi_nor *nor)
+{
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+	nor->params.set_4byte = spi_nor_en4_ex4_set_4byte;
+}
+
+static const struct spi_nor_fixups macronix_fixups = {
+	.default_init = macronix_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_macronix = {
+	.name = "macronix",
+	.parts = macronix_parts,
+	.nparts = ARRAY_SIZE(macronix_parts),
+	.fixups = &macronix_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
