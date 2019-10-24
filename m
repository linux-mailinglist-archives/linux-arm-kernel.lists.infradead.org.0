Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B66E3510
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwTXNT4R+wdMyvF/1NAxetjAsdslJLNuJZ1WbLE+oBs=; b=HYDbBAqgiag+UJ
	VUaHbtLFLWtqLuNxs+ftE8w09n6v1Mp6Tk9ewVrRMXUpYkxIZgfHY7vdy9POzSusrFg5mWeUPa2Jg
	4Jz+z4ZRd6N7n3I2khvSs0gfdGVc1lOwXN8/5P5FqrW2nWoihq5M9AHwCLUI6DbDf7diefzbRETGd
	9TMiRSh6qP6tT7TRaSCaj4d9kkUO3glemf4VOt2/ZlTWL9NBjRsCrG/iZpthdalbYD2pFBNe4Hze4
	MHh/K9R3j29Ok+nyTST51JDH/v6Y7DJkBxyovmk97rWTr/Zyr84+0ivzMT6I0IqI0okhJsibWjR6B
	BS3PgzS7P3WYnJ8/f1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdnE-0000l4-M0; Thu, 24 Oct 2019 14:08:48 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNdmx-0000jZ-Ra
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:08:35 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PrxqaikAwrfnnNPSvIKIGexdX3b4TKLvdszW3DfQyFdF2lh0BZ/fl+wiaaD3cXfWMmlJsFcrTD
 VDs91TN7bQ4M9RUq1gjWyTbUwuOPpd2lFS4xYpOjDJdTQyPycbNTLa8mBAIlg1+/iAYSmBJmhW
 I775LRRJvQZHbaM2Ub8O/32/fJEDk+O6DEmmDDu0BwRSyTJuidPbi8Ib9XnfzG+uw0aMhkPK+r
 Prjntvr6lc/BAHpuE20z5zzBFrYhesQE5R2Qc1X/PerdRjLyHaWui3/S7NZma+h2vvNizfMXPX
 n2g=
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="54255336"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Oct 2019 07:08:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 07:08:22 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 24 Oct 2019 07:08:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1MLYGMbCdTYs5C6YbhN7sVbIikFpbu0X7u2oWp8vFXVVQ0fwe5Pe3N/tBctxIZ9ZyfUBj9CEYXnkkA1uXIxOkA/jyDzCvMAH4zfbqiy1G7zzhBwZ+jXEXhryz2pQBlLDDWTa7I4QPLeKyIqQDvOS2J18KXNsTnEdkEJK6BIcub81KCXvVlgv1m5J8+miVzDAvdK0x28XasbIiYiOqKUgau1EG+tT3bLdKtbkhtU+5LHVgb2nCOiY3AdcYB3CX0LUhZd2//EM/CCjWQWKQZDCtnEeJ53KQpbGEhgKO4XB0IMwwTF+XjmlD0ZmQtGuxBvoUedhxfLeDu3AGlhRBUWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyZZVkoRn3UIGafYECyb3X7DeCx6lrkIKsr0LV+OBkc=;
 b=DWL6t9WgfowB7SlnB/PrLMmxpkKRok32GGR7ozbeuMyDJ5Y7LCmTTxjKN+h4H3X6gSEJ4ejgpjcNBy3W80srO6D/INt9ajVIoTgEgsJuFv5K0XGMIccaMgVrFuobAud7VlJWbGi+TNJsySGL431Xn8uPydYNUJ3/GkkZL/yKuXEqOpNJ1bb9U+Py0/14h+exOcY706sfX5jPxx6mhO+KrKZkQQe851FTn42XNb+hHBha1HpxVwKX+h/y8gAkhe1FzCNwL0on2kNFZyuhTHco/XgCR1Vghsn/NvixC7wDde1BG8hjMZbNHaFXy+XZcnQnJMmHnaEOBntv5nrfckuz3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyZZVkoRn3UIGafYECyb3X7DeCx6lrkIKsr0LV+OBkc=;
 b=EXUIVfo1ucO04Iq70OsiyZM/6gZVX57djDIUho1DGX4xMY+9u77tPu8VCX4gWA+D1Z2e26aSEGZ87MaMSApNOolJvTwCxYzIBBL6iKMKv/QPugF1TBDd1Lmd3E5QphUDk6yB70PDqFr+LhPALSEwh5aoFkpmUtS7Mo2yZfbTbfU=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB3957.namprd11.prod.outlook.com (10.255.72.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Thu, 24 Oct 2019 14:08:22 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::5830:772e:99d7:3a3]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::5830:772e:99d7:3a3%3]) with mapi id 15.20.2387.023; Thu, 24 Oct 2019
 14:08:21 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <kamel.bouhara@bootlin.com>, <wsa@the-dreams.de>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Topic: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Index: AQHVeTBjK0tNmFNyIkuOo6p8CcqP0qdlp6cAgADDS4CAA4uRgA==
