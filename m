Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA33358C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7/fRm+UJ5rCQnXZtNmP7+vtNAag66AN59/90fEm4Ig=; b=t7inLJtS8lEdMR
	TY5ZVCPKyOy/FSjyminSqPBEEGuwcFAuBqMwYo6yc2s844KVHKIIGq7T0RY2ZRO8N9/uL2j6tGikc
	ZPKlUPqsLM5ol6ycY3wgDYIZVyc99tnbv3KmGhO5g/Pz/+cE39ryylhXp4Vl+GY6auGc5CyiprV0w
	ctPSV+kOPDHZEIUu9BweHHPJ8s1jO+K1q3X3Y0YoIwvDssD5Yly7MWk/Ml46AJEJnKRLnsNuuvVE6
	0h8KxVluSvZeGC8j9cvb6tbvlvMNQaHtRCVYlBm5V/bv/BAvyDsf3j0ZYs5YmswIPH6Ky8j4gmRbv
	V1oBNK/+dCOmgz2WTiSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRSu-0005CR-PX; Wed, 05 Jun 2019 08:40:12 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRSl-0004Hw-5G
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:40:06 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="35658394"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Jun 2019 01:40:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Jun 2019 01:39:59 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 5 Jun 2019 01:39:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZ4kuQTYUGt9Re2dSCz1OsSrPeQ3KrZk3vR8EDZGnjs=;
 b=mk3PlU3jHSkNsBs5aaz5xzCuVum11zhv3rE6OW/yeE+lGR5LzkjSaY2cUhU4ZOC0gngXYIpYmi1Je2xJjtwjfSc0PmugPcauYGF7Y0If92Te6ipv2WHnY4Pvk/D/XivfBGA+7OrPSRoTW9DURikH+vfopjVMdCNYyJbpW1UvXtM=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1326.namprd11.prod.outlook.com (10.169.232.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 08:39:54 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 08:39:54 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sam@ravnborg.org>
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Topic: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Index: AQHU+2NzxFOsw6p3b0iYuTBfPVB4RaZgDjOAgCvdRQCAAF3mAIAAtEsA
Date: Wed, 5 Jun 2019 08:39:54 +0000
Message-ID: <b0c867a3-4bb1-4e3d-cfa1-803c5a8bd607@microchip.com>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <20190507182713.GA16862@ravnborg.org>
 <c361b013-2d98-76e3-d30f-cec83000933c@microchip.com>
 <20190604215424.GA1959@ravnborg.org>
In-Reply-To: <20190604215424.GA1959@ravnborg.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0035.eurprd07.prod.outlook.com
 (2603:10a6:800:90::21) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190605113942134
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c743e925-6302-4e2f-aa4a-08d6e991616f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1326; 
x-ms-traffictypediagnostic: MWHPR11MB1326:
x-microsoft-antispam-prvs: <MWHPR11MB1326D74F8A03D2FC0CDC7CFE87160@MWHPR11MB1326.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(39860400002)(376002)(366004)(199004)(189003)(51914003)(54534003)(99286004)(72206003)(25786009)(76176011)(102836004)(52116002)(53936002)(6246003)(54906003)(6436002)(386003)(3846002)(6506007)(53546011)(14454004)(86362001)(6116002)(4326008)(478600001)(31686004)(68736007)(6512007)(8676002)(81156014)(316002)(4744005)(5660300002)(2906002)(8936002)(229853002)(6916009)(81166006)(305945005)(7416002)(6486002)(7736002)(31696002)(66946007)(66556008)(476003)(66446008)(64756008)(486006)(11346002)(446003)(2616005)(26005)(186003)(71190400001)(71200400001)(66066001)(256004)(36756003)(14444005)(73956011)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1326;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M1yxJD/fVKbJnYeHu3n+jVJgevYSam8IO4vG78CJ0uyYzDrupTg6oAmq73fJLejTzF5egI/R9hVx1fSB5WT5VMLaHBlFkereLI+/UmDzzyojkRn1SchKRyRb/ILXKWHnH74TiZoAy5fJDdnu9puYunoYDpjSE/v9ixLO9gtOCMJEK/xBKi+eUXJAFSa1bqqOp2RpRSGdrBiEdcgubzyK9IeB/WtaZ9SbjhKBpCFIdjEMrCxJgzZth5vZGDiTfGgn0ao1mx3mI3Bpj4IQzNyaCzO3Ni1OQt8XTUQvayzpzuJTak0A3UlBUtn204guwj7GEI8y9ZmoMPw0lPzsZz0xCn1rKgwnAt1w+n26lxHyTxmm7fnTp3SikuQJbOn2WWvQDhJQCxCUD5fQXTetKSUVXtWd18T/G0dWDmMzafJDQik=
Content-ID: <FEB6224F58D15849822188E05B50093F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c743e925-6302-4e2f-aa4a-08d6e991616f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 08:39:54.1417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1326
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_014003_301013_F5C2BC96 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05.06.2019 00:54, Sam Ravnborg wrote:
> Hi Claudiu.
> 
> On Tue, Jun 04, 2019 at 04:18:33PM +0000, Claudiu.Beznea@microchip.com wrote:
>> Hi Sam,
>>
>> On 07.05.2019 21:27, Sam Ravnborg wrote:
>>> External E-Mail
>>>
>>>
>>> Hi Thierry.
>>>
>>>>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
>>> OK to add the "pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM"
>>> patch via drm-misc?
>>> Then we can add all 6 patches in one go.
>>
>> Since we don't have an answer from Thierry till now, do you think it could
>> be feasible to take the rest of the patches in this series? After that I
>> will re-send the PWM patch to PWM list.
> 
> Thanks for the reminder.
> 
> Patches 1,2 and 4,5,6 applied to drm-misc-next.
> 
> Reworded changelog a bit in patch 6.

Thank you,
Claudiu

> 
> 	Sam
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
