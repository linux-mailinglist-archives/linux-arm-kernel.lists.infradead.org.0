Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDF116F07
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pW8IUdyDP6C4vmKQlnWhRXstHgMaXzIT3CTURlmZSdo=; b=NewLpNHKn3ifYp
	CsFUVf5O3zQ+a2//QD/8xQ0cMP/Ux/txStJQg3bPYE68FRuoDUZROaHo3k36wGfdNqU2Cn7Iv2nb5
	nKrBfPHPyevm6nKi/xl8p9gQL8EvewwZ3KNxWqMpRKRRn9wnHVxRcjzwvZ2z8Icjqqumk1eX2CoLi
	tmjoD5c3PyzFdfcGTTDQaQ0NE63VKCujtXMQgM8FbNmeeTYRYTvc3FW5ZQym3vevwN2+fT4gHP3ll
	JuuzatZVAER4I/PNYK02y3ZNptN96qg3+yxacjUsiplomKKfoLJQV/o2Pw+a31F37htLCYsE4mefp
	ao6X5w2S8yZvKHPAbqWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCD2-0006DL-W1; Wed, 08 May 2019 02:21:29 +0000
Received: from mail-db5eur03on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::610]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCC9-00059A-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SkGu+ZAj2f8A42LZtes4F3XRje7/QFYPujJaRohJHtc=;
 b=aEfbEoDO72RTzxodq2sfJ717gTxVmSJfIM08BBgo90pWIHEZKuTIf0eO6llpQgdoGTaIjiqBbEX8jyrTIWc65BHmazXe8WKP1vvAwCAv9J93kDk5SU8C2ul68syw7gi0r6IxP6EAVc+ltRryF9i0AUQn7mQdY7ZAzbSrADyzRwc=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2707.eurprd04.prod.outlook.com (10.175.39.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 02:20:30 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 02:20:30 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
Thread-Topic: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
Thread-Index: AQHU+/SBIFirjMEfrESTZvW0Hl61haZW+m4AgAhvTQCAAIVkAIAAnZJg
Date: Wed, 8 May 2019 02:20:30 +0000
Message-ID: <AM5PR0402MB286549DC56A28B010CE711D6F1320@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190426055558.44544-1-ran.wang_1@nxp.com>
 <20190501235410.GA25492@bogus>
 <AM5PR0402MB286539A070BDEEDFC3304F0EF1310@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <CAL_Jsq+tmUCjZw7ybhKTGg0NNfc+JsOQ30vArfHzdw14XoWm5A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+tmUCjZw7ybhKTGg0NNfc+JsOQ30vArfHzdw14XoWm5A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c646c35-1039-4651-a251-08d6d35bbe3a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2707; 
x-ms-traffictypediagnostic: AM5PR0402MB2707:
x-microsoft-antispam-prvs: <AM5PR0402MB2707620F4F12985109DF16EEF1320@AM5PR0402MB2707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(396003)(39860400002)(346002)(199004)(189003)(71200400001)(8936002)(7736002)(305945005)(486006)(68736007)(102836004)(476003)(446003)(11346002)(81166006)(81156014)(8676002)(52536014)(66476007)(186003)(55016002)(66446008)(66946007)(229853002)(6916009)(76116006)(26005)(73956011)(66556008)(64756008)(14444005)(256004)(6436002)(66066001)(316002)(54906003)(9686003)(6246003)(53936002)(71190400001)(86362001)(74316002)(4326008)(33656002)(25786009)(3846002)(6116002)(7696005)(5660300002)(6506007)(53546011)(99286004)(478600001)(76176011)(2906002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2707;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RUgc7oUaOD01uyeURvkwMrKyBioa9MDGSsor94PyvFY+652UTchl1WjuzqAYl8sWkvLWViK5nz1IEcnf3IolhiB+eqHVjLdIMX8hja8VE1eWMrUHSBi1crt+DUCPaSb8sgnM7SXCvCDl3YcGp9tVoW/TcVbOog2KkOWp6mPLzyyaUyJnag4Pt9l6KUzlQC66TrD9fcETPGTE0eCNjFTEJ1YmwLc11L4sK/DAABREzNJzhvwLjxKlTkTBVfax0xENHvF7dW3FkSTa1tqVPgF0KVL0u8h0iIGF/L1tWD+vXx9nkkTlP9RrnY2ekaSsnu3QIgljSKbA6Ca6pJsJDkOiWWUE0Ijxkxwyl6Mv5NQ6E6nD+NMP0+696Lkc75bI8PBIxveskZDgdvJJmJ+aewQr8agch1SeW4Jdr9ayYNyEffk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c646c35-1039-4651-a251-08d6d35bbe3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 02:20:30.4710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192033_846682_4A0FA3FB 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Wednesday, May 08, 2019 00:40, Rob Herring wrote:
> 
> On Tue, May 7, 2019 at 3:48 AM Ran Wang <ran.wang_1@nxp.com> wrote:
> >
> > Hi Rob,
> >
> > On Thursday, May 02, 2019 07:54 Rob Herring wrote:
> > >
> > > On Fri, Apr 26, 2019 at 05:54:26AM +0000, Ran Wang wrote:
> > > > This patch adds USB dt nodes for LS1028A.
> > > >
> > > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > > ---
> > > > Changes in v2:
> > > >   - Rename node from usb3@... to usb@... to meet DTSpec
> > > >
> > > >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20
> > > ++++++++++++++++++++
> > > >  1 files changed, 20 insertions(+), 0 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > > index 8dd3501..188cfb8 100644
> > > > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > > @@ -144,6 +144,26 @@
> > > >                     clocks = <&sysclk>;
> > > >             };
> > > >
> > > > +           usb0:usb@3100000 {
> > >                      ^ space needed
> >
> > Yes, will update this in next version.
> >
> > > > +                   compatible= "snps,dwc3";
> > >
> > > Needs an SoC specific compatible.
> >
> > Do you mean change compatible to "snps,dwc3", "fsl,ls1028a-dwc3" ?
> 
> Well, that's the wrong order, but yes.

OK, will update this.
 
> > As I know, so far there is no SoC specific programming for this IP, so
> > do you think it's still necessary to add it?
> 
> Yes. All the bugs and quirks are discovered already?

Yes, so far I don't receive any SoC specific defect report, I think it's fine.
 Will work out next version patch, thanks for your time.

Regards,
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
