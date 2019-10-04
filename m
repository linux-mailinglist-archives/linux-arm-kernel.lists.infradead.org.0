Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCF1CBE7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSMZOirVEEKapEqJ4Od/4qB8K/jptzzTMKOy0sdQ3g4=; b=NpGnp5ZasfoxoR
	bBwE38ZyzpX4ajohvSS52iXpXhVrpTwMIHj3SCe60ekz5hrTfNQ0AQff75AlYXPIGpM8aLybgXIRz
	+yFf35cW3tKvCXn+y2bg2tg4/JAg/U9QuR7tGMgJmHsFFNNGsv1QpwMt0bNLLd+u5nV0VzOi7fNY3
	Kjxo2OTiZOehWtGaut1Pp3oLTj8TJyt9fpU2J/bgRqDV4m/aaGNOloCPWkU5e7+GfxUlImrMDkfmc
	rHPytbazs2XdvJCfvpTaNZnB3HY3eFVN6LR7L156MXG6tO60t2EaRLzyaii4J4pWcWRVsumE1ORq1
	mbAnlwTOVkD7FGvIB0IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGP8u-0003oU-Hs; Fri, 04 Oct 2019 15:05:16 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGP8n-0003Zb-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:05:10 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: gAXipiudF4AsHELQnlN3mJvuScSsb7ShEZm8VbyL9abD1OwDBdmFCNhDZde9SV94/fFa3kgbdp
 ieSG5Egt9ch2d+bUfph8IZP1YTVEojLxlRMVr88hNVDH6Dud+LVYL8Ql6GahTU1CnMPtiCYncW
 bVXA/OrRg7i6IFxRikIoXw6fO+ybfnWNCP90/h5obEiWtPQdzHrmz26LHtgiubfb/5G/mIUvvA
 USrcyBjUxJc4b6GMTA1ETXpKrB2XGf4KcA0c9LQkbaq9ZuoFENHD/Xa3b/S/90D7sJ1rqWnsL6
 7nQ=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="50211937"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 08:05:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 08:05:02 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 08:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zov7djL38cwGKYuKhIXsw43+HsjAq4jLAwH2Sjr3587QOBFyV3Qi0SM1wRnvVc0jHgmmCTvYSe7GMTl7AUL0BQddRSubtFsGPsCIpCRE9jrqnBGk36Iz3RiuPoO3GF1v9IkY1ew6/QNBcrY89xXHEb7wac9wcUWhhWkXYb1l8nwdJqD2bSo4kVeO6/+NCZ6LL3IMUAuYrg+iM0kWGf7hxkoaxDtlK2tOw3PqgBaq1hnRujM5af53ILse3HEz7c9W4G77UF9Avpnx2fL1lJ9jLH+UNdp70CiH8jgdZhZ9R7L93w+dOumGSo5js3srSsiT9GDHMSPOtVA40qe3dITTpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfKQ9PYmogaxZp6ymtVmGnYniSq39qBkVN3FMzvihAw=;
 b=hnsKXt50q/EC5+ia8kx1FhF7dprFlIwd5p8IZnOJ03gGU4+EHavXrTLjGZP61hUnb2POBGbt1ZapTTpUzrcXRmxePP2XQg7Ea7vYIZj2IpIZ8ANnXFsRuaqE3waelw95k7QnBh/zcH0bGdomkcq4mW9WVV9FF5L/y7wYpoEFUFuqPygtXi+ZaXRIy1ESPvJISEhLv22y272M01aKwj9H/F0UQmZR89Urg+kQd9Upab1UDzlfOd0XJCsMrEV36tx+VejmWlESjyqvHfZvMT0CpJ5rIgCcGoU9zgeGpbvBbKhSuCNi3ZkZTjlfN8R8mVQ43PLiiolEjVUVy63fgg9sgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfKQ9PYmogaxZp6ymtVmGnYniSq39qBkVN3FMzvihAw=;
 b=manE1tAtgWHVxN8dpL/dSAyTBXdxF/fy99gM2e4cyVHZl/hsSu/6hSn1gBER/Nct9UCTF5FRG7B1YXnQiTzTJdqqhEgHKyKFsyATXQcdVHMWgYsNBFgr5eVHYlf39Hg9aeCvpGuBG4R6PL2xVojtHGNCWP58+31KpO1srOC5dNM=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4207.namprd11.prod.outlook.com (52.135.37.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 15:04:59 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 15:04:59 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVer306XO6kcXuKUGETx77Y8Bgb6dKkcWAgAABzICAAAEXgA==
Date: Fri, 4 Oct 2019 15:04:59 +0000
Message-ID: <2d7083bf-c21e-af95-69d8-640aa08d8964@microchip.com>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
 <20191004150057.GZ4106@piout.net>
In-Reply-To: <20191004150057.GZ4106@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P18901CA0003.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::13) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76bb9612-cf81-4edd-7b39-08d748dc3986
x-ms-traffictypediagnostic: MN2PR11MB4207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4207405B0BA2547D6032748DF09E0@MN2PR11MB4207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(66946007)(2616005)(4326008)(476003)(7736002)(305945005)(6916009)(4744005)(36756003)(66476007)(5660300002)(66556008)(66446008)(31686004)(26005)(186003)(386003)(11346002)(446003)(99286004)(486006)(6506007)(53546011)(102836004)(52116002)(76176011)(6486002)(54906003)(229853002)(71190400001)(31696002)(316002)(478600001)(25786009)(256004)(71200400001)(6512007)(64756008)(2906002)(86362001)(6116002)(3846002)(66066001)(81156014)(8676002)(81166006)(6246003)(8936002)(14454004)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4207;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EaD/idEhxgEMSpl20fyswt8ECBeR6C8JNlyZwJVoLPipnSHE2ZDu6+wkdi4cPCeVbRBKWd0EV7UlozDrcFTQ7KxRJbg4XcOmyx4JZ0C/NNxZRminnunok8RK8RSAWTcZF2Z0zgK4H0E2Z6zAPnVh9HGwSjC69vkZD5xV+7zepO46ApNV0DKLddVyikRV2353H9Cam5488Uq1NwMUyz5OTgg20BpGp0LN8zd15CNrXyO+DfIakUwk04AZOEgtqmOgBmmBVYXlL52eSIZKVrsJp3Hzp2h/os18c8YD7bBO7la8fpSeD6dFFfZ6BVbe7TUV0EQEeH95O+RGN8leBxXTRI5cdNQ2YdCJmi/Ko2gMwcGIWGFF8T9NeLZASE2KYCbHClONTlDrtYR/qa1LgncXSVMp5vqnD+OHean18+lIW2I=
Content-ID: <F7EFF7A45E75214BBE596019155E32F4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 76bb9612-cf81-4edd-7b39-08d748dc3986
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 15:04:59.3932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGwf7FFmFdRthEfEJr5qOVRxMlQx7rgpUPy0v691JxZnbvK0kRi72rn/4E5tXkTBA8Knh1qwUf/1bsH7Yl8OXKGNsRv3vEgJRNFw1DpLcZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_080509_727154_C124E4A5 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/04/2019 06:00 PM, Alexandre Belloni wrote:
>> The code looks good, with this fixed one can add:
>> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>
>> As I told in v3, I have some doubts on the use cases for this driver, but let's
>> see what the at91 folks think.
>>
> There is already at least one microchip customer using it so I'm going
> to apply it.

This is not an use case.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
