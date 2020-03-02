Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81B1176219
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EOPP7BV+5ZB7uLkqdxxU/4No6GO0NTUWVUUV2+U4V6U=; b=CzE+sYEX4CDWpx
	qVEUQD3rTc9rLh0NcKBDsMAj+4Az8Bv6Fq+ESOnuOxcPHLabNsD0sInohrW1gzyHw5Aqtas4I9y07
	Xx7HP0JKsQoPSKegJHijdglfmoTM+UlC60bA03sLmAZ32QmUt8Trx6alA9dWq0AkNmhs0N13t7sji
	o32cpSO5bv5Au56tZPI1M4+P1lU6jjSEOa0OHM48aAg+SpA27W2L+L5+8vWp50oVZc68v1XojcyiT
	d5eaBkHEKIrHRYTiW2m8ERcfvTk0LbMxK16oYGdX5TG+tWi6vMhTQs/IMJQmHL5fR4OwBftNutVp+
	5MltggRmhsboTT0abQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pXy-00078E-Te; Mon, 02 Mar 2020 18:12:06 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTv-0002iE-VM; Mon, 02 Mar 2020 18:07:58 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: VEedeoKzQDs5akiyyPYZgDQ0d/06P4UBtk1gVg+zFUcHdAHQdKCAWUdf44mfqYkaj87EG+nC+R
 PZIgC4cXNqHMkL2d2/H+JN9lUgM7OEBoN0P9dkzQ9fvj7DNE9t6HebQ+lRbGx1KwdSCZ8TREtk
 f62QVBfbsOkZL0sL61OgnT0yW6pY/Wmir6u2aPJgGsk8PoPXfgTTm3D0fDYa5zDveCZceVEG9M
 oBxIg3OcHyOAlMADqJ1TLa1swTL5wOWe83cdFWSmxNVPEp0OBERdLwoQDohDkYn1GKjGCk1KYp
 9fA=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="70457040"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZfEvfngjr6Jytl94aCD8eqDFM+RjQ4cDf9TF6x7CQA6l5Ugl2QXrM5OH0FSE8wLTsmt0wjhuMYJXjYbZgurXgGXGgGkqMhWttUkI1X+ba2101PEwfBJQgVFJoGLmrRowpCd4cG8XV1NXoE+LsN/yyr0ZgYdQ0Oq2THW/3wJ2ciTxIqkFRVL6rApu3oLsis9oN1LMji2PsameCJ58PQ3MNZ5Tnc4N1xhkfVzlQGelyQ5n/sv+AMnvZKIv7Y3FJZleWAOpDxP9Ub/nFNOhU7IZpB/lcrwdX+ZidBDK/UfCe2aczwnZ9n3vf+JWEe6HPQWugAU639EFVU++pz2zXZw2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l0poWXIWUj865ea3V41XIXQeb+XxEgWLA3jDuYlmD8U=;
 b=ib/2i+cy6D+jYaK3S6FzBWT6yUEnYjXns7BNQTRv9QLWLhEH2xsjTcsW7dTjvyoRaTsTAZ/hC9MDT0BpMTzT0rJeftmKLSSn+TxjVtzbpsx2FAn7xywja0duvP/4nqGoqcd6nWjIMYVaUi3t1U0NuekXbepTO3UMMOOJElMqCDnEssLQ/uu71cDR7QDm0mTRZnfNFwPraC39y8RwtLJAPiUjntfCW5aAd8NR6KFG86PHYBIxXTBbREQpV1qSKgOwHOBVMjspLINgczBvNlL1zWej2mAiE6EI2lEKH7SfuHBd9Kx4PD9zdNxzU4Tjf4TnicsEeel57YFXK6W/YwpcsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l0poWXIWUj865ea3V41XIXQeb+XxEgWLA3jDuYlmD8U=;
 b=NEY2Or0SeZWfCwEGW4iu2RPTKtrGnZwn18hE9z5WpExnTK58fsVKJEZ2iMFDYu5Qt0jIFctSDMLYSC/pW3KBFL9nfcfxxhYdLqMs7MY33o/i06sihZcvBl8NDu83dbxWyZ9OJL5b4gaYeXQtje0sKV3kiu8AgjAgmw9XCdkkT1o=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:45 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:44 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 00/23] mtd: spi-nor: Move manufacturer/SFDP code out of the
 core
Thread-Topic: [PATCH 00/23] mtd: spi-nor: Move manufacturer/SFDP code out of
 the core
