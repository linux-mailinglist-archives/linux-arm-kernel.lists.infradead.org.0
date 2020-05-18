Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5871D7C12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JsWZCwlHnIMyu+rYrs+qFblO30Qiq0EbS+8+zFqnBc=; b=hWAT+lJ5QviPYK
	AXcEJm87DFyt+CmeRxb13LQdJtItK2TLiLIupGx4dhdTGLVaW3zgjX2OQ9fRD4QJ20e+Q1e3mMbUk
	iufXKhHNmZHmvfxFF9PZJdLbD9PSLTgc4vDbMkKbBwwe7TL7WDFY0CNTZaGtUM0yKtBN7MJ+6vk+U
	63v6SZVZLvazSE1YXw0/WeWC0zAv6Aj+dqdx0oUvWHEQlyLFIseOyRp0T4qTphUgnLMGyzpXq03Sn
	zOCvtbX3Nr6KnOvV9mnmJvEVD2Z7xifRqMVtN2uab/RWsIajKWiRv5rcxa2wo3IZZhaRFhQA8eAmd
	7j68cqGGD1GKQbQI9MmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahEs-0001CM-TS; Mon, 18 May 2020 14:59:34 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahDZ-00007u-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:58:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m2uXWPQIgubSqUsUcgpiekebmsqdnnhimnPkhq/glUzkKNYinCManwSFPNpK11s9baIj12pIMEVF+/pf1ispSwLrcmDZ3ovbNghesJOILEUlqGGedHNp2OsR3XyujEvoGbeN+b4fzrNmAj9HblkcWEz8j2ns8LKLd208f/EN69b4oItAJGWZjEDEEmO+Vp6XHnQyFa1C+Ikb40m86i4cMPjJjrzYvFfiynns3V+seu/kGAGy+l8qwNYkPVZcj5VRVcr902G5IOzp5wBt9Qo26zJcsKr8kkmAn94iPrOAsppm4ll5ewBHlZNeR3DoujOWgtSw/KZoly+926MxA1u/qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zylMsXVi2AUt/xI7mdoTChCykK/ltDRXXVPBrcDCskc=;
 b=EFYzI6HEVUfJKOVdvLrysrxZfS8llW5h+gHRFRgSPaP6uoNptqPKFdhoGC/7++cHGZJ+lATX98d/aBvwrm4d25FNHWPiHHT9jRcovggG48h9yfRpWzCRHA4x2H1xrybR2835XkKRTicny6eSHeST8ijTHEF5+zPo38aOy1BYMQaQaV96qhZVrFhXG6ikhFvw1a0Do0Eqvfz/Bn0ynx1qoKlnXQtRJ85Ex/HBaffwp7Wz2LDiChAfBPDjKTd10O0w5MIgDDQA/7M1X/bBnT11GNQXhEF0A5Btqm4Sv9kqRb0/WqPc8LPKZlVYHtR35IGTowZ6a8sGY1j7lkqH7hfD4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zylMsXVi2AUt/xI7mdoTChCykK/ltDRXXVPBrcDCskc=;
 b=lKDnPMNzjSroVfL5UxiajMk6MeIT0mLvgK4OMlhgnvqmQDSUlNWaCUhhhNkRT9duZG8d6Gc7KUVLeZfZJzugRZRmlw32mA9Ta6TxxOP/Ewefi38VCjK1YvHg460S+rdfFzcDSP46RCCkdWAGnT/8h+1BLigMsmpdU64/A5OOoN0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3739.eurprd04.prod.outlook.com (2603:10a6:8:6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 14:58:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 14:58:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH] dt-bindings: clock: Convert i.MX7D clock to json-schema
