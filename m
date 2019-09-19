Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F93B7EC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72N4NpjSqC38lsqOVxzSfMjhPMBWsAlP7aCwyxCm59o=; b=oK9cYgRaa9FV9o
	4lV12lRGSNdcvSvnPgXZk5gXonFFx1ekRcArvS4vpgiUDt1YFpBrUrTxdsl+7HABEnqjO/siUV5Dx
	2vtvi+6KQwPYSivqopNfQMmmCe8pnOwbvyVnWlqF/pkmf4Uz9wGdrhbTz+MNjs2pgIGMNH3Nf9coo
	jZqN/CzcgzbcdQZRixnPANeW8O/19mfAifN8eyy2ELHXryMgQWi5b54lsTvV4VWSkCCAPma7IogD3
	lRviPfYT1xiQe8glOoXwl8dM0kOacivqmEjfrS1Kacs/GovdDMmLgbqSNT5EoIONZXXArbt4lufIU
	X4XRv5KUmRivKm2P9ORQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyy3-00044k-W3; Thu, 19 Sep 2019 16:07:40 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyxj-00044D-K9; Thu, 19 Sep 2019 16:07:21 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: A5zdj9bnStJv6G5plUwnE1/q7yt88CWVYvJfwPqtfafBbW4H+knJ9hJwdMdPGlZx5X4AYaMkYC
 MYU9jY2SoocTOcNdJlVJxWgUPL33UUcG8gs5BaHuw9XQU4PpMe/ZQt3i72hekKHk2aV6CzEZ/X
 sz7y6WBUpNswhKVa/Dy056KGwdbV+OdnUXleWkJSLk3yyBvUmbB4K3kakp/0FKSqtLiwU11I9I
 6GYCR3D0WhHyWfVO7FxrU+u16+i0vtPEmRh+1u2VNqP+ZPuOJbBOr0Jn4JoAMJ7kFCFtOUeap0
 7xw=
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="49763308"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Sep 2019 09:07:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Sep 2019 09:07:17 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 19 Sep 2019 09:07:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GVYXFhtE3GHXT1HIht+7WKIUU0NSyKmbNN3q1uLZbmNGJ3DgskVULpDGv3P4NDk/ltp6Qsbzn7Yqit0osUnlXUiBcWbEv2D2YIUcBJYg2SESWfbakKPm5PqBkH1uWjrmiOt9BcFKVNeAb6woWwrgXx/qOqRaOUCXgT/j5CNRyddRiRdywCcbP/ofCMa5/AS3AjpAWxd1G4ST9jBe12lHCsYKwR5JWeWEe9Gja1fJBjs6fBP6Wkv6twubxAAq2oOU1TrxuD9MDsws3hYNOjD1sk+GfK5uDL3fBtDl0nf/0jtLa1YnhTb0NQDy9NlDt+3GvVKEdG3PYg8vOBLYevNFsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6rTOV3oI4O8UoBzes02kYPYcAGHCN9su6uBFF8j7Jc=;
 b=ha8Y+lgTi5E5gYYn60wsZsD+vy3gGsDDWmecjeS1qA/IPyINymQNvCB4KF0XaliNLZbmd3bFxKgLT6aPz8J9HFsYOvKQqwP3gk9qNqC0sH4Yk+/DV9LM2gHFHKZp9UORtiHsikeVIjyP24pL9ayXvzF05QUYAYQiRB98yFQrHSEuX68M30dl3cdLUGbb6e5voY1/mwYZV+Weze9o3LlUFUj1BPZVk0hKBvMu15QQdFCQWMq5Am7pJ8Jf00H3SK+SPRYga2+seTh6kZ/SIhwMPRGKlWbeG7CFw9tDwxcd7yOFmq9e6VixGiL7i4n3quHARf9g6PUIU83acLC3Wzn6Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6rTOV3oI4O8UoBzes02kYPYcAGHCN9su6uBFF8j7Jc=;
 b=lpplQUI0mrTGiyPYMzgziWthROF3h3pwcBv+K1s13gZCMdgNRAEcWNfRQszpawgsbzldjaE6cM1D6UsWRQomHdMaHqWgWPDleXTr99CVh+ZR0qlMk6G2ZN9KPJp7vdUkJW2o903z0OLLpchhLgf/9BxFF/QMafEQnikGrTEzLmk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3839.namprd11.prod.outlook.com (20.178.254.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Thu, 19 Sep 2019 16:07:16 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 16:07:16 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 00/23] mtd: spi-nor: Quad Enable and (un)lock methods
