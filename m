Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CABD116BDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVrphQMqpuLmqoWe7esVVqgOqQ3aOXlcvuNla8XQCJI=; b=T05hil7a5gTDaA
	3mgIqYZ6DUVqke8smcBnZxEdBhpfwuWaCme1YicQweZ5KTGP/gL2XF4RLV7k3eeFQxw66AdZMI7du
	mJywWAaA9ht0N17RVNrFfBDMP4UumbPaZq8rCUVCjON/+646ps5vpUW0/B4APvvaj186mZn3XrwL0
	hTv4aimnkjHyvuCIAAAw97JRZ9/anNbKbkO3IGm3bMPx3gBm4L92LdzDsXTAEtL7lpZnxh93IOaj1
	Vp1G8RSr05cvz6RLnVk9Luo3hTOxfnRtrGxAapKHmLZt8Wgvgyycb7BypnKa7YAxrG+P3QbRmSI0e
	4G7AoGEbBp/EyH87QMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGud-000226-1d; Mon, 09 Dec 2019 11:09:11 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGuO-0001r6-OS; Mon, 09 Dec 2019 11:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KObIKmOul30/wdgaaLfLddlLWgevjRSvoR4urKSF5Oo=;
 b=o0V5fQ8lmIL/mzjEJUsMLuJjrhwzVtVo40UUC+jM7S7t99vndJV1lXkNuNrmc38+1kSHMfgCzc66BaddmROQHkt+m5L/TBRIcirndXg7FiQOllbuy5Q3N4KfjvIuMJwzbIQRkwvFrd2EPUYAD4ej8gm/mEQbND+YASdAxjKHfYQ=
Received: from VI1PR08CA0096.eurprd08.prod.outlook.com (2603:10a6:800:d3::22)
 by DB7PR08MB3451.eurprd08.prod.outlook.com (2603:10a6:10:49::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.14; Mon, 9 Dec
 2019 11:08:48 +0000
Received: from DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by VI1PR08CA0096.outlook.office365.com
 (2603:10a6:800:d3::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Mon, 9 Dec 2019 11:08:48 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT046.mail.protection.outlook.com (10.152.21.230) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Mon, 9 Dec 2019 11:08:48 +0000
Received: ("Tessian outbound 5574dd7ffaa4:v37");
 Mon, 09 Dec 2019 11:08:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ce6e759f3d951b5c
X-CR-MTA-TID: 64aa7808
Received: from 99659ef87d22.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 69F66424-0E93-4006-9F26-971950A802A7.1; 
 Mon, 09 Dec 2019 11:08:40 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 99659ef87d22.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 09 Dec 2019 11:08:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLU/lG0C4SveixcWptv+ykkBp2GEJiov9kF6HBmAdPVvGqRGdMZlfVuqDV8tkblwulrBcDfQl1cxTuZf3qfQClKodr3eFdomFtOJP1QHia7AeLV9XddLIEB2gVm55JGH/3fnqrHWy//GMGi6vNnFLyt6AeKcOqrqUhLB/u/cB+CUtcxgef/i78Dnf0Ney3d/9aqAnPEB6Cs0hSAU7HFYkyEOZQ0yGMBoS42fP1qkiaNw/tcAD/YY2IgobwxtyKLwAyr5bb451A1S/MZ4NSlBiZdx6w7WROWeCuWCgM6JACylgutVEBuEC5UIV4wDPRJUb+9WxVHdEH90/ATKguMMYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KObIKmOul30/wdgaaLfLddlLWgevjRSvoR4urKSF5Oo=;
 b=XCVmCakkxuXWD/2cWb2KCNDdwVvO2OySLKXui05uzSFL8DvYL5/RDUHoArxQh00I1UKQfjEG682dc+GfrVaIvtf44h5hlhTjinfOZH9FGB8Olwfo1g9J6J3k7Wsj1FjZ9I/UJxGUiYNSJaUyCc0fg/ndQVQMPmxqBW9j8dZjVz3QL0/5GgJlG7FPMGhpgdYY1xdTr8uF8PdcHt7cFxHJ85MY7CtGfx3OU4S4n5XqQDz87/Ej8/oJsLXLbxnGMKoonepUOTmhpOvBq7nE0Skc/NawjXCpeRkvIRKz9NpbvwbYeD7B3n3dm5FRFS3UMRPvD/1FNvQzCXkKeaC1k0ZnIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KObIKmOul30/wdgaaLfLddlLWgevjRSvoR4urKSF5Oo=;
 b=o0V5fQ8lmIL/mzjEJUsMLuJjrhwzVtVo40UUC+jM7S7t99vndJV1lXkNuNrmc38+1kSHMfgCzc66BaddmROQHkt+m5L/TBRIcirndXg7FiQOllbuy5Q3N4KfjvIuMJwzbIQRkwvFrd2EPUYAD4ej8gm/mEQbND+YASdAxjKHfYQ=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB4206.eurprd08.prod.outlook.com (20.178.204.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Mon, 9 Dec 2019 11:08:36 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c%7]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 11:08:35 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v2 00/28] drm/bridge: Consolidate initialization
Thread-Topic: [PATCH v2 00/28] drm/bridge: Consolidate initialization
Thread-Index: AQHVqpiuNcYsgGgOskGx3fwlqVtM9aexpJKAgAAIAIA=
Date: Mon, 9 Dec 2019 11:08:35 +0000
Message-ID: <2634531.l7d0rgvqDW@e123338-lin>
References: <20191204114732.28514-1-mihail.atanassov@arm.com>
 <2989c044-8134-bb7c-a7e0-c518334bf4a6@baylibre.com>
In-Reply-To: <2989c044-8134-bb7c-a7e0-c518334bf4a6@baylibre.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.54]
x-clientproxiedby: LO2P123CA0044.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::32)
 To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c3e008a3-fa25-4812-a50b-08d77c982a68
