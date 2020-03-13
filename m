Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7A2184F6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YKXPKx0ToN37IkQSNeHI8pyyXaQhYbmrF+vJn1maxp4=; b=NyrsxjNso/16gH
	WrXrUjPvRoGKpgO9cBPC9/yoPJbf09AxraDeAXtl3mTnZi7zKCuDezgrrBnLLIzt49kj3k600j0Gg
	dwcr86FSyJwud44BnFqT5HaKANH147V0zV9CZCoDaN89CBMqF1qTXtgc96v3a16UJRJf2KFzn/MXE
	GbDT/1cwEXE31eURa6rUzNW8gDCs4+nT6GylC6nsnyX3d1Kw6L3k3Xf3ccNwkXMvf9xiGGurYuJ76
	mtQ7t1Vy2XmRPdJ+QHLzAUi7wQ/pUER4KdNl8qxMT09Pt4agJUWFYD0hCKi2WQhpM/Fm4DJwBzsq2
	zDzyD3w0hhPblQ5AKtgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqFk-0002tO-Dl; Fri, 13 Mar 2020 19:45:52 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCm-0008HT-IA; Fri, 13 Mar 2020 19:42:50 +0000
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
IronPort-SDR: 9ttlNS8zOuu9vt07IPjzIQaGZ3sgGJ0eJTsbALaOagb5UdX/QwwJh4rUnWpGKURLe8VMgoanuY
 X6M8+9wujMYBMB9btqSa1XVYIXXdnyMw/1FyVTp91yuYWJ8CkVmKO9RFO6e5hEVGrWOcnBr2R6
 wdsRNSW3tzagrdK7MLCiuzvTaHLCyCscRskSwzksSWF6dW8N1+cQNFspEEfzbHWa2e/hgYsp/G
 LQ8NR8PDic0W7X5+CG+A2ry56kaz3vIOMiocmObKTImgy7IiHjjP0wRqTW1ZmVxkwDflBIBagX
 MsY=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602885"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PD412v5dCXZAI+UUX/8cKQU9dEImOGgimzczn39+T2l2lLPVbJQgvscAu+YMCN7pO3cjpl1oSOwxss/R9XBNS9gedvm8sf/JiL8Zemh4gGDndU1uueKZEJjP86ym1GrhyU7lWfMx2qqsyhCh3rNknYVNFMifdV79ibybuW9QHRcFNJuhkTtL4OrjkR7XoKz4V5G7sPlQSaEBpAXC8tOC+0H/pqLEuvJ4hRO3yBcX9l+QGzlafEQ+rWtqo7RE97CZgb66cwUfsysyM0UC0e+MTT+p1NybNVrmcIgW1C1f7eoKHN3Pe8FreLlKnwHhj/WP9Y53tTRaomNDd6oXWEY5ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlm/0JUqWoF89986fmbTiYvf/XTB40ch8jD13ewCO1Y=;
 b=Ypj/2l35h9Sdr1L4WlzQdW/D+vhoXAbi45VMi116j+Yxj+Jod4Es83q16/6tw/mkeD7WjBYSsSxeJkzGTolHlw66OMZylNYZ22HkoO9Zg7eZFnpx9pHX1oKv4aoPvr3IWcK2Kxnogt/nru+krT9a+/jO35JJRMJ6Soo/IExqsitfBKraTFsCQIzFlw+Eg0nBiW653/8plSQA7gFcgzv9HSqNOJ5bUgwD82cwWczUrd6LaWhgx4cZwYbVkjXtbSMEj1AJS3NZcvom9AboVqy/TU58AZm8Yx5kayo3l5hYKMMUYfifuflnIUPHoIuKt105Who/XuSrtk5cTJCajh5egA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlm/0JUqWoF89986fmbTiYvf/XTB40ch8jD13ewCO1Y=;
 b=gbu9CQKCjTpF9M98Bnpy+kWGAHQP4puYH2e3LkCTUFMIqYrTDeebfSniQH52msZariDlrBShXJ+jnxgCp+XOqElolVpcf0Mix157RB5lNxKv6C1Fl+Z+yXFpNcwQMg4k3GI0EbmBMHwKXtB3jFgTlG8qjMJhEJleL/9Rambm1XY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:33 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:33 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 00/25] mtd: spi-nor: Move manufacturer/SFDP code out
