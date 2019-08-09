Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66F987681
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=gbHR7iPBiU5bqfE272k9A3blMC4kQhqFIVsKpP2CKoo=; b=UC8pihplBO2KEd
	dqunghYD0hCBjuxg/CtaS57vryqOfxc9vayr97HYIxyOehY5CIlfuMPy4s+RwlyRUeYCljG4PW7xn
	ogyQQirBxwaa8RI3f4QsVLisjflltXvqzZQMAj8yN51Jko5UKojEe5FFu1voF72QTPx50xGShnE57
	mOnw/9ccrdghvF/WdO1XqRb8LMy4DaYJPJ2O4SJ5IVAehH0w6SA+8f83rslH7kVG8u+EkY5tECgn9
	14Opmiiw5Dd8JE4J+6sgfPhNl3GiU+G3/U2gZmj5tghuuDZy9FFQLxyzwdPH11UWx/iri9BFzKzk5
	EKfQKanp+JdSHTEX2ipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1TD-00053l-Aq; Fri, 09 Aug 2019 09:45:59 +0000
Received: from mail-ve1eur03on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::602]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1Sy-00053H-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:45:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwvhAU50FVGmkGJlGxmEfjXrhh366das8yim7aUT5TWeCPqTwUVRK15Yg/FTXKQXkmEsJfU68vp1fV1v68OqaLy01MBJX4mbUs3ToMaoiTMFfsYQpHDOnXznqAGsOvYdCEyahrjCRRPbCZpy0LeSeoWOdDAui6sKCUEOiisjSDGUlanDvO5TCTOOB1RF5U1M6rvCbJLhw69tK2esM6WDCFgN8cuTzS/f59wQyvCqH1D+i/5CkLbfUtcOZKsAqXM04MbtZoNW+K0+Y+HKTh2kLtQqPsrslRfDiVLM6J5y5hmyxLw5uSVxYGT8Zs1IAS3lpVHoymyXJ/U57Zgh3LHPhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3Gp8dptVuK+uaY9Ye8x7ZbYCrF0v/JWUmNUsOlG64=;
 b=YNlLLt5xj/UAP/6fYQrlDFDh1XuJU12PLZto+vEPpoG+cD9jPmNLWFIacN7eqAVIcdXkqoKXQJA7Jpeh9EtCBxD8Se1OOox8dAZIHrXjiHBg0D19+IzII/bI9/5kyaFWbLybn5bstZEJ156vutzSW6CuJHOHCt2wQ4dTkFyEaSt7G1fcWfdjb526UkWnfonWMFN6eCTOjpopm4sQ0+gkQu8QLOuODet5Pdyt9qY4mgRmV2ZNpWYllfgOdxp4WwgtdHwqz6Yfz7nBYzjFDNkluKSUjFfDqO0Zkw32E9k9nC1HRCREHBMN7w6CgNYT/RNKN//+h3zkHbCjeGwnmDz/tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3Gp8dptVuK+uaY9Ye8x7ZbYCrF0v/JWUmNUsOlG64=;
 b=LfazChVs4fqY/yHq4h9uqKcMB3Cpi28fmljijeOYaihTEl1nFmqJ4JRB6qtrOIdsdGCmYNDpSgsOeSc4dwQkdRr6jYuUhAz5I1yPz7FKQLYkVHS0DlhiHX2cppeYFeQ0fPx9yVzFnyqk8UUcpSkJx1lPcXvWyzVCG+ThwapwBmQ=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3487.eurprd04.prod.outlook.com (52.134.4.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 09:45:40 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 09:45:40 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Topic: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Index: AQHVTpc0N7PGKATl60WX/HSnUpERYA==
Date: Fri, 9 Aug 2019 09:45:40 +0000
Message-ID: <VI1PR0402MB2863B3E3E2F93CBA8ADB96E5DFD60@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190808080832.nleult5bknmzr3ze@willie-the-truck>
 <VI1PR0402MB28635661A4A294EC6F01095EDFD70@VI1PR0402MB2863.eurprd04.prod.outlook.com>
 <20190808171711.nk7ljqkugtketu4q@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1ce9e63-d687-4377-7fc5-08d71cae56dd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3487; 
x-ms-traffictypediagnostic: VI1PR0402MB3487:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3487A57EC47CF9CC1DCD49EBDFD60@VI1PR0402MB3487.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(189003)(199004)(14454004)(9686003)(66066001)(478600001)(25786009)(6246003)(66446008)(91956017)(64756008)(99286004)(966005)(66476007)(7416002)(76116006)(476003)(81156014)(446003)(486006)(52536014)(4326008)(5660300002)(229853002)(256004)(33656002)(81166006)(6916009)(8676002)(86362001)(66556008)(6436002)(66946007)(74316002)(54906003)(8936002)(53936002)(6506007)(3846002)(186003)(26005)(7696005)(6116002)(2906002)(76176011)(6306002)(102836004)(7736002)(55016002)(305945005)(53546011)(71190400001)(71200400001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3487;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VyyhMslZwBvsUnmwB6TSMV9voZEpehOg1viKRnTsBSlMEttEi66M5sogjcHRrhNeThzg5UuxOTh01aLizkypE8lSec88QvBZoLI/SLJa7eF1MQGUjuHH4raKtWsbBncL5xSvUfrPww3q8z+bGz3hVwblZY2qvuctjhxofq7LVkWMN8+6ITj7T5lp9aPSpEvweOt7dybZ7z8FzRiUF0rHHnQVEA3o6WZ8cBXWuHYf66M8wNQSWn/3lrhqgZ8Cr9tYUNlGwsjcQ2XAVZSf2S7DERRaS5+Dm+uQGx4aAIdVT2fL6t4T6YIugeNHAxxVBi89alw0PMoVZbY4B43KNfSdRqmqBM21pReMQ78Gujw3BkjShkkZBSPiNLeEbEA6kKipIc5t8xHjzNYHMWutbZHhFjMZVuZxkfWBwVNE2sY6YLs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1ce9e63-d687-4377-7fc5-08d71cae56dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 09:45:40.2418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQTYDFCG5FWbj/6dT0j0JlhWuLrK/tfyIhrltz1ZxBCa0EY/7PVgvAkHY1XrM+gcgsCUj1yFevooUHTaefHnohN++xPwd9OHH3B5rjhTQTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3487
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_024544_446488_F9B40440 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

On 8/8/2019 8:17 PM, Will Deacon wrote:
> On Thu, Aug 08, 2019 at 12:47:00PM +0000, Stefan-gabriel Mirea wrote:
>> On 8/8/2019 11:08 AM, Will Deacon wrote:
>>> On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
>>>> +             linflex,<addr>
>>>> +                     Use early console provided by Freescale LinFlex UART
>>>> +                     serial driver for NXP S32V234 SoCs. A valid base
>>>> +                     address must be provided, and the serial port must
>>>> +                     already be setup and configured.
>>>
>>> Why isn't earlycon= sufficient for this?
>>
>> "earlycon=" is not actually supported. I will fix this in the next
>> version by adding a /chosen/stdout-path to the dts. The compatible
>> string provided to OF_EARLYCON_DECLARE will also be changed from
>> "fsl,s32v234-linflexuart" to "fsl,s32-linflexuart" to match the one in
>> the device tree nodes. I missed this after importing a rename from our
>> codebase.
>>
>> Should I remove this addition from kernel-parameters.txt after that?
> 
> Yes, if you can use earlycon instead, then you can drop your custom option
> entirely and therefore there's no need to document it either.

Can you please clarify what you mean by "drop your custom option"? The
"linflex" option documented in the paragraph is the name of the
earlycon_id declared via "OF_EARLYCON_DECLARE(linflex, ...)". We have
not done anything particular to accept it in the parameter value.

We do use earlycon (e.g. "earlycon=linflex,0x40053000"), we just do not
support an empty value after "=", which needs to be fixed as I
understand, because it does not respect the comment[1] about ARM64.

Regards,
Stefan

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/admin-guide/kernel-parameters.txt?h=v5.3-rc3#n980

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