X-MS-TrafficTypeDiagnostic: VI1PR08MB4206:|DB7PR08MB3451:
X-Microsoft-Antispam-PRVS: <DB7PR08MB34518E465B23E19EFCA4801D8F580@DB7PR08MB3451.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:298;OLM:298;
x-forefront-prvs: 02462830BE
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(51914003)(199004)(189003)(53754006)(7416002)(229853002)(6512007)(2906002)(186003)(5660300002)(7406005)(966005)(8936002)(71190400001)(52116002)(9686003)(8676002)(6486002)(66556008)(53546011)(316002)(305945005)(71200400001)(6506007)(33716001)(66476007)(81166006)(81156014)(54906003)(64756008)(4326008)(86362001)(110136005)(66946007)(478600001)(26005)(66446008)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4206;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 8z/I4+ZeXMvRgLBU8q8Do1Fop3db4YUeAUvfDy5fw+fv7moLU4/xWtv9ZHAFvBAIpMb/GNuQBBUtsXO6o4muxdwHtH/W7TvRVsmSgIOtTxndPkGc1awIe4I88H3qkEjM/CJgKNtDLzR8iQj6R4I+c5VHhIn/Z4GoPF3DmfR43CcQC5BmW1zW4cJSUJQNV7OedCmjfB2j6eHZNxluaYJY0vQuy2Wjvs3a8MyBIHBLvJjj8RM+naSwsIDSKsQ+CCOWHXJcOGk4heZmLbL95z/0URrdXoZ402QeXIdZCcmksocrOg3w9qKgFh35+GhKTLS1BFf2qQpn+S7BUJfHsYsNHZO1UKtd8dgT0xAc08gWeTlayKXmf/XkPQtRpVibWnx760BTdhe3L0XBlGIC/BHPC1M6zbkoI2xDYx1tUAJQPsURv7WiB/Ir9s3XmKIMjdL9N/1ExRC/7HtMo/CRp0UR85mb1OHSItjnmw3i5aGRU1gMpHOTy9xOevMp+9zw3HgrfdNheZIKNVctKkSgQ1uAwxtBIEmOpFhOxYSpkPGgCUuUaVF/jhWErL8x1UlFjLVjq9/Vys8/86s1zeVwAQBhvA==
x-ms-exchange-transport-forked: True
Content-ID: <6DE8CEF268029D48A1091A9874B0AA3F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4206
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(376002)(396003)(136003)(39860400002)(51914003)(53754006)(199004)(189003)(316002)(6486002)(53546011)(76130400001)(336012)(86362001)(478600001)(6506007)(6512007)(9686003)(450100002)(81166006)(5660300002)(8936002)(33716001)(81156014)(26005)(107886003)(54906003)(356004)(4326008)(186003)(70586007)(110136005)(229853002)(8676002)(70206006)(26826003)(2906002)(966005)(305945005)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3451;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: bb56fc6b-b4c8-4697-d8a5-08d77c9822af
NoDisclaimer: True
X-Forefront-PRVS: 02462830BE
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JOgs6zhli568wHTwCq8U3OStMYcnYDuPOLrElygoJjQgWfhRtqYOfHbf6Wk70/DiLkMnCg+o909JUpS3I3UPaHQvu44mZW4OmQ/JFUoQLLOcO5BBWMM9+w0ukt9/rBHep3gclsId8ffUYp6jM3Y76SNuaFQYXk76t+gqPuKa6ruVzyM8RkXPLGgVwv14LZluXl4gZDvVY7sg+vbjVbAOf9C9GTTaPMsVAnWIieucq3tE33fLspY3TtWJrfqJ53tW/7lTwnGeYqc+T7mqiXulWcxVOl71XW1TXUAgPfsrUI5yCWNBoaiFqzwPCHvWX/AgfqT0umEOXMZ9NeKQkRk3tQjw4cbvUZpN0JUVPdfMJoKl/Bx/UpRnjg80kDeX5sYi8GZwul7sLnXZQ3TRBMv3qAQQKudXq2qRSZ0H4VkvhToDoKuwb0wy1i5Mrbk/LCNju0P7PxvMtLnYZjjTUPBgEN1FfGKIoR2RZ/U0Dqjw2qnUqNYTGWUxfXZwKOOZcN3UC5YNZ/kJJOTQVwE9puDhEdtJsz0Ul3scE+HFKT+XRHNwPignjhMd0IxAFeUP9hE4XqrsHSHFWNkygX2G0aqbDw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 11:08:48.3898 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e008a3-fa25-4812-a50b-08d77c982a68
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_030857_080859_60F87855 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Martyn Welch <martyn.welch@collabora.co.uk>,
 David Airlie <airlied@linux.ie>, Peter Senna Tschudin <peter.senna@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Jerome Brunet <jbrunet@baylibre.com>,
 =?iso-8859-1?Q?Yannick_Fertr=E9?= <yannick.fertre@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Sean Paul <sean@poorly.run>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Dariusz Marcinkiewicz <darekm@google.com>,
 Martin Donnelly <martin.donnelly@ge.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Brian Masney <masneyb@onstation.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, 9 December 2019 10:39:07 GMT Neil Armstrong wrote:
