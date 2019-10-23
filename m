Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A75E1877
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wxgos8vuZBoSSIPX6M5thjiBowhHiZ/MTsWNTATZmU=; b=ZZQWyEQiEe/VGB
	EGSMssmhkMx5cldu0BAG8Op/6O/jNhuXdPqPM9StrDRcgSM1lO48rCz+4eHWAhuthLZmDiR6XFc1L
	iTtWlQ7TpD0FOH6jadLW2ArglKxrYUvq5jBHEQ4T2lXuOX6fl06L/1BEyYPbqo4JB6zqtNRrsSy1S
	v64eL7Uybye9tlc1omL7LIHmNYjMJO7TcYNx6sbhIZSmgxEQ7Stzix5JSzP1t0b5nM+ESxRCd0C58
	MYbEMPQRpuYSV18nA9uF9YHX3E9icaLF4ZjxXYnghdFr8eHWeLnfL5bzwOh8urFcUD9/fEqIVq+M1
	uNEa+fuLTczl84FcRakA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEOz-0007tx-RA; Wed, 23 Oct 2019 11:02:05 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEOn-0007t1-Gw
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 11:01:57 +0000
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
IronPort-SDR: dzE5Gzzpu15wWm9IL/0HgdTSH2B9PQyIRFcdtxNVhH+Lx8klXJuZr9+w/UtJe3k9deJqcpA/rS
 1MWAnR/GYTj2NLywghWe9FdsYMdkyffx6LGHGhIV4yPKc0ADOyCF+TMTQaYbIcjscxm67nm3oV
 5e6ynpsgK4QgpdA5qjJgW4S10idNsJ3xShwEAaa4tiNflah/ZbIqZSlbPB90sWONO+EF49M0RR
 kxCkq8MiWXST3Ob6enm+9KUV4qeLA1iA+q3jrc+2BgxUaUWySI8uX/+TtX+1Bs18FIUqLC9Wlv
 A0Q=
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="52655432"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Oct 2019 04:01:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Oct 2019 04:01:43 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Oct 2019 04:01:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oKUVnxK+H+UoWKtC5dcBFwwchl2/suQqY/bu/f0prRYlu3rKH3FWX6QO/QoF8qlBFK+8mbvmf0CbH/F6Xi2FsZFAWOcJ+JdTCzC9k/7Ub0mYKWUXgXJ/OfBVBzUcyjMgJsTmCLrczyFWtj1YHVC5625UlsQBvoOV9y6ThIaxmj9KowfnXMf/hScHInXWjp5gj31WmSyzjJhpCZ6ae8KIMRqT/88dEguihaT1j4POXOVj59VKp08/uAZTkfHek5plAiv2dg0aGgwzhzvADFAYRrhu+hSTpYS50Iah7HMLHURzM4FcXf37UcUJBwCnmg6BYVKToUzaF/N+vBFOrVQ3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4jIP3V9NVr6XW+xJT6tnaK8Mz96lqbbC0IewN2mV2U8=;
 b=iko7BLAWwHlq3fjGsAUWgXNzIYnReCQaJBBVKndg8PGLuEdJEpArV6OVrbweD7kMk0NOkZxd5OVzFd0imFTlf1zbtrah9kgfUIPf6LlEc6V7tMrOy7mC5fbIz/x0zOfFnNFywNJHBImlrhZS7hW9tzlmJP1bfQvh9LcFEgRBuk3IzhMaNCbVBXxnFgJ5qAa6t42DBCbuK6m8QseX1bmQ74VQPDvfP9aVumLiMX4QunkIAURNqOYXy/sqPAZNyw8W+UQMGhl3VmWKwjA9kKa4KyReNfOz0GEWOUe2R4hMDDUlJV2lPoijowcIAcguIqNK4WK8mqos6iS+P9d35QlZjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4jIP3V9NVr6XW+xJT6tnaK8Mz96lqbbC0IewN2mV2U8=;
 b=ai2B7eM6lU0gL9y7nXLK5mMxP5KDiS2ptD0fcG4nrlrO7oCRA3VAjngYmYhoSd0qGw5ronqodx5LeqicuqsvOIPo3zvuV4t7JH3bnDyO0E/ZX+8Hq0UIk4RnFE2JoTZSZzMIAUgujyShOO98em3ZVsTR8fVaLwpG66rgeyD9gXo=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB2057.namprd11.prod.outlook.com (10.168.104.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Wed, 23 Oct 2019 11:01:40 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4%10]) with mapi id 15.20.2367.022; Wed, 23 Oct
 2019 11:01:40 +0000
From: <Eugen.Hristev@microchip.com>
To: <peda@axentia.se>, <wsa@the-dreams.de>
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Thread-Topic: [PATCH v5 0/9] i2c: add support for filters
Thread-Index: AQHVaHpLr7113TR4Hk2itVe9BFeajadO9gMAgBZqJ4CAABXHgIAC2ggA
Date: Wed, 23 Oct 2019 11:01:40 +0000
Message-ID: <c1f5c3f0-860e-e86a-5658-49e2100225a9@microchip.com>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <c17182ac-67dd-d11f-5daf-066bf446b969@microchip.com>
 <20191021140515.GC26782@ninjato>
 <f5bd0c1f-9a72-6661-146b-ef5de77e31ff@axentia.se>
