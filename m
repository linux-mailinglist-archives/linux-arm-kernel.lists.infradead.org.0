Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E3799D49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=posPS9BIgDPGXzB1zipwTNAjKjAQ32IIMdEkYdrzwOc=; b=bMfvKp8iyMgNNJ
	KQS3nh5K2tMbaYDI9TG1+uVNqwP6piukXUkxDAWxNzvdrgBNopxr6y1LeMzM9SFisgEmPqNpppliL
	XOBzqC171V7ONkk4oy9MepMB64uW+okoOy5TCrz+fqHns59SzGh4++nRpU8fIomW9Kjifk/dITW73
	XOCfbsfr2s7yBOtEuRcN5H87CE75dPUB6UKYp2FzDtzbXFIxFyjiYkCcFO4ii7jD0qJg1iSIPCY45
	ek8ePxPJHQqA2RiIxY/eacmEQKARvSd2q369KnaEvZn8Y0PUGlh/gGcCzOXSgDGurDBgPn/HiXJQJ
	FkioeQi89tiHxk7jj8AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0r5f-00068D-GK; Thu, 22 Aug 2019 17:41:39 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0r5F-0005zY-3b
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:41:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRO13rnjSIjTHGYsKEDMKg3KPFXx3kTR0AUuQMibmM7UTe6FXRJXTjJevRKd0334f4wUns0HETj3wcxCgSrd1Lg2SjSTW8mH1Ew9TLRnCFRsAkio7SmCfmyU5Iz0ap8vZhOBc2LlTv26eXVJl+Ve0ygzurLTL9B3T7fwZvWswfYvkXz4IfuqKFftsTEE4ENsOfqPEibxNppPfa8Lk6mrsCoIqSaEAOrWPgdBnrF/u79NWwhYHImEcAfNN3LwbLvAxNDG/c/2VuuQb9uzfjLFR+2b2RF0eGGYGNIq35t7Qe6U5BakLy5bFNALBv2WROAjgtFKQkneaA89pd++Pr/gfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zfdWFxc4tpZG96O621XPEKPsObJSpnKSPyO1MZrjq0=;
 b=gehJhQIQxY3Rs9rLNb9llDaJWfbDRTQ+S6/F0zhPDkuovcGYfmIi+8ITtIki0df1+Rpfs7joRTHXmZ5XQfEC4zOMaoInp03MgYrBvorjnhxTo8a645bfoJSXhBr+N88VqyB52i96nHzYIuQcFpkZiUxW3l4l4GHA+3SDJKqJzWWBXL8qjUanRoeTvFWe18zMugN+5tsUe7JrqH7ivUfLMfw+U3IQ5Qvsf78Ie990g4IwRemCaaQ5Vb2pN0A3UoUOsCpyKpa1DgUGhqScrBwcJiMbP9GgDbvpzaxraKWm8T73mWEykqN8zf9rHaIiJP0fkaTBEE4VKeW9rydW78k/RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zfdWFxc4tpZG96O621XPEKPsObJSpnKSPyO1MZrjq0=;
 b=phHoiSnJfk4Hz8FzdHvpb4q9gPjrJRWoM5G1CyvgfFHXjHxsRGqMxtU/PoNxG06QdiB7W7pPJfHXSLbxT6a6d2m8U8nysTHo1gmdKGE4yx62KwjaIEmkq+CoinEcuR/217BJgewXQ56P3Nx/i8mgvqingloRKtSnubYgL5Cnhag=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2751.eurprd04.prod.outlook.com (10.175.22.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 17:41:08 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:41:07 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/6] dt-bindings: serial: Document Freescale LINFlex
 UART
Thread-Topic: [PATCH v2 4/6] dt-bindings: serial: Document Freescale LINFlex
 UART
