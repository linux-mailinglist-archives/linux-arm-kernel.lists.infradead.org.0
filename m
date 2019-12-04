Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA86112AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3fjNC2KzH1L5OXlwet9ruN87V+LOXYKuxnDXpm36/S0=; b=nVEIj2x4ihCKCl
	PpsiXQwO2nnxm2Rwpx9EJFHDvZE1kZBBt8roPlY8yW5PiXYau4qE77gT1hQVaUN+iQUrcpRnJ2SQO
	sqA+8hqhHOPNqV+xUSNaQz3Tbtqr6qNR9BfDzyjPMTe2pPVIxLgmmlU44ZCcF9vln0ifWA/8tQpkK
	9UiH85Tsap7ec11nEkVpv/6F873s9Sn+O/Nogn+4tOcuecuuXljFxPD39RIS3SAbtEjw5pL4CpkVd
	9GJI0AjpaI1DccJl9u8YNY93rRpWAmjchpOTmskspbb6R7dKcAKLWZu/8O6S/BCtXUjiSGIyccJ1g
	lSYamhuO3j3T9SR5ECLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTEI-000888-Lc; Wed, 04 Dec 2019 11:54:02 +0000
Received: from mail-eopbgr150040.outbound.protection.outlook.com
 ([40.107.15.40] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTE9-00087I-1l; Wed, 04 Dec 2019 11:53:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjVNpfXVBOGU1x7uKuqKkBOktWSSMN1jfSBokyJduDg=;
 b=6denV8It2I8pM7c0IC7aTn9b/e92AwuJ/UflIW9wTkMgCFH3O2MxHtvBtPNum6saalbr0nEoCqK3kmkAxImTbHxtifk+0cOSebyJ8M9TRaAJAAYqncouS/9U1UjWkAttMgMbn50ZfH7+7tmhGn/+BVDfkasKnFzkrFjpkw/asTM=
Received: from AM4PR08CA0063.eurprd08.prod.outlook.com (2603:10a6:205:2::34)
 by DB7PR08MB4217.eurprd08.prod.outlook.com (2603:10a6:10:7d::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17; Wed, 4 Dec
 2019 11:53:48 +0000
Received: from VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by AM4PR08CA0063.outlook.office365.com
 (2603:10a6:205:2::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Wed, 4 Dec 2019 11:53:48 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT048.mail.protection.outlook.com (10.152.19.8) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Wed, 4 Dec 2019 11:53:47 +0000
Received: ("Tessian outbound 691822eda51f:v37");
 Wed, 04 Dec 2019 11:52:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 437f6d2067540f2c
X-CR-MTA-TID: 64aa7808
Received: from d8d84aa0dd90.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7C71EB7A-47B8-43D1-A029-58C9769C29F3.1; 
 Wed, 04 Dec 2019 11:48:06 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d8d84aa0dd90.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 04 Dec 2019 11:48:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEaF+W7ExQvEdH6neKqhvdNbZlry30mKX1U42J0LxQfrIIlU1BieVnZ7EX4OOn29rChkdPXUPd7aCMZ30w7UtlaxKOi3MNYSVqiLwveUNuCFnKoFUhR03P4oUe1OnP3eFEzHT6epggm8L3u4hBOSpwUoiG7BMcnHbH1JgGIOHJmQqIcUhOZR9innHK/MxZ7d/kYCxY7FNHv7zbOY3kgQTKETxXmGSGazabWKvyHVnySWuH5oBcbaUkXoycsDVVnqRqEh5bUeJEMuBYwZhidG5kyHsV/KiGa3coe8ObXfgx9HhapaWFAOSFCR7CEPy264Q9q2esUSBeY+WWGLTz6JNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjVNpfXVBOGU1x7uKuqKkBOktWSSMN1jfSBokyJduDg=;
 b=VLdKubxE9qe0uBM+73tL53n7VKVckBUMIkJMyhfeXisZNgQ6TYgohcgoo99ug2ef0E2LeNbwbQ+WO21l3xBPU99VYJ2NxXWA+Gqk1VbfxeEMzQ8+t95hgjEge79RGFYsHEceOLCbEvnQQn9gVSq9wIOwx4NPwnTTZizZ6JeWd68MabmUt6O/DIepW/FvOVOsOWyIZFOhWhDsEsheTYjvHljc+2Siah/xl0mhpniZaWLDsEBduy4OVxy18FUZI79xRwfvwIMR1asMZr49O6I3adDzSy/SNMS6c+X/3ym2/1r5MRbHeVVDWDL66hHZjYcmpmD3I5tbz2rlUnlV9AMheg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjVNpfXVBOGU1x7uKuqKkBOktWSSMN1jfSBokyJduDg=;
 b=6denV8It2I8pM7c0IC7aTn9b/e92AwuJ/UflIW9wTkMgCFH3O2MxHtvBtPNum6saalbr0nEoCqK3kmkAxImTbHxtifk+0cOSebyJ8M9TRaAJAAYqncouS/9U1UjWkAttMgMbn50ZfH7+7tmhGn/+BVDfkasKnFzkrFjpkw/asTM=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB2909.eurprd08.prod.outlook.com (10.170.239.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Wed, 4 Dec 2019 11:48:02 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 11:48:02 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v2 00/28] drm/bridge: Consolidate initialization
Thread-Topic: [PATCH v2 00/28] drm/bridge: Consolidate initialization
Thread-Index: AQHVqpiuNcYsgGgOskGx3fwlqVtM9Q==
Date: Wed, 4 Dec 2019 11:48:01 +0000
Message-ID: <20191204114732.28514-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LNXP265CA0055.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::19) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4df7d5ae-228a-4a05-031b-08d778b09f59
X-MS-TrafficTypeDiagnostic: VI1PR08MB2909:|VI1PR08MB2909:|DB7PR08MB4217:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB4217A2A9B771DC9F8BFA23A68F5D0@DB7PR08MB4217.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:227;OLM:227;
x-forefront-prvs: 0241D5F98C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(189003)(199004)(53754006)(71200400001)(71190400001)(2906002)(305945005)(6306002)(8936002)(8676002)(5640700003)(81156014)(3846002)(7736002)(6436002)(6506007)(44832011)(52116002)(6486002)(2351001)(7416002)(7406005)(6512007)(6116002)(2501003)(4326008)(81166006)(50226002)(316002)(102836004)(86362001)(66946007)(54906003)(66446008)(66556008)(66476007)(6916009)(64756008)(14444005)(1076003)(478600001)(36756003)(2616005)(5660300002)(25786009)(14454004)(26005)(99286004)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2909;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: zzb1BWvgKuhzkH6/NMG+E2TOkfVtj9LkyS32beGyklJ41W4Pkd3SkxpqMPZtRQUQakecODkBLrpQ4mp/O2YiQdoTdC4soVuZlJY+Bes2WwXHoO5VbDBU+kl6a457h5qDtccPxQmvF5gueJkMnV8QUfFLfi/qNZwnHcQlaZqqN5Nnd9zXPj83f1JV8Z+raa+vyzVRn99LlDY1kyR+rwISI7Dwumcgcbc0JJnQbN9ZAUtgf0+1++zrFAjGfZbPA3fjReDoJFB4KWiDJGfQExdYn8wLtRO3rUUY/AsQB0Nu+ZuK5phuqbHw0NvsrLJEiupXGZutc6JlKUca97+0YeEZGHBNvmesTxOq7zDAPimTpN1BCm3Kd2uGeM0W7c9CmcQbUDfFcIpX6H/4vkt2H0V0/cLHmjvUhw8Pp4kiVFYroinDcb1loYv8Mw3urgJBH2Rla547JJseQAHELNNUGgZF+49sbHWzi2flu33M3F8mvBuNT5O/82deIxc6SlOpoEF91pYesTskQzYd/kRjXNAEWQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2909
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(189003)(199004)(53754006)(450100002)(2501003)(8676002)(81156014)(81166006)(8936002)(36756003)(76130400001)(8746002)(50226002)(2906002)(316002)(26005)(336012)(186003)(6862004)(6306002)(5640700003)(6506007)(4326008)(102836004)(50466002)(6512007)(22756006)(107886003)(2351001)(6486002)(54906003)(23756003)(1076003)(356004)(99286004)(14444005)(26826003)(86362001)(2616005)(478600001)(7736002)(14454004)(70586007)(6116002)(70206006)(3846002)(305945005)(25786009)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB4217;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 12cee252-cdee-411e-92fa-08d778afd0ca
NoDisclaimer: True
X-Forefront-PRVS: 0241D5F98C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yL1cZZGvstsEYJXvDnK2puHnI7b9eMa8DPP9ghcIQLRwGJ6r9YB5NNBMz7gkqfQouT/kWQbOh+MeN/Pe5VclW9SPPP7mra8d/b+yaI2TuZBgWgJQSy9ICIYd//dH+h8FFYbtG4HWkB173HzSdXbFN8V75PztkSvEP6ak7kh6Jqb2jNIAzAi5gjjbHk/WrFAPpAUD/lUpmfFWWp4eDj4nQjqdaDgoE7Ktj5LKswEsN2m1Rqs62ceAtleuMa+l7FqlNukLstFwkdltav/j8HTwOudUYVWAxkXlrlIt5a6ixEZgYRTP4fuDuqPHJc4smex0lBrwaTIH88A9Wx4smKZs73hK0kG5SBlMmIqpwn4OzkawTMJDMLa3SkZCxfIzAmcPg3PVgCrx11+e/M/w5u4Tl5ZEOmDlegYapYU26b5cne758h5jQWkUV+FdKNdVK+/ban0w6cBjA5ZKClPyAefcIdni1aIZ/9UP8qDlbPK1ObmJaS2OuUWmI0ZPjDkyayBNRnQToz3QuRk7YbXqjj3Xeg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 11:53:47.7781 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4df7d5ae-228a-4a05-031b-08d778b09f59
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB4217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_035353_229117_0B0DDF58 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mihail Atanassov <Mihail.Atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Martin Donnelly <martin.donnelly@ge.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Icenowy Zheng <icenowy@aosc.io>,
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brian Masney <masneyb@onstation.org>, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?iso-8859-1?Q?Yannick_Fertr=E9?= <yannick.fertre@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Torsten Duwe <duwe@lst.de>, Daniel Vetter <daniel@ffwll.ch>,
 Dariusz Marcinkiewicz <darekm@google.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

I've dropped the fun parts of this series since they need more work, but
figured drm_bridge_init() as a concept is still valuable on its own (and
I think I'll need it to roll out device links for registered bridges),
so here goes.

v2:
 - expanded commit messages and added some extra bridge-related
   documentation (Daniel)
 - dropped v1 patches 29 and 30: 29 needs more work, and 30 depends on
   it
 - added all remaining drm_bridge implementers, found by searching for
   drm_bridge_funcs which is mandatory for any bridge; new uses in
   patches 3, 27, and 28 (Sam)
 - due to the above, I've decided to squash all analogix changes into
   one patch

---
v1 [https://patchwork.freedesktop.org/series/70039/] cover text below:

This series adds device links support to drm_bridge. The motivation
behind it is that a drm_bridge in a module could get removed under the
feet of the bridge user without warning, so we need a way to remove and
reprobe the client as needed to avoid peering into the void.

1: Add a drm_bridge_init() function which wraps all initialisation of
the structure prior to calling drm_bridge_add().

2-26,28: Apply the drm_bridge_init() refactor to every bridge that uses
drm_bridge_add().

27: Minor cleanup in rcar-du.

29: Add of_drm_find_bridge_devlink() which functions the same as
of_drm_find_bridge() plus adds a device device link from the owning
drm_device to the bridge device.

30: As a motivating example, convert komeda to exclusively use
drm_bridge for its pipe outputs; this isn't a regression in usability
any more since device links bring the same automatic remove/reprobe
feature as components.

Mihail Atanassov (28):
  drm: Introduce drm_bridge_init()
  drm/bridge: adv7511: Use drm_bridge_init()
  drm/bridge/analogix: Use drm_bridge_init()
  drm/bridge: cdns: Use drm_bridge_init()
  drm/bridge: dumb-vga-dac: Use drm_bridge_init()
  drm/bridge: lvds-encoder: Use drm_bridge_init()
  drm/bridge: megachips-stdpxxxx-ge-b850v3-fw: Use drm_bridge_init()
  drm/bridge: nxp-ptn3460: Use drm_bridge_init()
  drm/bridge: panel: Use drm_bridge_init()
  drm/bridge: ps8622: Use drm_bridge_init()
  drm/bridge: sii902x: Use drm_bridge_init()
  gpu: drm: bridge: sii9234: Use drm_bridge_init()
  drm/bridge: sil_sii8620: Use drm_bridge_init()
  drm/bridge: dw-hdmi: Use drm_bridge_init()
  drm/bridge/synopsys: dsi: Use drm_bridge_init()
  drm/bridge: tc358764: Use drm_bridge_init()
  drm/bridge: tc358767: Use drm_bridge_init()
  drm/bridge: thc63: Use drm_bridge_init()
  drm/bridge: ti-sn65dsi86: Use drm_bridge_init()
  drm/bridge: ti-tfp410: Use drm_bridge_init()
  drm/exynos: mic: Use drm_bridge_init()
  drm/i2c: tda998x: Use drm_bridge_init()
  drm/mcde: dsi: Use drm_bridge_init()
  drm/mediatek: hdmi: Use drm_bridge_init()
  drm: rcar-du: lvds: Use drm_bridge_init()
  drm: rcar-du: lvds: Don't set drm_bridge private pointer
  drm/sti: Use drm_bridge_init()
  drm/msm: Use drm_bridge_init()

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c  |  5 ++-
 .../drm/bridge/analogix/analogix-anx6345.c    |  5 ++-
 .../drm/bridge/analogix/analogix-anx78xx.c    |  8 ++---
 .../drm/bridge/analogix/analogix_dp_core.c    |  5 ++-
 drivers/gpu/drm/bridge/cdns-dsi.c             |  4 +--
 drivers/gpu/drm/bridge/dumb-vga-dac.c         |  6 ++--
 drivers/gpu/drm/bridge/lvds-encoder.c         |  7 ++--
 .../bridge/megachips-stdpxxxx-ge-b850v3-fw.c  |  4 +--
 drivers/gpu/drm/bridge/nxp-ptn3460.c          |  4 +--
 drivers/gpu/drm/bridge/panel.c                |  7 ++--
 drivers/gpu/drm/bridge/parade-ps8622.c        |  3 +-
 drivers/gpu/drm/bridge/sii902x.c              |  5 ++-
 drivers/gpu/drm/bridge/sii9234.c              |  3 +-
 drivers/gpu/drm/bridge/sil-sii8620.c          |  3 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  7 ++--
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  7 ++--
 drivers/gpu/drm/bridge/tc358764.c             |  4 +--
 drivers/gpu/drm/bridge/tc358767.c             |  3 +-
 drivers/gpu/drm/bridge/thc63lvd1024.c         |  7 ++--
 drivers/gpu/drm/bridge/ti-sn65dsi86.c         |  5 ++-
 drivers/gpu/drm/bridge/ti-tfp410.c            |  5 ++-
 drivers/gpu/drm/drm_bridge.c                  | 34 ++++++++++++++++++-
 drivers/gpu/drm/exynos/exynos_drm_mic.c       |  8 +----
 drivers/gpu/drm/i2c/tda998x_drv.c             |  6 +---
 drivers/gpu/drm/mcde/mcde_dsi.c               |  3 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +--
 drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 +--
 drivers/gpu/drm/msm/edp/edp_bridge.c          |  3 +-
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        |  4 +--
 drivers/gpu/drm/rcar-du/rcar_lvds.c           |  5 ++-
 drivers/gpu/drm/sti/sti_dvo.c                 |  4 +--
 drivers/gpu/drm/sti/sti_hda.c                 |  3 +-
 drivers/gpu/drm/sti/sti_hdmi.c                |  3 +-
 include/drm/drm_bridge.h                      | 15 +++++++-
 34 files changed, 100 insertions(+), 103 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