In-Reply-To: <f5bd0c1f-9a72-6661-146b-ef5de77e31ff@axentia.se>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0202CA0007.eurprd02.prod.outlook.com
 (2603:10a6:208:1::20) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191023135604197
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc5685d9-7589-40cb-91ed-08d757a86187
x-ms-traffictypediagnostic: DM5PR11MB2057:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB20577C55704E4FFF71047F1BE86B0@DM5PR11MB2057.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(376002)(346002)(39860400002)(199004)(189003)(36756003)(7736002)(305945005)(6512007)(6116002)(3846002)(2906002)(6246003)(107886003)(25786009)(478600001)(4001150100001)(4326008)(14454004)(256004)(14444005)(102836004)(8936002)(81156014)(8676002)(81166006)(476003)(99286004)(486006)(31686004)(446003)(11346002)(66946007)(66446008)(66476007)(66556008)(64756008)(66066001)(110136005)(6436002)(54906003)(229853002)(71190400001)(5660300002)(6486002)(71200400001)(52116002)(26005)(386003)(6506007)(53546011)(2616005)(316002)(76176011)(86362001)(186003)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB2057;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yEsmK0T0Ca7WgifFzWgeRjh2buCI1i1Ll/7PC/cIAThR9PNOm2MJgJ9m58ViYqKa07QTf7LlBXTCe0qKH1ZCs2SOq4JqYB/wil2jhPVmf6k1qPpJKrUIQdBQUFP8EZXm91VTIfDVSvQj8ZBYg40JNQAYom3QL33YPWpGGSgbQF1w0oJYPCBWEButZPHWM3X5RVPhiHfwpgrpVF6okzo0l0yKK23Uvh1SaK+VNqiugTfZOuROfkAJeyp15o63uMg9VMPH9jw7Z5rjyp3zQtjnwVDHmqrf1v1A74hvn0PM4gjCT2cvs4j/s3xcTospWA8Vc5VoVgnfgOxNp+vLC2p8C+JsJyIlROZtdHg33s/OBlf6UzHdvh8Qfcn1X/dXOQZWNMZwioKKPp5bBji1dNZlgLuf8lBYFJFPqXGnSiqWS0tOZNeWcEKHX8Qkwr1OFt3j
Content-ID: <B3A0FB639092C0468D6D620D672A992D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc5685d9-7589-40cb-91ed-08d757a86187
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 11:01:40.1770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6YSZaRHedoGKGnA7Mpr0qg6fQzGDESad2f/eSkoCDlsOU4AH2aJ51Lh8KAPuzbVnhLCehgXW4j1ZkmnaGUbApac8AuDVyGcanbil9uzB2pA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_040153_664959_3D16A94A 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21.10.2019 18:23, Peter Rosin wrote:

> 
> On 2019-10-21 16:05, Wolfram Sang wrote:
>> On Mon, Oct 07, 2019 at 07:53:21AM +0000, Eugen.Hristev@microchip.com wrote:
>>>
>>>
>>> On 11.09.2019 11:24, Eugen Hristev - M18282 wrote:
>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>>
>>>> Hello,
>>>>
>>>> This series adds support for analog and digital filters for i2c controllers
>>>>
>>>> This series is based on the series:
>>>> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
>>>> and later
>>>> [PATCH v4 0/9] i2c: add support for filters
>>>> and enhanced to add the bindings for all controllers plus an extra bindings
>>>> for the width of the spikes in nanoseconds (digital filters) and cut-off
>>>> frequency (analog filters)
>>>>
>>>> First, bindings are created for
>>>> 'i2c-analog-filter'
>>>> 'i2c-digital-filter'
>>>> 'i2c-digital-filter-width-ns'
>>>> 'i2c-analog-filter-cutoff-frequency'
>>>>
>>>> The support is added in the i2c core to retrieve filter width/cutoff frequency
>>>> and add it to the timings structure.
>>>> Next, the at91 driver is enhanced for supporting digital filter, advanced
>>>> digital filter (with selectable spike width) and the analog filter.
>>>>
>>>> Finally the device tree for two boards are modified to make use of the
>>>> new properties.
>>>>
>>>> This series is the result of the comments on the ML in the direction
>>>> requested: to make the bindings globally available for i2c drivers.
>>>>
>>>> Changes in v5:
>>>> - renamed i2c-filter-width-ns to i2c-digital-filter-width-ns as this
>>>> is applicable only to digital filter
>>>> - created new binding i2c-digital-filter-width-ns for analog filters.
>>>
>>> Hello Wolfram and Peter,
>>>
>>> Are you happy with the changes in this version? I haven't heard from you
>>> since this latest update.
>>> I am interested to know if anymore changes are required or maybe we can
>>> move further with this support.
>>
>> So, I had a look now and I am happy. I will give Peter one more day to
>> comment, otherwise I'll apply it tomorrow.
> 
> I had another read-through and only found one nit which is in a separate
> message. You can add
> 
> Reviewed-by: Peter Rosin <peda@axentia.se>
> 
> for the whole series.

Hello Peter and Wolfram,

Thanks for reviewing.
Send another version of the patch with the nit ?
Or how would you like to proceed ?

Thanks,
Eugen

> 
> Cheers,
> Peter
> 
>> Thanks for your patience and keeping at it!
>>
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
