Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71222CDC9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTy5rLSii4gNsiIISx566GekPfawg2hwg2BwLkmQgPk=; b=KzhjaD/G6vIO5z
	k9mxX5PgSiHfsEWxh1BL9UKY6lLMBhNoSs5xC2CxXUnXEhwva78OClYSsSabvqKOu6UjdPX8UREIv
	WNjVdbpvB//IZdtcJnIgzli379qv+WnMMImVwuF8kCSOdgizvqu1MHPdxomat7Wc/h46b2iClGV8P
	YdvNgfrL0vqu6v0ErAlv7y1K9vI4P9S/fziewX1y3mpDUt8l58bxHsN4PzvN3QvEneLkbQqWnilS3
	byP7Rbls2YJAaKjmH8D3y10Ff54KWiX/nikokdx48bhnjFRNUP/IKCmEqR0PiYka6AQDS/k0irk4E
	dxVXLm6/MNBW+WEXjmVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNpk-00025l-9c; Mon, 07 Oct 2019 07:53:32 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNpc-00025E-Ms
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:53:26 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /qc85ScnAK4lNGyE0LVWOB7FZ3d1nhTnUrkRnMgj+YvpJsXgRI+NCC1ExuR+gSmfjlLNKHESZ+
 qy5igtuplMgc6gl45AvqSfKqAUIVpr0KB6ZpDi8gFucC6yc3WE4yBc/F1rnRX9Z74q6hOLj8gn
 xrNEYBYgnaj8y6qP+raavn0UR/T7STVHw3WaB7LyPZsjVnQLsU0n2YjeDTB/WBy5Sl7f2uBsSX
 sasiNPHxIURDmp9FhRfbGfZUhaGcLby9Vb/x+1xV+ozlyaD+qWB/Q250zEozX5Zj9QsqW7Xf2H
 Av8=
X-IronPort-AV: E=Sophos;i="5.67,265,1566889200"; d="scan'208";a="53264300"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Oct 2019 00:53:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Oct 2019 00:53:22 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 7 Oct 2019 00:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjCCZUovNK+wgqsmml8JtgSKlDZIHdq+r2iuYLYDGtDvXr9H/BxACKMK9aTDVxwjdW9nJkpnu1GfSfzeiy1ORiC6oZzWYH5LWaX+AYc1BQ4qEHhCM0E95Jb/FRxFhPQK3BBEbl7ndJPnJcmUCsJX54CfRdtxJGc32uorDvMyzxU9RRjrzcy84PQBAP5DfvTVWyg+VnpmNppnImt7K276rUHy4+ulQK+ejte2TofTB5n/P6n2BisoF2JyAU2MJNcapmMkdTqj7kSZAIOYNSgpjSSkdd3++wFnh+qJe/bAL6dRoPHJFxlZI1eWUCf7ZgdPN569YY2xcxXS6LraXt+4AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BSjGmqgHk1W5AlzakZsmiivBmjTdCaFx69yhyly/d9A=;
 b=II36Z3I+679F1Ttu1OVa8GamxZVTtkm0g9gbmHWmYxu65mM0bU0kExcRQut9JzAhoPj351GCU3EMzUEMSl4Xs5KVb4lTtkcxIwicrqwqGd4ylhmghw5P/P1T1zTQmRMo/+hHZ+NLK88L0Ll7SiNMPYVkIieTjeK1pHEhcKt3Ccbvzc2shZkMzxFl0GGsoW2co9CSGtq4hbvmwql9HsSvxa/c+68qBESRTjgzNiQ4KwY5MIyffyRAg0XCBkJwL/q8zg++pn+pMX6oq1aB+4ZYf5OOH2Pl0+wBqh0lvEm/mniDT2F7OgI7EszMvOxRkIYTbRzhR9oSoTt+g9s/Afuqnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BSjGmqgHk1W5AlzakZsmiivBmjTdCaFx69yhyly/d9A=;
 b=hRonke/GeEbLrjlAUNsl1NE8jLC+mbrDT1BxqiKJybGQIjFIiVGKF0dhg1BO+jwEOTcWJrUb6atJpHO6gVZGGka0SDTNxiiWySXOifTL3gXXTuBLbBW40e9GjeFL7Ns9Y2qMHxe7FGio/mU86e8B0baonHZRkpIDCL72xvTqHWw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1577.namprd11.prod.outlook.com (10.172.37.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 07:53:21 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4%10]) with mapi id 15.20.2327.023; Mon, 7 Oct 2019
 07:53:21 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Thread-Topic: [PATCH v5 0/9] i2c: add support for filters
