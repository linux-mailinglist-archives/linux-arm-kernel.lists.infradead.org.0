Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0428234343
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRDNn4MbNHmYH4yEWeanHXZ7fr/X93Pubys+wdNOQF4=; b=oM60wzTP1EyOpj
	GgqNhtg8+DEq2xTWrJryFXnsp2eBKM7jNhG4UeaUHEHtqkBLDofd0kZhu5iWm7osY1OjwscXvi78Q
	+3nUDCnRESFunb7axu4/XGO5uKcAh+cnxUnh/1GD17tpcsqvfW28zo9+eH4dfQ9XrU7X/xzJoNrhs
	Vh0k4WFZ251l6gu7IrwFa98IGPZqGiSEk40Vn4QPNltSg8nIutd8WyIoGRAMIqXcUGGbFxZs9Jwhi
	WvOOTAUyaVagD7w4OlYhetE11z3qBlPvptl3S1dWSG9gTdjgMjNjpZCDKHZthZGSE5JE4UZRCKn3V
	jjNB/+Os9A/GfU0Y83xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5ph-0007LW-Mn; Tue, 04 Jun 2019 09:34:17 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5pZ-0007L5-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:34:12 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="35877820"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Jun 2019 02:33:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 4 Jun 2019 02:33:48 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 4 Jun 2019 02:33:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n3Sz4yq1qLCmAsfaRv/nO9SQzSeHBL+O7wgIAMEcVRM=;
 b=2XTqHHTF+TYQ22ugGiLn76AcLM8e/YGkcMi9MGb4MnBt1uUjQRoKijk9SbBvp+XmZh1S+CwSaXqw1nf2HeKDlUKnY98DbyiUOkMpNPSTBWZ0APoumY310KrCNX3ZOh06jNHDFzIkqUjxKDCQ4YrJhlW6y/C0NK9/NN4YAEqpq7g=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1869.namprd11.prod.outlook.com (10.175.50.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 09:33:47 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3%6]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 09:33:47 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Andreas.Klassen@recaro-as.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: AW: Linux ARM Patch Ethernet PHY driver
Thread-Topic: AW: Linux ARM Patch Ethernet PHY driver
Thread-Index: AdUanq898FdzgS5cSxyH+o7hxbXV4wAAoGiAAAXZugA=
Date: Tue, 4 Jun 2019 09:33:46 +0000
Message-ID: <00538315-ef1d-40b1-a630-312797a6300f@microchip.com>
References: <c39c9ec06da84fa8b9170bb046192d66@shwex004.recaroas.local>
In-Reply-To: <c39c9ec06da84fa8b9170bb046192d66@shwex004.recaroas.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0074.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::14) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f62620c8-017c-43be-38ba-08d6e8cfbe47
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1869; 
x-ms-traffictypediagnostic: MWHPR11MB1869:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR11MB186974E1ADC66619E7AD0AB9E0150@MWHPR11MB1869.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(136003)(366004)(396003)(199004)(189003)(66066001)(6506007)(6486002)(31686004)(76176011)(5660300002)(102836004)(81156014)(52116002)(26005)(966005)(386003)(256004)(14444005)(2616005)(53546011)(3846002)(6116002)(8676002)(99286004)(73956011)(31696002)(6246003)(72206003)(6306002)(2906002)(6512007)(81166006)(478600001)(54906003)(86362001)(66556008)(64756008)(36756003)(66446008)(110136005)(107886003)(14454004)(4326008)(66476007)(66946007)(486006)(229853002)(476003)(316002)(68736007)(7736002)(71190400001)(71200400001)(25786009)(446003)(11346002)(2501003)(305945005)(6436002)(53936002)(186003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1869;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tKNLFdki0TchAiGpIuP1F5aOsVfoPmGigd0zo5ha3zpvOyIpBoKwnaSewwYH//9u1DiR7gbkQVuJ/YsRYVSbOqfEz7MDSTUxXOVNrHb9SogZtMaBQP39PRNgAYq6fQzs9X48fKVEwMR+puuIhAG7XdXhG5L3HaZDRC17JwNb/+mtwOBdekaDZEqXAbhsXbsCJwMH2t6l8hNbRrJkdvy4pbtR3kgFjCmXp5MEFxjh64RNT+MZzhRlLtlfe7JBFF3M6E92BY9MU+xuD/Lwkq2D82N4AKUe97Jr4lA934JswOtbLG82qsXHBUqJmnhQ/GGJQDSwGuQP742bbaBQgo9b2Age8ZPSg9hDTSdIDW+EJOqlWsLG6Fp0jVmWpzMGRIsSe/7qPm57Pu1n0caZ8xBXbypafF2HzH3S2mwup3T0FpM=
Content-ID: <D55C2A9960B8CD42BAF9B71A1821A1F0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f62620c8-017c-43be-38ba-08d6e8cfbe47
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 09:33:46.9578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023409_444811_0B29F5E1 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andreas,

On 04/06/2019 at 08:48, Klassen, Andreas wrote:
> Hello community,
> 
> I found you via platform Linux4SAM and recognized you are developer
> for Linux ARM Kernel. I want to have access to the Ethernet PHY
> DP83TC811 from Texas Instruments, but this device is not available in
> kernel yet.

One precision here: "not available in kernel revisions provided by 
Linux4SAM (aka Microchip vendor tree)". I'm reading it like this but I 
suspect that other community members on this mailing-list won't 
understand if not formulated this way.

> Kernel 5.1 has implemented this driver, but I can't use it, because
> my processor is an ATMEL SAMA5D27, so this Kernel is not supported
> here.

Processor SAMA5D27 is actually supported in Linux 5.1. So it should be a 
good fit to try both this processor and the TI DP83TC811 PHY.

As I read between the lines ;-), I also understand that what you're 
looking for is a Linux4SAM supported kernel.

> I started to bind this driver in Kernel 4.14, but there are too
> many dependencies, primary in header files. Could you please write a
> patch for this device? On manufacturer site is published the device
> driver description: 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/phy/dp83tc811.c

The driver seems already written, it's the backport to 4.14 or 4.19 
(upcoming Linux4SAM kernel) that interests you I believe. The "backport" 
won't be handled on this mailing-list as it concentrates on "Mainline" 
or "Upstream" kernel: the one on Linus' tree and not on any "fork" or 
"vendor tree".

> Any help will be appreciated.

I would advice you to present your wishes to the at91.com forum or 
directly to Microchip or TI support channels. Speaking for myself, it's 
at http://support.microchip.com.

Numerous (embedded) Linux companies can also help you to achieve this 
backport. Some of them are really active on this mailing-list and it's 
often a proof of expertise and engagement with the Linux kernel community.

Hope that it helps. Best regards,
-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
