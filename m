Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7981B02C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJM800THhvBXV/bMuZ+CrQmXaS85xIbafxjbCvik/VQ=; b=Y8dXDIuQdC6yGW
	RwG2mNqc8PqBJC5faMdUZ2HXH/p+p1X3XEfCugFXW9TDJ7ZqAUuh+mw8wBrE76tPTTuZeUcXeTh4D
	m6fw5B+SC73XEVWb3dKCkVGZcvbiTGfF1fYvUQaqc8H9NCmJIhFLDZETUZeRs453DpmV8o0u3/dt8
	9N2DLImlkHNMI2PQjMJUF4wdBPUzm0L+5hqtXSZOGRWfMTC5ggtNA3ekSSZ8uCbt3GkUgwd7K9F6K
	2dflAjYNIxnxnRlWMEuIhKVvBoMMcpskC+PLMnYImoOsmTxpOa1Cc7xfFB34X7g7Vhmf6GJtBQs/o
	n3Sg0Kcd4E7oiqN12l8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQkw-0004Zk-AF; Mon, 20 Apr 2020 07:22:14 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQkn-0004XW-DE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:22:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwvUktWqKd81HhDD+vhUx6/IUW75RxvzpFZ3zFP4sSdRLK/Z0cEUN8NVyXQI2QFadHsJ3e4MMrW5Ye81pVzIdJiH766fCMvC9J52+1yL62nFqYFDI3OxRfEAOVVWcNCpXcvigCRP+9YnZ3KjRtCRpBxvxsNOtX3RpEWAAo4tqCmFNrLUpPJfy/1WZb2qmIeffQ3K35MCg07lhgEx5BazhSPoKf7tzU+ytUezje4MyKqHTkBcO6SHlMXfYGHbpQRgdPnYo3bni01zIo4SXgIYlqnpOHgTkPRE+nzCApRaxA+IP98Q9+xZYY7XcVPfM5Rk8zI0VjO3HZW07AXBErMngA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ODlyhL240c9hnu5xz+DAZLU24pNg9lJSwQz4v8fhUGw=;
 b=fUkVVM/WxeeUx0DvdK16/SGdXtD/KJa9gkrw+v3/wKWpYztnSDAMt3ERNfeL9IyptQ46AvIirmWPy4Cx9h4sAOKC6pFIjVVs3Sq18Ei9jzOEARyN5Q5mzNBgJF1auV0TejKGbCQsDtMFXeWLDxUYYBSKKqCnBQHKRyPTcVABhO8AD4k943IITIbiZ1NvQOO27A19neW6QcxbcEfFk6wHO7IY8KDODbMj9WYTXajyWqBqte/y4/AsarmKD5zeovsXwxKRJ93sB7ZMuVPmoT+DaOUDChuvpB8hrB1tTZFzgsP3XMpC0eY7aPg0qT1gBHAsWa1XJXibauzvBCe4NYzNIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ODlyhL240c9hnu5xz+DAZLU24pNg9lJSwQz4v8fhUGw=;
 b=NFVt7p3r2HuT0VwUTE/Hri2Cb3Ftz+SbDbr8uZMPIzenIQMpNKjEpnLtAUnVJAVLGTBob/OK4rIr4x4W7FphLQJ+k7KiDcyGfzPfRu4TsS1nNwHV0OYpNbjSWeKEqiRZYzQTv/4xrOcZ7EsQvm7i7ZdQ7zWm7xWV/f57T1Govj4=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6701.eurprd04.prod.outlook.com (2603:10a6:803:124::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26; Mon, 20 Apr
 2020 07:21:59 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 07:21:59 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Matt Porter <mporter@konsulko.com>, Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH] arm64: dts: imx8mm: fix dma peripheral type for SAI nodes
Thread-Topic: [PATCH] arm64: dts: imx8mm: fix dma peripheral type for SAI nodes
Thread-Index: AQHWE1BeKLvAnwSi/kudm5PLyQ0/Nqh6hYcAgAcaXPA=
Date: Mon, 20 Apr 2020 07:21:59 +0000
Message-ID: <VE1PR04MB6638755B389159519ADC51A289D40@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20200331203551.20914-1-mporter@konsulko.com>
 <CAEnQRZCqeJkRPEUYL3k8seuNusLZ6QpT-X-A7E20AMHSYcmaUA@mail.gmail.com>
 <20200415184548.GA29919@bacon.ohporter.com>
