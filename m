Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123AC1D24E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qBfUNW9m4nRZpHTq9WsMkRzsedDPpruZksg5bIm8rc=; b=lROxJZmXPkSJu3
	H7kawJlEKJun6hTRh8FBGWQomTxxuZ+Wrx17ALHCQUMHMPWL9I72mIRI+irDmy7M9Zur+rOKt3V6M
	s7lwCGephVakJGBArtCyMDxJMoZ4mS4lwAFTvy/o3hO59Q2bUL3q06r91IRIuQY/xW/Z/nNc1KyJ6
	XB30uKRQ7PVbVriRhMCq4ZXi8IwIQ4sw8+ImHUcUVzxXTVuR6z6MOO8P02qni2imuOYjzzP0UmIlX
	1FyXgQOe1fUt5KBuNlNcAT1h0T3taqeHxVA7XszllLYuCvKLN15ZnHsutgQpcqyQed6ICxy7Zmpqa
	ENyXIARoAyTYUMIAytgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2wo-0006BJ-F1; Thu, 14 May 2020 01:46:06 +0000
Received: from mail-vi1eur05on2053.outbound.protection.outlook.com
 ([40.107.21.53] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2we-00064t-7C
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:45:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mgPXSKxx74y2KvCkOmQQhMvPculjtWZvozpDjnNM65kWCp+HvM98Lx36cALRO4Trc9cED85zWzW0mCUJEkTcT4Nhx2oOp2NG+JgwPdHG6oPv0jQBUis8SI6ZJRdjlOSbc1cEdI6tNSVidSqfbnxzGW1Es4gFyr6sXm2k0nfvqkpfLHzW5MH2wfAIfTEXphVk0qJ70+2OG46xMRAcXSllGTvNpTxVkCkX6jR5PEpzjEgl8K64uBjIdjl4hmaO3RG2jvd+Gg7kqVSW6W8752TNiNqRn6ooKMpEPBWF1jzvnv88Bm33zmyBJAnGsbBBu/3mecU8HpFAicuM+93hOkXHTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hlESU/QjztXvmBVWcNV0YCutjNpSIPIkPZJot00HCnc=;
 b=nAtbI61lKruQupe10sLsZYeGL9n5dQCdOaolVgL6bLdeZlI2utSnD9Ff3Env+QsTN8pWeEg9II7HCPVsFlE8L5jOGMXcIto1NGy44UvmUR+otGYPXjuYdFdhUGHMVlaH8N8Axjmx/Pujntrd++tNf4HCZp29YX/8vBBYBeSakwNph7FArQHK/ejKCJmmJ2JQv0wLGMHHDxC5X564bJLFDVrT+ezaDs/NizexndX4Udb5j56HeCyEu8rH2A8Rx49QdAl2T2067FOvAvBshGmGj83CkHHCxWITaN/vigEMlXH57anvEl7uix9mxuN0R9PPn3zMNnE5wAEbzHNnl+fh2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hlESU/QjztXvmBVWcNV0YCutjNpSIPIkPZJot00HCnc=;
 b=q89hZoGXMFWQVJ3kGdTa8JHOVPXB1EWyK38EEYqvae2lLoy2Lr42UyvT5NRaUo0vu9/c6/seGpUWCYhj96uRUuuHDMjhXT6R8yRjQpHXOmpzYT2ZyLj2dWdnOHqNcD0I7xQZUdgLDZlZoKC8tszrJq71kQ8OyfzfkloTCtfBp9M=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6413.eurprd04.prod.outlook.com (2603:10a6:803:11a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Thu, 14 May
 2020 01:45:51 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Thu, 14 May 2020
 01:45:51 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH v7 RESEND 13/13] dmaengine: imx-sdma: add uart rom script
Thread-Topic: [PATCH v7 RESEND 13/13] dmaengine: imx-sdma: add uart rom script
Thread-Index: AQHWJ3c7z7ZHgVvFIUGSiBVcSGczHqimhdwAgABNxqA=
Date: Thu, 14 May 2020 01:45:50 +0000
Message-ID: <VE1PR04MB66382D7B4ADB48FBF437CA1989BC0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-14-git-send-email-yibin.gong@nxp.com>
 <CAOMZO5BB-bnKF6fQtw+1iGmojrmNHVQqeN3Fu8tHa_09ayjCgg@mail.gmail.com>
In-Reply-To: <CAOMZO5BB-bnKF6fQtw+1iGmojrmNHVQqeN3Fu8tHa_09ayjCgg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 80250c41-91ee-43ac-34bc-08d7f7a888aa
x-ms-traffictypediagnostic: VE1PR04MB6413:|VE1PR04MB6413:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6413F9BAE4A3A08BBB57611E89BC0@VE1PR04MB6413.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T7QFpTz0UB+X/Gpnn4iOxfM57Gt0F/HpKLh9O34dmw1iA6q3xbsihlA5aGeL/bbQ9tPyiBSGmLoh9LUhgFWiCnqiozvGGi9gcsxuQ32kipZT4zecEAtQEVtu7ZtekBByEA5e85ZvvO1tdzCMcOU91dZ4WTEO/rk8k+4ZAfGDByq50gr723hLaoXYRU30NXQupDaFKMJMt0yI2CZwoEwSX6WTTbeoLzfgftBfJC+HfqcY2fph85OiQQr+lezaDZExnYpgIjrfnXaWMegBaqFHbElmZ+KQpljmvNSyoR9iNav/bKW4rsI3jU/FLolDjgvohpSApk/1S2tSR8GT9irGIRM9D/0uHrm1ZwqERGxb8d1ek1hSbLcn7s91EjbuV8L16MiXcNz0XifPhQQcqcFlhkTwEuqg8CXALn97VT1mfXmtmOcjOEc4xvcbEb+4TZohBpUhWgqFRPm+O6nVvcH9j2BfIhMJxuVCuHr49SmHzFENnOKC+1huyjabOFkfRkY+E6KONpSP2Hc1k3XXPHcr1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(396003)(346002)(376002)(33656002)(53546011)(6916009)(66946007)(54906003)(316002)(64756008)(66446008)(83080400001)(86362001)(8936002)(4326008)(7416002)(7696005)(66556008)(66476007)(6506007)(9686003)(76116006)(52536014)(8676002)(55016002)(2906002)(45080400002)(478600001)(71200400001)(966005)(5660300002)(4744005)(186003)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: SjoHd51kgvefUPbFCsyJZNhC8gWSuOukNNo0pVWQwtRSUkCktpnCq754XPAcSIw1sGL0WiItvEvKN3DBi/0yqCzS2hP1nn5C6SQoOSy5kyL9jM/CmBT0FHOA99F3ZT6G2Z2JzU9oJxYdegJ3AiCyt+r7PzpkpR5LcfDoXHcsCUwtsMaomCSEPAiKBHMNTRdyzD7hU81hVggzq8JJD7W/SgfW2QKZ6TH4x3EoQH2u1B8pSfJPLcdG6rS82foFfsWwld5tzbL25l4ZNQ1FjTJ5ly1KUM4NOyGxsis/zAhgGlDdwhUDeprS/zCCjMWJBR42VJLLxQmfY8uNiUgMCjkwQJuG+PJS0VcpZyh5XLKR7rv7JN6jY3HTOtu2Lxx6dY2nw0SKB4z/si5rSPHq58vdfzGQiRvACBCvmOrh8IZc5xfujx5T6PN82vLYJJtlsgX/ON1Limzfe/DSfO7+MNKZDpMU/aWn0urYfma+uoIjsIOrzYhCQuSaXnMZvtkOX7fi
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80250c41-91ee-43ac-34bc-08d7f7a888aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 01:45:51.4627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TBrhOpD3TkUA5tiSqfxyw7VmX2wi+ZKXwkEQ8VqvnZaQOK983Va/r01wP+E+SHKArha39u88mEfT4g1jBBAlmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6413
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_184556_256657_FBE092D3 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Martin Fuzzey <martin.fuzzey@flowbird.group>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/14 5:07 Fabio Estevam <festevam@gmail.com> wrote: 
> Hi Robin,
> 
> On Mon, May 11, 2020 at 6:33 AM Robin Gong <yibin.gong@nxp.com> wrote:
> 
> > Please get latest sdma firmware from the below and put them into the
> > path
> > (/lib/firmware/imx/sdma/):
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.
> >
> kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ffirmware%2Flinux-firm
> w
> >
> are.git&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Cc38e0fc1fdc44557a
> f8e
> >
> 08d7f7815cac%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637250
> 007291
> >
> 672980&amp;sdata=CnABtiTICTIf4ZQQ%2F8x9qP6HD9lDbRE%2BwXqcRhmKcd
> 0%3D&am
> > p;reserved=0
> > /tree/imx/sdma
> 
> "latest sdma firmware" is too vague. Better specify the commit ID of the
> firmware where this is valid.
Okay, will add it in v8.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
