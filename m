Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D262187A97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 08:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLG1BxXSB6VM8KaIn5RqAdZRtFlon9emkgMu450dzQQ=; b=dNMldlDxI9Gtis
	zIvKJ+wtov4wDnd9sqSKz9/u5GLj6ggRpk5BD38/HHHSd9qYZe7VKP2D01fh5Iwo5L6NVDZMbFUrj
	MKufR8m4KxogH9k2VjzFwpr8SHcpvreUtU97ok2I8Cyzl8w3K7mJoNKQHbU41HhJtcXzLIyHccU3q
	YSEMau6X/RKtbyTH5cNhAtqOFpKoesIenScWzPTYfIBww8LiWzmpn5ZfP33d5PJlF5nGrP94UetCD
	We4uQYKdZYS7ryMUZM7UtMrgwOOur/m3cwanG15660jbP6rsxvI9dTxbP0ovTgtN/lgkx0RmirB4Z
	jlbsZ1AmrnEC9UZLI4HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6qV-0001JF-Ic; Tue, 17 Mar 2020 07:41:03 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6q6-000193-L0; Tue, 17 Mar 2020 07:40:42 +0000
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
IronPort-SDR: i3fAPvvEFMGf9E8k6KRN7TiEKwhb4Gui95pT1U3ObgI9CE5uBRmT0k2YJuhXmHd/cRZwaZlr2z
 PAVMY0qM2tFj63729mVBYRVu+7jc3/IqpTEvDmFQ9aMrSUxsCFGzOSaFCfOU0QUbV+Sx/CZ4Qz
 sPmwxs/cM2lJo9EOJ+NeVHcGIqd4VVi89mZu/JT8BXm8Nz/sVnS1LpmEOUkxf/Z0OhNE4/sIoB
 VLJzE+7ybMnPX2aLmtjQ4t4tiXOjf+FXhK9B4/EwNKYawJJZGWNhl80OF4hXsgh4hVDEMok1Ra
 WRU=
