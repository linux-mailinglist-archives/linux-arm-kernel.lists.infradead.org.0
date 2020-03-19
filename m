Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F40618B3CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9qbqIqJTjhn89wWjemO+jQ9XFEEtwEIJ9eNNu20S5k=; b=c0vvHFLnd0m3gL
	MfWr/KZJ21mHIn6DGyrmDBTp++8jq28PXj9nwDeydtRcIKeK0dAtK38FHeBexJt6oAqPc5R5MrweE
	zTj1efNK7nqyvK+ZRtX1mVDV1aCuIQRI8uRu64NZQvRFLvGYvNHB+J2Sb5nvOU2SWKw7/HLOoUMY6
	pdCxRr83ti7b2sE9mtrlCpUYat54brTObydzwUG0/T511wrsekaKPSJqP8uAfYyYo49MG+n0yUAXD
	uqxLW2vVdLZCNOnwYwlJexSsNIpJd5/bbKrpC/5Uk5ekRzVE7MsyzdiXj5U44328wj0N0R2v9riyk
	Fn4yyOcXrBu9O0Ce2BIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuk2-0001JM-Nd; Thu, 19 Mar 2020 12:57:42 +0000
Received: from mail-eopbgr30117.outbound.protection.outlook.com
 ([40.107.3.117] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEujo-0001Hr-G5; Thu, 19 Mar 2020 12:57:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8JxkgFYn6ejoYvL14Bknc/3taLDqAPVhRnHqFM9+Add67LApRwjLGLZVcspMAEXkgc+m05fx3SA4TcZY6hXyz9oyPItDowa4LT1F97c1PuzgilIxLOEo0WZ4LwkIWXlI0wPmJwuTAY2MYSi+cppVXFGNvvn6VtRzzkwqFo2oV2gjLnnSe0Ce2anlbskLRVuJlq9Dw9ikoFdWD2QWV52QoK2Gp2qxEKbKcp+KR+EF+bhu7Y7J0BPd1uwsx+ropsVDqwFVdW72+KBxKQgMdz669qz53mtprrBPVk5vM4rFeVsRvJ8P8w1A6wLKkcU2KGcmnK424XyEU4FBf0787bzYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ct/vC+pyknaapJ/kjDeMGgchdOUlt5aZcJZO1q8mKtw=;
 b=WyWChx4rwOPq+eOV0RJC/SR68bWq2r6Ab4pChpN34R67Gp0RxQ98o64zmhFWBoUn700pQY3zXc9VRb+qsz1RP7790TJBoP4tnJoQ93Rpy85B4N0cMBbaXuJpoPyhQkyVPLRUN7bifax3oqZiZ3qewjY5dLkuMgIx2oEcHp5nkdlqu99BqgnE/BPgT3AdcN9BrhQOs1gVvQgzWmqIUSCRwv3vDAURwWUYTBq8bUtdMWEnB0NzusKMWbY071sWRaqsmijtDu+8W3IYKoazGD/YMO15U2hK3z4G0gb2O1eES1gcv0akURteq9bvgQEUnbJZQ0gLq4BjUwxuZdathXHKCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ct/vC+pyknaapJ/kjDeMGgchdOUlt5aZcJZO1q8mKtw=;
 b=tU0XZSw8e4Ws6iZOGfhACAY0qOFB6LptP/wiQNm3bDY4LOdL/QsmUpuSVGfc5wxLWtX2MZxhcdXBwQnXrZoOMtwYJFlToj4VF4qWVgsGTuEeMPTbAKCbRCLJ8Y1sIUEPxA5HEQeUUFZf0E3g777xw/ytCIkXIRggsMXi5DlPnqQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4384.eurprd05.prod.outlook.com (52.134.30.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.23; Thu, 19 Mar 2020 12:57:25 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 12:57:25 +0000
X-Gm-Message-State: ANhLgQ36U2OAvPJRkdJQihBdRm4enAqHdwgWsLaNC1cRtT2agsDONohK
 DOyZgFy9v/b8JSGjaHw6pzYsvPimxRFGM0HjJgk=
X-Google-Smtp-Source: ADFU+vv7UiYjMyQD/4E12h86CR7/cYPU2WKNtIqkeDfie1uanDVnCD4QjGal5pFHF/ZOfpjDVMav8J/uvLvFUH2D2Ko=
X-Received: by 2002:ac8:554a:: with SMTP id o10mr2778015qtr.224.1584622638973; 
 Thu, 19 Mar 2020 05:57:18 -0700 (PDT)
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
 <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
 <20200319121026.3rzcxdknfyhtkryi@pengutronix.de>
In-Reply-To: <20200319121026.3rzcxdknfyhtkryi@pengutronix.de>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 19 Mar 2020 14:57:07 +0200
X-Gmail-Original-Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-ClientProxiedBy: MN2PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:208:d4::40) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qt1-f178.google.com (209.85.160.178) by
 MN2PR04CA0027.namprd04.prod.outlook.com (2603:10b6:208:d4::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22 via Frontend Transport; Thu, 19 Mar 2020 12:57:23 +0000
Received: by mail-qt1-f178.google.com with SMTP id m33so1646914qtb.3;
 Thu, 19 Mar 2020 05:57:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ36U2OAvPJRkdJQihBdRm4enAqHdwgWsLaNC1cRtT2agsDONohK
 DOyZgFy9v/b8JSGjaHw6pzYsvPimxRFGM0HjJgk=
X-Google-Smtp-Source: ADFU+vv7UiYjMyQD/4E12h86CR7/cYPU2WKNtIqkeDfie1uanDVnCD4QjGal5pFHF/ZOfpjDVMav8J/uvLvFUH2D2Ko=
X-Received: by 2002:ac8:554a:: with SMTP id o10mr2778015qtr.224.1584622638973; 
 Thu, 19 Mar 2020 05:57:18 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
X-Originating-IP: [209.85.160.178]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 570ac88b-5d4b-40e7-6c8c-08d7cc051169
X-MS-TrafficTypeDiagnostic: VI1PR05MB4384:
X-Microsoft-Antispam-PRVS: <VI1PR05MB438482C1B40F4958951803ADF9F40@VI1PR05MB4384.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(5660300002)(6862004)(9686003)(44832011)(450100002)(4326008)(66946007)(66556008)(55446002)(55236004)(6666004)(86362001)(66476007)(498600001)(2906002)(966005)(53546011)(8676002)(81156014)(81166006)(54906003)(52116002)(42186006)(8936002)(186003)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4384;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y9CljjCgpjvMGtRFzS2W5w7qTHttXtn99OsaWB8mr+i8SU7qSjcAMvwyS5gQAQTSO/kixHx5+pFmh1PAoUOHH625JCWQFkPnyjxuU2WhMPnW5leGNOBHFPaT22+VeDIvjr2PrT7YTCLu/+96NLwNuqiMHLwm8OXYmcOjTa4GO6nYrPsRSUX9G6ZCis2Ipl3lu/Aj3lCPFRI0csUCyXb/FsrKx9HUtln2fddvP/VBJWafyYya9WsYagInyyXOEwXs/W4BW2D4KDLXSmQP+zElLU8418sC83cullqqdVE2PFFcXidH05thiLqifT0Y1RIgsqGXf1mbTk6NKGAhhA5X7ZKOijlYEmhKg7MM1iouRmqN0wIz9Ri5nD/fc2vW2/zxKgOzueiERGpNoOVarY4dAZ3P9MlyljGK7sm2yY6uGSjZacltP5Yb7zVAJyt5/yQd00FbqsABnkfQzLtUxskzasoD5/xYdP8QGklfcQbmewsJVW8RtwVsN/oZQHjDtxi1F8HJrHVMv4jfNJMsinVk+w==
X-MS-Exchange-AntiSpam-MessageData: RgUsfkaRWRO5188fdPGaQTF7TSMWcKCwuyV8jBoEu5XYtJuBoZWPmlTLYQ6gBhqKfpRngO/KahZaKPAjYtixXsOu3wvrTp1rGWTTdXQ/M7BESBHZjHi82tkUpfgoxmxE6ZaEGN7Y9whyxxBv/0w9ig==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570ac88b-5d4b-40e7-6c8c-08d7cc051169
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 12:57:24.0735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FnKkTj2y9vq701sHy6quJ7xiaV1247AOx7DZLbzv1X3p4H68Wf4Ii9l/oVnBZ6q0N6GRYOZumamA2lWgXP3hu09w6ZDPOhXd42erhvPwuE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_055728_569308_5B0BB3CF 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.117 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Scott Branden <sbranden@broadcom.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMjoxMSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gW2Ryb3BwaW5n
IFRvbnkgUHJpc2sgPGxpbnV4QHByaXNrdGVjaC5jby5uej4gZnJvbSByZWNpcGllbnRzXQo+Cj4g
T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMDE6NDA6MjhQTSArMDIwMCwgT2xla3NhbmRyIFN1dm9y
b3Ygd3JvdGU6Cj4gPiBUaGllcnJ5LCBJIHNlZSB0aGUgUFdNIGNvcmUgY29udmVydHMgdGhlIGJp
dCBmaWVsZCAidGhpcmQgY2VsbCIgaW50bwo+ID4gdGhlIHBvbGFyaXR5IHZhcmlhYmxlLgo+ID4g
Tm93IEkgcHJvYmFibHkgdW5kZXJzdGFuZCB5b3VyIHNpZ2h0IGFuZCBhZ3JlZSB0aGF0IHdlIHNo
b3VsZG4ndCBnaXZlCj4gPiB0aGUgc2FtZSBuYW1lcyB0byBiaXRzIGluIGJpdGZpZWxkIChkdHMp
IGFuZCB2YWx1ZXMgb2YgYSB2YXJpYWJsZS4KPiA+Cj4gPiBCdXQgdGhlcmUgYXJlIGxvdHMgb2Yg
dXNlbGVzcyAiMCIgdmFsdWVzIG9mIHRoaXJkIGNlbGwgb2YgInB3bXMiCj4gPiBvcHRpb24gaW4g
ZHRzIGZpbGVzLgo+ID4KPiA+IEkgc2VlIDIgd2F5cyBub3c6Cj4gPiAtIGp1c3QgcmVtb3ZlIGFs
bCAiMCIgInRoaXJkIGNlbGwiIGZyb20gInB3bXMiIG9wdGlvbnMgaW4gZHRzIGZpbGVzLiBJCj4g
PiBzZWUgdGhpcyAiMCIgY29uZnVzZXMgc29tZSBwZW9wbGUuCj4KPiBUaGVuIHlvdSBoYXZlIHRv
IG92ZXJ3cml0ZSBwd20tY2VsbHMgb2YgdGhlIHByb3ZpZGVyLiBJZiB0aGVyZSBhcmUgdHdvCj4g
UFdNcyB1c2VkIGZyb20gdGhlIHNhbWUgcHJvdmlkZXIgYW5kIG9ubHkgb25lIGlzIGludmVydGVk
IHRoaXMgd29uJ3QKPiB3b3JrLiAoTm90IGVudGlyZWx5IHN1cmUgSSB1bmRlcnN0b29kIHlvdXIg
c3VnZ2VzdGlvbi4pIFNvIEkgZG9uJ3QgbGlrZQo+IHRoaXMgc3VnZ2VzdGlvbi4KCkdvb2QgcG9p
bnQsIGFncmVlLiBCdXQgd2Ugc3RpbGwgaGF2ZSB0aGUgdW5uYW1lZCAiMCIuCgpXaGF0IGFib3V0
IHJlbmFtaW5nIHRoZSBkdC1iaW5kaW5ncyBtYWNybyBQV01fUE9MQVJJVFlfSU5WRVJURUQKYW5k
IGFkZCB0aGUgbmV3IG9uZSBmb3IgdGhlIG5vcm1hbCBwb2xhcml0eT8KTGlrZSBQV01fRkxBR19Q
T0xBUklUWV9OT1JNQUwgLyBQV01fRkxBR19QT0xBUklUWV9JTlZFUlRFRCBvcgpEVF9QV01fUE9M
QVJJVFlfTk9STUFMIC8gRFRfUFdNX1BPTEFSSVRZX0lOVkVSVEVEPwoKVXNpbmcgZGlmZmVyZW50
IHByZWZpeCB3aWxsIHByZXZlbnQgaW50ZXJmZXJpbmcgbmFtZXMgb2YgZW51bSBhbmQKbWFjcm9z
IGluIHRoZSBmdXR1cmUKYW5kIHdpbGwgYWxsb3cgdXNpbmcgdGhlIG5hbWVkIG5vcC1mbGFnIFBX
TV9GTEFHX1BPTEFSSVRZX05PUk1BTCBpbiBkdHMuCgo+IEFuZCBhbHNvIGluIG15IGV5ZXMgdGhp
cyBpc24ndCBjbGVhcmVyLCBqdXN0IG1vcmUgY29tcGxpY2F0ZWQgdG8gdXNlLgo+Cj4gPiAtIGNv
bnZlcnQgcHdtX3N0YXRlLnBvbGFyaXR5IGludG8gcHdtX3N0YXRlLmZsYWdzIGFuZCB1c2UgYml0
ZmllbGQKPiA+ICAgZGlyZWN0bHkgZnJvbSBkdGIuCj4gPiAgIEl0IHNpbXBsaWZpZXMgdGhlIHBh
cnNpbmcgbG9naWMgYW5kIG1ha2VzIGFkZGluZyBuZXcgZmxhZ3MgZWFzaWVyLgo+Cj4gKnNocnVn
KiwgSSBkb24ndCBjYXJlIG11Y2guCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+IC0tCj4gUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEtsZWluZS1Lw7Zu
aWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAg
ICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCgoKLS0gCkJlc3QgcmVnYXJkcwpP
bGVrc2FuZHIgU3V2b3JvdgoKVG9yYWRleCBBRwpFYmVuYXVzdHJhc3NlIDEwIHwgNjA0OCBIb3J3
IHwgU3dpdHplcmxhbmQgfCBUOiArNDEgNDEgNTAwIDQ4IDAwCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
