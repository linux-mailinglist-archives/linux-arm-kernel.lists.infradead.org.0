Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B4813A771
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJC1+W3GPIKIahRrJnyaIJVY2h/BQCAOHtF7c8jGYk4=; b=j+Wxr0f3OAw5oj
	Fjh6eWjNF61vH4xL3PvKMR0Xa6tNmm4kxmjrqjeApF/IZT4QNNPinXln0XI2NlHzjwI9SSAoAGFIH
	ydJ91Nn0X7Ggp+Bdvdouv6qxXysgbWsgHiolzFnWcUHiFss1gaDi16NQ9pH4X+wYmre94oii0pd+d
	zYyKXxrom0PztcWdJpbrs61Pmn8ZnzjrgeSMl8KWlBfjEfWzjnTSVpXmj+VIaCXX/V0U8wF1rxbjN
	fPZyEv6k3O1ScXs0WDF4rkHvnPkB4uU7fOIW9u1ID3HjAEUtgPOyrDIkM9k3hOkm0uljrDinxzMD4
	d2H+7bI5uTt8fwEtwfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJXh-00022w-1O; Tue, 14 Jan 2020 10:35:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJXH-0001Vd-C9
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:35:04 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: DDSGWrywoZTokcwV4dW9DBihRMl0GXwzfrFLTrLo9bCy3Sto4hFg7dZQUK/OqtAjRgE7isRgKw
 OBZiiREYUJpzLVZbn4PfeVLsghT1cFKzhuTKfCZGWmb1F1FvrzrUBfVbu5G0fMVrZUABcOSY85
 wSFzGuVZQxbVFDElYRqKgsdC6q8vUQDpwWrnNp6YOuweqVQCBTN3cZ1jXarilgzzUGqqut7yrr
 lmvMs1dCLBzX+LteyuMsFuj7D8Vtf6tUOva3izSgKmuM9eZ8k3k7itr8a/D8mK0FzZASptBiC6
 QnU=
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="61850594"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 03:34:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 03:34:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Jan 2020 03:34:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kiKAYpCEshGIRPDttJWriYbvtnE4kwS0CosVFVnXhMemILuo/6xqbRnENp/J1aB/jPqYrvot7y43zwrpX4zzmXpNWZH4s0xT6khkVazXNG9j6fXMxyEXQAaPIEgBg1y7yivBwCu+EMONozn36QnJoi15lQMBTJXSgsrBap9LaoEqKx/s0c795wEHh61uI4TnNB5ljcI9UufvIPs3FmApLjGWR1sOS/QTTpdTR4o871YBccEItpm1i1+mRs6dIlTiSbKd1gDl+Z1OEQZlhw1AzTg8VeLMlNkL0K/EoiGHS+LujOfu/GDvUpUURNNUvnEYsh5X1C+Kj1qdNiy5yT4pNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QeLnPu96GbS6z+HSg7BcsDx2fhpQ5INKuxNSjU9p3gQ=;
 b=nu5SPSPPIehUbqQJ1G1/XQuO0RuQ5tHwH1h1lvNCQkg9FZHX6DGEq25vGaBXaXXPPoh7INuz0of7F+P9hBb0qo+1Uh588jkzLibRgZo/1/xyDbZrkoUrE37zqkYBUXHKf3V2JoqgSBZQAiLy48im94QjPexighC5+mBW3K6lhPsCIttjW0YT+FhajTYZB3PagRO37ny3nysuno5htKfmXQVTLPWXmdYZZ1a0QyijazOEir0zNgUfohfddK9WSdOrOvQgiFv28xw9sakxUDK68fW8Vya4/0EvwWhIt9NnEg8mlE9Anj5nkC1YeoCSZ1x2TDiw6Ae9BE9e1kBYsdHvTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QeLnPu96GbS6z+HSg7BcsDx2fhpQ5INKuxNSjU9p3gQ=;
 b=BCxGd/BhB6vKySe2M19L+7N2dFXSSJ4LMTHSp+tWsFl5WozSRl/bx6GySrJkAzFwkMG4hn00w9vn3cQvZIOZJ5d+ecrAf8LqQDh+oZuV5PRUDWKqPPT9ukCDG0jmER6A9hM1pKkLfoeUT7WO4ELfL6wTHVyom0Y9Icgejw2RwsY=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4092.namprd11.prod.outlook.com (20.176.124.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 10:34:55 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 10:34:55 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 0/2] at91-sama5d2_shdwc shutdown controller