Thread-Topic: [PATCH v2 00/25] mtd: spi-nor: Move manufacturer/SFDP code out
Thread-Index: AQHV+W+KYE9fHU+ne0GupK9M0z2kHg==
Date: Fri, 13 Mar 2020 19:42:33 +0000
Message-ID: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4121213-4d04-4b61-ec11-08d7c786ace6
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4399C14F923C4CBE7924BB29F0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(110136005)(26005)(86362001)(107886003)(8936002)(54906003)(6512007)(8676002)(966005)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RVZFIv9/72DJa9jcsABR+FdTYvfxn29leqYEqqMWmU1cKSqohP6vYtcqnDNAnu2RH5lwM+UudRiVCS6RornIthE5XApBlXhN/apSds0YgPai/qbpf8TrEBthqQMJnsf8q2F7p9g/puI/PcaU7CU4KOAeFQyak2Wp72Hvif745Nf6jwYLtJauOByuMt57Dsa75sJOKr/yXSXl2L6X15rsI+nOKvXTm2RK30RS0FMkclRfdibBY3vjVr2hQ9Hty+61PzHqriI6RrrvPqNOolnJgX3FyIUBi99Vw9e9NNVceBU3hWBATw3KlhRiNlTjk72PwhxTIMogOT6jlh/Gv5Oiz+9i/Vb97tvNJvIGvtp77Uw5DLzCXjCv6IoYPkYx8b3hr67hedflGChTt2SliojN0SveF2GvTMud0gJLqW7YcMYkHGwJEUK2gYm3CUwv7/DkizOCjDDvE0IUh1PkZ/AX2Xy5HXJidnag3zXNpy/1+z3gdLaJ7DYfccg5BPGMh7M034Z1x8RKwtb4Poc3Ewr9TA==
x-ms-exchange-antispam-messagedata: TXrZ77gUdMgtUXMMGF6DcVyvEW0TdOezYCj/JNtb6Wsdst9AoQByMAkJkWHprdhNkbvmAm8kyjNJyF5piC/C5xjQsgWWnIV0rWwwz93aR5GL6Mc0ZAqxRqhLPe1OmkgB55pQqFRFVyIswObQeaZIWw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f4121213-4d04-4b61-ec11-08d7c786ace6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:33.5834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HV20em2JWcJ8SK8mDVeDIXlsoz6ZajXr04hSmfJrcaj0Exuju6qZjhCLaSX9lkbOU2Vg0QK2bnnlZPqikuW5c/WACchcyM4UlQ3ewHJuLbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124248_644529_AA887CDF 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Hello,

This patch series is an attempt at getting all manufacturer specific
quirks/code out of the core to make the core logic more readable and
thus ease maintainance.

This is a respin of the last chunk of Boris's work from
https://patchwork.ozlabs.org/cover/1009290/.

(Re)tested an erase-write-read-compare with a 1MB file on the following
flashes: n25q256a, w25q256jvm, is25lp256, gd25q256, mx25l25635e,
s25fl256s0.

v2:
1/ The mtk-quadspi driver was replaced by a new spi-mtk-nor driver.
In order to test these, one has to merge the mtk-mtd-spi-move from
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git,
in spi-nor/next and add this patch set on top of the merge.

2/ new patch:
mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode()
    method
- macronix_set_4byte() is renamed to spi_nor_set_4byte_addr_mode(),
  it will be the only 4 byte address mode method exposed to the
  manufacturer drivers
- adapt the rest of the patches based on this

3/ new patch
mtd: spi-nor: Drop the MFR definitions
- MFR definitions are unlikely to be used, drop them.

Boris Brezillon (21):
  mtd: spi-nor: Stop prefixing generic functions with a manufacturer
    name
  mtd: spi-nor: Prepare core / manufacturer code split
  mtd: spi-nor: Expose stuctures and functions to manufacturer drivers
  mtd: spi-nor: Add the concept of SPI NOR manufacturer driver
  mtd: spi-nor: Move Atmel bits out of core.c
  mtd: spi-nor: Move Eon bits out of core.c
  mtd: spi-nor: Move ESMT bits out of core.c
  mtd: spi-nor: Move Everspin bits out of core.c
  mtd: spi-nor: Move Fujitsu bits out of core.c
  mtd: spi-nor: Move GigaDevice bits out of core.c
  mtd: spi-nor: Move Intel bits out of core.c
  mtd: spi-nor: Move ISSI bits out of core.c
  mtd: spi-nor: Move Macronix bits out of core.c
  mtd: spi-nor: Move Micron/ST bits out of core.c
  mtd: spi-nor: Move Spansion bits out of core.c
  mtd: spi-nor: Move SST bits out of core.c
  mtd: spi-nor: Move Winbond bits out of core.c
  mtd: spi-nor: Move Catalyst bits out of core.c
  mtd: spi-nor: Move Xilinx bits out of core.c
  mtd: spi-nor: Move XMC bits out of core.c
  mtd: spi-nor: Get rid of the now empty spi_nor_ids[] table