> Hi Mihail,

Hi Neil,

> 
> On 04/12/2019 12:48, Mihail Atanassov wrote:
> > Hi all,
> > 
> > I've dropped the fun parts of this series since they need more work, but
> > figured drm_bridge_init() as a concept is still valuable on its own (and
> > I think I'll need it to roll out device links for registered bridges),
> > so here goes.
> > 
> > v2:
> >  - expanded commit messages and added some extra bridge-related
> >    documentation (Daniel)
> >  - dropped v1 patches 29 and 30: 29 needs more work, and 30 depends on
> >    it
> >  - added all remaining drm_bridge implementers, found by searching for
> >    drm_bridge_funcs which is mandatory for any bridge; new uses in
> >    patches 3, 27, and 28 (Sam)
> >  - due to the above, I've decided to squash all analogix changes into
> >    one patch
> > 
> > ---
> > v1 [https://patchwork.freedesktop.org/series/70039/] cover text below:
> > 
> > This series adds device links support to drm_bridge. The motivation
> > behind it is that a drm_bridge in a module could get removed under the
> > feet of the bridge user without warning, so we need a way to remove and
> > reprobe the client as needed to avoid peering into the void.
> > 
> > 1: Add a drm_bridge_init() function which wraps all initialisation of
> > the structure prior to calling drm_bridge_add().
> > 
> > 2-26,28: Apply the drm_bridge_init() refactor to every bridge that uses
> > drm_bridge_add().
> > 
> > 27: Minor cleanup in rcar-du.
> > 
> > 29: Add of_drm_find_bridge_devlink() which functions the same as
> > of_drm_find_bridge() plus adds a device device link from the owning
> > drm_device to the bridge device.
> > 
> > 30: As a motivating example, convert komeda to exclusively use
> > drm_bridge for its pipe outputs; this isn't a regression in usability
> > any more since device links bring the same automatic remove/reprobe
> > feature as components.
> > 
> > Mihail Atanassov (28):
> >   drm: Introduce drm_bridge_init()
> >   drm/bridge: adv7511: Use drm_bridge_init()
> >   drm/bridge/analogix: Use drm_bridge_init()
> >   drm/bridge: cdns: Use drm_bridge_init()
> >   drm/bridge: dumb-vga-dac: Use drm_bridge_init()
> >   drm/bridge: lvds-encoder: Use drm_bridge_init()
> >   drm/bridge: megachips-stdpxxxx-ge-b850v3-fw: Use drm_bridge_init()
> >   drm/bridge: nxp-ptn3460: Use drm_bridge_init()
> >   drm/bridge: panel: Use drm_bridge_init()
> >   drm/bridge: ps8622: Use drm_bridge_init()
> >   drm/bridge: sii902x: Use drm_bridge_init()
> >   gpu: drm: bridge: sii9234: Use drm_bridge_init()
> >   drm/bridge: sil_sii8620: Use drm_bridge_init()
> >   drm/bridge: dw-hdmi: Use drm_bridge_init()
> >   drm/bridge/synopsys: dsi: Use drm_bridge_init()
> >   drm/bridge: tc358764: Use drm_bridge_init()
> >   drm/bridge: tc358767: Use drm_bridge_init()
> >   drm/bridge: thc63: Use drm_bridge_init()
> >   drm/bridge: ti-sn65dsi86: Use drm_bridge_init()
> >   drm/bridge: ti-tfp410: Use drm_bridge_init()
> >   drm/exynos: mic: Use drm_bridge_init()
> >   drm/i2c: tda998x: Use drm_bridge_init()
> >   drm/mcde: dsi: Use drm_bridge_init()
> >   drm/mediatek: hdmi: Use drm_bridge_init()
> >   drm: rcar-du: lvds: Use drm_bridge_init()
> >   drm: rcar-du: lvds: Don't set drm_bridge private pointer
> >   drm/sti: Use drm_bridge_init()
> >   drm/msm: Use drm_bridge_init()
> > 
> >  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c  |  5 ++-
> >  .../drm/bridge/analogix/analogix-anx6345.c    |  5 ++-
> >  .../drm/bridge/analogix/analogix-anx78xx.c    |  8 ++---
> >  .../drm/bridge/analogix/analogix_dp_core.c    |  5 ++-
> >  drivers/gpu/drm/bridge/cdns-dsi.c             |  4 +--
> >  drivers/gpu/drm/bridge/dumb-vga-dac.c         |  6 ++--
> >  drivers/gpu/drm/bridge/lvds-encoder.c         |  7 ++--
> >  .../bridge/megachips-stdpxxxx-ge-b850v3-fw.c  |  4 +--
> >  drivers/gpu/drm/bridge/nxp-ptn3460.c          |  4 +--
> >  drivers/gpu/drm/bridge/panel.c                |  7 ++--
> >  drivers/gpu/drm/bridge/parade-ps8622.c        |  3 +-
> >  drivers/gpu/drm/bridge/sii902x.c              |  5 ++-
> >  drivers/gpu/drm/bridge/sii9234.c              |  3 +-
> >  drivers/gpu/drm/bridge/sil-sii8620.c          |  3 +-
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  7 ++--
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  7 ++--
> >  drivers/gpu/drm/bridge/tc358764.c             |  4 +--
> >  drivers/gpu/drm/bridge/tc358767.c             |  3 +-
> >  drivers/gpu/drm/bridge/thc63lvd1024.c         |  7 ++--
> >  drivers/gpu/drm/bridge/ti-sn65dsi86.c         |  5 ++-
> >  drivers/gpu/drm/bridge/ti-tfp410.c            |  5 ++-
> >  drivers/gpu/drm/drm_bridge.c                  | 34 ++++++++++++++++++-
> >  drivers/gpu/drm/exynos/exynos_drm_mic.c       |  8 +----
> >  drivers/gpu/drm/i2c/tda998x_drv.c             |  6 +---
> >  drivers/gpu/drm/mcde/mcde_dsi.c               |  3 +-
> >  drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +--
> >  drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 +--
> >  drivers/gpu/drm/msm/edp/edp_bridge.c          |  3 +-
> >  drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        |  4 +--
> >  drivers/gpu/drm/rcar-du/rcar_lvds.c           |  5 ++-
> >  drivers/gpu/drm/sti/sti_dvo.c                 |  4 +--
> >  drivers/gpu/drm/sti/sti_hda.c                 |  3 +-
> >  drivers/gpu/drm/sti/sti_hdmi.c                |  3 +-
> >  include/drm/drm_bridge.h                      | 15 +++++++-
> >  34 files changed, 100 insertions(+), 103 deletions(-)
> > 
> 
> Can you check it doesn't collides with Boris 1-7 of "drm: Add support for bus-format negotiation" patches he just pushed on drm-misc-next ?

Thanks for the heads-up. There's no technical conflict but the build fails.
I'll fix it for v3 after I get the de-midlayering of drm_bridge done
(see https://patchwork.freedesktop.org/patch/343643/?series=70432&rev=1 for
context) and the s/bridge->dev/bridge->drm/ patch merged
(https://patchwork.freedesktop.org/patch/343824/).

> 
> Neil
> 

-- 
Mihail




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