Date: Thu, 24 Oct 2019 14:08:21 +0000
Message-ID: <1e70ae35-052b-67cc-27c4-1077c211efd0@microchip.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191021202044.GB3607@kunai>
 <724d3470-0561-1b3f-c826-bc16c74a8c0a@bootlin.com>
In-Reply-To: <724d3470-0561-1b3f-c826-bc16c74a8c0a@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0027.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:101:1::15) To BY5PR11MB4497.namprd11.prod.outlook.com
 (2603:10b6:a03:1cc::28)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66a09ab7-170a-45b2-ca99-08d7588ba09a
x-ms-traffictypediagnostic: BY5PR11MB3957:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3957AB435BDF6DA94E74088AE76A0@BY5PR11MB3957.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(36756003)(26005)(8936002)(81166006)(81156014)(8676002)(2501003)(14454004)(53546011)(76176011)(6506007)(386003)(66066001)(25786009)(486006)(186003)(86362001)(52116002)(478600001)(99286004)(31696002)(11346002)(446003)(2616005)(256004)(6116002)(6486002)(5660300002)(6512007)(229853002)(2906002)(476003)(102836004)(4326008)(6246003)(6436002)(66476007)(66946007)(66446008)(64756008)(66556008)(71200400001)(71190400001)(305945005)(110136005)(54906003)(7736002)(31686004)(3846002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3957;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CopqhEH6pFc2hAzrE7ViL3UX4fhPba4TV8VtT7goDjXbaI9pckw9/WQJj0Xt5PnvU+FziIeaWYytfGzz1IRzitmxAuzKfS9eyo56+uADwL8gotHgXDgeRVbd5aZuJtPP5RztpHOFTRGSA8/jKscNz7see8fyGQn+H+9lUYjwKVemQtZ9xITaqacEBneB6XupjpgP04O4wlrLoI6cmF5KqHkTfZt6/1Z+g3z9V/TOxxyNCI1czMDwr7EMWS9OMsmLIH7MalNG2Uo13whysuL2WiXlhLVRancJI/QzfrCDuBSwktzfpm0wt987y1oSwrLfRh9IFavsRsjohzT11x73MHhUxdcH9N+s8diKWLJYCJCcqDUqmOYsmYlCGlTbWorUZ0/c+0RBaRcT5898JHsoHDfK+PmnFelbsLicP5+FvcbFDovsOCyQFl4+UiDGV7lG
Content-ID: <E599F74D1D260C4AA9BDA63474521792@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a09ab7-170a-45b2-ca99-08d7588ba09a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 14:08:21.6800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: swJ/whvCgLIodD7AcGUGJaxrFL4cEUkHbUnBsZkKxfbNcVlduv8U3CmByM1dmC2hJzLQ03kTBT+4D90Q49zj98U3n26aqrRCipdGCv2XrD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3957
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_070831_902337_9C658952 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-i2c@vger.kernel.org, thomas.petazzoni@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.10.2019 10:59, Kamel Bouhara wrote:
> On 21/10/2019 22:20, Wolfram Sang wrote:
>> On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
>>> Implement i2c bus recovery when slaves devices might hold SDA low.
>>> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
>>> until the slave release SDA.
>>>
>>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>
>> Setting up the bus_recovery looks OK. However, I don't see any call to
>> i2c_recover_bus(), so the bus_recovery is never used. Did you test this
>> and see an effect?
>>
> Indeed, I guess I mess it up while doing some git stuff, it should be 
> called from at91_do_twi_transfer() when the transfer times out...
> I actually tested it and verified the recovery is triggered by pulling 
> the SCL to the ground ...
> 
>> Also, I think we should merge this patch "[PATCH v3] i2c: at91: Send bus
>> clear command if SCL or SDA is down" into this series. The crucial thing
>> for both is when to apply the recovery (at the beginning of a
>> transfer!). The rest is "just" that some HW needs a bus_recovery_info
>> for pinctrl/GPIO handling (from this patch), while other HW needs a
>> bus_recovery_info with a custom recover_bus callback.
>>
>> Opinions?
>>
> I'm OK to merge the two series.

So at the beginning of a new transfer, we should check if SDA (or SCL?) 
is low and, if it's true, only then we should try recover the bus.

Kamel, let me know if I can help with anything.

Best regards,
Codrin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
