Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C283F96696
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7Wlfb0xFbNflOeZSBqcZIjzr4qXxT0seUqf+xD3BbFc=; b=Mvr+CNYNPL7wpK
	0ljpCWQ6WeUsk5k02W1Pp9AcAI93sA1/BoVmSC30nXRcrDRfXcXJqX11DokHS1pe2uele7C6roOkI
	JbkfU5NuNySOdXisL8o1a182CoqK+ZbG0Ns5usb5FWAGh2ruRkZBukRZjAT1n3qDRAm3oiDuTWiE+
	TFIhCZgCNPi08a9l8TlWuyB8gAYjhfnA3SzxlA068Ug1H3Enik6oe+yg2evP7Pz4LQ4werJI9QwaD
	YiQ9eiWpRc3RR9zGsmpMZft5FhM4CikQeltyVkDc45j++aNZ2/7/ouNHMmdH+D8fmk9kwLR1dwBIn
	U+dJG6iLElQgwQfWh+dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i079n-0001vU-0v; Tue, 20 Aug 2019 16:38:51 +0000
Received: from mail-eopbgr140055.outbound.protection.outlook.com
 ([40.107.14.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i079Y-0001uW-Nr
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:38:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBmc8noZq8RJ/BedsDjXnEnodz9VhVtv3h8njZKMpsJLf0JcDM4XQ+GW4/QZMttikiIgUmcQh7ZVzwUW/adP0a3QcP0Y0S9Q8jV0B0EeF44/8Xy/hsQRom2JYWUJsW40oJehTQGu97vGBPKMyqICJGqwF7HR79EaO8ogJ/EVHYvIL22TKQCfSZBkozL8fVm29YeE/pfGxZA57RNyqDStWcGsARIrXtGGIgjGIfKN9AVcKcjSxod+dD7146QaTSiiJ/lD9ZRllS0pxbnB/64u3di6EeCEiu9HeMOWO7apjXqTvdLnqsnYad1Wpltk+KmGu9FKmz4rarHJHpkbk5EbBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FLbOdTX0wSybYtQ9hXAsJhEjrhBxn1NRZuoSp8LI80=;
 b=B3rG2yHAex8v7GHBHql765COspBYcXhHpJNa/542rzfoZAPvdz3EyIJYNFarPtPG+AyfJj5gHG1pCvZGLDDBQT6yONwATtDaBkIAncrUz8ZXMsQuIb9Q63TDRhYbBD6E9D3fnHZ2ocPc1WBX3GIe6srjpVxYtF/ewybqpZiP37cWpYJFjPapZAsSsQjDGhPWR3dPfowP0LyrUpbdrzcuHEB77tmkLjax1kaSrV3pgjhFHV3SrVNcoAPenjeyE2j/xu8ecrMesL+l9l6JPURqiHnK9WcoSLKtGaskvR/GZMA+eML9ty/nJNFIHldOO8TA+VE3uB58pi4Dk1Jdj15iow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FLbOdTX0wSybYtQ9hXAsJhEjrhBxn1NRZuoSp8LI80=;
 b=CtrXHZU5Zw5a1IbNHiuq0+qqUmosRzU2r0rHlpSFUStA3gSLPr0gbshTFxrADkd6UasgJupbHNGn1L1YheCS4lT+KVrqhIvDYcLvgIiZcjYXOoB4CPx/g8mRC5R840y4ylx+V0yXrsHseCv8qj9VdVo5ZBcj28gmTkMs4X3C9lw=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3343.eurprd04.prod.outlook.com (52.134.8.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 16:38:31 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 16:38:31 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2 2/6] arm64: Introduce config for S32
Thread-Topic: [PATCH v2 2/6] arm64: Introduce config for S32
Thread-Index: AQHVV3WzypZWNneu9kiQkORbn2Hd8w==
Date: Tue, 20 Aug 2019 16:38:30 +0000
Message-ID: <VI1PR0402MB2863F70B8497B8901087B7A4DFAB0@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-3-stefan-gabriel.mirea@nxp.com>
 <20190819081457.GH5999@X250>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80742a49-84df-47f0-3984-08d7258cd5e8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3343; 
x-ms-traffictypediagnostic: VI1PR0402MB3343:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB334359C298A74213AC7C4DD4DFAB0@VI1PR0402MB3343.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(189003)(199004)(71200400001)(71190400001)(9686003)(53936002)(6436002)(33656002)(55016002)(256004)(6916009)(4744005)(5660300002)(229853002)(6246003)(99286004)(25786009)(53546011)(6506007)(52536014)(4326008)(102836004)(54906003)(316002)(14454004)(7696005)(486006)(26005)(476003)(446003)(76176011)(2906002)(7416002)(186003)(8936002)(74316002)(81166006)(81156014)(478600001)(3846002)(8676002)(66066001)(86362001)(76116006)(91956017)(66946007)(6116002)(64756008)(66556008)(66476007)(66446008)(7736002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3343;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ue/VcgzjdsQdaBLZsxcoOTV0hJV5CRBrIXuVlP13ngS5HpSIfyVgBypLzChauXcL98EpRQHxRNs3QfR/jlOwYoPzlOgYTnBfX7UmEpAEDgGwr3tbelkcCrhoZQCZWf7B2wlwOU/xeXGo92aL4GXeJ+hYrF1Y1kmeeXfwLUHPl9X8cTUc/+3O3XzgElTqgdhbCbO9WAyF2UR+RLrWDCy0MOqC1AxJLr7KwvNTkozvfjnNPz3Nx5+dsNsa9et+WrUe+xGafl4jMvJzKOPGY0t6QHZa5uWCfLijAer6tvFMqSjQHY8FSMwpmkTa0a3pIhzyB0f7qGCvIpql2jLXC82IwfDPkinbYywHd5pI49EwMoVeh5IOw8KvbG2d2UdLHPoa6TdPYC+ZldqJ4LlfNAKDnWyxcBMzJep1msSso6Kg3HQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80742a49-84df-47f0-3984-08d7258cd5e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 16:38:30.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 31cL24he+y4J9FJTM5jD8DtAmSpK6TDZrlQlhO/mffWDnAMlfu7F7iR7vyGl76VPXa1HMNuKhG2Xn383YTa9nTAe6JYN2h5RVqzkiV38JeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_093836_828759_5A95F7AB 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Shawn,

On 8/19/2019 11:15 AM, Shawn Guo wrote:
> On Fri, Aug 09, 2019 at 11:29:10AM +0000, Stefan-gabriel Mirea wrote:
>> +config ARCH_S32
>> +     bool "Freescale S32 SoC Family"
> 
> So you still want to use 'Freescale' than 'NXP' here?
> 
>> +     help
>> +       This enables support for the Freescale S32 family of processors.

Thanks; I will replace Freescale with NXP wherever possible in the next
version.

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
