Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ACBBDB40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbOnSZORoz+fI7w4wsAQziYwe41j9TzUx0PkoyVNISA=; b=Z762dSuYeDKcwy
	z4S+p5vwMjoK4jwugELp8OVRcUCbxK7ZbxWsiBe/0RHesXPBopih0Jq2tRNIX99FedzjvDfFS9KYD
	YnqLNqoKQVoOovqtDlc+gzQchoaX1qvY6IDvGSNdhIzvOKB5I3DwUhNqni+A9e9eBgW9JV1FZcAdt
	FRS+R1c2ygr/hbWr2vVvomYvqyYK0i1bpKdVnwrHVDFrWSseOdnjlZXlxypNeS3b1E43/9uws2psg
	CFe2JeJDqmPLthzyNxzCZvQqunc5wYkYqxWu83XCM4j2mZfko5XKBy8h7q/lwTeRl6pMQNJYMUQxl
	Hd6zqQPAkfkjIujXPUkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3m9-0002jc-Ik; Wed, 25 Sep 2019 09:39:57 +0000
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3lt-0002hs-16; Wed, 25 Sep 2019 09:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvnyUyu2tF+V8kxMUJo/Vwb2o+6uHXlmmZdu9mXCl7E=;
 b=vu5CVq9/tC8zeeJWEXd+5LnAFUTuElCVH35nU3HVzssynFVfFk2b2yfc8CdtBTlN8frG278xFpUCxIHEQ/locHJdxyI8fTXnQpI2O0tHxHzQ0gWUZdjEj04Cyba6/F4Mzf6b8+hef/7alY4eeTxjmodva/ZO0b/XwWQMyrmABfA=
