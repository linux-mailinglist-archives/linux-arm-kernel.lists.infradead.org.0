Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC6280526
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=15JJS0d0utG2ZeDjl93NqOOKRtp2KPdNCVsLzZphg7k=; b=P1Zz2ydreaqk9j
	G2wTSRl9/cqh9YHC/XAOZvKHB9bC0KY5PzfYlnoucj8OdVspFjOPoAgnLmwSq2Zgium/+87sKyeM/
	ypTYRjAgaVqe6yHJJAaZd4FSJHaAYMUt/4wnz9/FCs9W3pz9loExtZZzXKJ9Y6csWPvoCHkcN7g8r
	xBvOvGra5+FRKd3Nf0rxrQfrUuK/AFv/2NbodtxseDNWj6zxy4RfVQHL30NevIwN63AYfVrcWwVKI
	Q6R29/e04DOmPuYKu6kC1YrcamBwrFi9ME8dUBjE7RMO9u6RcejJvFu2F8jV/pQ3cBWv8VDktbDCw
	sEy2KfNaIAhiNr+ZUQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htoy8-0006zm-KP; Sat, 03 Aug 2019 08:00:48 +0000
Received: from mail-eopbgr150072.outbound.protection.outlook.com
 ([40.107.15.72] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htoxx-0006zT-9D
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:00:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMonDt/Nmb7iY3iweg+/XMhlclbw2FReYuc5suf0GOd5t8T7mDGg22zraVDTAvMGzXN32hAOzFaq1qfxQL8XyBGkZjcT5Edi7JCE/yp4sQO+yyOHbMP/CpKaxA+u5LvKUQBJcMZdiBR8Yqw5evzApI7CN/cFclCYQJobEot+0zwbyuH9Mo7hrt7rYjkcuZ+7iDLEezyQE4iIulntfngxPquInljyBuFqUWjieS7oKI8cub49gaZj8YUy8/K31PUGK1r2r3MAYL4GNriAaOlf1nKLKFWi4jdrYNOmMMEcXjIfgjyEalf85lHsBDVU7MRVPbPebFrkUmLIUXjkGcT+VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBlcK4FrdXarGimycrF+WJICxZD7DjSwyXNQoc6xHtc=;
 b=nKZLJO+iiNGD1pP4JuHU9bmeq3+xRFC0uN5NYfZkKPsNk7nxh6fsXd1jPYAV4lVim758d+VUmOetwbsoRhz4DuGokRgUwRt3HZJ6bsTKrd1ZGL0RgskOLfp0XhrjocBZr/+W+Vk+dE5xunoTmkQZbtFVGA7cwuf43wafneZHfaaKtu13VgVyNutGs84/q4VR/0YCpHefKTyHEpCwJ2bcdtm3zJLhRxE+vDvXNZh0ZXeobYP7eZEkKJRPXtYyUFxQ86c1BcubTJM9s5Ur06i3idPszl0CKNV+BKIe02lYyguOELK9YbAzH3b5wPAmQ5NL/tHg+Tg53WFnNi/R1UrOfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBlcK4FrdXarGimycrF+WJICxZD7DjSwyXNQoc6xHtc=;
 b=baXXQabjHK/L616tcwbKBh4Cb6uzgDqO7tks45BmPnhH56cA++BipAwQ2j3M8BWhFeghNx/wKVyPU+luaurmPkK8qO+AeLrCfmDLCXSQaW56lz0pp1UT8dpMm7LqJsouY++r8LmrbxA5Ac6xhTJweV4xkoyRPCll1aGxCovUjbE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3821.eurprd04.prod.outlook.com (52.134.16.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Sat, 3 Aug 2019 08:00:31 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2136.010; Sat, 3 Aug 2019
 08:00:31 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [EXT] Re: [PATCH 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB
 board
Thread-Topic: [EXT] Re: [PATCH 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB
 board
Thread-Index: AQHVSWsWLPLKyRuIh0CSHJAAi/FmUA==
Date: Sat, 3 Aug 2019 08:00:31 +0000
Message-ID: <VI1PR0402MB28635B9758CBF72504191693DFD80@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-2-stefan-gabriel.mirea@nxp.com>
 <CAL_JsqL++GZBxczxePni9ysNq06kObB4EzJEi1e4M=PurPZFgQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [86.120.183.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 651eb805-28b5-4f93-791a-08d717e8a804
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3821; 
x-ms-traffictypediagnostic: VI1PR0402MB3821:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0402MB38214F3893B613D6287C41E8DFD80@VI1PR0402MB3821.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0118CD8765
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(305945005)(4326008)(81156014)(99286004)(66066001)(53546011)(26005)(6116002)(5660300002)(6506007)(186003)(102836004)(3846002)(74316002)(7696005)(4744005)(53936002)(55016002)(6306002)(71190400001)(2906002)(52536014)(71200400001)(76176011)(9686003)(8676002)(64756008)(86362001)(66446008)(256004)(14444005)(76116006)(66946007)(6436002)(966005)(66556008)(66476007)(6246003)(446003)(33656002)(7736002)(8936002)(14454004)(478600001)(486006)(25786009)(81166006)(476003)(229853002)(7416002)(316002)(54906003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3821;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oT524hOSLPtI59pv4c8gZe+bdjgqeIQDuPYhHv6njtFc61Y9+k6AknuIVpsamFV+9m1Prsh65PwEYcvDaEKYRM4GhHGGsjK6aF7jcK862BlaGtpPtPi1Lt2cy7fHQbJIR3ORa1tteKQsqWPF2k4lKrfpXdaUOoqDEItCHXHxdV6lvr75WxmaEPaDIb+lSMLVQCL8inLre/GcqmwkmNGF7DaCSDt7kykc6FuhgWFwSR+HNiTNNIW48jzfy8vHXweGsQc/Gs8ajJIWnMfy9ylPI8HYIXqPE2Vo4HkB+60+7/SdaSE/1qDz5MaH9ur6HID67OUrE+aghxW7jWGFiGqgEbLM25fohYfKPUTxpWOp1TaTJkvsm+2U7K9v7WanabGneEDkSNTpMz2Y40EGCNFVKdb9OzBeH4H1DzIk1w9E03s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 651eb805-28b5-4f93-791a-08d717e8a804
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2019 08:00:31.3062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_010037_418183_69C56BED 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

On 8/3/2019 1:38 AM, Rob Herring wrote:
> On Fri, Aug 2, 2019 at 1:47 PM Stefan-gabriel Mirea
> <stefan-gabriel.mirea@nxp.com> wrote:
>> +      - description: S32V234 Customer Evaluation Board
>
> Most of the entries in this file are for all the boards for an SoC.
>
>> +        items:
>> +          - enum:
>> +              - fsl,s32v234-evb
>
> If that's not going to be the case here, you can use 'const' here.

We also intend to submit patches for the SBC-S32V234[1] board in the
future and I believe that its 'compatible' should share this entry.
Would it therefore be preferable to update the description at this
moment and add a comment, like:

      - description: S32V234 based Boards
        items:
          - enum:
              - fsl,s32v234-evb           # S32V234-EVB2 Customer Evaluation Board
          - const: fsl,s32v234

or just replace the single-value 'enum' with a 'const' for now?

Regards,
Stefan

[1] https://www.nxp.com/design/development-boards/automotive-development-platforms/s32v-mpus-platforms/s32v-vision-and-sensor-fusion-evaluation-board:SBC-S32V234

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
