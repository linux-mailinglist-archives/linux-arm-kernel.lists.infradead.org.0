Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBFCAA5ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ka0bREFwYnecuz0q+me2G0+rDAC+PrcolaM1YBIa1Lw=; b=Z+Gpcttnr/VZPp
	WaFg1lsy6xvlN64OODEfykI7IOoD/J6+8iPXAM1vYgA9ve4+onSaMigswGvYMKWcyg1NZkCoy61N7
	Z1R+xoxmM6I/yrXS/Ezo3ZN8zbyRPZYEBi7V5JgycPmVRk4kYJzqxeQ4wZko3d8MQvwlCdXrqLbjo
	eNI7pF2ShKPmNgWMHMKF6E/vC1c8HcgF23pUkKXAaoWCxpmfFhr7JJ+wSQZ8pyvIRxPaa9JcSFiOR
	GuDzTnB9wj7KnF+zF58YmRKlDTna42dNM11MmNIncT7jN/lYzL6LAm5bTk0XTun+U4R//K6FujPmv
	WE9iEq0ZPLc7OyS2yN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5spQ-0001JC-CM; Thu, 05 Sep 2019 14:33:40 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5spF-0001IO-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:33:31 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: allKQxs7ozmNMGIYYvd1gVnUjvvInznQLDQv5UNaxsI3xZ6FNxenjZN0N5jgIOlLl8YhIg7b27
 txXQr8qL06godsKgJZUbBXgediLkS+ixuqPpnjsDYBfWcjRuWdX2PWKIslxkG6KctUqOZ7Qhmo
 guIYp1AiHw3JBLFF5c4TrLvMqtPotVM4c9uz0I7A4QrIDqipwWHDYOZN62R6XN7KzyUmhYn0ya
 e7RgX0qmmkbbyiEKDLFoOne8gYnbZDs/NwZu6HsDJOUk7KyiHRdsNUSCbv/bINKyQIEQUJrVCN
 80o=
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="49357465"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Sep 2019 07:33:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Sep 2019 07:33:12 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Sep 2019 07:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0WtBRT5f2A7iK6qWjgVm3GG2DKNO2PBMCsGFqY2og8GnwtAcACvm2RqspdKz9i6NAhKxxC/fZcluuWY4VGMldC3jAZtffFlg+DkIagdF6mpSQcyXhYX9Sve2FwiyiU5wI1PH49kSEUvx0sv3PEN5K1CoLwpZdHocYDyqVjh+5eFCLWxhiP77X8GAu0BoRTpzYCffPNldxNjdZzcGodnHH5TlMFqNfrS6hO/f6ehXWQSDiBa/kyPt4ryb8xMzKI5hU5LRAnLg6OSkJb0xYd4QADFvuZ2MVXl7/6Qevxd58ttLW0vLLDHtev1LcvrbyPMmWn/mgBuXee06UkMH6J8qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TGz6ZR1joP0fbRvDI2l62o2dapX2nevSvviiB94EDO4=;
 b=X46EP7F7mepZ/07k/QWCV/JrXLM6GE6pSoPeOlRBkAlVVrd5RKNlQjXbBT9NVj/jdGAGD0X4494m4wsE+aBONcpeaw+cVMdoIIVqj6xBN/yAtA31gPW0MZQ6HEIzvkF9Ooe7gQa5WNM7Y8ch12yTrCEs3LeaBGOeWVgg69cYxZn1ga3zgret50ACV6XPr+M6gDQMqhxUNFyoi2rp6R/8LOq6C2C/zMQFrBIhWrI0z2cDafn/f5hdwm1kzPtHSig091OQawC1sXZLSmUn26WCWNlZRJwqou9OU5L87OhuIjiS+cIOKqpNBuioFC+V6HAWX+yxkjvcjyt4bQ4WvcdE9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TGz6ZR1joP0fbRvDI2l62o2dapX2nevSvviiB94EDO4=;
 b=Py+VPfGCWyLCIlyeRqhaNLZJt3IFW0/VoMTKi5Lp8rxGAWxZVwCuT3P5j3HAmKz6mSNvn//LJ+mclAyNy7DDWip2SNlrTgPyrep/thj/lI0qHR0An6AC/9PSrGa4qTS9Tg4eLoD7esRi+hJmsE99GKN7tHtdMHcSUofuaaxz/hs=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1295.namprd11.prod.outlook.com (10.169.237.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.22; Thu, 5 Sep 2019 14:33:08 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::39fb:40b6:1378:54c4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::39fb:40b6:1378:54c4%5]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 14:33:08 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>, <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Topic: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Index: AQHVY/QyAv7XIDH0V0OCtYP30EqoQacdJbcA
Date: Thu, 5 Sep 2019 14:33:08 +0000
Message-ID: <c6d4ad63-4801-fa9b-8fe3-7bf96f3237c8@microchip.com>
References: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0901CA0101.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::27) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190905173258077
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0363539a-b961-4568-b614-08d7320df8a6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1295; 
x-ms-traffictypediagnostic: MWHPR11MB1295:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB129535B6ABEAC20FE65BC20E87BB0@MWHPR11MB1295.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39850400004)(366004)(136003)(189003)(199004)(99286004)(6436002)(8936002)(71200400001)(25786009)(71190400001)(186003)(486006)(52116002)(558084003)(4326008)(14454004)(81166006)(8676002)(81156014)(256004)(229853002)(7736002)(31696002)(86362001)(3846002)(2906002)(6116002)(6512007)(6486002)(6246003)(53936002)(31686004)(11346002)(316002)(305945005)(54906003)(478600001)(36756003)(76176011)(5660300002)(102836004)(66556008)(66476007)(66946007)(66446008)(64756008)(386003)(6506007)(53546011)(26005)(66066001)(110136005)(2616005)(446003)(476003)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1295;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z9K76n88isiDcc2nwJf9hGYeCstt1liKfJHSpz8zOV6cihauBID9koSzJjID9spcuiNDIPGl2gQY5FLveftu89cY98AVbHwQ5jf0IOQmUMZoK6cNVWCg1rhsXmaCn3QC4dypDDwKbEmbvwGxIo9bDBsNKHOhJ49Y1OGMPipIShpU5VukUrSZndoWUKbM2cr86sihuRPHSw7yrv0lK4GLnSv5xa8BeWSUMg7Pdb+ZpkZzSyqFkfXuhpvQJXCQ6mEH2CyD0ule7ZsASnRKrI61RRXCbXawNrT6YhmcsRkAh8MdWVdkN0Wz4vuRg7lCx3OSRXDUEIHkM9uauUelfrpjH9/m+ArwBWEmb7ctmUYAv2FlvFyvOtNpvdHdz0BVfwYAm/DDo0HienyPfwaC7ygcGJIwMi+9QCwlBACJ959Rs2g=
Content-ID: <BA883BDDF357D7418295180C61C93792@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0363539a-b961-4568-b614-08d7320df8a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 14:33:08.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zLVuMeFUWpd0mV8f4hzyery0ydyIoozTyD4CODlV/uY3NKCiYjYR0C+QLRYZHjRBSWuVHb+jXgnTXH+R41wUcWQf4rdwVUyRIJ0r8J29OUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1295
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_073330_053829_FE5C662F 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-gpio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05.09.2019 17:13, Alexandre Belloni wrote:
> +		pr_err("ABE: %d %08x\n", bank, bits[word]);

Is this needed?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
