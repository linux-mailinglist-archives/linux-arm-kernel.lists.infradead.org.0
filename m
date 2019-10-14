Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F21FD5E5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjcLP5ZeLWq/jmFxL47pLYzyptpXiaM6LGTtVmj69Vc=; b=LW6Nij0aYJYgW3
	gbJNJRuM18frKSxtGnb73Qi2/wD3DpC+qKvbfRtAcfNP9GdYuQdj3zwSEKw98ab8dC4fk5EJylMBE
	qYTTpE7eC4xrA/O1GVF/mtQ7/8wzxLrlAbLq5thP1bxRrOdjoPZWHn4+hrWf1ahHbrMYbWLovtsYO
	DVpdGB6m4wgKTWVZ2WKM/VjIlM7kJXE3pqTAEdLQUlQt1qm+c+i3sBe4IUGZXebrhlL86xGhJHbR+
	K5ytaK1H1er7lgMPNUqAT6EJrgxsRc6R7xl8+psNWjPO99vcAry83nbY2DTpW3syDz+i8mE99SSbW
	nNvGozauM7qNWszQ055A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwOO-00060E-Jd; Mon, 14 Oct 2019 09:11:52 +0000
Received: from mail-eopbgr00072.outbound.protection.outlook.com ([40.107.0.72]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwOA-0005y4-1L; Mon, 14 Oct 2019 09:11:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/jpIgQFllFyMHQq2H2LhZ1I0vqNckVJ2Zh1zMexvaA=;
 b=5QDJLermoxSu10zDZIeb84LfzOdZ28JbrqHqsAKucEE96j4kxoowa1jLyFaLgO5vOd2AS2GdvhE1PmrZANUjWgCy0poPpUOS6mwG8qLsQqb+y8NynkkytU1du0myIVQxEZUJGF+0LsBFvFVx9efnD4fHs0jxO+ItKZfro0ynwg4=
Received: from VI1PR0801CA0080.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::24) by AM5PR0801MB1729.eurprd08.prod.outlook.com
 (2603:10a6:203:3b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Mon, 14 Oct
 2019 09:11:31 +0000
Received: from AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by VI1PR0801CA0080.outlook.office365.com
 (2603:10a6:800:7d::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Mon, 14 Oct 2019 09:11:31 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT050.mail.protection.outlook.com (10.152.17.47) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 14 Oct 2019 09:11:29 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Mon, 14 Oct 2019 09:11:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 994d7611a012e7e5
X-CR-MTA-TID: 64aa7808
Received: from e5e1c407e1df.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.0.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6CBB3DE1-F7B3-414A-9C6C-FD4DD896163A.1; 
 Mon, 14 Oct 2019 09:11:19 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2052.outbound.protection.outlook.com [104.47.0.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e5e1c407e1df.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Oct 2019 09:11:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KPIxwD6NXAUu8XAxoNv7wk/JMPrtkt0KYa09HaPLcy6L7ag4xt9JSBYdvY/riCvwRQnEXM1WH6pxjUj4aS+k5gOJlS21qbEkPtpSeXGovI7bHhcRir5eqiYiA7YIyueU8ElYqV4S2TqjpYSCWhbaMDU1WD1PoRJSRDKcxRjAa0N6ugokQGynqdek006IWjDSgm0O48H2AnBbkUSk3O+4uBLzisgbWjj8wbc7R6y0b90ZY46Y23/mbbKuWFPZ+enKfqlO44rmLL2tmmGLMeZyg/aPEmYx8WQBg8zvasdQWIyPyq7hVKCrFjH1iDbV/JSWCSkcYAh7hT7HcxmfM7zfSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/jpIgQFllFyMHQq2H2LhZ1I0vqNckVJ2Zh1zMexvaA=;
 b=KZ65bsmsEoiZdS97Ju6jJvGVQcSJH9aU8uQ0CJarH0QLZN2HYXmIXrXnO3jXytoOtqrfFDiyN+7RniIl75r+cmo1qJj0JeXZzd8gIjaklibZ1ka1FJQIEcs4g3qjcjQfZ6z/qdxVMadrSskQw5RotLeX1miGtBBbE4VjRMP3+k24V2HL/fze9VPRsO4V2nZ+wGIFnUGmZvN9OroacrmsWPYfUS/2GDlXn6i5LBlGFaJ45Md4ac/2g8/lJaQLeewvViBVEvAoYq2sEyYNEIJc0N7aqaNHxxkKU8AFW+okbRsd8jpWtSFvW8P6fJIG4RMwpM9qv1Ds3BqtFOM75Z4B9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/jpIgQFllFyMHQq2H2LhZ1I0vqNckVJ2Zh1zMexvaA=;
 b=5QDJLermoxSu10zDZIeb84LfzOdZ28JbrqHqsAKucEE96j4kxoowa1jLyFaLgO5vOd2AS2GdvhE1PmrZANUjWgCy0poPpUOS6mwG8qLsQqb+y8NynkkytU1du0myIVQxEZUJGF+0LsBFvFVx9efnD4fHs0jxO+ItKZfro0ynwg4=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB4899.eurprd08.prod.outlook.com (10.255.99.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 14 Oct 2019 09:11:17 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a%5]) with mapi id 15.20.2347.023; Mon, 14 Oct 2019
 09:11:17 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVgA+hW0YpyPd1Sk22upjR9Lo04KdVKIOAgAAcS4CAAGyzAIAELQwA
Date: Mon, 14 Oct 2019 09:11:17 +0000
Message-ID: <20191014091118.jfa7xxh2e7kxu4ff@DESKTOP-E1NTVVP.localdomain>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uHEWQiXYE7RE7TffHEHMys=LTYcNeK+iAX3qiS-c2PNjQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHEWQiXYE7RE7TffHEHMys=LTYcNeK+iAX3qiS-c2PNjQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0157.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::25) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 27628932-1e93-4d29-8380-08d750867fea
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB4899:|AM6PR08MB4899:|AM5PR0801MB1729:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB17296F68F6137F8DC5A6D07AF0900@AM5PR0801MB1729.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01901B3451
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(199004)(189003)(305945005)(7736002)(6436002)(11346002)(71200400001)(26005)(6916009)(186003)(9686003)(71190400001)(53546011)(6506007)(386003)(6246003)(102836004)(6512007)(6306002)(966005)(8936002)(2906002)(14454004)(446003)(86362001)(66066001)(66446008)(64756008)(66556008)(66476007)(478600001)(66946007)(4326008)(52116002)(76176011)(486006)(6486002)(256004)(6116002)(99286004)(14444005)(476003)(229853002)(44832011)(3846002)(1076003)(81156014)(81166006)(8676002)(25786009)(54906003)(316002)(58126008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4899;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KdODC7451N+wzxHOEjS4r56Sfb4RbICwFa1ouCg1gUq8ugP3WR67rvHbHF5x+/nlzD53IHZukRelMTvOjpacpQjRaCsMOlmi/1ltE9bQQp33sF9aO6NlMigDtx+hGj84em8tXC8WAnmj/1P1cO0QJUu+8lgfvF6dctdvUkb6dy4NWd78IC3TtgBxs7V0CfB3XHenHqusV9vbm2+HrxY4oB51mp3AI8qwVP1NOA7lZf5UdWaSac1gb/G68RPX0uoI8hytisT1w0JjmJTNf7T2BCNB45rBBfYx9AZ/doNeK0HC0DTHdVbSid5zMT9AI6tEbspBb+5bm/AHfpoUI2TXfLfZeV9nJOlXJgcfZIpPcMybVmJHPLMV6f9vgPcLD8cCwmNJBsY+moxfsvnf0ULw1opeQGhvh8+2xikcTVZi44/KeGQ/kKzngL/+wHfaB1AJ1NJzUF15+bRdK6ENETeODw==
Content-ID: <DCDAC56867E76D4CB7A7F109AC081236@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4899
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(189003)(199004)(316002)(305945005)(86362001)(36906005)(58126008)(7736002)(54906003)(6116002)(3846002)(23726003)(2906002)(229853002)(102836004)(14444005)(63350400001)(126002)(26005)(476003)(5660300002)(386003)(53546011)(11346002)(486006)(186003)(446003)(6506007)(336012)(1076003)(966005)(6486002)(14454004)(26826003)(99286004)(8676002)(9686003)(6512007)(6306002)(76176011)(6862004)(8746002)(8936002)(81156014)(81166006)(450100002)(4326008)(6246003)(356004)(97756001)(25786009)(76130400001)(70206006)(70586007)(478600001)(47776003)(50466002)(22756006)(46406003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1729;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e9d317f3-76f0-4147-5b4e-08d750867875
NoDisclaimer: True
X-Forefront-PRVS: 01901B3451
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R++B/vCeWdlKNAJo21aZmwvTCANKVplLxBxkuf53igAoHzOr3C3uUxZRP2oK2q53bh7SgP6+S/HpiojKjnVuNlH33ZNoBr1B/HFWKMTmwIIj3dCI7REW9Eat4Srx3dJm6ODs697x4uoT+P1TXMSGhclPai0Cb/U76A5FGgzgmxwk4648cwedfS67IdIVWA2/aLbbXvcTsNfoacgQ4x/GulZiSfzzpI8jMkwphK+s+qhQyTGLkDLoF3QAH0qdtyTMtbrZOW0i9yHwYk9qG8wNod16TwOeoJSFFNnOlb9snNsPtrA0wSxu4vYirJfPhC3A73VbnAL/OOQfvU2J00IaAjrk+U2zpXH3UX1kkHWlaURfr5M35KDwhmzogaiXOIuhBtVPL3XU03NnwRY0xC5VMDxTDZtkGz3N67rh+HrHXW6kWqNr6I5zAYxzmWVONlliFYgx/W2PEnESt/NFJid3qw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2019 09:11:29.7319 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 27628932-1e93-4d29-8380-08d750867fea
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_021138_082626_2063AEAC 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nd <nd@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Ayan Halder <Ayan.Halder@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 07:25:02PM +0200, Daniel Vetter wrote:
> On Fri, Oct 11, 2019 at 12:56 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
> >
> > Hi,
> >
> > On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
> > > Hi Brian,
> > >
> > > On 11/10/2019 10:41, Brian Starkey wrote:
> 
> > > > Are you sure the GPU supports other orders? I think any Arm driver
> > > > will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
> > > > I'm not convinced the GPU HW actually supports any other order, but
> > > > it's all rather confusing with texture swizzling. What I can tell you
> > > > for sure is that it _does_ support BGR order (in DRM naming
> > > > convention).
> > >
> > > Well, since the Bifrost Mali blobs are closed-source and delivered
> > > by licensees, it's hard to define what is supported from a closed
> > > GPU HW, closed SW implementation to a closed pixel format implementation.
> > >
> >
> > I hear you. IMO the only way to make any of this clear is to publish
> > reference data and tests which make sure implementations match each
> > other. It's something I'm trying to make happen.
> 
> *cough* igt test with crc/writeback validation *cough*
> 
> And you don't even need anything that actually compresses. All you
> need is the minimal enough AFBC knowledge to set up the metadata that
> everything is uncompressed. We're doing that for our intel compression
> formats already, and it works great in making sure that we have
> end-to-end agreement on all the bits and ordering and everything.

Yeah this was my original thinking too. Sadly, a decent number of the
AFBC parameters can't be tested with uncompressed data, as the codec
kicks into a different mode there.

> Ofc
> it doesn't validate the decoder, but that's not really igts job.
> Should be possible to convince ARM to release that (as open source, in
> igt), since it would be fairly valuable for the entire ecosystem here
> ...

I fully agree about the value proposition.

-Brian

> -Daniel
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
