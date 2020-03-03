Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DDD1769DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsLiqUNmYjTIa+vOGi2hSrcyGkNjZCXssvmL1yUGZvM=; b=lKLNJ0l/hp+9qa
	MWQIFT+NG6SupLc/cipCeJnUo6Vz6PX9hO9KsWfSv3GnPnzdPRT4fYrqnxpmVbwf2pS60LL8FsY+t
	CDwqFAYFOvfwLeiZUjZaII3Yh30SS3PBd5Kfeot6TgwrksMzZAuxJbtkFS+PeysKKHObTCg/lnPhj
	LfKLZpfChH2QNUEDYJw6ceWuTwa/j1iGAxNJaLNW/Dk4JsJ7Zo3PR2NVrDEBevrU8LUd8ne3XL5o1
	0RTK4hJQ6d3BqsNIiFG2mSXFAI7LJyoh8iXqquqBKc2irVSSbVpOFfXBJCGClNzY6VrhyYOShwAkA
	4e102FybCHiu/fzXikQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8w2x-0001Pm-9V; Tue, 03 Mar 2020 01:08:31 +0000
Received: from mail-vi1eur05on2055.outbound.protection.outlook.com
 ([40.107.21.55] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8w2f-0001Kk-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:08:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXZf4De8FUaRjIRJvimCzq9PN3bZ0gVnLuZM7ig6F2P1GGCrUuQcLGr044rUBGMq8sYjm0CrhainUkPnP+eXX9ORMly1S9h4U0t437D9/IiK5nDfETsQw5ympjmgZMAzlHUkxB3as4WKKo9ZX4JhFg2iTkHL7VJaSBlYanmcz1xsWxora1Kq4QxfOECEj2bsWZrXad+zw9NCST8phiLiCb8mdLsfmOBS1zGXwoMrkpCef5THPszLtpgHXde5U4trjn9vDNVakCQQuOSjjy+L7uxYKokQG0tDHy/z3vNezV9Gjc8PK7CFBcFqcnPJ251rNEjM5PHfM8L4w+ug/Hy9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TXHF6qnlygTxMFVPAgRKPyhQkJ7njFueQcCBC3t2Bj4=;
 b=L/94HXfyAObXBz605NGEWH7mC3DyRDdmGy71UrqIhd5tPpBYaSn9CqwOsjeAyNXZv7gIB2lAXICo4L7vA9aOW5LZQJOUsqbA0uuXByy20EFy1pMK9SCcSK0DgkkpNfkXxSg542jBeoc79azIb8Xp7qDXKfsfh0jus3j3F5hRjUBN9COHqwXB7nFfdhJxy3tmTlYg+DqoFeXDTZVSbr+Jfee6eJSYOqkH2uxXXpgioV2D+1e4wwKi3blQ4oSzgvioK3y5hFtfBwU9j8GTEKv2qkjmNAEhiAzaNUrJAM5A9TsrxQXH+d6OGAT4Vz26eYBvrq6ftIyoQBrTGUYF1nYpWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TXHF6qnlygTxMFVPAgRKPyhQkJ7njFueQcCBC3t2Bj4=;
 b=PJka4B0ERIRul6odMdn1PHLOj4DAKrrUptKrwF3WeSuS4xdu9wwsbFJ1ecK/UZee8Xjt2mxpiuEfhuw8hAhnvSh5FBdQxNs2Lxrp4CVkh9l4DSfGv7ynJlthZYQjqIyZdXkf6uU/sOajNK8RV5vegpfAIR6vh+K/QGGJ1fSce+0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6452.eurprd04.prod.outlook.com (20.179.253.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 01:08:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 01:08:10 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
Thread-Topic: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
Thread-Index: AQHV5vtt9q1uPmk0BESPnzoSAIGwTqg0mA0AgAEPsICAAHoX0A==
Date: Tue, 3 Mar 2020 01:08:10 +0000
Message-ID: <AM0PR04MB448109F20C46216701F08A7B88E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481FF78BB300729E59D6D8C88E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAOMZO5CBSL4yn4m6n56qES0jDVUQZJSGZyCxng1Kg7fvD5k1JA@mail.gmail.com>
In-Reply-To: <CAOMZO5CBSL4yn4m6n56qES0jDVUQZJSGZyCxng1Kg7fvD5k1JA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0cd3abc2-de50-495c-4424-08d7bf0f5739
x-ms-traffictypediagnostic: AM0PR04MB6452:|AM0PR04MB6452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB645268F7A0967FD51E5CE2DD88E40@AM0PR04MB6452.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(199004)(189003)(53546011)(6916009)(8676002)(86362001)(44832011)(8936002)(6506007)(316002)(7696005)(4326008)(55016002)(9686003)(33656002)(64756008)(54906003)(71200400001)(52536014)(186003)(76116006)(26005)(81156014)(2906002)(4744005)(66556008)(66476007)(478600001)(81166006)(66946007)(5660300002)(7416002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6452;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ghg3lA8t8gbsKiQQ2bR2np5LgV2jlB6EJ+dAkN2Ic5r7ipSINbaHsFOIWY9PtT8uwX8EOwTYMW7hu+nmtP4O/w2oDTSEASXc0y7bvzS4DfXuIm4IEHIHmWYQV9bpX7mNKKK7CkrPlfeBePHAUL9JYKxbiAqterFxo2/SOzX1CJm00WTKwtm8B3YiaAzNyX8fkKC5+HQGrfbYIX42pchR6xY7CAPKqLEvM2CYegngHb0WfgYsEFDa5Sadp7w///4mSfXqsFkCbqaethZhEVHsceVmr3yaPd1xXRs76GN+T3MFkuSQ2arYpwwRm1Lvl3WR6TIaPgTOlfu57dkFFCjZTPt+3kRe3U9Ab6d4V1VmiOgelDvSKvY4wJ97m30xSj1jBp6k0ALdGW4VFfxjlPOR0Mi6ANME2GjzQCOgP6xd8CIhCckKwS0QmVY2+1XvLyVn
x-ms-exchange-antispam-messagedata: zdKUPJ7yM8Y3qHeadEcc2qheDnZm71bGVAQG0mCNZw1wxIk1g+Z3U0aKheAYNxZPAZdKbStSwX/vOf+2GMbxz/qYtNUEg73m0jFsB6I63Q2Nk0ubbv7zWmbXepcN3wYPY5Sip1xe6swJQ/H47TEneQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd3abc2-de50-495c-4424-08d7bf0f5739
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 01:08:10.4450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPXq40NV2ZD8OJvEMjGrw0uv3YSZczSFaQjasAz66bgv4eLCY32uofymdBvbYZjI2h6O0HQmQfvv/TCBUgE6KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_170813_990286_78A78D1A 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

> Subject: Re: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
> 
> Hi Peng,
> 
> On Sun, Mar 1, 2020 at 10:40 PM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Shawn,
> >
> > > Subject: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
> >
> > Is it possible for you to pick up patch 1~8, 12? Or any comments?
> 
> I haven't tested this series, but just wanted to be sure that 720MHz
> operational point will not be populated on a system in LDO-enabled mode.
> 
> Please confirm.

Currently I added a check to disable HSRUN mode when LDO-enabled.

Thanks,
Peng.

> 
> Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
