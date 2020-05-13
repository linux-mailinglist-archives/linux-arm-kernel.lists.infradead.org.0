Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE211D0A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC/Zu3c88vnni7BgQqrwQ9ChH1Q53yjWGXsY5+HqXW0=; b=d0kNptIKsk7GLs
	eADwSS0zz7i0h/u7JwebMkAF3JTOP36FPv1pDQXySEU9l78sOZX0yoqDfaatKPuV1XzziCOw1dxCb
	dvyYuW8JlqXW53gUQeOFjChw2nnCo/6dE8Sgdo+Hgicmw0kw/ZjYT6MgETBDwSzajYK+2Oe4vBPxv
	Z15UQpr/ngGgJVQUW0+wqDC1eYzeLeFLfThBNssN5oML12H6PU5xZVOsnd9uL889krzyBBYcOol7F
	Rdi++OMRNdXJaPh1yMy4b/RXbHIKsMG0OhchLWhUcL78lyrdx+RBgOjcULvyPLnjmHOuuM0cYWOir
	nTDIzTlUQyKVtRScpjrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmPc-0000Ac-Lp; Wed, 13 May 2020 08:06:44 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmPV-00009u-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:06:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wg7bF+gx0FCpW9wU1rX4Bb6jMS7uUu/K8h2vnzrQquFs/qtyZ0yzC8PGVckvMiLGLJK2NRu+D70N27RTRR+c4tAzgc/l9L0/KSPgJ2DtBPmz2PdqWNbxCvf8Mq/qlEnnz/82T8sLSrJW6xVS8niU1V3iAdcoDBaUqO22OmtVdTZIIWoVbhwKM35y/Y5dtyouup/5JeUXSby+/poNA6Y/IK+X5dxYCtiEvvzwjHWP6qRzVH8deO9qNFPYafaz9Fve/7iX0b/rtpYFi38qx+VH9k3eoZLHSPPF1rZIyD9A4K7ma1InWglv0qrg4yng00RQw/lnrlgiYHvhHAbo3aXvgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CG/5eRAkPL0M8IFsNRjZ70jvC1+Kn6ZtS/f8mUCOUEY=;
 b=I9pA0REMaYu8/KuNvIDIV0JdHv13bkbBNO/aKOrr700sGeH+2xb7/4d6BM5lL6jWLQKSilbVlFmQ1I+AqFF+q9X3oAu1XG1n2kiFPkISNwi+95WxWl/d69JJX2ZXZ6BSsN3jl8vopaQGZZlM9RavMkGCnSzn5LVcEettkQeRzLczdFJUW3MWNPABOr+EQZSKhSqSISORDbIVHVQN4jdiGTXqvnwo662VkUls7StpNRBWDGm4Zt8uuGAQblsQ8Y8uaqhOEehf8PcKd+TXUNuvUO6RjqjLLOJzuWs67s6uaTs0QW3w1ZDH6N7epRFKfxk8rrkenr1a97oShtsl4TSmVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CG/5eRAkPL0M8IFsNRjZ70jvC1+Kn6ZtS/f8mUCOUEY=;
 b=XeUplpuTi2REF84g8dYfzk8tQLmEu/pIeATeVeHmDyboDnDQ6kD3ANVCbOoFBly5oAmyWu3lOyDwBg87vaehkOyJiz9vndkUD/KutsvltNfwWaao2Ww8qzblY59nWsjN3ODoIG8P3B6sQzcA4oFp8eXCqPpvpn7gWNY+HcR75Cg=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6592.eurprd04.prod.outlook.com (2603:10a6:803:124::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Wed, 13 May
 2020 08:06:31 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 08:06:31 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "Fuzzey, Martin" <martin.fuzzey@flowbird.group>, Sascha Hauer
 <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 03/13] Revert "dmaengine: imx-sdma: fix context
 cache"
Thread-Topic: [PATCH v7 RESEND 03/13] Revert "dmaengine: imx-sdma: fix context
 cache"
Thread-Index: AQHWJ3caK60pir53Nk+ogIMcp5w3wKilig6AgAASqoCAAA6qQA==
Date: Wed, 13 May 2020 08:06:31 +0000
Message-ID: <VE1PR04MB66381C7FAC6EA04658C3176389BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-4-git-send-email-yibin.gong@nxp.com>
 <20200513060525.GJ5877@pengutronix.de>
 <CANh8QzxJg05nXasHfN2kC-G7TOKZ8trJkOP_v0KXvcy6S4df4Q@mail.gmail.com>
