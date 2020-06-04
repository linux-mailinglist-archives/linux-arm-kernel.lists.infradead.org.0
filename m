Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522111EDFE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ric8QXvFojkXWwqQkecVlH7nyufhnQuiElj3HtONLes=; b=APQ61RDBXpB2ow
	r4QJivQqOMqh/09ty7lT7FwtkNkkyDpHbt+W2cNN5OJ0QxA3r8mSmopcd7N8hEDAuADgc4nc9vXtL
	k1GoK/PSLkUoOLdMDmY50vSSSYLV7dJgy0GuKboIw6psN9INO8N8HZZpJgzgM3T0DlxQPFho5gaRu
	CaypEAz3oM/7raF+qMZcS2klUG684ITBCh87l0GAQsfeF5WKPX5xpFc0OX9rClDQfh5uqj5kOMgI/
	MfO9iDmMVbXH+vQa5nwjBLlGOrPMhlmb55Cyfy2ipoTqHxyFnDAVyy2WN7gk6pyoYt44EFmr3C2sy
	gS3ixVVBG1+9HhEyR2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglQA-0004v0-2l; Thu, 04 Jun 2020 08:40:18 +0000
Received: from mail-eopbgr140087.outbound.protection.outlook.com
 ([40.107.14.87] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglPq-0004uR-NF
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:40:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMVB3VealovFNoz9EvZNJS7MpPtQdR3gV6LTDiVbp+xVo6Y+r6Kpb74WLe7ITvdXoLNPHg8vLOpnwOG28ROAqwwilPi7U/0113a9NrmSHNEcTmXCiI/rLkuoL3VxB9h1i2/joGWawJ/cPV4hOOLbx+wBoVh+GZZxw7gBx96srw3p3+TtEqhP6pGymkvVxHq6MF7I/nfc5XKISfVcVJpeewN+WmCWbaHeFJyubN/P1fjlO2NVyBYWj1ydyG94jyFxwAri9qYwysna6HCkAdFmb4qyb7i7XLaBIE1HWz/9ZeSKpGnXFRgehpCZniDwq08gOLPxU7Sz5bc1awtGowjlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WpXTRvLSyOh5s+LfCmB9GwA8m5MY+qG1HarZXQvjPOA=;
 b=eMmesKj0s3YtLbfF2gfMvZ6mo0xSe1dWHo7sQuBeGpRWpiuOKOluYWAon0ffUSr+krwSoLrQDB4ei2Eayc0CdyJ2zTJQwEGXbzfG69oLslkGawQGpeVmprkn3u6vLYyfha/D32/OqmOO+obBpRK5yIYk+hA4w1Fmmciaywb34xgq303cCumI1NjIRAkQQE0lak08QssbnfvgohqHOSXeL3vVxb91OnChbOx/ED7QkmFBy1VA6Jzhz1CoQxFceLBskc44pFtsIvIzy1V8vDqGEeojxQvaQPnscRoSuwQmFhRV8yEs8ceHN2vLNb6v5yqvFEe2umocadLPi+2mTc8fFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WpXTRvLSyOh5s+LfCmB9GwA8m5MY+qG1HarZXQvjPOA=;
 b=iZOjvqgi+RIgjc0z3G1IvwlA7z8rSP5bPzynmF4nM2aX2x1e4FBD64tp2zF3oFQ95xor2+aqdgboNkth+wKIDkGKpvwV6JfBGWpY++48BjE4Pf2z/f0i2ve0tVFCveLKu3+V/V0HEVFdoPAAFcVM0tj42kNCJXnMd4fGdriYLlY=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5288.eurprd04.prod.outlook.com (2603:10a6:20b:5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 4 Jun
 2020 08:39:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3066.018; Thu, 4 Jun 2020
 08:39:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: clock: Convert imx7ulp clock to
 json-schema
Thread-Topic: [PATCH V2] dt-bindings: clock: Convert imx7ulp clock to
 json-schema
Thread-Index: AQHWOhGSp3Y4XiEnqUiyMH3+78AdsqjIIyxg
Date: Thu, 4 Jun 2020 08:39:54 +0000
Message-ID: <AM6PR04MB49666E9E2443378C8040F11B80890@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b6719837-66b0-4d2e-5f52-08d80862daca
x-ms-traffictypediagnostic: AM6PR04MB5288:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5288BCD1EF47E3D99F0FD84C80890@AM6PR04MB5288.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vziNgU7MTqmaf+uEswebUqIMqqYywUGemMgSXB6EQxMme2QqF3/vlPHlptXs7ycW6GznqTp0HerSAVwLEp1urr1WvgMtmHl26YsdLWzi1ihQbOWa9JgaMRmAMrpeQWaXQfKGxe8Y6PrMb6ljxftGBQsOF8H4GcX33LFDzuMq/57s2A3x5p2hi4uY74Kzpj8H/SSh7a/Yv8HvjIW3qjKLChoQ4TBdE8UhXKwJqs/OsTZ7FUmhuwgfKMsgoh6gcZr8HuzTSMb3DDdQHwqM88fvnIP6GtDl92ZGPiK+s1cZvCAzz1VKZjUSoGVxuIrnvWEbml3erdR23a3bNgKtmOm1UqG+hBnpUKO1fCKgYQ4NhDE6zr8mP23/QWQ2YF+PBxRX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(396003)(136003)(478600001)(2906002)(33656002)(66946007)(5660300002)(4326008)(8936002)(7416002)(76116006)(64756008)(8676002)(4744005)(55016002)(66446008)(66476007)(66556008)(52536014)(9686003)(71200400001)(316002)(110136005)(44832011)(86362001)(83380400001)(7696005)(186003)(26005)(6506007)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: bVaxukPXJWPxQTdOUHM0e1sbye/V4dpLBvD7YbMeNk4SxtDqgfbMvuIyhxw0wRcLTF5E60FoMEg/FfiU6GSz+mD3srC0PfRLNSnLMkCJLKgxmyFLfstgQQ8PRW48QOYjlp0iwu+79VV4LiikbtpHxYNek8V1CHy8dCBVtlw8Hn7OsNxJVBgnDAoEXGg9zQIBIbnlKiNzj2up0aEE4Qpm6GP8w7M84w/iZumP1nm5jYomHGAjeiFQrpFZQJiMGXC67CURaZPVQk7nfyRKjl09h3hbui7RvkppuaaXyatEVeI23KVW2ShVcfmY7hp1OfQmKlf5fbEt0xFLEq951bGv7YFs35SaSCES5K7WPCkx5bu7CWmETX2rtSqCOCaDdokWPs404TYgljOygjqs1Hg/iOP8wCxHVgxfZjGNvUY+2slKulgvyY3v9ZHfeTcNCsxuf+CLUhjtHXVc24EIhsv3pqzeFkVJt2J8gc3JsazBZ0dhcl4C+cQCRhF2HcDCE2qG
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6719837-66b0-4d2e-5f52-08d80862daca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 08:39:54.2158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kaUJav8p3rOk+2KR0Fj8p3SrSOJCjo1VcAnVQUk1HHZiPbnTCMFrmsaDaLz/bqcjm9/soV0+g13Rq2FV+zJOKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_013958_760437_A756253E 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.87 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Thursday, June 4, 2020 9:33 AM
> 
> Convert the i.MX7ULP clock binding to DT schema format using json-schema,
> the original binding doc is actually for two clock modules(SCG and PCC), so split
> it to two binding docs, and the MPLL(mipi PLL) is NOT supposed to be in clock
> module, so remove it from binding doc as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