In-Reply-To: <20200415184548.GA29919@bacon.ohporter.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [183.192.239.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 13b5ec9e-d5c0-4dca-60d0-08d7e4fb83e7
x-ms-traffictypediagnostic: VE1PR04MB6701:|VE1PR04MB6701:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6701A9C06B1D11DD31201C3789D40@VE1PR04MB6701.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(136003)(396003)(376002)(71200400001)(5660300002)(64756008)(4326008)(66476007)(2906002)(66446008)(66556008)(76116006)(66946007)(7696005)(86362001)(33656002)(8936002)(9686003)(186003)(26005)(316002)(8676002)(6506007)(53546011)(52536014)(55016002)(478600001)(110136005)(54906003)(81156014)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U2w/hYvFK2pZG7NPb9MAp/yEOwbstgQvToa9EtQzstzoWBpUaw95nKp58hLnHFKLUrw+mQj3i6bSwLPJ5TO4hV/WomrAks9LvYcKogJ0e4+l0nv/AN0ceh4OxoSaBZ6bHGb8k1NBdrnb/p38jXwcUu87Ry+T46ajRSwm950Kfsk7H4tglzVHF6QcyscxUEn8uoY/aWHlyy3iOh5fLL73xMGi3q8wpfQP31bGkvXZMjIJ2ZJ3taANkNEDwucCeKXUNzz5R15DcZW3w4R2+IpCLkjzsEm/jBt1xZ8Isq2TgpdoSbedObVnb5cwctpRiuN75apJbhsJcTQOcthPCsxO1w78Nil4YifCycs7rPJhChrqtsgR59xgY4NCSsQNPUf99SE4sN83eKz6V8OEHEzMmvkkQbXEQVll+AoibRnImaxuLzOeGJpTBau3Nq3g4bkq3fnytjZCzRiDZXwmUfNqRZVUI93QfUXZTQtxFIYrht0=
x-ms-exchange-antispam-messagedata: s1CTl+jytKsEkMhJRjm0HJidBdPukMAXjS0UiR4Fjdp/vSKcz7cJ8TvyihOjrPNKhweV8rsdgT2aWOPePsRgzmBz3MbmCvC0ilFDOdf/6R/K3D4Q2wf69EcOC7s20kLkRVk7i7pfquqawaWTs6FYtw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13b5ec9e-d5c0-4dca-60d0-08d7e4fb83e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 07:21:59.5548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QwcKwr2VFEDPPtYcW9Tc+dfG5tcoa30zfR02EVnofr0wXqnEuUSl2HCYi5b3vOG0ESOpDpgPKpzZxMNzbDDmgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6701
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_002205_497358_9332AC44 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/04/16 Matt Porter <mporter@konsulko.com> wrote:d
> On Wed, Apr 15, 2020 at 09:04:43PM +0300, Daniel Baluta wrote:
> > On Tue, Mar 31, 2020 at 11:36 PM Matt Porter <mporter@konsulko.com>
> wrote:
> > >
> > > The peripheral type specified in the dma phandle for each SAI node
> > > is incorrect. Change it to specify the SAI peripheral.
> > >
> > > Signed-off-by: Matt Porter <mporter@konsulko.com>
> >
> > Hi Matt,
> >
> > Why do you think this is incorrect?  AFAIK script number 2 works fine
> > for SAI. Can you add more details on what bug are you encountering?
> >
> > Adding Robin the owner of SDMA.
> 
> Hi Daniel,
> 
> Thanks for the response. I was experiencing timeouts that were traced back to
> dma incompletions. Changing the script at the time fixed that issue. Now, given
> your response I went back and checked this again and verified that script 2
> does work for me now. I did change firmware to the latest v4.4 from something
> quite old so now I'm suspecting I had bad firmware loaded up. Does that sound
> plausible? In any case, I can confirm this is not needed.
No, that's not related with firmware version since both scripts are all ROM scripts instead of RAM scripts which's in sdma firmware.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