X-IronPort-AV: E=Sophos;i="5.70,563,1574146800"; d="scan'208";a="72342727"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Mar 2020 00:40:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Mar 2020 00:40:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Mar 2020 00:40:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGJuR1CfnYJc6A4JtZG/TGAlVfnt0rMkdm+GM3OuF7UsRnpbzNf4qUzZCcRyroqQbATsx5rg5MiegCfLKLgpwoFfEuYlrnxQkXklCJtUn26SkURA544sCXDpj1ZhHACLXbi6vsFzaPh9W/IT4aFr7K3Rs6DjM4lQwyueadj19RXofgyW9wX6T69x1jkUYX+O4dNTFLOFcO73Qow0OdcZ8pj1BhYnLkoKeU9luM6R4pzOO4aCK6AmgqgItU+akBphVS8QV001gZtQkeSOi3hhFvn04Y8RFAjoKbhPkqbnZ8nN5/bN2JVzSZvqfRC0kXA5gD+e2Q+hyqYWG5CRPc+lpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ef9tfTa5ik3JnaA5m5/lsYXR9k1I6mgNqyeVq44POHc=;
 b=Z4EMHyLnJB9GYN+LtnN+muEjm2OuLsibnM8Pond1Kjd125OPDI6rhG4yS3do+3FsMrzszIcI+FALkcar+r2ci2HdzsqjmLtsTIB8aayeslcLTDgrzt5O0kQeqkpqOvnreZM1oCe17JeOrNgjpR8+VQ/gf5WwNzG9NG0oFBiPYBQ1LLH8OnatRUhaAG8KjVaxm60kTMRBm3crpWNTcLr0H/0k4j/u0eu6oPAGmbbJCuFRBDBTubU5eYF24kyKJ7rYb5GQflk/5I60pSi5d1FUrWo7V1Ta4U6bjIuLXlbuD3n+u2xo9SMcRdZpVqN72/iDQRDeNwlTqe59UQKhQrx9sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ef9tfTa5ik3JnaA5m5/lsYXR9k1I6mgNqyeVq44POHc=;
 b=RtWhMwp1Rip05wJa/e1m+LRdsxYyo/kg2oNeO67e7cAWnYSNvqJwoP2GSI4bgTzOETKR9RUaI0xS3lO+aTPww3KsEGalu2B8AKqBQv6TkUVgUkVeEEL5/0J6bUXp2cG2R14knxerlK8kvhKwgIcLN+MCjxjVgu+LVbDDwbb/r9s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4662.namprd11.prod.outlook.com (2603:10b6:208:263::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19; Tue, 17 Mar
 2020 07:40:28 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 07:40:28 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>
Subject: Re: [PATCH v2 00/25] mtd: spi-nor: Move manufacturer/SFDP code out
Thread-Topic: [PATCH v2 00/25] mtd: spi-nor: Move manufacturer/SFDP code out
Thread-Index: AQHV+W+KYE9fHU+ne0GupK9M0z2kHqhMa8eA
Date: Tue, 17 Mar 2020 07:40:28 +0000
Message-ID: <2383597.40V64ZQkGk@192.168.1.3>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db0ded06-e416-4bbc-6f0d-08d7ca46769c
x-ms-traffictypediagnostic: MN2PR11MB4662:
x-microsoft-antispam-prvs: <MN2PR11MB466260FF9F4FEB86B37430E2F0F60@MN2PR11MB4662.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(39860400002)(346002)(396003)(199004)(26005)(186003)(6512007)(6486002)(9686003)(4326008)(5660300002)(14286002)(966005)(478600001)(6916009)(91956017)(76116006)(54906003)(86362001)(66556008)(66476007)(66946007)(66446008)(64756008)(316002)(81156014)(71200400001)(53546011)(8936002)(6506007)(8676002)(81166006)(2906002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4662;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JB4J+g+Gr+G3HWADQjyGagGVEnRqR9FOG3FGN4jEi2SCrWYDtS1kjfWsyWuZg1aPHQmR67OulSMmKYdw59vuz5o7AM1ZQhdc94GgaWw0rQ0z9bp/WrEzSxvIfrEVmHJJbxc6iGus+NhCwkyE9CpA2fU3U2wAFr8qZ3tCL11djcaCce5yV9qeDCWDAoKSAou4hDY5aYAQq81+SDOQ4lTKCMYz5EgQaJtFw3B3uvbULawiE8aQk4wxgMUwlKSFdhworvDq3GI4KIeE57fmTsIbb1/ZpbLWSthVFoyojf9HlZjGua7egHht9O3sjao0Xbl9uShW1i9tx2VQIynsyXOrxRwKsD1E95tl7p33a3+gzyjbFwX7zdx47pAQY8pl9fgtU5j6apZd9F/ZiSI5FdNj82qrgwK0cjYBgjAe5JFZXeiShB8pNTEyixLw8jqx0hbLjGPrReEh3gPa8LKN7vRCzDYkmYquL+lKB8NMOWhncwOaavQuzPMON2M9vu3Qr/aFqvny3rRLBDXVRaWUzF3rSXIdroqJQTyvgIlwZw+mYl5cN0YKJVuK0r85TSpbzFjT
x-ms-exchange-antispam-messagedata: rtDL9v2zLpVQ0gEDSMHuYfx49kHgcQfCNS71WZLHIAeTvAvYVKhuC7MFA2oUrXBkyTBGxGlxZHUePD5/yh1TDRb4o5tOjbh5BHNcss8BP4r9TrbXac9LBuBPnX7G6XTSQmNsRvc06X+uxKlpp1pbBw==
x-ms-exchange-transport-forked: True
Content-ID: <C6002666972CAF4E86286A6FD7A3F132@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db0ded06-e416-4bbc-6f0d-08d7ca46769c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 07:40:28.1460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T0mM0HZo2YIp2t1lGPyjCK4FGlI6YicUoEOBg9wgBrpjn2wmSvPltGVo/r9m7vbpSSmWXRR01zsvtiOulPzXifu5Faf+bKV+WGls0Pwfh+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_004038_761902_151253B5 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 13, 2020 9:42:33 PM EET Tudor Ambarus - M18064 wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Hello,
> 
> This patch series is an attempt at getting all manufacturer specific
> quirks/code out of the core to make the core logic more readable and
> thus ease maintainance.
> 
> This is a respin of the last chunk of Boris's work from
> https://patchwork.ozlabs.org/cover/1009290/.
> 
> (Re)tested an erase-write-read-compare with a 1MB file on the following
> flashes: n25q256a, w25q256jvm, is25lp256, gd25q256, mx25l25635e,
> s25fl256s0.
> 
> v2:
> 1/ The mtk-quadspi driver was replaced by a new spi-mtk-nor driver.
> In order to test these, one has to merge the mtk-mtd-spi-move from
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git,
> in spi-nor/next and add this patch set on top of the merge.
> 
> 2/ new patch:
> mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode()
>     method
> - macronix_set_4byte() is renamed to spi_nor_set_4byte_addr_mode(),
>   it will be the only 4 byte address mode method exposed to the
>   manufacturer drivers
> - adapt the rest of the patches based on this
> 
> 3/ new patch
> mtd: spi-nor: Drop the MFR definitions
> - MFR definitions are unlikely to be used, drop them.
> 
> Boris Brezillon (21):
>   mtd: spi-nor: Stop prefixing generic functions with a manufacturer
>     name
>   mtd: spi-nor: Prepare core / manufacturer code split
>   mtd: spi-nor: Expose stuctures and functions to manufacturer drivers
>   mtd: spi-nor: Add the concept of SPI NOR manufacturer driver
>   mtd: spi-nor: Move Atmel bits out of core.c
>   mtd: spi-nor: Move Eon bits out of core.c
>   mtd: spi-nor: Move ESMT bits out of core.c
>   mtd: spi-nor: Move Everspin bits out of core.c
>   mtd: spi-nor: Move Fujitsu bits out of core.c
>   mtd: spi-nor: Move GigaDevice bits out of core.c
>   mtd: spi-nor: Move Intel bits out of core.c
>   mtd: spi-nor: Move ISSI bits out of core.c
>   mtd: spi-nor: Move Macronix bits out of core.c
>   mtd: spi-nor: Move Micron/ST bits out of core.c
>   mtd: spi-nor: Move Spansion bits out of core.c
>   mtd: spi-nor: Move SST bits out of core.c
>   mtd: spi-nor: Move Winbond bits out of core.c
>   mtd: spi-nor: Move Catalyst bits out of core.c
>   mtd: spi-nor: Move Xilinx bits out of core.c
>   mtd: spi-nor: Move XMC bits out of core.c
>   mtd: spi-nor: Get rid of the now empty spi_nor_ids[] table
> 
> Tudor Ambarus (4):
>   mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode()
>     method
>   mtd: spi-nor: Move SFDP logic out of the core
>   mtd: spi-nor: Drop the MFR definitions
>   mtd: spi-nor: Trim what is exposed in spi-nor.h
> 
>  drivers/mtd/spi-nor/Kconfig                   |   75 +-
>  drivers/mtd/spi-nor/Makefile                  |   25 +-
>  drivers/mtd/spi-nor/atmel.c                   |   46 +
>  drivers/mtd/spi-nor/catalyst.c                |   29 +
>  drivers/mtd/spi-nor/controllers/Kconfig       |   75 +
>  drivers/mtd/spi-nor/controllers/Makefile      |    8 +
>  .../spi-nor/{ => controllers}/aspeed-smc.c    |    0
>  .../{ => controllers}/cadence-quadspi.c       |    0
>  .../mtd/spi-nor/{ => controllers}/hisi-sfc.c  |    0
>  .../spi-nor/{ => controllers}/intel-spi-pci.c |    0
>  .../{ => controllers}/intel-spi-platform.c    |    0
>  .../mtd/spi-nor/{ => controllers}/intel-spi.c |    0
>  .../mtd/spi-nor/{ => controllers}/intel-spi.h |    0
>  .../mtd/spi-nor/{ => controllers}/nxp-spifi.c |    0
>  drivers/mtd/spi-nor/{spi-nor.c => core.c}     | 2501 ++---------------
>  drivers/mtd/spi-nor/core.h                    |  431 +++
>  drivers/mtd/spi-nor/eon.c                     |   34 +
>  drivers/mtd/spi-nor/esmt.c                    |   25 +
>  drivers/mtd/spi-nor/everspin.c                |   27 +
>  drivers/mtd/spi-nor/fujitsu.c                 |   20 +
>  drivers/mtd/spi-nor/gigadevice.c              |   59 +
>  drivers/mtd/spi-nor/intel.c                   |   32 +
>  drivers/mtd/spi-nor/issi.c                    |   83 +
>  drivers/mtd/spi-nor/macronix.c                |   98 +
>  drivers/mtd/spi-nor/micron-st.c               |  153 +
>  drivers/mtd/spi-nor/sfdp.c                    | 1205 ++++++++
>  drivers/mtd/spi-nor/sfdp.h                    |   98 +
>  drivers/mtd/spi-nor/spansion.c                |   95 +
>  drivers/mtd/spi-nor/sst.c                     |  151 +
>  drivers/mtd/spi-nor/winbond.c                 |  112 +
>  drivers/mtd/spi-nor/xilinx.c                  |   94 +
>  drivers/mtd/spi-nor/xmc.c                     |   23 +
>  include/linux/mtd/spi-nor.h                   |  275 +-
>  33 files changed, 3120 insertions(+), 2654 deletions(-)
>  create mode 100644 drivers/mtd/spi-nor/atmel.c
>  create mode 100644 drivers/mtd/spi-nor/catalyst.c
>  create mode 100644 drivers/mtd/spi-nor/controllers/Kconfig
>  create mode 100644 drivers/mtd/spi-nor/controllers/Makefile
>  rename drivers/mtd/spi-nor/{ => controllers}/aspeed-smc.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/cadence-quadspi.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/hisi-sfc.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-pci.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-platform.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.c (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.h (100%)
>  rename drivers/mtd/spi-nor/{ => controllers}/nxp-spifi.c (100%)
>  rename drivers/mtd/spi-nor/{spi-nor.c => core.c} (51%)
>  create mode 100644 drivers/mtd/spi-nor/core.h
>  create mode 100644 drivers/mtd/spi-nor/eon.c
>  create mode 100644 drivers/mtd/spi-nor/esmt.c
>  create mode 100644 drivers/mtd/spi-nor/everspin.c
>  create mode 100644 drivers/mtd/spi-nor/fujitsu.c
>  create mode 100644 drivers/mtd/spi-nor/gigadevice.c
>  create mode 100644 drivers/mtd/spi-nor/intel.c
>  create mode 100644 drivers/mtd/spi-nor/issi.c
>  create mode 100644 drivers/mtd/spi-nor/macronix.c
>  create mode 100644 drivers/mtd/spi-nor/micron-st.c
>  create mode 100644 drivers/mtd/spi-nor/sfdp.c
>  create mode 100644 drivers/mtd/spi-nor/sfdp.h
>  create mode 100644 drivers/mtd/spi-nor/spansion.c
>  create mode 100644 drivers/mtd/spi-nor/sst.c
>  create mode 100644 drivers/mtd/spi-nor/winbond.c
>  create mode 100644 drivers/mtd/spi-nor/xilinx.c
>  create mode 100644 drivers/mtd/spi-nor/xmc.c

All applied to spi-nor/next. Thanks,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
