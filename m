Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26D71A7F0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/VRE10wRVzfnzWks8Zb+L061eF7ZXWo8K6wRqLAnXw=; b=niCdmLHpx7tXhR
	fW4Qlb6Lakfi1all6UDorTkxCX9SPWEwS85vy0YPaoYMLmAGxoUX0oGMGPyo2GOksLMryXCKfDBmm
	FKmQfJIollSfBp0ZnPg8zJvkUr0zanfFe0iLxz8oaq04TwCyTNt9o29AOFcSTRQOsLo0kAdBgsYph
	GsW7YTCVe7bzkIr1urSEPMWzfKP/jlMzceml4N7HWudqSbaYKL6e1RMitxuOKmrUsbcXVRO3rpMa7
	XnV6nsE36/Crf3xw1UyD3jjjugDW3Zsxwq/xOBwArBf5nresU3MvfY5kMnQ0STAp6DjA+11g+j3ba
	4+xMEvLOtvf3WDJ/Cx5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM6q-0000nI-KG; Tue, 14 Apr 2020 14:00:16 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM6V-0000lm-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586872795; x=1618408795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=y3HeX6hbTW6zfhkvhP623SjzVtCQObZaAl0NBMbJh7Y=;
 b=ti1/OlGeMA3PTe0Xw544uC1rvmTQbl1Qvn83fEx7WhYiQTDQL4IP1CB0
 Nf8s9lblPVlNC1WQi/5ULiDbgMjiyR/usEx35571LUxzCfrdt2z+O+I8B
 B9TKgbIHlFfITlqh7pWB/0mI0Zc8ajo8hFSNkK2RbvJc6+c3x7Y9SkxXO
 2a556ReLgGnU18cUNTs6w+NVRACPfsOhEqSCbuixP4TDvlWEaRDFsSYQ6
 UhH8i6DIHRkY25ukTSzNGbbl23voki5N7+OMWXzHzpheCeM1j3gZOco2Q
 LHIQ1VaPs6fyxp8U7nNUkt4tqdZhRBWmYEe8zscRQZnpV39oObxowWRIy w==;
