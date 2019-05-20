Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B522A15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYHTu3+qmGbAwdQ8YFgNI8IbYKr9B1DIfFQPMTjQrYE=; b=ZcXcuul3qIA89l
	CI+cQW/mE4bxmjRsLSiggTVmRr3mx/B7cPJQ7ZgGWO0Rsxslej2Y1hCdwjYVeurO25VOC7nlzw+jR
	H+isVRIYgTBnxZvFgqdoMpzpsJl0D5JUBTol6IWy1W3ElmowogF7uGhZQXaO5eV7U0KZ6+4swTjLS
	Vc1wBxSAEG/D0tr+DprHgZD30c9COns554GkAmwSW0si0TBMS5sn/ptgpuwl1UCZoh4QN2wWD+mnU
	WYouYTT+/3bIsDFXIzraJm6iESgHAEzFIDh8RsfRaPXnwygeE4vJA+1mp2wCIv4QO5Q+5EmTdTBPH
	xLolKn0C12SwrS80mVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYSk-0005J3-PT; Mon, 20 May 2019 02:55:42 +0000
Received: from mail-db5eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::613]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYSd-0005IO-PO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xu1JBhVGFfB2amgaocljRqmfE6NLZWYDynBMDXaq35c=;
 b=g5iH+3h80oSl3Nl+gYT/MhBxbZD7Up/E6St2YBgFzk39rNVXbIs9unUwLaRdDdKx8gEuQfzzaL38rHZN1wcwydYvquYmRw+k+ovM21j6cWcKWf9A1SC+RUQ3+FhVjqfSEOo97NSvKRTmT0dsRQHbrylZti5Wc7Nvk+5eFiR/gso=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2688.eurprd04.prod.outlook.com (10.168.66.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 02:55:29 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 02:55:29 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Claudiu Manoil <claudiu.manoil@nxp.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>, David
 Miller <davem@davemloft.net>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: RE: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Topic: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Index: AQHVC84AyxJ95TkLo0SObQ6CRQsOGKZtv6UAgAWXbVA=
Date: Mon, 20 May 2019 02:55:28 +0000
Message-ID: <VI1PR0401MB22373507628D6D133B8D5F2AF8060@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
 <20190516100028.48256-2-yangbo.lu@nxp.com>
 <VI1PR04MB4880C3E6D24AB7A53887D9C9960A0@VI1PR04MB4880.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4880C3E6D24AB7A53887D9C9960A0@VI1PR04MB4880.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33170ad1-74b4-4a4a-3fbe-08d6dcce9dfe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2688; 
x-ms-traffictypediagnostic: VI1PR0401MB2688:
x-microsoft-antispam-prvs: <VI1PR0401MB26889A06E1B2436DEBC2F345F8060@VI1PR0401MB2688.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(346002)(376002)(366004)(189003)(199004)(13464003)(33656002)(52536014)(486006)(256004)(54906003)(55016002)(74316002)(110136005)(71200400001)(71190400001)(476003)(4744005)(53546011)(5660300002)(6506007)(99286004)(102836004)(9686003)(76176011)(3846002)(6116002)(7696005)(53936002)(229853002)(186003)(2501003)(81166006)(81156014)(2906002)(8676002)(25786009)(8936002)(6246003)(316002)(478600001)(14454004)(73956011)(7736002)(66946007)(66556008)(66446008)(64756008)(66476007)(446003)(11346002)(86362001)(305945005)(76116006)(68736007)(4326008)(66066001)(6436002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2688;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RBeDLRZhNb2iVs4YR8r3jszk+z0doFiXJp5twDcmlDP232mhPP5KQnv1nNVkBDNS4z5a3qskcgd1BGkI4WyA2bOpTOaHWTZOlTHkemDeDfPX5+J4q3SWc3QspVu2rtfg8WWjmb8TwD9EltQFPMDDlRC336dTGy3n1+1ylvGw/H+sVxo1yUZccbU7sjWULN3w4R/33EoCQk0XSPJm34Q8YWxvtpQqV5S8XmofTR9+NrgfjARggQAqJ2M2KTa9naeW2wZahfht7qZx4/JBtpAwNysThcorMTjpXXlrvdZ7Pvk6k+FM+OnNgsCp6jo23bo5/vgsBXo8mLgS8idzydKES06bQg8Mr/2QSLw6/3eKqLaDeANkN/SjKSmXqUAs8U+d/KOF1r3Z3QBV350haxVce/m8pWYwc2W4pozd/fjWAqE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33170ad1-74b4-4a4a-3fbe-08d6dcce9dfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 02:55:28.9961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_195535_828626_FB3676D4 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:613 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Claudiu Manoil
> Sent: Thursday, May 16, 2019 9:31 PM
> To: Y.b. Lu <yangbo.lu@nxp.com>; netdev@vger.kernel.org; Richard Cochran
> <richardcochran@gmail.com>; David Miller <davem@davemloft.net>; Shawn
> Guo <shawnguo@kernel.org>; Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org
> Subject: RE: [PATCH 1/3] enetc: add hardware timestamping support
> 
> >-----Original Message-----
> >From: Y.b. Lu
> [...]
> >Subject: [PATCH 1/3] enetc: add hardware timestamping support
> >
> [...]
> 
> Hi Yangbo,
> 
> These enetc patches targeting net-next will have to be rebased on the latest
> enetc net.git commits, otherwise there will be some merge conflicts for enetc.c
> and enetc_ethtool.c.
> Thanks,
> Claudiu
> 
> see
> 22fb43f36006 "enetc: Add missing link state info for ethtool"
> f4a0be84d73e "enetc: Fix NULL dma address unmap for Tx BD extensions"

[Y.b. Lu] Thanks Claudiu. I should have noticed that. Let me send v2 after net-next is open.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
