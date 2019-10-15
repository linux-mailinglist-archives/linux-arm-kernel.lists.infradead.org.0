Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B68D74C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3B+1GSlVLAr9V0R+s0UWPWB8oGQLYMJn9N1emNvd6w=; b=Hn+G3wkM0TgJUq
	ALsyRHDLLnsanOUG85zRSI1nuuhbw0YDN/1Q12oCLmkAQokzuo0uQzW5EbbsEfINAsYc2jrpUXpJJ
	biDQg66tAYj7NpQRoxdEkdgoZnNfjIqfu+5algo8MUWcvKbOxS3xeheNDMW9aL6b8dw5FFPE3PcLL
	k0EsO43BL6vThDBmE9Uker5WLHu3Akt/Iiyc59TT4Jls+GULnSA3YySJB8Xl6qlqdWCrN1EpdwRpl
	QBEr400xfyeEFQVdojGMksQcu7qaZB3xCIJpYExdq9ktFUypOUj3BW4eseo7zcpykCa/xgbv7W/sx
	3iBaoh3OdOxfk2bPGvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKrA-0005s2-4E; Tue, 15 Oct 2019 11:19:12 +0000
Received: from mail-eopbgr50040.outbound.protection.outlook.com ([40.107.5.40]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKqU-0005Jp-RU; Tue, 15 Oct 2019 11:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0vPqjce6ZcJDsAEQRbhJWoMd3QVNqcmEfaYD2v7/Nc=;
 b=RgPaPB/o5p8LNuJnBgczAn+83CkU6ZucNTHvx450z8Pntb+LhcZT62ViLArUjZPZj7d6dZU2CzSpRpEvbLjjtqbf6YLQiEQAicn4CwtHU+mtYFwnX0Oeo5qeWXojKo3ONNeIkadqA2t6JZcvTxHlqgghB4ZRP2onlHOZOOBfq7M=
Received: from HE1PR08CA0050.eurprd08.prod.outlook.com (2603:10a6:7:2a::21) by
 AM6PR08MB4949.eurprd08.prod.outlook.com (2603:10a6:20b:ee::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 15 Oct 2019 11:18:24 +0000
Received: from AM5EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::200) by HE1PR08CA0050.outlook.office365.com
 (2603:10a6:7:2a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Tue, 15 Oct 2019 11:18:24 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT037.mail.protection.outlook.com (10.152.17.241) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 15 Oct 2019 11:18:22 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Tue, 15 Oct 2019 11:18:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 48a4bf864b8954b0
X-CR-MTA-TID: 64aa7808
Received: from 65593cc4097a.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3995909D-7D98-49E9-8BB7-851603195AAD.1; 
 Tue, 15 Oct 2019 11:18:15 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2052.outbound.protection.outlook.com [104.47.14.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 65593cc4097a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 15 Oct 2019 11:18:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbviVeAp6O6ryxh/MMRkbs1tgtCXWRh4rgds5bwoOGfHpi1M2bh60POChjV+uGqNztwze1a6fwV59QXQdIlUB9kp+dZKdB1vv8SLYIVoNIFAcYEW7hMIBkHHND8vAQIJ5dYmfvbX53nFMXajy+mnOU2vAbbXI6/e1J2oOljM8K6+TAwNi2reQTtxVh/KmIzpsE6on3HdR8HCOPiGCjadL3tPjMzdF4/MJHzCWRlJq/KkpLc0jopyBqCpJE67yt39HB9jD0597YsgyrhPGmZgiCXOq5mtRa/pPFXrBdA3rDohC5Enmbgnmjq7pBfx5W7apODJEmWFn/arCbXaE8qHFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0vPqjce6ZcJDsAEQRbhJWoMd3QVNqcmEfaYD2v7/Nc=;
 b=ktCobPVa8DvIR65iofN6hK4esRVjGXoqCtDcU8Uh0IT49xHG08ywoSZkSjSnec+OUt4TjcdYozKkLIWL1UaQIC/w9mi1rU8Q6i4+J8rr2SlQ9ENdmBNG4zXtqYJFAtxO/c/pnjQVgVX5EG/0HncCMiOpvU/ryDLaq4QcxzPGTCgrWAQKwQZyk4bnB/Z7cFEY2nHR6LhHmEatpYNvkybA1ixvviVPKRmnK0c9rPfZDXcX4i7XFxPeA5hbesSAdRAficalXStPfUxHDF3bSMh0Gkd1Y6HWWp8qPlyRYtfKlpfl1HPBsIGoF3jR+P/RGndnCG4KilXUVwyiSomXJocCQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0vPqjce6ZcJDsAEQRbhJWoMd3QVNqcmEfaYD2v7/Nc=;
 b=RgPaPB/o5p8LNuJnBgczAn+83CkU6ZucNTHvx450z8Pntb+LhcZT62ViLArUjZPZj7d6dZU2CzSpRpEvbLjjtqbf6YLQiEQAicn4CwtHU+mtYFwnX0Oeo5qeWXojKo3ONNeIkadqA2t6JZcvTxHlqgghB4ZRP2onlHOZOOBfq7M=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB5126.eurprd08.prod.outlook.com (10.255.123.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 11:18:14 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 11:18:14 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVgA+hW0YpyPd1Sk22upjR9Lo04KdVKIOAgAAcS4CAABPZgIAGO68A
Date: Tue, 15 Oct 2019 11:18:13 +0000
Message-ID: <20191015111812.vl2yabdoncz77xh6@DESKTOP-E1NTVVP.localdomain>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
 <d1010021-cbd8-4328-4b21-7481cba5485e@baylibre.com>
In-Reply-To: <d1010021-cbd8-4328-4b21-7481cba5485e@baylibre.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.54]
x-clientproxiedby: AM0PR05CA0096.eurprd05.prod.outlook.com
 (2603:10a6:208:136::36) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: da1fae6f-af5e-4af4-4195-08d7516163ea
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB5126:|AM6PR08MB5126:|AM6PR08MB4949:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB494936CE086A0133F89A9860F0930@AM6PR08MB4949.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01917B1794
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(189003)(199004)(52116002)(86362001)(76176011)(476003)(316002)(5660300002)(6436002)(66066001)(6486002)(6512007)(9686003)(3846002)(11346002)(6116002)(446003)(99286004)(186003)(102836004)(54906003)(6916009)(14454004)(256004)(58126008)(26005)(71200400001)(71190400001)(386003)(6506007)(486006)(53546011)(44832011)(1076003)(7736002)(305945005)(478600001)(25786009)(8676002)(81166006)(8936002)(64756008)(66946007)(66556008)(66476007)(81156014)(66446008)(4326008)(6246003)(2906002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB5126;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: TDcTlSQVF24D1ye7xoF113V9jZBLaTsM/xELOPW+oMLNvcVH1USXyB88rqLZizanv/YriAMORoLUqOlkasvSGYU0Xs9dmiVgulLeZkFfBY/gFPuE9Pv9DwLItb84g3u2CiVhcLlUOpglEkG6pg54ad6xxHfc/km6yYFlU9bhVGxcfvf7lX4vr5IX9WWJ/Nd8hf63kQ2eNdf+pFHz5qvdi9500lPStnjsV7xCzAgalf6F1vaeUmaNv+VAdMMwgdUKlund/pUhJ9/xIL2DI6OB7iklfsGN+bIn5YqFM9oH4eniGzqIaLu0z1/5tYcf45bueYMrNCOIexLYXc0PfFsSX5C1Kmf0Qh9xfN+Q4O8O/ysnfEDk3O5e4mZhs3KgS3q3txwoVo9bDf0HRqBTho0r96JY3lo0nmlq5+EkqhmvEYc=
Content-ID: <F672DD3E59A7584AA0C7DBBD971FB605@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5126
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(11346002)(26005)(186003)(4326008)(46406003)(97756001)(336012)(23726003)(8746002)(450100002)(6506007)(386003)(26826003)(102836004)(478600001)(53546011)(6862004)(54906003)(446003)(356004)(1076003)(50466002)(6486002)(63350400001)(14454004)(76176011)(476003)(6512007)(9686003)(486006)(25786009)(22756006)(58126008)(126002)(99286004)(66066001)(6246003)(316002)(47776003)(5660300002)(81156014)(305945005)(6116002)(3846002)(86362001)(8936002)(7736002)(76130400001)(36906005)(81166006)(2906002)(229853002)(8676002)(70206006)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4949;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d6674c05-e824-4e82-0301-08d751615e3c
NoDisclaimer: True
X-Forefront-PRVS: 01917B1794
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3XePAugDRyKak4guuXSDHvTL1IyYvCmFBmJ5E3ou339xttMvUQYmbuySHVcliZtx+mXsplR0fwMd3XdLswYg0PVvqSd6HCkA0/53/ZEf4BTGCuXNRiVlYYxJ1ppPSKQ46K7DhldhU+o1eo/o3BLwIqvsGEBZCrcEafZgX8hBVHdodqOMj5P1kzfwROcapeA3JV3CshVMKr8fbm2vc/qaEQY/Z3gQ3kY8w5Bwg+Sp5fC/Te2y9LEKoizXup/Df1rcgaJPrG7nm5aCJE+KKvW3TS38qMuZ+FXWZOaP+EGKeNlgJouA56f9QjDql7iCzEPacPdAcdc99bf1xaurXkZioyG+QCAYW+qKf8Nqb/vHVSjba3ObZiyhmwJfjZrnhhchhX6jz8GOKLGOIKn3C8P1jWIFJ1CAKnHGW+hJ/MclQDM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2019 11:18:22.5438 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da1fae6f-af5e-4af4-4195-08d7516163ea
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4949
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041830_995175_7A32E173 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Fri, Oct 11, 2019 at 02:07:01PM +0200, Neil Armstrong wrote:
> On 11/10/2019 12:56, Brian Starkey wrote:
> > Hi,
> > 
> > On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
> >> Hi Brian,
> >>
> >> On 11/10/2019 10:41, Brian Starkey wrote:
> >>> Hi Neil,
> >>>
> >>> On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:

[snip]

> >> You'll have to tell us if the closed libMali handling AFBC would accept
> >> ARGB8888 as format to render with AFBC enabled, if not you're right
> >> I'll discard XRGB8888/ARGB8888 for AFBC buffers completely.
> >>
> >> But it the libMali chooses tt generate an ARGB8888 buffer whatever
> >> ARGB8888/XRGB8888/ABGR888/XBGR888 is asked, then no I'll keep it that way.
> >>
> > 
> > Yeah, I'll try and get clarity on this. It's not at all clear to me
> > either. When you say "accept ARGB8888 as format to render with AFBC
> > enabled", which API are you referring to, just so I can be clear? Do
> > you have an example of some code you're using to render AFBC with the
> > GPU blob?
> 
> Let's take kmscube using EGL and GBM.
> 
> The buffer is allocated using gbm_surface_create_with_modifiers(),
> but the gbm implementation is vendor specified.
> 
> Then the surface is passed to eglCreateWindowSurface().
> Then the format is matched using eglGetConfigAttrib() with the
> returned configs.
> 
> Here support on the gbm and EGL implementation.
> 

Is this a use-case that works on your platform today?

I went and asked around. An Arm gbm implementation supporting AFBC
will reject AFBC allocations for orders other than (DRM-convention)
BGR.

Thanks,
-Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
