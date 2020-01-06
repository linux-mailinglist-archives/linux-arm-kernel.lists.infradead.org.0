Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275FC131625
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 17:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FChD8o5k/iVPKk6qlB/ORDUiryoTmFKSoFhzxPjLutY=; b=NF1kIKpXn4f2Jg
	JzzcZDVDnX992CW7PDc6vg4z4BEoab7241/DYwXDfdM3XXUDvx1COPkuZ+PH9fo2htSidwsvqYzf3
	W5CVhkpvb2Pn1y+TG+6zspMIgxD08m8BT0cSCufavsf393xTH8uTFxDQayVA+6E8Cz3sNEmKcRGxb
	Jo5W2qOd++tfC7kQUVi9p4Rjv1f9A+1g+B/dTiqx4FuTLSiLukRL8pmWNRWDxL4MzTUBBl4B/9AIw
	yKbU02L0iuVMiWMpEdqj4pbfoxKOOug8Z1Y+Mxab63s3NL3UarzEQvRdTgWd4+OTPN6b77yb6v1V3
	og0wyJTQ0RjWkCHt/fVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioVLV-0000dE-IE; Mon, 06 Jan 2020 16:35:13 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioVLL-000094-0q
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 16:35:04 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Q1XV6rmjGTOes0XCU66qNSEFHc2vjuNUTxz65T10lsGPdPz62MXIsEZ++Xl1yiECPSWwH0tira
 g1RwFVyon2lCwjOamtkynBfKYlcs3+lWl2MLJrElKcC6FXbjaChAzUgaxLSN/0T/en2LNMHHea
 XeN56KDPNTgOs5Gr7qslXJg6f7MEW+qNrxku3Io9qfGZOeqz+dWwD+EKwbl7/KpxRR9tHTpAAx
 z12+V0giYWhLz67locmxMcrytDxOXkIrA9F0uRm1u4Nh3z6fcBIIUWTBgPUBL6HUJ9IIZ2bY6b
 eWI=
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="61730152"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 09:34:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 09:34:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 6 Jan 2020 09:34:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNmudSRWIVPVnxWS8U6Lux0C6b2HmiwolFhex9qkRuu5qPOzoMRu9FDG+x9NnQ3ajZOkhuuL6CC/kzkqmsiOhJQatiszg1ZUk+XSptWD1ab4dyHmDWb2Gg80l4X2wKOQZcbgfJO9uKx10mJ/ZpSRxn2OTV+eLBqiLZ91/cM3eAmo/idE1J7xSjC7l1sbXdxqlo092pNy9JbXHtv0y/Gc2NAmBCRu+FYPrVHKNlvfLzyhCq/q8NQ3PvswEJc0rwhn5UOZf2ITqDIPtY6tV/06paY3HRBOVTxA2lmwFJ6eDs3yyRc5GafXI3iUOCrs+TNygLORg9Qy3TviU/yAL10aog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6x6R+KsXR8zCvwlOgbng0GzimShOb9oDdNNSRKnuCrc=;
 b=iyq6ODJAufMug6IpOPo6pal40v5izHhQiS0r2h5c1FjKdPXcUHBCEgRqhOn9pm2TR1GuGhXDWbdwDqgXX7ADxvi0HuH+UXjJXRDP7y6Wuc8wGjzQGKKnJHmg72lymf+qSqphRewnO1lOEacQ4PH87YQimmoP8hcOo+esIxLlHv5gMXJp8h9AgWoT8BoSrGjGhLQFGT0IrdjR/HHNLGWifu2UDeORadDHZaNxjlJzLhtgml5FkQdXN63lmhGz/qdpID3+NiWxn632KI4hwk4w7GV4VgGRvmAx3rHIC5jmhQeQJ5zUh6aMgEmSvv4N6KQkr330W4/AUEluoNPUE+wXng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6x6R+KsXR8zCvwlOgbng0GzimShOb9oDdNNSRKnuCrc=;
 b=tPr1eAHBXex9cfxFMDmIzPZ2RrK1veArQYN/n1LkRnoARHtwnTAcwLZnLhxO5aEVdkhsAyOpAKEqpEJJ0IYi2K3vAlKHT5ewxeMclmgnHUfI8iJV1AATRS40sZnNBmTh3E0FMU6+ZA6th2J5hiHB5CpTRedI/Am/VgCMooyNzTo=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4005.namprd11.prod.outlook.com (10.255.162.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Mon, 6 Jan 2020 16:34:51 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 16:34:51 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: i2c: at91: document optional bus
 recovery properties
Thread-Topic: [PATCH v2 1/6] dt-bindings: i2c: at91: document optional bus
 recovery properties
Thread-Index: AQHVxK83iAYe1LHegEGHaSZlToSJNw==
Date: Mon, 6 Jan 2020 16:34:51 +0000
Message-ID: <5f7c19f6-014e-d207-d3ab-bb439e1847f8@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-2-codrin.ciubotariu@microchip.com>
 <20200103222919.GA32421@bogus>
In-Reply-To: <20200103222919.GA32421@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a353c5de-5a11-49c6-8c89-08d792c65a63
x-ms-traffictypediagnostic: BY5PR11MB4005:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB40051E71BF86681F53035DF5E73C0@BY5PR11MB4005.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(316002)(81156014)(81166006)(8676002)(54906003)(31686004)(76116006)(31696002)(186003)(107886003)(26005)(66446008)(66946007)(4326008)(91956017)(2906002)(5660300002)(4744005)(66476007)(66556008)(64756008)(6512007)(53546011)(71200400001)(36756003)(8936002)(86362001)(478600001)(6916009)(6506007)(2616005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4005;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pxhZB6tRuJD9/KtBCXSd7ra7tJFgII5Xp9cRLlzSkPed3v90IF3/buzb7QhyPa7AVNx7o6Zcz9Vne/crmtbjzRBizBOrkcb7s5vDfcJKStWrD3KLbxAWXjaoJEbzTtujoz1CeTiV7aJjshl1GXf+lSTGnWSczK6t3FyAScs09R3Vb6FXnmgS/zlZTX32gjai+6PdZt6zqaMgslRiwjwsgnstaGrghJ0rCmWgjOy6J7Wn6nAva+DXpCuNrpu9leUD/LoSRvYtoZ9aE12iN2xdd6FObYNXv05MBkBIQ69YNHMyPX0fwGrS3AaEdHIAQpl+etqyYVV+b4rQhT4YOM3vNte4Zu2WAVz8KBV2DZzYvPFn0Z37N2Ko9ICAjqY5OQgQ+uPCMBMW12AbueQcDlXJZHdAXVs2fBtNyG2CBclgRaahokjV4KasfOH4ldS4fOK3
Content-ID: <0518A744A6BCAA4A8848450F89CE5613@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a353c5de-5a11-49c6-8c89-08d792c65a63
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 16:34:51.2178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ONh0kPwtk0jX9TkA/fMK17u88EvSvC+vi5MmdkhXuoS3hzadnwP/0b5M7fbCczA+/Zi1i89MAAyt+1va7zhYJ727x2gNIA0Qf73wpFIxPyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_083503_108351_87C43969 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.01.2020 00:29, Rob Herring wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 3 Jan 2020 09:49:06 +0000, <Codrin.Ciubotariu@microchip.com> wrote:
>>
>> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>
>> The at91 I2C controller can support bus recovery by re-assigning SCL
>> and SDA to gpios. Add the optional pinctrl and gpio properties to do
>> so.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>
>> Changes in v2:
>>   - none
>>
>>   Documentation/devicetree/bindings/i2c/i2c-at91.txt | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 

Sorry Rob, I forgot to add your Acked-by. There is nothing changed in 
this version. How should I proceed, should I resend it with your tag?

Best regards,
Codrin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