Thread-Topic: [PATCH 00/23] mtd: spi-nor: Quad Enable and (un)lock methods
Thread-Index: AQHVbXA3ZsB/BVyqVUKkLPfzQhFGC6czFKwAgAAY8wA=
Date: Thu, 19 Sep 2019 16:07:15 +0000
Message-ID: <041440d2-1f10-4ab3-ec36-53bd23aed739@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
 <920a9946-af0d-1190-d59c-0b4acee71931@ti.com>
In-Reply-To: <920a9946-af0d-1190-d59c-0b4acee71931@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR02CA0065.eurprd02.prod.outlook.com
 (2603:10a6:802:14::36) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ea901e3-9d6e-4536-5d2f-08d73d1b7086
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3839; 
x-ms-traffictypediagnostic: MN2PR11MB3839:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB3839A6F6DED5D9B6B0DF6A5AF0890@MN2PR11MB3839.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(6116002)(3846002)(2906002)(14454004)(31686004)(99286004)(7736002)(305945005)(478600001)(66066001)(36756003)(52116002)(26005)(76176011)(25786009)(102836004)(7416002)(966005)(66946007)(186003)(6506007)(53546011)(386003)(316002)(66476007)(110136005)(64756008)(6246003)(66556008)(2501003)(54906003)(66446008)(2616005)(486006)(8676002)(446003)(11346002)(476003)(4326008)(31696002)(6512007)(14444005)(256004)(6436002)(6306002)(6486002)(71190400001)(71200400001)(8936002)(86362001)(81156014)(81166006)(5660300002)(229853002)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3839;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Dp9NsT+ErjleBIijYmcF/S1B7QV13c8zY3z2bHhCFr0LXhPSMDU0ThVQa7cbaRWLZ+ZqmIQAhOVDz6vGir3yETHhiKiXDsLxoLP0QZMZlvs03LEJrCCiS0wjUSUItQTQqPjVepicNP/teu0xGxD0hQoIBP7vuOTrZhPLZY0F1MX3j7aVo8zIWLurBBZVbvWIp1ukz+Ym17hv9cfwywgJG6N1eRNRxVCHopc8JzW8OOXJMwhQYYiTX4FcT55i3oDrcjMSkB++wbwpM0npvP6XuJGUGP0SLkpT/3+G/fWDIOLqZRmsKZXi0F1ZgqeKnVSWnq/a/8km2jUWlTsPmyz8yjCzlNWnnA068VAhC7v7QKVU/mFjjdEAAZIb7y9JYIcAsQa1yjZ6lXGqnpdZp2oBQ2Dnufixhu+JPkh0Uf+9ni4=
x-ms-exchange-transport-forked: True
Content-ID: <50F76EBD626F514E9CCA7D8FE5358417@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ea901e3-9d6e-4536-5d2f-08d73d1b7086
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 16:07:15.9948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hIN/pTAYR6UVCWe6cJzGU/B2gDAJUVL7o2Xe7B86hdyDNa/Ir8qvdQpnpf9APPfUkSaegsUld+dIaUWxQGU5AySa24OqEfGFGrfeE2XVVQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3839
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_090719_677616_704D5AE2 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/19/2019 05:37 PM, Vignesh Raghavendra wrote:
> External E-Mail
> 
> 
> Hi,

Hi, thanks for reviewing!