Thread-Topic: [PATCH] dt-bindings: clock: Convert i.MX7D clock to json-schema
Thread-Index: AQHWLR72N3fl3eQKykOoBnP7ocNeoait65qAgAADcKA=
Date: Mon, 18 May 2020 14:58:09 +0000
Message-ID: <DB3PR0402MB39165B7915BB178D645805F5F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589810819-19851-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5BeBcvmAwEJTUhHSn=_chx7OVkkxj2oB+50hGH-7H7SfA@mail.gmail.com>
In-Reply-To: <CAOMZO5BeBcvmAwEJTUhHSn=_chx7OVkkxj2oB+50hGH-7H7SfA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3b40987f-3148-47ea-6d26-08d7fb3be189
x-ms-traffictypediagnostic: DB3PR0402MB3739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3739C3E99CDBF907EB3F2697F5B80@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9X4an+es5wFo47mBQSdQGj5UPJvJnxKS0Iwi2UaHLvCRJG53TLqmy2F04eksyRtD/ef7EGIC2MmpBAG4HL5W88aebxqYJRKPcBhzFgUB4LwJbMhGPhjJUa4095E5EcGt2H8pQM/zssUSYd5OaJ5dWnt476q8ydEck0pyoaY+inK1aFz4GoIvbKkXXXtAuliiy2MbHYjcLZhki9/WiDw7+VypuCOeHhaE/EUWHfAi8t6SCgAsxrFMdR4ofU7Z1suuBxySwCSip5YS77x4X8jIzUHvnm8QJohEp25W38T+gWZyd5impLVn6tl714Nya5RNPpliCAJ0sN9TIA/IjM5CO3WyDolh6VSZWtVkhc/N8FM1l7v2QwvZ+pZH7bLW8Fl0eCC78WEiFAz/AXUTTWzxv1qxmOJOk9EjxnhhEBCYVodVk435VdQOAgy5749gAU7v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(55016002)(7416002)(9686003)(4744005)(5660300002)(4326008)(6506007)(53546011)(186003)(7696005)(86362001)(33656002)(44832011)(2906002)(54906003)(66476007)(66556008)(478600001)(66446008)(76116006)(66946007)(26005)(316002)(64756008)(8676002)(8936002)(71200400001)(6916009)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xgf6Ca0tH9R1b0j8W61xY9eu6DtPu0PLrvWP51FWQj6n3Flx/G+eUGbe8jGiiyZTUd9jgWi+SjokXVwSmpuGSq3niuZZ4K+90xVQ498bTLPC/1ZGERI6HIum/vo5Qqb5HBHt+OPfVCrB3b/KanF8minIfJlgVsY5GahHNQnn5+Svg5IdQ0yjqmaldXTHijJtEGfN1kqs+gK3kPxAOyXbaK6FedWaHHx5o/e2ebqrI6lpS4sIe9NCPL8cPk/6JvJDEuvobaNoI+LDoCPE8GrplZKDIKSvDCFqPKxtc/jQg6bEDCTzfWT7iiWpwMsvasyeFXydv2t59B/fIfptVDDw2bUZusPqvTtYwoGrIstMblwwnnGT2zFq9dGBS3t9QugD6KHRRIp11h0LTCgLXvStSs3dMDu5VyvXhJy6blDrupu1XOcl/neu3ESiDx2EnuSm2fUvrwUKCeQd/78B4GgWDS3hY4NnAZPvlSrLWAop5s3RND62LlN6Mi5wt8wIrJWa
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b40987f-3148-47ea-6d26-08d7fb3be189
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 14:58:10.0197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EftTpW+h1utvwDwdJpJ5NGe49NwIx74T9m+gBqeOF8kJUL4IFUGr8+Pd0QDwZwfTcsDwav54JP9ORPkuv/tgLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075813_694628_F18AA617 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Frank Li <Frank.Li@freescale.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio


> Subject: Re: [PATCH] dt-bindings: clock: Convert i.MX7D clock to json-schema
> 
> On Mon, May 18, 2020 at 11:16 AM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> 
> > +maintainers:
> > +  - Frank Li <Frank.Li@freescale.com>
> 
> The freescale.com e-mail domain is no longer valid for quite some time :-)

Thanks for reminder, I will use Frank's nxp e-mail address instead.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
