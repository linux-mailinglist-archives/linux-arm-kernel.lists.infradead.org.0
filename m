Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3412F2E35
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oY1l/UjEZSC8ntBRrh2UKPKOSCxJt2NeQ0SViwcI2+4=; b=UNDb0MmOxqVNti
	GxiUPkUHBx4CEdUABP7rF+82dw90vhDtDx0+rL4HvDKtcdTWNK0C+3/wRs9BB1A+xPQR8/AJ6XPmE
	uQkzMt/Jc3gWzKCboe4YWQBB0V9f39dGbyNTN7opfHH/F1fo8t+GFTCseztlDxFLm7C9dmemfa/ml
	DSmR3q44qGqObZ6ln2SUZ1meI3wp7loBwykX3xjdqkIR9JYcsLJWZUNPJpcfR9zgSf7Vo8JkEtdeH
	XIW6nFapeKFHJBwgw1WVw4EM8T6zxj+BJFf/EJ7fSqaYfJpFs4MTJ8ha9eYi1H+onhdoQmfNKZ+81
	kBg7etKonkySzZboCpOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgvo-0007Xg-PY; Thu, 07 Nov 2019 12:30:32 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgvT-0007LD-UX; Thu, 07 Nov 2019 12:30:13 +0000
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
IronPort-SDR: hyqxdnrkHqeqYdU3NUIKD5CtJN3Ls1GrwoSHawvnrCfeJ/QLJ1Cz3Ubr78nHPkQHaESiwHVqPf
 gHJMjuFpIRD9v9xmKw/t1ohxMSmEPIXtIyym5tjwTPKN6s8LBB8taUfdohySEm4MZXqD2ZvOjJ
 amawTrnEVTee2A+5qtetdMH9SDQvoMtJsLDuq3Zt7ZsbdQphfuVdpHfJaPxv3wXtmG8zYRtlpz
 iYt6yL14qAw3ceHjkK+WJmQt7ofPn/m3WrADi7IfFXB84aBo9fzjZYpeNh2cAJFKUMb+YyZxEl
 5SI=
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="53299603"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Nov 2019 05:30:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 05:30:07 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 7 Nov 2019 05:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQgkL90mDP9ollLSnCoUOoLIPl/pR/+bD44DaFdnztxy7dfx/46PFaEXnzM+3soZTLwWVH8GwCc9z5Ocb8kEgk3S+LhnpSjX6vol18gscidK+eP/oHJ0zSyToih8yoKtbEdlYnxvsVVasThbn/E1NB/I/8CBLyfX6w9+Eyx6NhVKswqeInaB22ko8tDarCjk0OGIS0lQQDb62m1M+ennCBWxDp1kQWCJlMx9xIAB1iWXH5DSFp3Yi50iIuR1wFLWpdKt/aAYOML4aWS87HVQybEc+eTLz4EL9M4VHol5TPpjBOD02nVvg6lTWKSWb30YPHeWm68hUB77yMvZHnFOjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n+OS1/bTdZjxWrE2+suuMT9UTjZU5G+HXIdfyRqCpe4=;
 b=kYV+2d/4EqPu0TMorakn/Q213vGKI+lUbGXyck879uDFHn1s0twzlzNfBMWe416edHcvJW4kgmtZJ0E00ySFcgWjGyxTJhcGLsi/kMi/AQdqUcrV8L/fDOGw59jVpkJjQfFn+IjShWCefgx8pQzhyz95cZ1QQB0N1q7V4x9d25j668GPqEHgpMVwjdlJ4O4/d1ks64b05JtxQKiaOR1ebEzDRpUrlOpo1/D3ID0pwNwY7PPrBspQLnuQ4L5qZtYJzdoMRBlTtg+/bYSy+gsfr5J4F9ZP09rkd+7j48Bs8Q7XFJuYlqB//umh4rWE9ySbf2j24OnVBSp+lKtyt9rAiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n+OS1/bTdZjxWrE2+suuMT9UTjZU5G+HXIdfyRqCpe4=;
 b=WaEizigpacVYUsiP0S2tjWZMchJck7flm7Qrubhmwl4DYJrrDDv90Ac0SVnB/nz1DSfUNyrcYF5GR4UIQyysr4wNYb+DCCez34YfIuQ5PeuOpGER0v5aEu3IDb051WLrfBVoMFEOO+i9eUea7/nvc4pIuKReJFqO2AfeBWhgxl8=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4386.namprd11.prod.outlook.com (52.132.252.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 12:30:05 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::d128:6959:f7a2:9d17]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::d128:6959:f7a2:9d17%4]) with mapi id 15.20.2408.028; Thu, 7 Nov 2019
 12:30:05 +0000
From: <Tudor.Ambarus@microchip.com>
To: <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Topic: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Index: AQHVjwDJaBck4npwFkmE20mgXgcXzqd2V+iAgAATnwCAAA/HAIAABDuAgAkwhAA=
Date: Thu, 7 Nov 2019 12:30:05 +0000
Message-ID: <ba29a5dd-df80-841b-68cd-66cffd6ae7cf@microchip.com>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
 <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
 <20191101160943.GA20347@Mani-XPS-13-9360>