Received: from AM6PR08CA0037.eurprd08.prod.outlook.com (2603:10a6:20b:c0::25)
 by VI1PR0802MB2302.eurprd08.prod.outlook.com (2603:10a6:800:9e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.25; Wed, 25 Sep
 2019 09:39:33 +0000
Received: from DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by AM6PR08CA0037.outlook.office365.com
 (2603:10a6:20b:c0::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Wed, 25 Sep 2019 09:39:33 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT062.mail.protection.outlook.com (10.152.20.197) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 25 Sep 2019 09:39:31 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Wed, 25 Sep 2019 09:39:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 66955104a479108b
X-CR-MTA-TID: 64aa7808
Received: from fc67bd6315b3.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8317847A-A312-4788-A238-79B789B7DF3D.1; 
 Wed, 25 Sep 2019 09:39:19 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2056.outbound.protection.outlook.com [104.47.5.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fc67bd6315b3.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 25 Sep 2019 09:39:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ho293EmVkCqJ8fMg6tXyOWtrivnNlI4MgSAAf9wAxnPaxE5qT8xkjCHNXFuif6ZMQb0nRvoCRTT8H4zFYP8R1IwKhCBPNgK9rjshbJTNUFAGep2L448RIPW4gP2NVnH0NllfJQ4TNf2lexuJpeS7ZT/5IEo8mMCcRsy8fnK2J4iqMW1ETriKDAiAsaoB9MqGmo6Y4uY/hLkoAIqVcMGPIKDZlsD25b58ZA5rTaGSS/9PAKgsv1WTjKzJ6LK3XgEyRdNzQ7tM9mxv9MuYLy1Y1nN2hHqw3Zqsw3p8K7rk38ucbfIX68BhUuO08o0DArJXzxp6BKM2TOE+oNQ8mSCbPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvnyUyu2tF+V8kxMUJo/Vwb2o+6uHXlmmZdu9mXCl7E=;
 b=ZryIUfM0PJBoEmGsu5gO4gMFutzaHPhgJJcQLxIMmDaXU528EA4H17jDJKF6ZqDHnZG29GjZ3Z3pRZlgwVd3l15cMtbygQKv/mH/EdQYRZ14VvLGfX/Rr50iyCRKITXU2av2M7l7DBsDqC/uFSm7e8IZksbs9qggtXDbQGcInjEqnJJYYdbG+JbsiGRdYMOATY42ryGwrhMyLA7FZiMT6nGHQCJ6RH0nbYTxXcLlR55UltR1W0TgCqc2ek2MhmT3ScCMbTETZh/bW2YH9MwrBbWnBar3ZcIYAD3yNAe25VJETakDi0R0vyLI8sj1B2DcagxsNyMhixjV2Hrz8rVAQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvnyUyu2tF+V8kxMUJo/Vwb2o+6uHXlmmZdu9mXCl7E=;
 b=vu5CVq9/tC8zeeJWEXd+5LnAFUTuElCVH35nU3HVzssynFVfFk2b2yfc8CdtBTlN8frG278xFpUCxIHEQ/locHJdxyI8fTXnQpI2O0tHxHzQ0gWUZdjEj04Cyba6/F4Mzf6b8+hef/7alY4eeTxjmodva/ZO0b/XwWQMyrmABfA=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB4231.eurprd08.prod.outlook.com (20.179.18.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 09:39:15 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::3d72:3e6c:cb97:8976]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::3d72:3e6c:cb97:8976%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 09:39:15 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
Thread-Topic: [PATCH] drm/rockchip: Add AFBC support
Thread-Index: AQHVc4UWgFQKNg7dnEKeB+EcOCgUIw==
Date: Wed, 25 Sep 2019 09:39:15 +0000
Message-ID: <20190925093913.z4vduybwcokn3awi@DESKTOP-E1NTVVP.localdomain>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
In-Reply-To: <20190923122014.18229-1-andrzej.p@collabora.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.32]
x-clientproxiedby: AM0PR02CA0032.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::45) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9149ddc0-48c4-419c-c76e-08d7419c44c5
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR08MB4231; 
X-MS-TrafficTypeDiagnostic: AM6PR08MB4231:|AM6PR08MB4231:|VI1PR0802MB2302:
X-MS-Exchange-PUrlCount: 2
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB2302336F1707E7FF237C941FF0870@VI1PR0802MB2302.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(51914003)(25786009)(30864003)(14444005)(966005)(256004)(99286004)(6116002)(71190400001)(71200400001)(3846002)(52116002)(5660300002)(76176011)(386003)(6506007)(6916009)(4326008)(186003)(478600001)(26005)(2906002)(6306002)(1076003)(7736002)(44832011)(6436002)(486006)(305945005)(102836004)(6246003)(316002)(58126008)(66066001)(6512007)(9686003)(66946007)(54906003)(66476007)(66556008)(64756008)(66446008)(229853002)(86362001)(14454004)(476003)(7416002)(6486002)(8936002)(446003)(8676002)(11346002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4231;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 5AdAiKqxJHvccyeYYmH9StV5veIOcHun8Fhd02bF2k5peOwXpT6Gr2hqaz3ZinL+6eFSRMZRVXzlja4EZAe4tmg86AGsXZijbpgpM2D1Ub+3F2/v/53iXW9vbuy+R9wgbCYdeCucX9NZdaI4+x76uhAI90zyMzdhOhNRW2j7elj71HbyLFR0+oz2TY3aXgIgf2o8QEZc/pE3KUf9WiFvhZHHvogDIVBAZaT3INokGw8YB2plY389Cq3fGUwKLBZSWb4mfb7+r36T2IikEhZ4ZPPcxEXHeR2eA4K32VAdB3Mw3l9Pq+rdCjMdxnObRN+9/0D/TVecLRa7sKBovFhJ1tYFLvHBIL18Q5OlWzjEu4hmaOW94y/zPQifCvyiq83r2/kqoCSMnejgE+hZl83XO19KEJ0x7R06APaU40TZ8QJwvNUt5Hz6xwkIMgi5gBz2wdvZchcGZJgPbnFDGho/oA==
Content-ID: <6D67DC2D87A16940BC3226D3C8418B7F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4231
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(199004)(51914003)(189003)(58126008)(81166006)(46406003)(6246003)(22756006)(8676002)(6486002)(336012)(86362001)(70586007)(70206006)(50466002)(446003)(9686003)(102836004)(4326008)(76130400001)(6512007)(11346002)(97756001)(476003)(126002)(8936002)(6862004)(8746002)(81156014)(63350400001)(26005)(229853002)(99286004)(486006)(386003)(6506007)(14444005)(76176011)(1076003)(30864003)(66066001)(23726003)(6306002)(54906003)(47776003)(186003)(7736002)(6116002)(356004)(25786009)(5660300002)(316002)(478600001)(450100002)(2906002)(14454004)(966005)(305945005)(26826003)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2302;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2fa49e0b-8458-4269-3773-08d7419c3adb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0802MB2302; 
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam-Message-Info: mrCx6iDT4DBikWqIbH2phDJfpJH+88l8kNlFEBWpNUPJiY6FsacA8yAZcnESXwLPzWbz8KmudNZtdgWtRL6eJfc04PurulgdoddS/wdwfpPs/HDp7MnaeII7xLq1yPhcpXRzv0emSga3x6eE5dB2DDzDJsKs2tmCH0qIXZl6pVXl5QNZes/czbn/JClrvVfxfrcg6pbxDpW9UuUYqJsg0VohmBFW58SWLHkw5TMa+qwqJXNwOJnJqi/BbsL4Q7MyI11iluBuys7/wTzagMMiLC8nfa3fwdNzUE1Nz3QdVikTSAoAjSJQXjxHiu8iyXy/VWaktFEICv/dfq3rAedl2FLfpJ25fatuwHw0h+DbYKAu1ycvYdZNonZ1143H8l9V04yjkjcJ3rd5SAB9qVPi5Dy5bVJJQZY9ulX9c28D6JTwJGbbLmbFD3+ANK/oat1CUoCnLA2otHnQzg07AMsbxA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 09:39:31.9989 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9149ddc0-48c4-419c-c76e-08d7419c44c5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_023941_253693_AB56A899 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.66 listed in wl.mailspike.net]
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
Cc: nd <nd@arm.com>, "kernel@collabora.com" <kernel@collabora.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>, Ayan Halder <Ayan.Halder@arm.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

Thanks for the patch, it's nice to see another AFBC implementation
coming in.

For future versions, could you please Cc ayan.halder@arm.com? It would
have been nice to have someone @arm.com on patches which use/impact
Arm modifiers. Sadly I don't know how to make get_maintainer.pl help
with that.

Some more comments below.

On Mon, Sep 23, 2019 at 02:20:13PM +0200, Andrzej Pietrasiewicz wrote:
> From: Ezequiel Garcia <ezequiel@collabora.com>
> 
> AFBC is a proprietary lossless image compression protocol and format.
> It helps reduce memory bandwidth of the graphics pipeline operations.
> This, in turn, improves power efficiency.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> [locking improvements]
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> [squashing the above, commit message and Rockchip AFBC modifier]
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 27 ++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 94 ++++++++++++++++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 12 +++
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 ++++
>  include/uapi/drm/drm_fourcc.h               |  3 +
>  5 files changed, 151 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index 64ca87cf6d50..5178939a9c29 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -24,6 +24,27 @@ static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
>  	.dirty	       = drm_atomic_helper_dirtyfb,
>  };
>  
> +static int
> +rockchip_verify_afbc_mod(struct drm_device *dev,
> +			 const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	if (mode_cmd->modifier[0] &
> +	    ~DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> +		DRM_DEV_ERROR(dev->dev,
> +			      "Unsupported format modifier 0x%llx\n",
> +			      mode_cmd->modifier[0]);
> +		return -EINVAL;
> +	}
> +
> +	if (mode_cmd->width > 2560) {
> +		DRM_DEV_ERROR(dev->dev,
> +			      "Unsupported width %d\n", mode_cmd->width);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static struct drm_framebuffer *
>  rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cmd,
>  		  struct drm_gem_object **obj, unsigned int num_planes)
> @@ -32,6 +53,12 @@ rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cm
>  	int ret;
>  	int i;
>  
> +	if (mode_cmd->modifier[0]) {
> +		ret = rockchip_verify_afbc_mod(dev, mode_cmd);
> +		if (ret)
> +			return ERR_PTR(ret);
> +	}
> +
>  	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
>  	if (!fb)
>  		return ERR_PTR(-ENOMEM);
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 21b68eea46cc..50bf214d21da 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -46,6 +46,13 @@
>  		vop_reg_set(vop, &win->phy->scl->ext->name, \
>  			    win->base, ~0, v, #name)
>  
> +#define VOP_AFBC_SET(x, name, v) \
> +	do { \
> +		if (vop->data->afbc) \
> +			vop_reg_set(vop, &vop->data->afbc->name, \
> +				0, ~0, v, #name); \
> +	} while (0)
> +
>  #define VOP_WIN_YUV2YUV_SET(vop, win_yuv2yuv, name, v) \
>  	do { \
>  		if (win_yuv2yuv && win_yuv2yuv->name.mask) \
> @@ -123,6 +130,8 @@ struct vop {
>  	struct drm_device *drm_dev;
>  	bool is_enabled;
>  
> +	struct vop_win *afbc_win;
> +
>  	struct completion dsp_hold_completion;
>  
>  	/* protected by dev->event_lock */
> @@ -245,6 +254,30 @@ static bool has_rb_swapped(uint32_t format)
>  	}
>  }
>  
> +#define AFBC_FMT_RGB565        0x0
> +#define AFBC_FMT_U8U8U8U8      0x5
> +#define AFBC_FMT_U8U8U8        0x4
> +
> +static int vop_convert_afbc_format(uint32_t format)
> +{

It would be great if you are able to follow the guidance Arm published
here: https://www.kernel.org/doc/html/latest/gpu/afbc.html, which will
help ensure interoperability and compatibility between different
devices/drivers. Hopefully it doesn't limit some use-cases for you -
if it does, let's discuss them.

Specifically, please take a look at the format list there. Some of
your formats below are not on the preferred interop list:

> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:

XRGB8888: Not preferred, as encoding the X channel is a waste of bits

> +	case DRM_FORMAT_ARGB8888:

ARGB8888: Not preferred as the channel order prevents YTR

> +	case DRM_FORMAT_XBGR8888:

XBGR8888: Not preferred, as encoding the X channel is a waste of bits

> +	case DRM_FORMAT_ABGR8888:
> +		return AFBC_FMT_U8U8U8U8;
> +	case DRM_FORMAT_RGB888:

RGB888: Not preferred as the channel order prevents YTR

> +	case DRM_FORMAT_BGR888:
> +		return AFBC_FMT_U8U8U8;
> +	case DRM_FORMAT_RGB565:

RGB565: Not preferred as the channel order prevents YTR

> +	case DRM_FORMAT_BGR565:
> +		return AFBC_FMT_RGB565;
> +	default:
> +		DRM_ERROR("unsupported afbc format[%08x]\n", format);
> +		return -EINVAL;
> +	}
> +}
> +
>  static enum vop_data_format vop_convert_format(uint32_t format)
>  {
>  	switch (format) {
> @@ -587,10 +620,16 @@ static int vop_enable(struct drm_crtc *crtc)
>  
>  		vop_win_disable(vop, win);
>  	}
> -	spin_unlock(&vop->reg_lock);
> +
> +	if (vop->data->afbc) {
> +		VOP_AFBC_SET(vop, enable, 0);
> +		vop->afbc_win = NULL;
> +	}
>  
>  	vop_cfg_done(vop);
>  
> +	spin_unlock(&vop->reg_lock);
> +
>  	/*
>  	 * At here, vop clock & iommu is enable, R/W vop regs would be safe.
>  	 */
> @@ -719,6 +758,32 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
>  		return -EINVAL;
>  	}
>  
> +	if (fb->modifier & DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> +		struct vop *vop = to_vop(crtc);
> +
> +		if (!vop->data->afbc) {
> +			DRM_ERROR("VOP does not support AFBC\n");
> +			return -EINVAL;
> +		}
> +
> +		ret = vop_convert_afbc_format(fb->format->format);
> +		if (ret < 0)
> +			return ret;
> +
> +		if (state->src.x1 || state->src.y1) {
> +			DRM_ERROR("AFBC does not support offset display\n");
> +			DRM_ERROR("xpos=%d, ypos=%d, offset=%d\n",
> +				state->src.x1, state->src.y1, fb->offsets[0]);
> +			return -EINVAL;
> +		}
> +
> +		if (state->rotation && state->rotation != DRM_MODE_ROTATE_0) {
> +			DRM_ERROR("AFBC does not support rotation\n");
> +			DRM_ERROR("rotation=%d\n", state->rotation);
> +			return -EINVAL;
> +		}

It may be a good idea to check your framebuffer size, as the required
framebuffer size is different for AFBC. You can refer to mali-dp for
the calculations - perhaps even share the code.

> +	}
> +
>  	return 0;
>  }
>  
> @@ -732,6 +797,9 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
>  	if (!old_state->crtc)
>  		return;
>  
> +	if (vop->afbc_win == vop_win)
> +		vop->afbc_win = NULL;
> +
>  	spin_lock(&vop->reg_lock);
>  
>  	vop_win_disable(vop, win);
> @@ -774,6 +842,9 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	if (WARN_ON(!vop->is_enabled))
>  		return;
>  
> +	if (vop->afbc_win == vop_win)
> +		vop->afbc_win = NULL;
> +
>  	if (!state->visible) {
>  		vop_plane_atomic_disable(plane, old_state);
>  		return;
> @@ -808,6 +879,20 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  
>  	spin_lock(&vop->reg_lock);
>  
> +	if (fb->modifier & DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP)) {
> +		int afbc_format = vop_convert_afbc_format(fb->format->format);
> +
> +		VOP_AFBC_SET(vop, format, afbc_format | 1 << 4);
> +		VOP_AFBC_SET(vop, hreg_block_split, 0);
> +		VOP_AFBC_SET(vop, win_sel, win_index);
> +		VOP_AFBC_SET(vop, hdr_ptr, dma_addr);
> +		VOP_AFBC_SET(vop, pic_size, act_info);
> +
> +		vop->afbc_win = vop_win;
> +
> +		pr_info("AFBC on plane %s\n", plane->name);
> +	}
> +
>  	VOP_WIN_SET(vop, win, format, format);
>  	VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
>  	VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
> @@ -1163,6 +1248,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  
>  	spin_lock(&vop->reg_lock);
>  
> +	VOP_AFBC_SET(vop, enable, vop->afbc_win ? 0x1 : 0);
>  	vop_cfg_done(vop);
>  
>  	spin_unlock(&vop->reg_lock);
> @@ -1471,7 +1557,8 @@ static int vop_create_crtc(struct vop *vop)
>  					       0, &vop_plane_funcs,
>  					       win_data->phy->data_formats,
>  					       win_data->phy->nformats,
> -					       NULL, win_data->type, NULL);
> +					       win_data->phy->format_modifiers,
> +					       win_data->type, NULL);
>  		if (ret) {
>  			DRM_DEV_ERROR(vop->dev, "failed to init plane %d\n",
>  				      ret);
> @@ -1511,7 +1598,8 @@ static int vop_create_crtc(struct vop *vop)
>  					       &vop_plane_funcs,
>  					       win_data->phy->data_formats,
>  					       win_data->phy->nformats,
> -					       NULL, win_data->type, NULL);
> +					       win_data->phy->format_modifiers,
> +					       win_data->type, NULL);
>  		if (ret) {
>  			DRM_DEV_ERROR(vop->dev, "failed to init overlay %d\n",
>  				      ret);
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 2149a889c29d..dc8b12025269 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -77,6 +77,16 @@ struct vop_misc {
>  	struct vop_reg global_regdone_en;
>  };
>  
> +struct vop_afbc {
> +	struct vop_reg enable;
> +	struct vop_reg win_sel;
> +	struct vop_reg format;
> +	struct vop_reg hreg_block_split;
> +	struct vop_reg pic_size;
> +	struct vop_reg hdr_ptr;
> +	struct vop_reg rstn;
> +};
> +
>  struct vop_intr {
>  	const int *intrs;
>  	uint32_t nintrs;
> @@ -128,6 +138,7 @@ struct vop_win_phy {
>  	const struct vop_scl_regs *scl;
>  	const uint32_t *data_formats;
>  	uint32_t nformats;
> +	const uint64_t *format_modifiers;
>  
>  	struct vop_reg enable;
>  	struct vop_reg gate;
> @@ -169,6 +180,7 @@ struct vop_data {
>  	const struct vop_output *output;
>  	const struct vop_win_yuv2yuv_data *win_yuv2yuv;
>  	const struct vop_win_data *win;
> +	const struct vop_afbc *afbc;
>  	unsigned int win_size;
>  
>  #define VOP_FEATURE_OUTPUT_RGB10	BIT(0)
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 7b9c74750f6d..e9ff0c43c396 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -30,6 +30,12 @@
>  #define VOP_REG_MASK_SYNC(off, _mask, _shift) \
>  		_VOP_REG(off, _mask, _shift, true, false)
>  
> +static const uint64_t format_modifiers_afbc[] = {
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_ROCKCHIP),
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
>  static const uint32_t formats_win_full[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
> @@ -667,6 +673,7 @@ static const struct vop_win_phy rk3368_win01_data = {
>  	.scl = &rk3288_win_full_scl,
>  	.data_formats = formats_win_full,
>  	.nformats = ARRAY_SIZE(formats_win_full),
> +	.format_modifiers = format_modifiers_afbc,

I may have missed something, but don't you need to implement the
format_mod_supported hook on the plane to expose the modifiers to
userspace?

>  	.enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
>  	.rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
> @@ -758,6 +765,16 @@ static const struct vop_data rk3366_vop = {
>  	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
>  };
>  
> +static const struct vop_afbc rk3399_afbc = {
> +	.rstn = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 3),
> +	.enable = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 0),
> +	.win_sel = VOP_REG(RK3399_AFBCD0_CTRL, 0x3, 1),
> +	.format = VOP_REG(RK3399_AFBCD0_CTRL, 0x1f, 16),
> +	.hreg_block_split = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 21),
> +	.hdr_ptr = VOP_REG(RK3399_AFBCD0_HDR_PTR, 0xffffffff, 0),
> +	.pic_size = VOP_REG(RK3399_AFBCD0_PIC_SIZE, 0xffffffff, 0),
> +};
> +
>  static const struct vop_output rk3399_output = {
>  	.dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0xf, 16),
>  	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
> @@ -808,6 +825,7 @@ static const struct vop_data rk3399_vop_big = {
>  	.modeset = &rk3288_modeset,
>  	.output = &rk3399_output,
>  	.misc = &rk3368_misc,
> +	.afbc = &rk3399_afbc,
>  	.win = rk3368_vop_win_data,
>  	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
>  	.win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 3feeaa3f987a..ba6caf06c824 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -742,6 +742,9 @@ extern "C" {
>   */
>  #define AFBC_FORMAT_MOD_BCH     (1ULL << 11)
>  
> +#define AFBC_FORMAT_MOD_ROCKCHIP \
> +	(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)
> +

As Neil said, this seems redundant. If you would like the convenience
macro, stick it in the Rockchip driver rather than UAPI.

Also, if your hardware is able to support YTR, I would recommend
enabling it.

Best regards,
-Brian

>  /*
>   * Allwinner tiled modifier
>   *
> -- 
> 2.17.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