Thread-Index: AQHVaHpLr7113TR4Hk2itVe9BFeajadO9gMA
Date: Mon, 7 Oct 2019 07:53:21 +0000
Message-ID: <c17182ac-67dd-d11f-5daf-066bf446b969@microchip.com>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0060.eurprd09.prod.outlook.com
 (2603:10a6:802:28::28) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191007104736728
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0933122f-09e1-4470-7d2d-08d74afb6c60
x-ms-traffictypediagnostic: DM5PR11MB1577:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB157721F44F0E0BAB14940BAFE89B0@DM5PR11MB1577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(376002)(136003)(366004)(346002)(199004)(189003)(2906002)(66946007)(66556008)(66476007)(66446008)(64756008)(2201001)(36756003)(5660300002)(99286004)(31696002)(86362001)(3846002)(6116002)(53546011)(26005)(102836004)(6506007)(386003)(186003)(52116002)(76176011)(110136005)(2501003)(71200400001)(71190400001)(31686004)(316002)(81156014)(8676002)(25786009)(446003)(14454004)(478600001)(486006)(6486002)(8936002)(81166006)(476003)(229853002)(11346002)(2616005)(107886003)(6436002)(6512007)(7736002)(305945005)(14444005)(4326008)(66066001)(256004)(6246003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1577;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +FLiBIK+Tct2QgWlSXgRsrrGdGsbhae3zK/VYvILUcnouqbUQdvnh3lbeuORrt9WoLRfb+7gvKUXOvv1I+Zpq54+5FFDTjprHmrxdGNxHLL4l0Qc0Mhe1g4rT68HbLshClxsGzPIBAxeY3x3vZvgFFo88O1N16/kh4UFj4AxwXj/cBYao6VQP0aq64bC2feit1vHOB/ZfTV2CPKNvRpFCMjvmWP4gcI0bCy+PAP6PfEo7wbdqgjoaKo8cJ7svdHTYUo5XBipeevjxkztgsUChG2r9liEv+fBzj7cuaVyIvZH9JcTag6po4uStQo9eUsiU4hu+WOZjF3jgRwbdu41h/ADCb4RS5mxgh3MT3++TeGvuSbMaOEH14c+TnaKG11q8+Fhp4M88Gw9BNHgwnBGMvxPddAk0ogb/9ou6lqfLB4=
Content-ID: <AFA9552F544D064B9390772CF4786D08@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0933122f-09e1-4470-7d2d-08d74afb6c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 07:53:21.4612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P0Ahm98Hg/Ijfohktv1rN7t1gXpmuYuuayRiODPDAXmzbVm0a8jyoqEvecae+I4Chiw+xos7QyLVRhzLx1BEIMlrAn0DmcVGYiDxhsMnNGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_005324_754953_F1A66948 
X-CRM114-Status: GOOD (  22.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11.09.2019 11:24, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Hello,
> 
> This series adds support for analog and digital filters for i2c controllers
> 
> This series is based on the series:
> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> and later
> [PATCH v4 0/9] i2c: add support for filters
> and enhanced to add the bindings for all controllers plus an extra bindings
> for the width of the spikes in nanoseconds (digital filters) and cut-off
> frequency (analog filters)
> 
> First, bindings are created for
> 'i2c-analog-filter'
> 'i2c-digital-filter'
> 'i2c-digital-filter-width-ns'
> 'i2c-analog-filter-cutoff-frequency'
> 
> The support is added in the i2c core to retrieve filter width/cutoff frequency
> and add it to the timings structure.
> Next, the at91 driver is enhanced for supporting digital filter, advanced
> digital filter (with selectable spike width) and the analog filter.
> 
> Finally the device tree for two boards are modified to make use of the
> new properties.
> 
> This series is the result of the comments on the ML in the direction
> requested: to make the bindings globally available for i2c drivers.
> 
> Changes in v5:
> - renamed i2c-filter-width-ns to i2c-digital-filter-width-ns as this
> is applicable only to digital filter
> - created new binding i2c-digital-filter-width-ns for analog filters.

Hello Wolfram and Peter,

Are you happy with the changes in this version? I haven't heard from you 
since this latest update.
I am interested to know if anymore changes are required or maybe we can 
move further with this support.

Thanks !
Eugen

> 
> Changes in v4:
> - renamed i2c-ana-filter to i2c-analog-filter
> - renamed i2c-dig-filter to i2c-digital-filter
> 
> Changes in v3:
> - made bindings global for i2c controllers and modified accordingly
> - gave up PADFCDF bit because it's a lack in datasheet
> - the computation on the width of the spike is based on periph clock as it
> is done for hold time.
> 
> Changes in v2:
> - added device tree bindings and support for enable-ana-filt and
> enable-dig-filt
> - added the new properties to the DT for sama5d4_xplained/sama5d2_xplained
> 
> Eugen Hristev (9):
>    dt-bindings: i2c: at91: add new compatible
>    dt-bindings: i2c: add bindings for i2c analog and digital filter
>    i2c: add support for filters optional properties
>    i2c: at91: add new platform support for sam9x60
>    i2c: at91: add support for digital filtering
>    i2c: at91: add support for advanced digital filtering
>    i2c: at91: add support for analog filtering
>    ARM: dts: at91: sama5d2_xplained: add analog and digital filter for
>      i2c
>    ARM: dts: at91: sama5d4_xplained: add digital filter for i2c
> 
>   Documentation/devicetree/bindings/i2c/i2c-at91.txt |  3 +-
>   Documentation/devicetree/bindings/i2c/i2c.txt      | 18 ++++++++
>   arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  6 +++
>   arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
>   drivers/i2c/busses/i2c-at91-core.c                 | 38 +++++++++++++++++
>   drivers/i2c/busses/i2c-at91-master.c               | 49 ++++++++++++++++++++--
>   drivers/i2c/busses/i2c-at91.h                      | 13 ++++++
>   drivers/i2c/i2c-core-base.c                        |  6 +++
>   include/linux/i2c.h                                |  6 +++
>   9 files changed, 136 insertions(+), 4 deletions(-)
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
