Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC58FBDBE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 12:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7YZ68G2cno3xNVQ1jIrEv/F4nYK3i0LT9pHlNK3ie4=; b=tVHafH5P8G2TOc
	Oi30zW3CfEuxKKwTq81DFEKdT5i68qW5uzD3vrsuy9YzBSpdK/lkbEKWibkgAGn3KCx9v5G05qEq7
	jDFtL/pbbgtfc5ORci6QCZ3IIqAxleckvgyOztdOd1HEFAE+ZJE/ny+6Txc4be3xe/htnvdjnNWnE
	0n0NKVFM7fbAdd94E8Tli+jb3gwXRnaUXO5jRVkwuXx7gCtzHrO1Rv91Wkys8jprxdc94+FczxHO8
	DpKYtbkF1+eTy/kvi42Vr2PiUuWjL+ycaNR9eikqrNDVLeoGTFkYw70noWwqpNbEZYMxc3JKYKcE7
	58c46HML9hjsNKaHmEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4Hm-0006Bh-Pd; Wed, 25 Sep 2019 10:12:39 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4HH-00068j-D8; Wed, 25 Sep 2019 10:12:11 +0000
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
IronPort-SDR: FEGV6e7H53UMdySlKCXJ/HvsP95pAH4Brsxh7Yt/j/ndA+0aLu1T/5p13Md9c/MYJiO3xkzjmP
 KhZ1LswfTT25tFO6+A4JvMVwa8GJvZgghQzhkFLYc9xQpRRPrD0e1syr+tbKeOgijlJvcuVVfv
 TzEpHR7C6gNCCeCyjdNHGz8KDs2A6/KcpM8CoRoSyKdy/LnW09Z+P0Xmon6GZzyMTi/gP+lTND
 lSqJXA29SZMCt49YfvoEmgDVi4TYG+wuF8cwLyC8EyVWO7u1bKvIKKjqOAxvb4OKM43Ky8vaGZ
 8+0=