In-Reply-To: <CANh8QzxJg05nXasHfN2kC-G7TOKZ8trJkOP_v0KXvcy6S4df4Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: flowbird.group; dkim=none (message not signed)
 header.d=none;flowbird.group; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 09161746-f2ea-48e0-b444-08d7f7148bc9
x-ms-traffictypediagnostic: VE1PR04MB6592:|VE1PR04MB6592:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6592EA6BA1F97D96928FD1A589BF0@VE1PR04MB6592.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ApPW9OKxUwxbX9Tz5vIfQitGI7jRCQRMX9jM3OmFwOZaxH5PSdZvcGwF4I42FHGrv5svdtXiokSeGnOcTdLUPUt57wjugVd2Q/GXuqec/EaWz/Yv3i6XXd/obxGNtd5Xld9ENbCtTdIc1mwWKU9jUBVlibnHbtIPI2kd3JMYyd7L/QNPEnIsS+cHnQuAq36u81iV/lh010obXJ1AMyHzrZQzSH/lRfvfxgdkLVby3M4iwuhL8uDVaX3nOY3Fpm8U3Qz2P3Vwt2zxyquP50X14JF8nyoZqyUXtXtsIImUckjiGNbbPAZiknsNGrXWTDpi+h7OTcEaHae8CL2UJ45XCKEo5FFNtZClNcU63RHlgbqWX/M0XzFUiDJyu7SobrSZ8VJvWkVIdjAnWPl1SsRY2aQVe7o/XUbrficqSGvvf8NKL0xmlsL47OqyxGsvfMvlYod4bp1Z4ahLPnHslg+jjtwQQFzJK1MK40IF4y1So6j+HK1DT2rdLJjluxcmsV5p0KKjDMdBNRpRvdzYukFTow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(33430700001)(64756008)(66556008)(66446008)(86362001)(54906003)(4326008)(7696005)(7416002)(5660300002)(33656002)(478600001)(8936002)(110136005)(4744005)(26005)(76116006)(71200400001)(33440700001)(8676002)(52536014)(66946007)(55016002)(66476007)(9686003)(2906002)(316002)(186003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: rVnGgRtCpZXQwHyquhdA6CCfT40SD1YjDH/Ms+3xT43ucDkcB7UFefbxmxwE2QzIiavvKaMnUANRNB8JDGPeFwzet0QdaDgS1y/f4Fo0JNinSPWuT4XGMR6v3GBf2SnUZgWJ1f4ltChB9xWMvXjeamoIidHktoB5RZem4Es3NU7naPgMLCehchnSKYTYjrH5v0+Yf4Ax7YO9+uZFR0vPKkqpq+iCELuVChpwlw/0zYnXipWWfelVDfMYV666gmj1clpSs6NDBp5LRgu2aOnSVfHpvqx+O6vgeFx42/N6NuOFw16GhI2WpRNY2xsHVYop+hw5Bt3wa0gH+BuMT2FvIHkVDZwrKn8e6kE82Dhsz1T2fq85nmRbJomikqnFk1hA5C7XZa6N1ElXXEZ8Cl9PsLKGSFchL+DHFDEQ1WgfGIOdMr0J2Q+kDQkKAw4L/XnqMHfXT3OOyakDbpq16cq8jvSuHCceDRWurqifDhQlRy8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09161746-f2ea-48e0-b444-08d7f7148bc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:06:31.0954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kMAp/rrSxe+NNwq4gPmEXt2YCS7O5cC0bMyrqCPT8zJJbXxpleIeTSESm8quSXUJwtQCfbkd4+l1eyAIFT0epQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6592
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_010637_564376_7C10502C 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.70 listed in wl.mailspike.net]
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
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Will Deacon <will.deacon@arm.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 Fuzzey, Martin <martin.fuzzey@flowbird.group> wrote:
> On Wed, 13 May 2020 at 08:07, Sascha Hauer <s.hauer@pengutronix.de>
> wrote:
> >
> > On Tue, May 12, 2020 at 01:32:26AM +0800, Robin Gong wrote:
> > > This reverts commit d288bddd8374e0a043ac9dde64a1ae6a09411d74, since
> > > 'context_loaded' finally removed.
> > >
> > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > > ---
> >
> > I think this can safely be folded into the next patch which makes it
> > more clear what is happening.
> >
> 
> Agreed,
> not only that but having 2 separate patches also means that the bug that was
> fixed by the commit being reverted could reappear during bisection.
> 
> More generally I think reverts should be reserved for commits that later turn
> out to be wrong or unneeded (ie should never really have been applied).
> If they were OK at the time but later become unnecessary due to other code
> changes I think all the related modifications should be done in a single normal
> non revert patch.
Okay, will remove it in v8.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