Thread-Index: AQHV8L14v5uqqtrWhkmLNySK/DekJQ==
Date: Mon, 2 Mar 2020 18:07:44 +0000
Message-ID: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 444af767-c611-43ba-1ff9-08d7bed49b9c
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142DC62E61DACBD7A853FDDF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(966005)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ZLZ016wthleOCdLLXnodkIoGotUHh0pSw5SvYGKLZ6ieU5olsJf9PH6EOygE0zwHc2jbawSYf7RjhUtFnMkEVY4q5tAE85gsWL2oZfyfIuWSZgYrtM15W2a/Uw8fnmOnb7E9gukkqC8zGh2JyElTxmtCK1QtaW4pTP2m2xWXr5xdgoS54spIKFw1cbIFt0SM9w3zDV1TyKRT9vty70tGN4bMoVMyQY0SM3MnGbnnD08w0Kjw3OMX3JTbDhP4hxEP6qHUKbFSAHS9DMkXoHPo8zKUvM3k2UHZrESFXUATo/a+FvrSWory/z0yp0RtqfLnX4/l3iHjUQ1x1qiYV/Z983OQPeyhLrZdEHAIG0IpEmGZd7aGBwcuDutpcSrE/FOGpzQjRTgkTfyGI9u++Fm9nnDuW4xTWgXxfrwiRGW4sIrclypU05FVF0cWY1T6YdL8i1YeRQuQms0ryJMvtRT4M5Ldlf6yI/VMzuVsjPJhrBq+LzbPG5nFbxhG4oaTO9x/H/soESzAqqN4Uz0T9Xe/Q==
x-ms-exchange-antispam-messagedata: FYI25Qo23vceagk6v1CBXzs1C5ipXevLsya6bkDNVBxqm0tFarQIi/XNCTtVi8NKaEKkhbIXT6TmYVn2XI4gHKGzBCl4TEMdCMrXSxQHAdAWlLE5hUMRl5kKtOXfKXCTg53AR1SBqaw4++HFlB2YHg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 444af767-c611-43ba-1ff9-08d7bed49b9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:44.2842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ck4XWsk8HIzpx5ewUXAtPnzlq13/RAAN7cFnlC/OBwfRylH6IT247NLpW4cOnW0kELFKbDdqcciIQLwYje1JWB9KCV+kkS6jzMJZ+2SpE9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100756_224390_649873B3 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Hello,

This patch series is an attempt at getting all manufacturer specific
quirks/code out of the core to make the core logic more readable and
thus ease maintainance.

This is a respin of the last chunk of Boris's work from
https://patchwork.ozlabs.org/cover/1009290/.

Tested an erase-write-read-compare with a 1MB file on the following
flashes: mx25l25635e, w25q128, n25q256a, is25lp256, s25fl256s0,
gd25q256.

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

Tudor Ambarus (2):
  mtd: spi-nor: Move SFDP logic out of the core
  mtd: spi-nor: Trim what is exposed in spi-nor.h

 drivers/mtd/spi-nor/Kconfig                   |   83 +-
 drivers/mtd/spi-nor/Makefile                  |   26 +-
 drivers/mtd/spi-nor/atmel.c                   |   46 +
 drivers/mtd/spi-nor/catalyst.c                |   29 +
 drivers/mtd/spi-nor/controllers/Kconfig       |   83 +
 drivers/mtd/spi-nor/controllers/Makefile      |    9 +
 .../spi-nor/{ => controllers}/aspeed-smc.c    |    0
 .../{ => controllers}/cadence-quadspi.c       |    0
 .../mtd/spi-nor/{ => controllers}/hisi-sfc.c  |    0
 .../spi-nor/{ => controllers}/intel-spi-pci.c |    0
 .../{ => controllers}/intel-spi-platform.c    |    0
 .../mtd/spi-nor/{ => controllers}/intel-spi.c |    0
 .../mtd/spi-nor/{ => controllers}/intel-spi.h |    0
 .../spi-nor/{ => controllers}/mtk-quadspi.c   |    0
 .../mtd/spi-nor/{ => controllers}/nxp-spifi.c |    0
 drivers/mtd/spi-nor/{spi-nor.c => core.c}     | 2503 ++---------------
 drivers/mtd/spi-nor/core.h                    |  432 +++
 drivers/mtd/spi-nor/eon.c                     |   34 +
 drivers/mtd/spi-nor/esmt.c                    |   25 +
 drivers/mtd/spi-nor/everspin.c                |   27 +
 drivers/mtd/spi-nor/fujitsu.c                 |   20 +
 drivers/mtd/spi-nor/gigadevice.c              |   59 +
 drivers/mtd/spi-nor/intel.c                   |   32 +
 drivers/mtd/spi-nor/issi.c                    |   83 +
 drivers/mtd/spi-nor/macronix.c                |   98 +
 drivers/mtd/spi-nor/micron-st.c               |  129 +
 drivers/mtd/spi-nor/sfdp.c                    | 1206 ++++++++
 drivers/mtd/spi-nor/sfdp.h                    |   98 +
 drivers/mtd/spi-nor/spansion.c                |   95 +
 drivers/mtd/spi-nor/sst.c                     |  151 +
 drivers/mtd/spi-nor/winbond.c                 |  113 +
 drivers/mtd/spi-nor/xilinx.c                  |   94 +
 drivers/mtd/spi-nor/xmc.c                     |   23 +
 include/linux/mtd/spi-nor.h                   |  257 +-
 34 files changed, 3121 insertions(+), 2634 deletions(-)
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
 rename drivers/mtd/spi-nor/{ => controllers}/mtk-quadspi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/nxp-spifi.c (100%)
 rename drivers/mtd/spi-nor/{spi-nor.c => core.c} (52%)
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