IronPort-SDR: rpHfYsqMtvUE9uYyJ/BLuQsz4dxddUd6LKgw083LNhmMgdoH1/qHcOMTnxvHQ+rf2w9fTe63dh
 2emfbv/Fu84/1zwIc7QmWBpRyO2/y/bQu9jW8Kd5DiFwxzpwibe2A/KLmVc+B1l+UdtiAQmzQS
 sHDItbefF2Mzo8KD/p8mKOUZptbRrPRCpNgZqu+MCxsOlvMJpyDvpV03weL8RNUTt+tMZ76LWI
 a00UD7wmdPn9GkdIdoPiII3RFz57E/ieUeNxMAkXCgCuJWcWqv+KnMiKQupdh19m2ay7L/5/VL
 5xg=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; d="scan'208";a="73279858"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 06:59:53 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 06:59:38 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Apr 2020 06:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GrbaB/ztNat5qRaM3LDIpRWTZzYE7gsuKGSoGUaafMFG5cp9TuQN4Z9WsytKRKsrEOxtoc3i//uTcY7sMtRKrsLIC8Ok1HXDTv+/bdogjoK4FHuRNpasFetTiMkPsyMO8kjVQPCULva+Catlr1fZkQLJtrHdIGraIpE9vy701w5e6AVt/Z4bhbhkc1UofC7Wc2b+j9T+sPFKr2cpzdkaJjPDv11z5XxNcxxV3T1nFJj3sZsCj+GDLHATZHzUS+zwbpiY/Rb8CiAfL7sanCl+VBnN2Ow1Tc1TplV311gHUzjZjiX91nYEgSKH2utorAV6NMew4Vwc1bR8so+sTUQudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3HeX6hbTW6zfhkvhP623SjzVtCQObZaAl0NBMbJh7Y=;
 b=CngjG9bqlJxJ5O1lq1wGyaEEdTmTwahvOQRG/r3+hh9l3eZPltcMLeIo5zJ7+qdAodJPYlhR5uzAVtMgWtpURy4sQWhqIfAHSSSk5mVv4F73Qi5SCEO1S10ogmeByDLOo+du5K6xiEimsAuvYBZcrZRp0d4f4GHiID8i6ZluduxjI0WF/4MkimA/tInvXzeCfUpSHKis/q9SftXI3yssVj77b9G6M+crXTfGWbIOSLErmIM7c4ryqi0ykkTwpNg/MAKURwlHFsa0fLacSHeLqp9+cPNranQS1a66f3IjvBH10UxHmL7wUHt3qxIkwf00i/SG9FVxwksZFWvpCYd9WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3HeX6hbTW6zfhkvhP623SjzVtCQObZaAl0NBMbJh7Y=;
 b=lmOslgtiQwGUhadiyYZktmmJ0GTq56Zggxkklw1G8QEX2svy1OogQtgPygEqugbFq+8OQBJbX8cbme3ahB2jvU+kPFcKTZGj2YxJGjOHir+UZcTzCIJwI56GhuvQqRmmdPA2+2zzcg8tfcpHodQwCr4MZbQSA/yEcgxpVT2gUfk=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3498.namprd11.prod.outlook.com (2603:10b6:5:6c::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.16; Tue, 14 Apr 2020 13:59:50 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 13:59:50 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Topic: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Index: AQHWEXCuyP8yxRbKYUqiuXPeALwxyw==
Date: Tue, 14 Apr 2020 13:59:50 +0000
Message-ID: <843ca735-d911-d514-60be-795c71a4e291@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
 <20200414111600.GE34509@piout.net>
 <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
 <20200414124741.GJ34509@piout.net>
 <ae278226-7616-5306-a8b5-3f937aa6b322@microchip.com>
 <20200414131255.GK34509@piout.net>
In-Reply-To: <20200414131255.GK34509@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Claudiu.Beznea@microchip.com; 
x-originating-ip: [86.120.235.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e34e8c83-2755-4a3a-c887-08d7e07c1965
x-ms-traffictypediagnostic: DM6PR11MB3498:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3498F01FBF954C98F04E281787DA0@DM6PR11MB3498.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(396003)(376002)(39860400002)(346002)(91956017)(64756008)(76116006)(66446008)(186003)(8676002)(81156014)(966005)(54906003)(86362001)(7416002)(8936002)(66946007)(66476007)(26005)(6916009)(66556008)(53546011)(478600001)(316002)(6512007)(71200400001)(2616005)(31686004)(6506007)(36756003)(4326008)(5660300002)(6486002)(31696002)(2906002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uO53vypQuCbzrZTNdh9nOpIy/2MOZeuJXkfU5qKDVvCNsBgHDixErGe0nTT2T115m1p9PHispDoX4cRzXpsPENoKYxIsWUVsgnmO7zqDAt8+bZFfEmWlbZBdGaywKB8fRfYVx5eXzyhT8y4bl3BBPDCNphu6qX3+YFIIvyt5u0tE4T1yDs0CxtV/kutg4VLoJoc8CsOCCRmS3p86m+rTVTM/+QBm0nTZC6K19rbBaTZmwfKIPMsFvAjUDWAT97vAt8x6n/oB5QaQkeIa2NuqWJ+rRCIYDff3B39XIg+sGEuiqOmMdblezHptutA9a6hlaQszjEH3RY2wC8yaldnnQ/q6m6Qv0CFFQ7zIhDGBVZi7GysA9/9c4WZRv3A9jnojTlEVA24E8/1JHkbM3PvEjcp5E2zHX5eaKdNdFOMW8tubOcQUh4VHviyK+UtUawek6GOFajqemiTYOe+tjifMiQDzbq4VAeEk41p1xY4ZPu168vIdILVAW+h7HGU3mNhvBM9KkD18I+kRO0qERh5e4A==
x-ms-exchange-antispam-messagedata: WxNI+fPOlufJhwLg+PjpLIY6zWklf2Gs92YLUlBUOwZdaXhpfmzpjenZ+bW/aEjPakAPFzk8Zt0stM97cjMEQ+q48qv9N42X04NppUaeWvdN8NVHpHTvfV5dO3IRr3mQtv7oB2ltUadNF9xHzNayWg==
Content-ID: <F6363A936E53AA43BE204555B34A46F7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e34e8c83-2755-4a3a-c887-08d7e07c1965
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 13:59:50.1842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1fc+tS6xpsVDUrQD/wGbv1K1qFMSfSzT1AiS7fyAINBMDOnl4169A3rJeXO63QCeIb/qhGIaddf/CQtuM/foPEnqCfkOolE8GhibMOX60w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065955_528323_6D23305A 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14.04.2020 16:12, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/04/2020 13:05:03+0000, Claudiu.Beznea@microchip.com wrote:
>>>>> But this is very unlikely to happen because this would be limited to a
>>>>> single board device tree instead of impact every sam9x60 based boards.
>>>>
>>>> Very unlikely but a having a patch with diff like this:
>>>>
>>>> +&gpbr {
>>>> +     status = "okay";
>>>> +};
>>>> +
>>>> +&rtt {
>>>> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
>>>> +     status = "okay";
>>>> +};
>>>> +
>>>>
>>>> and reverting it may affect the other users of gpbr in sam9x60ek.dts.
>>>>
>>>
>>> Again, this affects only sam9x60ek.dts instead of possibly multiple DTs
>>> that may be out of tree. So the risk of doing that is null.
>>
>> Anyway... I'll merge it although I don't consider is the right way.
>>
> 
> Do as you wish but a board DT change mixed with a dtsi is a no go.

I was talking about mixing these:

+&gpbr {
+     status = "okay";
+};
+
+&rtt {
+     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+     status = "okay";
+};
+

> 
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
