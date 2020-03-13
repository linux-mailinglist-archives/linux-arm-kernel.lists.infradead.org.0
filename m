Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B86184BEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtw5yJrIWjbWtH3W2EeQ5osqkqQd+sdGZHHXm0RvgyY=; b=umq6UAH/Pxtu7V
	hgpeeDTSVoFYSoQuIZRZvREi8ysE2iomzApRW++rM4EM5GHiJmmPxuCM4ih4J97EwWnZ4ZW0SQqgW
	wN2bL2853abahAAFuNrrbRiPCyZsCv6dWP5imT3XfKxbtsxiLUWEy+1B26hKDHklV3RZEl7U6LGVc
	ZfRI/c2adkk4RFjIVnlOp9iERc5q/C+wFc4Md1mA7qV3PWbCjx8G5nD1AGseNWDxjp/HNHVjZlI/c
	2cwyvrPjfZZSnYpHnBCVYIV9B3Hqt3KnNEXz5mkrcM5aPdFmO/83kjFKy2C8wHB3myfI0FWOr4XwI
	bchvY6OV9EXT0K/IulZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmkm-00081W-H0; Fri, 13 Mar 2020 16:01:40 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmZl-00044E-KI; Fri, 13 Mar 2020 15:50:22 +0000
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
IronPort-SDR: cbKeo1Y8w1Ud7j5sRYEZd9a+ZDmCCEDO0aMazeh3KDe2VEyUjPrsikhNxCLBrHoiqdq0gQfv6i
 Uqe/OVuvb0HYlq3Uq4t9nwxoM8+uePj5pEfTFMcSrj2ZKlw0cMZbKVJBFqslzaj1GoaByp3kSl
 5Qrtdb0OrHQ2X60ykISqC8oXQmW+tGIPR56tymm3Qm7BqS+/0Zmau5tMKQ0Z5HRje8bozCrQ/8
 PtL9MQjeB9UmtuXA7SfOuP4SFx9NilwHHW198y+KEKybWnMm01wwMZnwekGoT1wYEj4XH+glUn
 beA=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="69890320"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 08:50:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 08:50:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 08:50:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lb/nVK8zkSVqF+KFtaxLQbhSdqSZxplCYjT2CEmGA7rRQEhRTEdgrSS41dYd/+ciHg2GkxbQE1ciS3DNWVfr+dzryptucg1ol+oUiqRe1nP5kxzx2/vsnmRUCFKIiA7B0dveGaq+bGNmta4Z+qnzlbnCQC93eH3AO8yZtH1jKpd9qIUHloQGhqW8T5ABD3DP6uyXcxVL4cWk0ImMXMpwQrMgAK6vjEwGln5/Ejn+YzKdNTYxrTdjI1l6ZPfooXYPURuG1wHEBV0hanbnfUuAoUOfgvIIKNQs/nASQLMr9O92V2Pv7dXWsvG2lM0JL0hKkUnlNiqU8uJOkGzcW4XcPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPmlBCq3srfYpkDt5yvbrsPLnxekGBYkIZrl+4OFc5c=;
 b=Z6NAjCnqZBIV+8Fn0VyTKEJgZEAIyLWdPLhqeRFmBI0ggolHEOEMyLJ3CEo3m406DPQd2RHwsimO7ubUt017UNlqapXkeHLxXwu1lGv7lw3tzeGq8aJGRyj2srZYepOw6ymRW05A+2KMydbXpy6g4cbbwopNzwXFyvElutilxJb/HomhAXCkMY/GYHhub+aLIz5X93XuJCtfF0uo2p72IVu74C7Lw6B88tup/qSce1HyzGBTPdt6cLZv0x+k+1i93y+gojlg2jvcH2z6/UZ//j5awUVmnCPejbjSunAcv/6Tn6C+GI0ZElNU9goOhnt+hIidGQML4cpxO7i1kZJtAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPmlBCq3srfYpkDt5yvbrsPLnxekGBYkIZrl+4OFc5c=;
 b=tJmoCOe4BXcGCaNXfmDUT+8Mh9c4WD3zPimn3hEXkQJq9wrIdZAt9VA4L2p3h7XgImjcZ2jJ+Ehss++omAWFmb+WkDi4sHaTdNViXH3LNSPAdwm7Z2Xsn9aBXE6iEdcS77veA8RT1YJ9GtapGg2ZeV2JS1h/QXHi+QlpoKGAmzY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4126.namprd11.prod.outlook.com (2603:10b6:208:136::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Fri, 13 Mar
 2020 15:50:10 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 15:50:10 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions with
 a manufacturer name
Thread-Topic: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions
 with a manufacturer name
Thread-Index: AQHV+UP9aMq9KhVwKUKrK+Ih7RO/b6hGq5wA
Date: Fri, 13 Mar 2020 15:50:10 +0000
Message-ID: <16008638.kvcHKcsGDv@192.168.1.3>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <20200313103007.7d7ea6af@collabora.com> <2838624.3XVpXx8FI0@192.168.1.3>
In-Reply-To: <2838624.3XVpXx8FI0@192.168.1.3>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 101f555e-8f02-4a38-3139-08d7c7663666
x-ms-traffictypediagnostic: MN2PR11MB4126:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4126CE5701C57D29EEBD10C7F0FA0@MN2PR11MB4126.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(346002)(366004)(136003)(199004)(9686003)(6506007)(2906002)(64756008)(4326008)(81166006)(81156014)(8936002)(7416002)(53546011)(6916009)(6512007)(7406005)(86362001)(5660300002)(66446008)(66476007)(186003)(54906003)(91956017)(14286002)(76116006)(8676002)(66946007)(71200400001)(478600001)(316002)(6486002)(26005)(66556008)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4126;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XhhcrOcOhWrquR/SIR3WXQY0tfjEP2p/5vasdxc2YFSLgZAPVehovfM6NDvj2EbbZrUer6suknjLLLRXRtjGEFSamZ6Rw4upBC5iOxhy+AZLrdPU/TFYWkH0f+JekHMks9x/QEgkDK9taNfrIMbvhQ00/xLXNqDc25HxmZbbjRvQd+ROAtgnbjbm7bLsOOlMBUoLPapdr+IwHfw2tt7JNj47AsYjRiKITv5EzEiTUXtSJdCWMlehMbqJ8xG93IUQBUxi2Rqxuyv2ZcN9/5nPG1P75vXbNUwUft8TDlWii7IX8CeXIGxA2PMp4CM+dDbblelI80vefsE+8+KISURHWmEs9a8AStLcT6a/yVsM27PgXT7l61yoGKwbBUzfAU2Igk8C1BVPC8RjkVczfARKDhSqa+irBTn/FNRm2b28k+LejcvRxeY6HIkxMf5DXOZtCoCakdQCSxw7KOqP6qqVDXnu6iyFnyn9IFtSWQkXTVTxxrShF/52toztUCptY88k
x-ms-exchange-antispam-messagedata: Uca3gAXglqRfETJ4cOmjenxQj8XQMLyShcBh1/HlfH+NHiaFvMXI5B3PX8tlXp2BzMlKyqgdpEuWiCyzARbOLivtAGSXUnpeku43NP18VUz8mAnwdqAMrJ0G/3wIMxgMMia2rKSlhpPwv9euhlq0+w==
Content-ID: <4968D74D5D41C449BEF42DBDB71FD00B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 101f555e-8f02-4a38-3139-08d7c7663666
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 15:50:10.7923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dFI0/8+UneYoZK/vraiXf+nKyKmQJWVCUYHO14qIR7jNnMN/QC7Ld8sy1PSGGFTYwvOuxGDBwIQ0G+CDviml/w/vH5rEuoUOA0/SZU2zk2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_085017_772324_6A05F0FD 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 vigneshr@ti.com, linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 michal.simek@xilinx.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, jethro@fortanix.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 john.garry@huawei.com, swboyd@chromium.org, alexander.sverdlin@nokia.com,
 matthias.bgg@gmail.com, tglx@linutronix.de, vz@mleia.com,
 mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 boris.brezillon@collabora.com, ludovic.barre@st.com,
 linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 13, 2020 4:30:48 PM EET Tudor.Ambarus@microchip.com wrote:
> > > > - * macronix_set_4byte() - Set 4-byte address mode for Macronix
> > > > flashes.
> > > > + * spi_nor_en4_ex4_set_4byte() - Enter/Exit 4-byte mode for Macronix
> > > > like
> > > > + * flashes.
> > > > 
> > > > * @nor:   pointer to 'struct spi_nor'.
> > > > * @enable:        true to enter the 4-byte address mode, false to exit
> > > > the 4-byte *         address mode.
> > > > *
> > > > * Return: 0 on success, -errno otherwise.
> > > > */
> > > > 
> > > > -static int macronix_set_4byte(struct spi_nor *nor, bool enable)
> > > > +static int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool
> > > > enable)
> > > 
> > > Sounds a bit weird, how about simplifying this to:
> > > spi_nor_set_4byte_addr_mode()
> > > 
> > > Or if you want to be specific:
> > > spi_nor_en_ex_4byte_addr_mode()
> > 
> > You're right. Maybe we can simplify things by having a single function
> > that does optional steps based on new flags
> > 
> > SPI_NOR_EN_EX_4B_NEEDS_WEN
> > SPI_NOR_CLEAR_EAR_ON_4B_EXIT
> > 
> > This should probably be done in a separate patch though, so ack on the
> > spi_nor_en_ex_4byte_addr_mode() rename, assuming we also change the
> > bool argument name to enter.
> 
> A single big function will be ugly to handle because of the
> spansion_set_4byte() -> it uses a different opcode.
> 
> I like the nor->params>set_4byte hook.
> 
> I think that spi_nor_en4_ex4_set_4byte() can be renamed to
> spi_nor_set_4byte() and be the only set_4byte() method exposed to
> manufacturers.
> spansion_set_4byte() will be static in core.c and the rest will be private
> in the manufacturer drivers.
> 
> Here's how the manufacturers enter and exit the 4 byte mode:
> -> eon, gidadevice, issi, macronix, xmc use EN4B/EX4B
> -> micron-st needs WEN -> private method as they are the only ones that
> require this
> -> newer spansion have a 4BAM opcode (new, public command), older spansion
> flashes use BRWR (legacy in core.c, spansion_set_4byte())
> -> winbond set_4byte method is hackish and may be reason for just a flash
> fixup hook -> private method

I'll drop the set_4byte changes from this patch. I'm adding a dedicated patch 
immediately after this, to implement what I said above.

Cheers,
ta



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
