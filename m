Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CAB876C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=AlQ3wjVdLzwKyAWQkRlCCsthRNB7okHqS3Np3jVifX4=; b=Gfqfpbuiegalg9
	Gj/vZaTraAqOq2+aBJElSFp3OVVrU2slphq96aoSQrPQo6Pp11pqHyt8LbNhBjBpmPTDMkxjndq4/
	mNLpAN4oAAYtzDsIGb9Rv++d+785Q6qbuIS5OWbYFxhv/+OJgCf4EdI/1ebxE/Xer42LFis8mrRns
	+ONUzGy615ybyjqgHt/A8eFwO5hBnuuWCjav6AJHsPCj8sJjnL+SB+c+Z3ntgBdFxyCeU8R/3ae5j
	a1Kxq6WUHvaAMV3+rKImHK/Yw1L6c+tJi4dF7RMxWiGgHjF7nPJZ9x5y8OUP++hSo0hfCyKFI/LVe
	uhRxEQBpqaTuXRsjY+vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1eJ-0000Ge-Dn; Fri, 09 Aug 2019 09:57:27 +0000
Received: from mail-eopbgr130055.outbound.protection.outlook.com
 ([40.107.13.55] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1e7-0000Fy-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:57:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KV1Y645e6LJ/hDsdB+SPBsrWE5g3b9xkPutbYav/n97GYjDy5z9wHRy43fCAUQN169eS8fLwXTdtAOftndCvVTxLgGP8ngGOCsqaZpj+kl5zvu+p+FYgdHFPQSTc08xrtJ5pnlGkzlkqrksUED3fqAMJl0/aZC6BbwfLvg5JhaeYD3IzP14l6xBENC/hNiFOMc4GlhiDnEbbhRjiHBuPvvF4EGMDYQDwSobUgFaeu5f+JITH1uIzcVUaB7gQlWpff+wMnOt2knA7CXGJA35XMJkuHInWtS1AINoJad82K/Sw2OC/HjDcrr6gV0C+sMwvoV3VRZgkbTDQcka9u3oggg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z7ADiLfyDQ6SMb4iZxbJcLZ8cV0x8UM6mZu6qwT6Qjg=;
 b=bc5osxAWCQCK64BRW3QpHX39DGizqeWxEYmdk3mMYHF7nAvwGEaoR2iVqfFLokpiGvE4ZpezmKrCaMvE1HW9kbzuuXu54a7xYFh87C8dP5fElff764KgH7mA9Hfc7VHcZ79T/EG6441Fz1Ha/GasCVbDxrQkaAgbcXRL7eZTw5bohL9eP0ZuK/319zGMupLeGTkH+2UKyodMTsCfVBk9TZFG0EQCYgttSkvDZdHe/y8kAqdzg0KvdqzbTZTNJGbmSDa633nagKMvutNnrV9VNz2g++ypbyB+dMvUWPiEmFN6IKn59uuut8nRdOMyYtaonPWlGfsmkYlDEDdIjbP+zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z7ADiLfyDQ6SMb4iZxbJcLZ8cV0x8UM6mZu6qwT6Qjg=;
 b=PX0nNo5P7XsjQNb4KHsIUm429hLlAr7Yzlwf6Trqv+mhAfhm8VT3w/ImdVlUQUb+PvjzU8PFBzBSSvpjHXxz5wIDCzTLkYBqu23rzOI2caHee12lIOWdHIs8JGjN5XasqK4uaNENFY/osd41Gz2smJyLPbbQUuIgfb/rmqBJ+OA=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3375.eurprd04.prod.outlook.com (52.134.1.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 09:57:11 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 09:57:11 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Topic: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Index: AQHVTpjQef+rwi1Z1UKpXJwR9xDaOg==
Date: Fri, 9 Aug 2019 09:57:11 +0000
Message-ID: <VI1PR0402MB2863475AD0326DA86594427EDFD60@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190808080832.nleult5bknmzr3ze@willie-the-truck>
 <VI1PR0402MB28635661A4A294EC6F01095EDFD70@VI1PR0402MB2863.eurprd04.prod.outlook.com>
 <20190808171711.nk7ljqkugtketu4q@willie-the-truck>
 <VI1PR0402MB2863B3E3E2F93CBA8ADB96E5DFD60@VI1PR0402MB2863.eurprd04.prod.outlook.com>
 <20190809095338.d73fomq424gayf2b@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3ac1c76-d9f0-4497-0617-08d71caff309
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3375; 
x-ms-traffictypediagnostic: VI1PR0402MB3375:
x-microsoft-antispam-prvs: <VI1PR0402MB33758DF6D9DE8D0CE6715F13DFD60@VI1PR0402MB3375.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(189003)(199004)(25786009)(71200400001)(476003)(486006)(71190400001)(186003)(5660300002)(64756008)(53546011)(6506007)(76176011)(86362001)(7416002)(66946007)(14454004)(14444005)(478600001)(256004)(102836004)(26005)(66066001)(76116006)(91956017)(9686003)(8936002)(6916009)(6246003)(53936002)(7696005)(7736002)(6116002)(99286004)(66446008)(66556008)(3846002)(66476007)(305945005)(8676002)(316002)(6436002)(81166006)(81156014)(446003)(52536014)(74316002)(2906002)(33656002)(4326008)(229853002)(54906003)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3375;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DjE8S6x4URCD84Mb5GS6egryn40zkVwH3emtJo+rSL4SofcP7bPBkjz+c0dzk7LrlAU3F2ueBumlBxMjvgbECpVoyh53mn4b4g4RzP0HBgwh/Ph7VFfCIX+CAoOw18X3A2gjS1lDTcqQY5vFS3lCaKBEZF0EThV5YKUXfG2+o20OQo58eXt/kVUxi2gnCH5yUBl3F0vL+V/P46Ivc3Zl3dg5pGVB7SecebXhALZGBux4QedLYOxfATR2ckPMtzCvWV9C4bZLK+I5b6+mtdYhX4KpuWiN7FtuISorcK1/9VuWQq7+FgdX8WWrL/nLZBpoI20/6GxTj9dCL1G87POp/0FTxoDA5ceWLNZE8MhQblZLZEaJ+bfFzwX1pkxnK6gBrA/iWt4LbQQyMcSo5joBntEPgLM2X2tsOfQVpACEptk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3ac1c76-d9f0-4497-0617-08d71caff309
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 09:57:11.7364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d4AA8nA41aoyhthothlFQOTQdBpYYcA889pBY0taKlVnt/vh+x0ie26hxBcDIo+bzYHnaJ7SFFScC5mIalejVhVTPY/tF9bij1lF2cDneVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3375
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_025715_598050_729FCF8C 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/9/2019 12:53 PM, Will Deacon wrote:
> On Fri, Aug 09, 2019 at 09:45:40AM +0000, Stefan-gabriel Mirea wrote:
>> On 8/8/2019 8:17 PM, Will Deacon wrote:
>>> On Thu, Aug 08, 2019 at 12:47:00PM +0000, Stefan-gabriel Mirea wrote:
>>>> On 8/8/2019 11:08 AM, Will Deacon wrote:
>>>>> On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
>>>>>> +             linflex,<addr>
>>>>>> +                     Use early console provided by Freescale LinFlex UART
>>>>>> +                     serial driver for NXP S32V234 SoCs. A valid base
>>>>>> +                     address must be provided, and the serial port must
>>>>>> +                     already be setup and configured.
>>>>>
>>>>> Why isn't earlycon= sufficient for this?
>>>>
>>>> "earlycon=" is not actually supported. I will fix this in the next
>>>> version by adding a /chosen/stdout-path to the dts. The compatible
>>>> string provided to OF_EARLYCON_DECLARE will also be changed from
>>>> "fsl,s32v234-linflexuart" to "fsl,s32-linflexuart" to match the one in
>>>> the device tree nodes. I missed this after importing a rename from our
>>>> codebase.
>>>>
>>>> Should I remove this addition from kernel-parameters.txt after that?
>>>
>>> Yes, if you can use earlycon instead, then you can drop your custom option
>>> entirely and therefore there's no need to document it either.
>>
>> Can you please clarify what you mean by "drop your custom option"? The
>> "linflex" option documented in the paragraph is the name of the
>> earlycon_id declared via "OF_EARLYCON_DECLARE(linflex, ...)". We have
>> not done anything particular to accept it in the parameter value.
> 
> My apologies, I completely misread your patch and thought your were adding
> a *new* kernel parameter. Having looked at the context, I now see you're
> adding a new earlycon option, which is what I was suggesting :)
> 
> By all means, please update the stdout-path, because then you can just pass
> "earlycon" and things will work as expected.

No problem, I will submit the new version soon. Thank you!

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