> 
> On 17-Sep-19 9:24 PM, Tudor.Ambarus@microchip.com wrote:
>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>
> [...]
>> Tudor Ambarus (23):
>>   mtd: spi-nor: hisi-sfc: Drop nor->erase NULL assignment
>>   mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
>>   mtd: spi-nor: cadence-quadspi: Fix cqspi_command_read() definition
>>   mtd: spi-nor: Rename nor->params to nor->flash
>>   mtd: spi-nor: Rework read_sr()
>>   mtd: spi-nor: Rework read_fsr()
>>   mtd: spi-nor: Rework read_cr()
>>   mtd: spi-nor: Rework write_enable/disable()
>>   mtd: spi-nor: Fix retlen handling in sst_write()
>>   mtd: spi-nor: Rework write_sr()
>>   mtd: spi-nor: Rework spi_nor_read/write_sr2()
>>   mtd: spi-nor: Report error in spi_nor_xread_sr()
>>   mtd: spi-nor: Void return type for spi_nor_clear_sr/fsr()
>>   mtd: spi-nor: Drop duplicated new line
>>   mtd: spi-nor: Drop spansion_quad_enable()
>>   mtd: spi-nor: Fix errno on quad_enable methods
>>   mtd: spi-nor: Fix clearing of QE bit on lock()/unlock()
>>   mtd: spi-nor: Rework macronix_quad_enable()
>>   mtd: spi-nor: Rework spansion(_no)_read_cr_quad_enable()
>>   mtd: spi-nor: Update sr2_bit7_quad_enable()
>>   mtd: spi-nor: Rework the disabling of block write protection
>>   mtd: spi-nor: Add Global Block Unlock support
>>   mtd: spi-nor: Unlock global block protection on sst26vf064b
> 
> With whole series applied, I see:
> 
> drivers/mtd/spi-nor/spi-nor.c:520: warning: Function parameter or member 'cr' not described in 'spi_nor_read_cr'
> drivers/mtd/spi-nor/spi-nor.c:520: warning: Excess function parameter 'fsr' description in 'spi_nor_read_cr'
> drivers/mtd/spi-nor/spi-nor.c:742: warning: Function parameter or member 'len' not described in 'spi_nor_write_sr'
> drivers/mtd/spi-nor/spi-nor.c:889: warning: Function parameter or member 'status_new' not described in 'spi_nor_write_sr1_and_check'
> drivers/mtd/spi-nor/spi-nor.c:889: warning: Function parameter or member 'mask' not described in 'spi_nor_write_sr1_and_check'
> drivers/mtd/spi-nor/spi-nor.c:923: warning: Function parameter or member 'status_new' not described in 'spi_nor_write_16bit_sr_and_check'
> drivers/mtd/spi-nor/spi-nor.c:923: warning: Function parameter or member 'mask' not described in 'spi_nor_write_16bit_sr_and_check'
> drivers/mtd/spi-nor/spi-nor.c:997: warning: Function parameter or member 'status_new' not described in 'spi_nor_write_sr_and_check'
> drivers/mtd/spi-nor/spi-nor.c:997: warning: Function parameter or member 'mask' not described in 'spi_nor_write_sr_and_check'
> 
> Could you please fix up docs next time around?

I'll fix these, thanks!

I've just compiled the code and I can't see the warnings. What should I do to
get these warnings?

Thanks,
ta

> 
> Regards
> Vignesh
>>
>>  drivers/mtd/spi-nor/aspeed-smc.c      |   23 +-
>>  drivers/mtd/spi-nor/cadence-quadspi.c |   54 +-
>>  drivers/mtd/spi-nor/hisi-sfc.c        |   23 +-
>>  drivers/mtd/spi-nor/intel-spi.c       |   24 +-
>>  drivers/mtd/spi-nor/mtk-quadspi.c     |   25 +-
>>  drivers/mtd/spi-nor/nxp-spifi.c       |   23 +-
>>  drivers/mtd/spi-nor/spi-nor.c         | 1697 ++++++++++++++++++---------------
>>  include/linux/mtd/spi-nor.h           |   75 +-
>>  8 files changed, 1050 insertions(+), 894 deletions(-)
>>
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