X-IronPort-AV: E=Sophos;i="5.64,547,1559545200"; d="scan'208";a="47552187"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Sep 2019 03:11:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Sep 2019 03:11:58 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 25 Sep 2019 03:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXREl4OUVIcOZt1QB26PJtmQlrizN5J0aydPLRWjpCa+q82GJ2N3t3ovaZ8K6qoEUsYqYucoTax+5j+0qwKdOxUBvj/5xNO7VmZhvkSJ/BBBeymqiTXvpUlAVx5mnbLVeuSl+C3zIjzcnTCULRsEwYochoWSK9JBVdjxlwS63oXVA5uIMlS5CkCqTPJtSoaLkNoSp/juCIffLI4Y4ph6iEApJ+rsVGSW8vnOhl1gwF+E7g9oF2Qrb+akrxF4wlq3yFTY9RNOBsVi6fhozyxSDC3KHPMgo2smTSgjXBSSKHJcjXcJQkr9dyEM7cG9eMiqWEIRp3IOcsmBD3nzwjmTUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2BjSMR3yr+5J102XjPxyn7QY8odpJUIW6ihHfy51bzs=;
 b=a8874xNtftAzeJd0FRoe/vMueE2QZyXy3u+8OcaOjgQ7Rx3GTTirdvtKw45xoKJlPjsBa2X3MIvmZETh0xLtdCUM2rfWncqwmtBgX3DXr6Fbv5MxXsngTlnbzMalw8CjTFV1gtSlV3rM+wZhziLF9Bt91Xa50jyMxRa5TK6YCwN+oncHVbo9XD/loytLqMBX4JjhzcblpH1bc7VeyDP0h7tX559ZHQxE/vmZhV6aLV+ufNfXJ0nbLJIhfj0fJQIjv81uFAnbXmVxvTftnq9oAiix4FDQVVdrnRjBP8BVAR9IacNaqud71LNUOgC98ImBvzQ+6Ht++iiTSMOjoYt9zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2BjSMR3yr+5J102XjPxyn7QY8odpJUIW6ihHfy51bzs=;
 b=gvj2J3yCQNjetf7PbpXfqy8zecg9fMl9vm7N3ioghrJ8nteTApLBZxyxDNzG4lEcZPyqrFJQszgWdPkw7itRCQ+asu3R6BbGUn98umqkbVnnwc4P/ijKsFcM+wlDMjIGLo10jEA4VIUkIRb0qb05v+tUz50QgvbNjzMUW3TSa4o=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3870.namprd11.prod.outlook.com (10.255.180.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Wed, 25 Sep 2019 10:11:57 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 10:11:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>, <jonas@norrbonn.se>
Subject: Re: [PATCH v2 00/22] mtd: spi-nor: Quad Enable and (un)lock methods
Thread-Topic: [PATCH v2 00/22] mtd: spi-nor: Quad Enable and (un)lock methods
Thread-Index: AQHVcqwSdD6kLiVX1Emf+kHUSzIQ7qc8Le+A
Date: Wed, 25 Sep 2019 10:11:57 +0000
Message-ID: <f5d876a7-4610-2729-8f4a-0c122946d436@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0502CA0024.eurprd05.prod.outlook.com
 (2603:10a6:803:1::37) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6c43738-a951-46fb-2863-08d741a0cc2b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3870; 
x-ms-traffictypediagnostic: MN2PR11MB3870:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR11MB38706EB7671ECD18C60DDAFBF0870@MN2PR11MB3870.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(366004)(376002)(346002)(199004)(189003)(31686004)(5660300002)(2501003)(8676002)(86362001)(7416002)(14454004)(52116002)(2616005)(6306002)(11346002)(8936002)(6246003)(966005)(36756003)(256004)(110136005)(6512007)(6506007)(53546011)(386003)(446003)(26005)(3846002)(14444005)(71190400001)(66446008)(66556008)(64756008)(66476007)(99286004)(66946007)(476003)(305945005)(54906003)(31696002)(478600001)(486006)(25786009)(81166006)(81156014)(71200400001)(7736002)(76176011)(316002)(186003)(2906002)(66066001)(102836004)(6436002)(229853002)(6116002)(4326008)(6486002)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3870;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: toIlL00ROZwV/ZskYiI85nPFJGiGNIVtUfJVvSQgrD4GRUfsD+3Qmydm+HKbiDSywNSHmJhJtWDaH3NZ9WbD80h4MfVyypYsaARPgMdWIoVg50B9HnxwzzpQijrSnAf+OEo6UyhUzz3sjnQ2I+g+7eeZE1BzaySsaMFC5itxYTY5Lq57dcyWFFCE/w3FhTrf0X+mJJHjKVEUIfjd/6nwCxzkf493AWjsuujoh4/fqnRDCby8gyYILnz5hetJcYPjoycOP9csAChhQRcjKLlSby4BrCHxfvdWFFwYTxPc710MIKuarqE6xgqD1x2zXeNEbDtovHPI3oMvp+BHbHEHwtz1/X3izxjQZXPrHXEpT0IlKxBjZfiUs1l3H4f6c6tOiPgNodc2TQNWSG9k3YRzsmP1oS6m/RYiwFreKLrFRSXowqDmHs+eOB/pG1vzcBaY/0sobqHBXckfReJAXvaBmg==
x-ms-exchange-transport-forked: True
Content-ID: <ED60A6E11FA76044AF3DE5FE82590E5E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c43738-a951-46fb-2863-08d741a0cc2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 10:11:57.4716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WEA05J6V5HDPq+ccMjJdQxZ+GQQZzerE7BikNzJJb8lW1l5zfkhX8/T54zWpmSN5aLUWX7DCyLJFcBz9hsxbjdkYztxxZPXgeIpRSKJ2+cU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_031207_531680_729CDBFA 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vigneshr@ti.com, geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 linux-aspeed@lists.ozlabs.org, boris.brezillon@collabora.com,
 linux-mediatek@lists.infradead.org, joel@jms.id.au, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jonas,

s25fl512s is impacted by this patch set. Would you please do a little test to
see if everything is ok for your flash with these patches applied? I don't have
the flash, so I can't do the tests by myself. There is a possible test method
described below in the cover letter.

You can find the patches at
https://patchwork.ozlabs.org/project/linux-mtd/list/?series=132270 or at
https://github.com/ambarus/linux-0day, branch spi-nor/quad-enable-rework-v2.

Thank you,
ta

On 09/24/2019 10:45 AM, Tudor Ambarus - M18064 wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Patches 1 - 14 are just clean up patches for the Flash Register
> Operations.
> 
> Patches 15 - 22 deal with the Quad Enable and the (un)lock methods.
> Fixed the clearing of QE bit on (un)lock() operations. Reworked the
> Quad Enable methods and the disabling of the block write protection
> at power-up.
> 
> Again, this is just compile tested, I don't have (yet) a relevant
> spansion-like flash memory to test the (un)lock() methods, so I'll need
> your help for testing this patch set.
> 
> The patch set can be tested using mtd-utils:
> 1/ do a read-erase-write-read-back test immediately after boot, to check
> the spi_nor_unlock_all() method. The focus is on the erase/write
> methods, we want to see if the flash is unlocked at power-up.
>         mtd_debug read /dev/mtd-yours offset size read-file
>         hexdump read-file
>         mtd_debug erase /dev/mtd-yours offset size
>         dd if=/dev/urandom of=write-file bs=please-choose count=please-choose
>         mtd_debug write /dev/mtd-yours offset write-file-size write-file
>         mtd_debug read /dev/mtd-yours offset write-file-size read-file
>         sha1sum read-file write-file
> 2/ lock flash then try to erase/write it, to see if the lock works
>         flash_lock /dev/mtd-yours offset block-count
>         Do the read-erase-write-read-back test from 1/. The contents of
>         flash should not change in the erase and write steps.
> 3/ unlock flash and do the read-erase-write-read-back from 1/. The value of the
>    QEE should not change and you should be able to erase and write the flash.
>    Test 1/ should be successful.
> 
> v2:
> - Introduce spi_nor_write_16bit_cr_and_check() as per Vignesh's suggestion. The
>   Configuration Register contains bits that can be updated in future: FREEZE,
>   CMP. Provide a generic method that allows updating all bits of the
>   Configuration Register.
> - Fix SNOR_F_NO_READ_CR case in
>   "mtd: spi-nor: Rework the disabling of block write protection". When the flash
>   doesn't support the CR Read command, we make an assumption about the value of
>   the QE bit. In spi_nor_init(), call spi_nor_quad_enable() first, then
>   spi_nor_unlock_all(), so that at the spi_nor_unlock_all() time we can be sure
>   the QE bit has value one, because of the previous call to spi_nor_quad_enable().
> - Fix if statement in spi_nor_write_sr_and_check():
>   if (nor->flags & SNOR_F_HAS_16BIT_SR)
> - Fix documentation warnings.
> - New patch: "mtd: spi-nor: Check all the bits written, not just the BP ones".
> - Drop Global Unlock patches, will send them in a different patch set.
> 
> Tudor Ambarus (22):
>   mtd: spi-nor: hisi-sfc: Drop nor->erase NULL assignment
>   mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
>   mtd: spi-nor: cadence-quadspi: Fix cqspi_command_read() definition
>   mtd: spi-nor: Rename nor->params to nor->flash
>   mtd: spi-nor: Rework read_sr()
>   mtd: spi-nor: Rework read_fsr()
>   mtd: spi-nor: Rework read_cr()
>   mtd: spi-nor: Rework write_enable/disable()
>   mtd: spi-nor: Fix retlen handling in sst_write()
>   mtd: spi-nor: Rework write_sr()
>   mtd: spi-nor: Rework spi_nor_read/write_sr2()
>   mtd: spi-nor: Report error in spi_nor_xread_sr()
>   mtd: spi-nor: Void return type for spi_nor_clear_sr/fsr()
>   mtd: spi-nor: Drop duplicated new line
>   mtd: spi-nor: Drop spansion_quad_enable()
>   mtd: spi-nor: Fix errno on quad_enable methods
>   mtd: spi-nor: Check all the bits written, not just the BP ones
>   mtd: spi-nor: Fix clearing of QE bit on lock()/unlock()
>   mtd: spi-nor: Rework macronix_quad_enable()
>   mtd: spi-nor: Rework spansion(_no)_read_cr_quad_enable()
>   mtd: spi-nor: Update sr2_bit7_quad_enable()
>   mtd: spi-nor: Rework the disabling of block write protection
> 
>  drivers/mtd/spi-nor/aspeed-smc.c      |   23 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c |   54 +-
>  drivers/mtd/spi-nor/hisi-sfc.c        |   23 +-
>  drivers/mtd/spi-nor/intel-spi.c       |   24 +-
>  drivers/mtd/spi-nor/mtk-quadspi.c     |   25 +-
>  drivers/mtd/spi-nor/nxp-spifi.c       |   23 +-
>  drivers/mtd/spi-nor/spi-nor.c         | 1716 ++++++++++++++++++---------------
>  include/linux/mtd/spi-nor.h           |   74 +-
>  8 files changed, 1058 insertions(+), 904 deletions(-)
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