Tudor Ambarus (4):
  mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode()
    method
  mtd: spi-nor: Move SFDP logic out of the core
  mtd: spi-nor: Drop the MFR definitions
  mtd: spi-nor: Trim what is exposed in spi-nor.h

 drivers/mtd/spi-nor/Kconfig                   |   75 +-
 drivers/mtd/spi-nor/Makefile                  |   25 +-
 drivers/mtd/spi-nor/atmel.c                   |   46 +
 drivers/mtd/spi-nor/catalyst.c                |   29 +
 drivers/mtd/spi-nor/controllers/Kconfig       |   75 +
 drivers/mtd/spi-nor/controllers/Makefile      |    8 +
 .../spi-nor/{ => controllers}/aspeed-smc.c    |    0
 .../{ => controllers}/cadence-quadspi.c       |    0
 .../mtd/spi-nor/{ => controllers}/hisi-sfc.c  |    0
 .../spi-nor/{ => controllers}/intel-spi-pci.c |    0
 .../{ => controllers}/intel-spi-platform.c    |    0
 .../mtd/spi-nor/{ => controllers}/intel-spi.c |    0
 .../mtd/spi-nor/{ => controllers}/intel-spi.h |    0
 .../mtd/spi-nor/{ => controllers}/nxp-spifi.c |    0
 drivers/mtd/spi-nor/{spi-nor.c => core.c}     | 2501 ++---------------
 drivers/mtd/spi-nor/core.h                    |  431 +++
 drivers/mtd/spi-nor/eon.c                     |   34 +
 drivers/mtd/spi-nor/esmt.c                    |   25 +
 drivers/mtd/spi-nor/everspin.c                |   27 +
 drivers/mtd/spi-nor/fujitsu.c                 |   20 +
 drivers/mtd/spi-nor/gigadevice.c              |   59 +
 drivers/mtd/spi-nor/intel.c                   |   32 +
 drivers/mtd/spi-nor/issi.c                    |   83 +
 drivers/mtd/spi-nor/macronix.c                |   98 +
 drivers/mtd/spi-nor/micron-st.c               |  153 +
 drivers/mtd/spi-nor/sfdp.c                    | 1205 ++++++++
 drivers/mtd/spi-nor/sfdp.h                    |   98 +
 drivers/mtd/spi-nor/spansion.c                |   95 +
 drivers/mtd/spi-nor/sst.c                     |  151 +
 drivers/mtd/spi-nor/winbond.c                 |  112 +
 drivers/mtd/spi-nor/xilinx.c                  |   94 +
 drivers/mtd/spi-nor/xmc.c                     |   23 +
 include/linux/mtd/spi-nor.h                   |  275 +-
 33 files changed, 3120 insertions(+), 2654 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/atmel.c
 create mode 100644 drivers/mtd/spi-nor/catalyst.c
 create mode 100644 drivers/mtd/spi-nor/controllers/Kconfig
 create mode 100644 drivers/mtd/spi-nor/controllers/Makefile
 rename drivers/mtd/spi-nor/{ => controllers}/aspeed-smc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/cadence-quadspi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/hisi-sfc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-pci.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-platform.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.h (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/nxp-spifi.c (100%)
 rename drivers/mtd/spi-nor/{spi-nor.c => core.c} (51%)
 create mode 100644 drivers/mtd/spi-nor/core.h
 create mode 100644 drivers/mtd/spi-nor/eon.c
 create mode 100644 drivers/mtd/spi-nor/esmt.c
 create mode 100644 drivers/mtd/spi-nor/everspin.c
 create mode 100644 drivers/mtd/spi-nor/fujitsu.c
 create mode 100644 drivers/mtd/spi-nor/gigadevice.c
 create mode 100644 drivers/mtd/spi-nor/intel.c
 create mode 100644 drivers/mtd/spi-nor/issi.c
 create mode 100644 drivers/mtd/spi-nor/macronix.c
 create mode 100644 drivers/mtd/spi-nor/micron-st.c
 create mode 100644 drivers/mtd/spi-nor/sfdp.c
 create mode 100644 drivers/mtd/spi-nor/sfdp.h
 create mode 100644 drivers/mtd/spi-nor/spansion.c
 create mode 100644 drivers/mtd/spi-nor/sst.c
 create mode 100644 drivers/mtd/spi-nor/winbond.c
 create mode 100644 drivers/mtd/spi-nor/xilinx.c
 create mode 100644 drivers/mtd/spi-nor/xmc.c

-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
