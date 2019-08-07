Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E766851A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=838hwxLKRcJcwNgdLSD04e7Ya6jMeYhcrWZXUnpezFo=; b=a8DIKsC4D3n7nH
	wblQ/aQ5yn3LbdgrBVUOt70m44Pn9LvjDTX5+B2TxATTwSn2RGBLM8MpUmH8onr6gSyxKCCdnBGi+
	I+KLFn49ZwQf1oNOq2Z0CVCoBYwp7QN+8LJO9bC1tnlIHPjfksYncNf2ow/JgHAuUscFe5kANfTSS
	saaNRxVUER98BTkVmvexE7L909bIf5qDn0RcHkn2o1wGfs2UH03zgr7DDsY/RypQUP/lioaeAzlj/
	+9YVAHosyyuQ5Uhev0yoJybcPFu947gx8v9VAIsfcVCBNUSp9bkg+egn3Hhg1qbxMpiWrl+2ywzMe
	VE6pWGdXKNYLPvLMLtfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPNu-0007YW-81; Wed, 07 Aug 2019 17:05:58 +0000
Received: from mail-ve1eur01on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::620]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPNj-0007Y4-K6
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:05:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+4RWqS9mWQuYvxoKFrA8TwRtuaMNbIqdlzDENJyiykRsHSlWH2Z9EpOF7qxyCDW2kdANhAiwLlpOmVnX6S5ANdIwbMeKV5RQ/G5MkZzUFrjkavVpF1pTP4Qu36ZGurpy31pvICfDg4meUezibi3Hc0nN8S1KSX4nKZI8rqK5WuHhbVjB8Iwn7GXY0dhYdaTHk2WAeanTS5453Y4ukUvMM5ub89YWMgWf9ByJ6gPXcncJXJsAU5uUuZsYNzyue0gJI1G3/xLkuxiQCa3167y1UIMmFYPxfhmw/q5qYIUDit9uLOBgXd+HdTe14bxmPYF5l9JAcUNq6XuJkyhTUzBFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXgom3m4usbskkXUBX4HQzilg0P2eehK84yCaDE9nHg=;
 b=MuECgnTNj61UdBvbejGDeufRc1XU012VqVjxvP54Vkb7QtVNz3OkX+no+aYjxE7RAtmZkui+d9xpp0fKo7/MR+WPZxvRc69vPNR2qxWSkO8CFvCQSkBFGQbeTdlTblgxL72YasyL8Qq8vfsFtMnzKigTuk+hJr7WcfdrtzEXZAWjQdcGPETNLjjPPpucVBdf3Fc+XYMQURSUIlf3k46krqAbB3abkKiyTfqT5QMuQibCnchADXwo5dy+SWIqpsTCGAIokUVXha9oeIDS2MD7HEhB+XMIvfxcK40PTKYUC4Tvzw3JChsavNCLTktsFq6EkyzrAwHM8H2qtma3m8TWSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXgom3m4usbskkXUBX4HQzilg0P2eehK84yCaDE9nHg=;
 b=ZO4Uohw+YqIxJAbreLNtk5Bf02nHXO8/ScodvSMyZXjihi1p0/ABCNZNZmNSk/EM6x+90cgArtxO4BYsX0fU/ZZPcFz/VgHIT29rc7xP/OrZVSj4VCMWdAUWT5tEjy8ckqvcLsi/5iCBe+QM7nmF3DaMDvrs+VZLMJa3VwU7/to=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3774.eurprd04.prod.outlook.com (52.134.15.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 17:05:44 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 17:05:44 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Topic: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Index: AQHVTUJZuWgkceiY7EG3+fZ0PXp0Og==
Date: Wed, 7 Aug 2019 17:05:43 +0000
Message-ID: <VI1PR0402MB2863C28FAB5DA6356280432BDFD40@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190805153114.GA16836@kroah.com>
 <HE1PR0402MB28579034C09EB49A76A4F8E7DFD50@HE1PR0402MB2857.eurprd04.prod.outlook.com>
 <20190806184042.GA26041@kroah.com>
 <VI1PR0402MB2863C4406C06B0BDA3581822DFD40@VI1PR0402MB2863.eurprd04.prod.outlook.com>
 <20190807165646.GA6584@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c91bf569-509d-400c-82ed-08d71b597bde
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3774; 
x-ms-traffictypediagnostic: VI1PR0402MB3774:
x-microsoft-antispam-prvs: <VI1PR0402MB3774540372699E7CBE161B28DFD40@VI1PR0402MB3774.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(366004)(136003)(199004)(189003)(51744003)(71200400001)(66556008)(66946007)(64756008)(446003)(102836004)(53546011)(66476007)(6506007)(229853002)(186003)(66446008)(6916009)(5640700003)(53936002)(68736007)(2501003)(55016002)(4326008)(99286004)(71190400001)(3846002)(86362001)(74316002)(6116002)(66066001)(1730700003)(8676002)(8936002)(76116006)(9686003)(25786009)(91956017)(7736002)(7416002)(476003)(5660300002)(7696005)(478600001)(316002)(76176011)(26005)(6246003)(54906003)(81166006)(52536014)(2906002)(305945005)(33656002)(6436002)(14454004)(81156014)(2351001)(486006)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3774;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CZi9f2mPsDSmKGfJ1WOPqmo3/Yf5Pk4oWs0Zcr1+djpEJdn2QHUSOPHqSQTp/5Em33c7RJe2zW+564r8lxy+8LN2qkFXi1sJ1/OCDG4mFYFVSoyH/dIaFnQqF/a3tyL/kJvuQf6+1Tx6sp/YMSW5qze7W3fsP9J3MohHwwHOgzUGQqIfRZ4akY5SgM9rMU6HSHPo8z8q3Igi6VAFWYc54scfGVcR8FTrGmN4lNDhMaWn9TktMXE+OBIZgDr3ehCInQJDExn3MDoIZalRL51DH8w92c4iRFw97dH28829MGw+oKrOaghVjxx5Mc+IWf7o6/ti69dJGUx+0Di3IIR6UQrapRfDqUcE5XIrn9VHfs/rhjy5uAWzYf+5urNY7OyUMFS0McvOZrDDik54OyQNrn1kJdSOzYz5Ry5xXD4gMAg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c91bf569-509d-400c-82ed-08d71b597bde
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 17:05:43.8454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EqXslEB28TsGX4osT9gFlsJoBtjvEcCRemOuKUHSQ9QXrBzCt6xmpvC+RTXp/5G19p09hUCJWM6cYT0+fNt0HwV6xRx0B3wLp3uJc8ilLK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3774
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_100547_664259_3F503057 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:620 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/7/2019 7:56 PM, gregkh@linuxfoundation.org wrote:
> On Wed, Aug 07, 2019 at 04:42:17PM +0000, Stefan-gabriel Mirea wrote:
>> On 8/6/2019 9:40 PM, gregkh@linuxfoundation.org wrote:
>>> On Tue, Aug 06, 2019 at 05:11:17PM +0000, Stefan-gabriel Mirea wrote:

<snip>

>>>> Other than that, I do not see anything wrong with the addition of a
>>>> define in serial_core.h for this purpose (which is also what most of the
>>>> serial drivers do, including amba-pl011.c, mentioned in
>>>> Documentation/driver-api/serial/driver.rst as providing the reference
>>>> implementation), so please be more specific.
>>>
>>> I am getting tired of dealing with merge issues with that list, and no
>>> one seems to be able to find where they are really needed for userspace,
>>> especially for new devices.  What happens if you do not have use it?
>>
>> I see. If I drop its usage completely and leave 'type' from the
>> uart_port as 0, uart_port_startup() will fail when finding that
>> uport->type == PORT_UNKNOWN at [1] (there may be other effects as well,
>> e.g. due to the check in uart_configure_port[2]).
>>
>> So I suppose that I need to define some nonzero 'PORT_KNOWN' macro in
>> the driver and use that one internally for 'type'. Is my understanding
>> correct? Will there be any problems if I define it to a positive integer
>> which is already assigned to another driver, according to serial_core.h?
> 
> Ugh, ok, that's messy, nevermind.  Keep the #define in there, I will try
> to figure out how to move all of these at once sometime in the future...
> 
> sorry for the noise.

No problem, thank you for your time.

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
