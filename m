Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF54CE4EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVlc/LWeR+B/8ON8yn2rUVeXFWh+Cyla0UfZJjgXOzA=; b=pxYdiZSTlLmsIM
	gD2iI+FH5ZbDnlKiE23VIki/8aJJpEiTVH7IU9d5pzWTVbJKpxv4D7OROD0asJVOIeYLIXtWtDkGn
	BQiWpgyvi2AJxWOjJfFzMSDT0PjFHJEtybOgv0n3c9dMIUQka+T2IWdDLv9Lt1afB+TkgZ8r046WQ
	YLke4sJENXtfMD7hGSffF2Vxhtzs1wbf4cQma0TvW5UzRgLF2dODqLfSn+GzULPot0mF3oGAa92i2
	RBh5acao9wQkXDnEiQ3f3yrp7huH+hoC+ZVXtDrrcbryfDFpiNCLqs0WiSczAN2pa6LcT1whyKKbv
	8pXQvItbHldQsYe54adw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTpK-0006oo-KC; Mon, 07 Oct 2019 14:17:30 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTp5-0006nm-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:17:18 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: omg2YT47CKvJ02GmeBKUWMzVv55uV0TYovxXP4BkFBczeD7A0atDvfukWfeR4SFTAOnvY5MGHR
 UdEugJwCGlUyKMxvicTZ2sNRW2XojoEcW/5nD5t7nLcIwT/PCy/LG9OwAkKao2s1KTdz7n0M1y
 EgQbd7YOxVO+toiUfhkJobL1qGz8L+H52e3t3/3dPCbevxKTBMGJXXvwnz5hVKzjSMGypGXU29
 D39BDZkref4ot/sbdLki58Pk9CoBPQKex9KJ2PX9PjPRVobNqUOj+yFw57LBZtNVV9IcDkcYt6
 Fr4=
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="50681831"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Oct 2019 07:17:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Oct 2019 07:17:10 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 7 Oct 2019 07:17:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVzR1FjDHSYQP/sJ2K4+ny2xf9JTVWIMhkF3h2KNQxIc96Mb1O8A4ZfnxX8GzC4G+rQrsYwHJXuwP8hNE8I3jwdWiTvPUk7/9Gp6tg2w5weC1aHMKCr0YfPAuNnLhcCOGpUvOBySg3wIXBgyGXxCrrKciYF5D4lhelZk9lf4Kvq14y1OX+XPaRQ+TzKMnzwvESnDnHMpHkJeyjg9YuiIrhgsC+bDHUcId04F36ILM8YOhTFs5a0Eq4mIgDcyOjM2JlGkxkrPifB68U2lGj+7pKach5Xvfj1vuNhn8mjRDJdzsicsc1WVEwuu4rMRufERl8v6xzXDnPh9mTeVsq1CqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnH1V09UE7UdGTxZFztDT6VrhYa1pDi9LtqE3OXRvRU=;
 b=Z7/Qq6WwQMYePOAuNtlRZPS2s44ciyef8LStliU0AcSnx6Y2UZngyzFQNw9MREMwr1GzUgPxX4Y5eimO7PJnk/NQW6w54nsW5aI/dQFpY/QS31otF0Y6LGpQaeCALNCT1+88lw40tUIvUBR+S9bn6YxGGCHsN8UUCN+biIAQWuyjhWS6kJJyAbUfw4dwVakB2QNY8YL0jMePIuHVomuTpT1mR8MkW7fckivj9zPGdBUu0yDmms+/+2SNDFfaAz6o1e11cjsXnjTvvvLh+PE6bdeqaEFkTGAcvrc40iy1hTtkZ2YWt1dr7SvFDU0ZeIVAjtVO9gP0/6c0EPT06PHcxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnH1V09UE7UdGTxZFztDT6VrhYa1pDi9LtqE3OXRvRU=;
 b=e2W87CE1vaJKmWS/EUd2FkXqUtcO4g6mPnuOz+HgHELnLP+0yXd1geCu2i/GqPTZEIsE9q6AsS/Bq1Ak+RLBYfwgiSEnZtWHqdSi3gEERzOgrZ66HRozKkQPmFxRnxZHtcY4mO8WScs4OozAcdmP1qKMq+qeFabSzuoCEPVkjeM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1386.namprd11.prod.outlook.com (10.168.106.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 14:17:07 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4%10]) with mapi id 15.20.2327.026; Mon, 7 Oct 2019
 14:17:07 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <linux@roeck-us.net>