Thread-Index: AQHVWRDHP6fOISb7w0aVGXW7bCPQGg==
Date: Thu, 22 Aug 2019 17:41:07 +0000
Message-ID: <VI1PR0402MB28638ABB58605D7D2ADBA852DFA50@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-5-stefan-gabriel.mirea@nxp.com>
 <20190821211841.GA16627@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0a54dba-d65e-4f29-468b-08d72727ea08
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2751; 
x-ms-traffictypediagnostic: VI1PR0402MB2751:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB27517C66A4C1434073E29715DFA50@VI1PR0402MB2751.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(189003)(6916009)(7736002)(64756008)(74316002)(26005)(305945005)(53936002)(9686003)(446003)(102836004)(53546011)(8936002)(8676002)(81156014)(81166006)(6436002)(6506007)(71190400001)(71200400001)(99286004)(478600001)(55016002)(7696005)(66066001)(33656002)(2906002)(14454004)(486006)(476003)(186003)(229853002)(91956017)(3846002)(25786009)(86362001)(76116006)(52536014)(316002)(4326008)(54906003)(6246003)(7416002)(66476007)(256004)(14444005)(5660300002)(6116002)(76176011)(66556008)(66946007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2751;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Io097fQC7Ehuhlrt/4r6BpzqzQcg+H2ojIFFuV/OBOUM4nOCxRddY2oJs/GUzGlpIq0IfG9OQPVgO3cyH0bpYBj3I3eCU/TD8VhEiSpow8uWNqhX2EC0YdSoDJ5Wl5omRIICNoz1E9Fi44yVXoe/Q4jcbPakb7K2KZyCXvAh6OhtfdGhEBit11uzQHQm/Pv4anXBqksiUaD+rPMkF+TU74SA0rzDtNHbTOfBPQAyRRC48JZV0cCL3Rm3re/ExMrEyyOQKrVU6lbqYiwQsQCz6Ho4/QFgCMH2v75XItDAyTZ+u8v/rPDoaiC/lJ0xvIm1yjkqGdiMsAJxX5fvWBcF/UoanmFDwNYUlnbhRbtr+BJVOJGcguusiFOkkE82BEz96QuZxx1ASahXQl6pNVdP9jeUrhfqFg/UdhsJqz2hPyI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a54dba-d65e-4f29-468b-08d72727ea08
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:41:07.8693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hFneZf9hWykGZqhkuCaYHRVjyOvl1eoNbIVc/ITkpuB1CCHEyX7wV/9odSealHu3HtexqIuBtqUJWdiiiAGPJeJz+vRBJEAJOml/DUbJOpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104113_146701_9D96A718 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "will@kernel.org" <will@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

Thank you for the review.

On 8/22/2019 12:18 AM, Rob Herring wrote:
> On Fri, Aug 09, 2019 at 11:29:14AM +0000, Stefan-gabriel Mirea wrote:
>> +* Freescale Linflex UART
> 
> Be consistent with the name: LINFlexD?

This was also brought up in our internal review. However, the reference
manual is also inconsistent, using LINFlexD, LINflexD, LinFlexD,
LINFlex, LINFLEX, LinFlex and Linflex. I will switch to 'LINFlexD'
everywhere, though.

>> +The LINFlexD controller implements several LIN protocol versions, as well as
>> +support for full-duplex UART communication through 8-bit and 9-bit frames. The
>> +Linflex UART driver enables operation only in UART mode.
> 
> What the driver supports or not is independent of the binding.

Ok, I will remove the last sentence ("The Linflex UART driver enables
operation only in UART mode").

>> +  - "fsl,s32-linflexuart" for linflex configured in uart mode which
> 
> LINFlexD?

Will fix; I agree that the all lowercase version has no occurrence in
the reference manual.

>> +  is compatible with the one integrated on S32V234 SoC
> 
> Compatibles should be SoC specific. Is 's32' specific enough to account
> for any differences or future bugs found?

It is probably not. I will change it to "fsl,s32v234-linflexuart" (as
well as in the device tree and driver).

>> +Example:
>> +uart0:serial@40053000 {
> 
> space    ^
> 
>> +     compatible = "fsl,s32-linflexuart";
>> +     reg = <0x0 0x40053000 0x0 0x1000>;
>> +     interrupts = <0 59 4>;
>> +     status = "disabled";
> 
> Don't show status in examples.

Will fix these too.

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