In-Reply-To: <20191101160943.GA20347@Mani-XPS-13-9360>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0001.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::11) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.12.60.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 458d75eb-7436-4ea0-84f0-08d7637e37d0
x-ms-traffictypediagnostic: BY5PR11MB4386:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BY5PR11MB43862A60A79D3E966BE0D897F0780@BY5PR11MB4386.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(366004)(39860400002)(199004)(189003)(186003)(446003)(66446008)(71200400001)(31686004)(66476007)(54906003)(64756008)(66556008)(102836004)(14454004)(386003)(26005)(6486002)(478600001)(25786009)(6506007)(81156014)(6436002)(486006)(52116002)(86362001)(76176011)(476003)(11346002)(36756003)(53546011)(81166006)(2616005)(66946007)(8936002)(7736002)(6916009)(6306002)(316002)(229853002)(6512007)(7416002)(966005)(66066001)(8676002)(305945005)(6246003)(14444005)(3846002)(5660300002)(4326008)(256004)(6116002)(31696002)(71190400001)(99286004)(2906002)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4386;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nFqVQNkpppX2VagXZU6ZOFkxEOZFcLyTdOqHl1FTa8vubbjDd19p58AWBFWmKHuppNuPDR1vaD2zUnAW8NJ7WZwl0vEcRbF4c4Od5kKAzICXaW2kZAmIhO1MjMjGUg1fLxyXjcUAvlEYUBs6Adczk6IJQy78qtaLZQqFVJf9VOQYFTkHJ6Cd5kl8RKv09/UOP3Hai4fRnhGZ9EUwWb6s7pkSOWV076a3Nl9CXlIwtj+9ClrITS5wuQuv1RwC9vaCL6Y7NTScsPMDNi1sgCEImQW7BluFW5MfweX0hkEYfwzujZ30NYw5TxPS4/nO5eO9355ZzXqR1Ak6fEUqtHzQdeRrQGXKE1SKGHG/knk76Kg0K17FGarNjCNfhWEiVKoPoPbZmWjlICSsOPO43EkNXonMb1jRpVr3ie7op4sp3xaPCduXfDsi6r5hbZxGGFhZtMij94rZr0MfRrGPdhB0pQcSS5IUDkYyfi92m5xmu4E=
x-ms-exchange-transport-forked: True
Content-ID: <441416B7DA2EE9449842D86732C2BEDD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 458d75eb-7436-4ea0-84f0-08d7637e37d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 12:30:05.3453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PrE3zcOs8YWidhMGEeLEuxZHhFwhr6fw7+jFRXvrTl+MSaWHJxuBMHwgJ8jOuQ4GCu2LOgzaUXBdXu864PRqbfZB6XcglmzZnLVYU0sMq7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4386
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_043012_081791_F9995BD9 
X-CRM114-Status: GOOD (  10.16  )
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, festevam@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/01/2019 06:09 PM, Manivannan Sadhasivam wrote:
>> On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
>>>>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
>>>>> supports dual/quad I/O mode with 512 blocks of memory organized in
>>>>> 64KB sectors. In addition to this, there is also small 4KB sectors
>>>>> available for flexibility. The device has been validated using Thor96
>>>>> board.
>>>>>
>>>>> Cc: Marek Vasut <marek.vasut@gmail.com>
>>>>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>>> Cc: David Woodhouse <dwmw2@infradead.org>
>>>>> Cc: Brian Norris <computersforpeace@gmail.com>
>>>>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>>>>> Cc: Richard Weinberger <richard@nod.at>
>>>>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
>>>>> Cc: linux-mtd@lists.infradead.org
>>>>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
>>>>> [Mani: cleaned up for upstream]
>>>> Can we keep Darshak's authorship? We usually change the author if we feel that
>>>> we made a significant change to what was originally published.
>>>>
>>>> If it's just about cosmetics, cleaning or rebase, you can specify what you did
>>>> after the author's S-o-b tag and then add your S-o-b, as you did above.
>>>>
>>> I'd suggest to keep Darshak's authorship since he did the actual change in
>>> the bsp. I have to clean it up before submitting upstream and I mentioned
>>> the same above.
>>>
>> Ok, I'll amend the author when applying, it will be Darshak.
>>
> Ah no. I was saying we should keep both of ours authorship. It shouldn't
> be an issue because we both are involved in the process.

There can be only one author in a patch, and multiple signers if needed:

Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date:   Wed Oct 30 14:31:24 2019 +0530

    mtd: spi-nor: Add support for w25q256jw
[cut]
    Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
    [Mani: cleaned up for upstream]
    Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Please read
https://www.kernel.org/doc/html/v5.3/process/submitting-patches.html, paragraph
11), and tell me if you want me to amend the author to keep Darshak's authorship
or you want to keep yours.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