Thread-Topic: [PATCH v2 0/2] at91-sama5d2_shdwc shutdown controller
Thread-Index: AQHVysZDZbGFbsffUkC4vg24P85XXQ==
Date: Tue, 14 Jan 2020 10:34:55 +0000
Message-ID: <3d0c5a04-25fb-5ae6-fd3a-4049e293eab1@microchip.com>
References: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b365253c-6d12-4ad0-682f-08d798dd65a6
x-ms-traffictypediagnostic: DM6PR11MB4092:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4092657FF99AC8BB6835C88287340@DM6PR11MB4092.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(199004)(189003)(91956017)(76116006)(64756008)(66446008)(86362001)(110136005)(81156014)(26005)(6506007)(66556008)(81166006)(66476007)(8676002)(316002)(66946007)(31696002)(8936002)(31686004)(186003)(4326008)(54906003)(6512007)(36756003)(71200400001)(2616005)(6486002)(2906002)(53546011)(5660300002)(4744005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4092;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LuNh8Ia/sGDQHyQ5TZylAckrz9m1e5JlFN9zbAu2ax0MzxdSyqGJ2CmCvXhVGbrV74XdsqRsNuGs9782UUt+ajlWiuq1NW2in6MmMdTcavGz+G6HF/9A8yDdFzZ3f6UVzcmbiu4eRRzM+IjsFWcZIgDwf/O8BbqAjMGE03PXLh5KlTDT29/yOcEiiu2wvd8u/FHH+N2XQ880JJZci8QLM1HF2mRoANQdTXT8KubTup7wXPLlTaLb7ZU/gC0aEi7ouGZJlwpXoAEXkK3qWMyIL4Rge05g9quHk2FBzcl60ZFhvd9DZGC+oXziC0jXECkhubjNC5w1wtxOzh4Nac75A6yb2sanmsYd4tmzBzc38v88Y95L2matwg0NcDQuzxIaJeDHwHZaHgSRnTR6UxgF5g9cHsn5t692poIrKqrUwX8C39SJZsjjHs93Ei2YUe1y
Content-ID: <070D50FB6C034041BF1B2B8EF00DC9E7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b365253c-6d12-4ad0-682f-08d798dd65a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 10:34:55.6123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ji/wBafUwkCOKtLnPfePJsm8fehsjPBazOKL1eQb7npMNoC0rHFyqHp1RKIh0JzNbws/MbuiVa3OXnfUuTQ55N8SBj39YomVxr0/5wStZcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_023459_478919_F73847AF 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sebastien,

I know you may busy, I just want to be sure that you didn't forgot this series.

Thank you,
Claudiu Beznea

On 20.12.2019 17:31, Claudiu Beznea wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> PMC master clock register offset is different b/w sam9x60 and
> other SoCs. Since there is a need of this register offset in
> shutdown procedure we need to have it per SoC. This is what
> this series does.
> 
> Changes in v2:
> - do not use r5 as intermediary registers in at91_poweroff
> 
> Claudiu Beznea (2):
>   power: reset: at91-poweroff: introduce struct shdwc_reg_config
>   power: reset: at91-poweroff: use proper master clock register offset
> 
>  drivers/power/reset/at91-sama5d2_shdwc.c | 72 +++++++++++++++++++++-----------
>  1 file changed, 47 insertions(+), 25 deletions(-)
> 
> --
> 2.7.4
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