Subject: Re: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Thread-Topic: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Thread-Index: AQHVePP1mVCAVHNqYEKA4n6lujXEMadHVTuAgAeBQgCAAE9UAIAACneAgAAQAwA=
Date: Mon, 7 Oct 2019 14:17:07 +0000
Message-ID: <f07d299f-574b-8f48-9412-c9a9b50ccd3a@microchip.com>
References: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
 <1570001371-8174-2-git-send-email-eugen.hristev@microchip.com>
 <e58a3ab5-69bc-cad3-5faa-ed00ff7906c7@roeck-us.net>
 <ab7b6b45-5e6f-100d-51af-a82ac325d948@microchip.com>
 <a9adf20c-f730-a7e9-a826-59216c17f03d@roeck-us.net>
 <20191007131348.GH4254@piout.net>
In-Reply-To: <20191007131348.GH4254@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0060.eurprd07.prod.outlook.com
 (2603:10a6:800:5f::22) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191007171124760
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 784933f9-b5ea-498b-2f3d-08d74b310911
x-ms-traffictypediagnostic: DM5PR11MB1386:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB138675662C32FA3CD5ACE77AE89B0@DM5PR11MB1386.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(110136005)(2616005)(102836004)(6436002)(11346002)(8936002)(54906003)(476003)(5660300002)(52116002)(305945005)(36756003)(486006)(81166006)(81156014)(6486002)(6246003)(31686004)(8676002)(99286004)(2906002)(26005)(6512007)(107886003)(4326008)(446003)(71190400001)(256004)(25786009)(66476007)(66556008)(66446008)(31696002)(386003)(53546011)(66066001)(71200400001)(14454004)(186003)(64756008)(86362001)(3846002)(316002)(229853002)(66946007)(7736002)(76176011)(478600001)(6116002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1386;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HK24lH1fFOtWOaiboUnreUg4jKhTltI7q2VA9bNx6s23yZIeyF8rL5+pInnvw2hAqbf0M5GFkRYdDFTnzGylG+A9FITGVmh72FGQViaqDRXNHT8nf1Taki4BAfjqfsFn2CJ/+xGYbClvsYcGt69K4WYevRP/fGQfG8WDq6gX6fMdX02g0xOpCbF0/YEGW2Lf96k30xj19JNbwyaACkgWr8kmCBWxWSQE8RPEG5qVy/kFvZnhvC44WQB31X2ajtiKaSOWJ6TiX3luSk1x0GenDmhlYLy2KVfGKI/8ba/ed92gLFJE0W9mjgedpf+w39nG4p/O1mDPcU9PamCOvnXzpHiTlodNeQOMOq8Huf3zvJB7ECXn/xGdIBR7RPL9IyJNpqli9FtCGJAzdzDbR4h8Bv4er4PmIFriuCLXvGYSloA=
Content-ID: <2CADD20031B0D44993430B4B4818B0D0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 784933f9-b5ea-498b-2f3d-08d74b310911
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 14:17:07.5725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x8Cw+Ld4Jk5SFpyo7IacVYMHwTzG00lngVtt2Rg9gIvY655GCgcipy6Xfg4zYqy6HKrJK+BeG8r7Nx1ux9Lx637R0fabLv3BkF8pRCRJJ7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1386
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_071716_000621_CDECF4D0 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07.10.2019 16:14, Alexandre Belloni wrote:

> 
> On 07/10/2019 05:36:38-0700, Guenter Roeck wrote:
>> On 10/7/19 12:58 AM, Eugen.Hristev@microchip.com wrote:
>> [ ... ]
>>> Hello Guenter,
>>>
>>> Thank you for the feedback.
>>> After reviewing this, can you please guide me towards one of the
>>> possible two directions: merge this driver with sama5d4_wdt , and have a
>>> single driver with support for both hardware blocks; or, have this
>>> driver separately , as in this patch series?
>>>
>>
>> I noticed the similarities. I don't know if it makes sense to reconcile
>> the two drivers; it seems to me the new chip uses the same basic core with
>> enhancements. In general, I prefer a single driver, but only if the result
>> doesn't end up being an if/else mess. Ultimately, it is really your call
>> to make.
>>
> 
> Most if not all your comments were already addressed in the other
> driver. The main difference in the register interface is the location of
> the counter that only really affects sama5d4_wdt_set_timeout and that
> could be abstracted away by using a different struct watchdog_ops.
> Interrupt enabling is also done differently, I don't think it has a huge
> impact.
> 

Thank you Guenter and Alexandre,

I will start working on a v2 with a merged driver.

Thanks again,
Eugen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
