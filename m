Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE06C1336
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 06:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tjl0E/HJUe2SFY3c4PAtj8ShV7Nqw3NVOfipFnBTU8k=; b=sFqmTkuIudNtOn
	WGqIHUKyCBi7OVeawgypZVOIh2UXFkIEfMv/qaO0Wa+usryJq+uwyDyTeFhlWUVxOMjs1kyE/OAFJ
	9SdeEED8KzZXP3u86ybD32kigyMJjCSB4LeTfj7HNyw3sppR4NuQ+I8TD4QRPdW6gIyO9jfoLQ9qW
	G2RFhFtNh1NtjSr4u12Iv5GPy7WQCWf4DUUpKv+FJLZBacm2dJ7uu+Jq18gfxSMLJoV3WuI78akYO
	MiaQOkSQs0L7GWZ3itu2eTAqfIp+DGCl5LP7e2HdqqVzVcF6m427/LVtdMb8CW+tSVbY0uiSXh4F2
	GDnQ1Anel5FCPY1/zaQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iER4D-0001Sg-E6; Sun, 29 Sep 2019 04:44:17 +0000
Received: from mail-eopbgr50076.outbound.protection.outlook.com ([40.107.5.76]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iER41-0001Rv-OB
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 04:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XbRbHPLmiw38gpZsvPVr2bGfAh0oLA55yde65rHJws=;
 b=RaZoKntl0WnIJi1nTRPefCPLko0hlykQ21r2BfGMmsXZ9SAH6GoOuuRmRd7WLFu4mMwDWtYZHhx2l283mjFfGcNukB2TNQP/+NHsv5R39EZZ0VXjqt+eysZ4yfzG+nYCNA7yz5uBBQ04btHcjr2uBOdjpLaw9cwUDnLNvA3PkN4=
Received: from VI1PR08CA0156.eurprd08.prod.outlook.com (2603:10a6:800:d5::34)
 by VI1PR0802MB2317.eurprd08.prod.outlook.com (2603:10a6:800:9a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.20; Sun, 29 Sep
 2019 04:43:53 +0000
Received: from VE1EUR03FT026.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by VI1PR08CA0156.outlook.office365.com
 (2603:10a6:800:d5::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.20 via Frontend
 Transport; Sun, 29 Sep 2019 04:43:53 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT026.mail.protection.outlook.com (10.152.18.148) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Sun, 29 Sep 2019 04:43:51 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Sun, 29 Sep 2019 04:43:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1e1bbf0cce65ad95
X-CR-MTA-TID: 64aa7808
Received: from acdc22bc298c.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.0.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EA6931B6-21F8-44EC-971D-876A7561CC6A.1; 
 Sun, 29 Sep 2019 04:43:43 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2050.outbound.protection.outlook.com [104.47.0.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id acdc22bc298c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Sun, 29 Sep 2019 04:43:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aa8YNIBJTc6ZZ7UJqDbXZHPpO61/mIM4UwXDxLVKnufJaMN8BKJQ1wjzGDs8K6nRiTNangdUMJ6iz0iwT2fKyPSpaCVZkd5Xb0pSAs+4v57UrNAiyhI3LFKqcfMqWSTMY3XH15uIxuvRBzEcCt2byZSl3mEOvcVGIQOeirqIChprwzKS7Mw+XfPunkEyhP45cFZ9jaW8HaB011RoehRT8XEymqn/bdzGXRHx8wbULWZ55xpF+ZpscdVdDiTeFSBGIIQTMkob5HkpjfDyFMy18ILl4IZp6RXZ8XWX5Yer83j1/dvfgI5AQNTwxefvmjlPwj4y7cDB4FMHxq0e/bevHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XbRbHPLmiw38gpZsvPVr2bGfAh0oLA55yde65rHJws=;
 b=MZD8yJfMRDgjmFdS5scNzLrmXl8hJV821BujUYqsdPvBahWElmeRXvi36OErRYxgJU9qEBKRIKLTCjSSE0L5dHP8LPB9+9T39H03+OSHjo0G8wxGxHWhN+RJSqEqBJK9Aaxvue+c1rudk1khVCFRXrNTz+8NSgQPtR/AunYEqnKsoKE1SVQmVtGKDYAVAAtQRC3fgohhJn0+vKg4fpErKD94WNiNnFYz8qy1LMQyQAFjMUla+Trd6BZSAHSLc74MkhwLxNO6IfnHBMurcb78MBZ90AODdTIG2G7OsNVUvG/L+S7/1ORmbRKQZ4IDZllSBXs3514n88rK83Jb/QO2rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XbRbHPLmiw38gpZsvPVr2bGfAh0oLA55yde65rHJws=;
 b=RaZoKntl0WnIJi1nTRPefCPLko0hlykQ21r2BfGMmsXZ9SAH6GoOuuRmRd7WLFu4mMwDWtYZHhx2l283mjFfGcNukB2TNQP/+NHsv5R39EZZ0VXjqt+eysZ4yfzG+nYCNA7yz5uBBQ04btHcjr2uBOdjpLaw9cwUDnLNvA3PkN4=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB4991.eurprd08.prod.outlook.com (10.255.158.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Sun, 29 Sep 2019 04:43:41 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a0a6:ad4c:b7a7:f879]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a0a6:ad4c:b7a7:f879%5]) with mapi id 15.20.2284.028; Sun, 29 Sep 2019
 04:43:41 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Jeykumar Sankaran <jsanka@codeaurora.org>
Subject: Re: drm: add fb max width/height fields to drm_mode_config
Thread-Topic: drm: add fb max width/height fields to drm_mode_config
Thread-Index: AQHVdoB3D2QDVHLEG0iqFyeHKtBpcQ==
Date: Sun, 29 Sep 2019 04:43:40 +0000
Message-ID: <20190929044334.GA27802@jamwan02-TSP300>
References: <1569634284-14147-2-git-send-email-jsanka@codeaurora.org>
In-Reply-To: <1569634284-14147-2-git-send-email-jsanka@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: HK2PR02CA0196.apcprd02.prod.outlook.com
 (2603:1096:201:21::32) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 19d09e8b-6933-48d8-94b6-08d74497a079
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VE1PR08MB4991; 
X-MS-TrafficTypeDiagnostic: VE1PR08MB4991:|VI1PR0802MB2317:
X-Microsoft-Antispam-PRVS: <VI1PR0802MB23172935A13E96E0DA965318B3830@VI1PR0802MB2317.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 017589626D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(376002)(136003)(346002)(39850400004)(396003)(189003)(199004)(71200400001)(25786009)(6116002)(26005)(486006)(3846002)(55236004)(11346002)(6246003)(6506007)(386003)(102836004)(478600001)(86362001)(1076003)(71190400001)(5660300002)(14454004)(66066001)(229853002)(6486002)(33716001)(316002)(58126008)(8936002)(66556008)(64756008)(66476007)(66446008)(66946007)(6436002)(54906003)(6512007)(81156014)(81166006)(256004)(9686003)(99286004)(6916009)(186003)(446003)(7736002)(305945005)(4326008)(52116002)(2906002)(76176011)(476003)(33656002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4991;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: n2QY17ko/OZmGQ1AAoWcjTkQekxNKYoPkaIiP3dWmrX6Od27Pja/ld24HRk915oUQqEoVfGs3kv6ZvcccTHnqyDanplN9hVesd1ZwBGhTz5cOQ9FV4G0OdgwBacNXAsH16C80usIsUnWKFDLxuTfc629qkfEyGHrl+Rcz1sKV89JapMiWamf4B5OLtUfRmyMUx9HGoiJYlyUFecjefbaRYGgdTgIRtCC/7AJ7uxd+mh/12wjiwGHlQAG7AVsCwsgvY+iy4ZQ6/fKCvYzZkuOR4Fxouu4EnecYX7ZAAa9PIxKt/fODsa8XbRciYB3cCkR7WW3eYjsrhdYMQ4qYNrF9kVLEn3kQjp8kqKdmtc7/dMMl/PYKFJRnbWkLD+LoQCbmj75cuZYFOvzpBNHaun+OmsfBiVgeSWkaEE0zfcuVd8=
x-ms-exchange-transport-forked: True
Content-ID: <FC3EC09C5348AD45897DD94AAC06416F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4991
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT026.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(39850400004)(376002)(346002)(136003)(396003)(199004)(189003)(81166006)(22756006)(2906002)(8676002)(1076003)(486006)(66066001)(356004)(76176011)(102836004)(47776003)(6862004)(6246003)(229853002)(97756001)(6486002)(99286004)(81156014)(11346002)(186003)(305945005)(476003)(7736002)(446003)(8746002)(8936002)(126002)(336012)(63350400001)(36906005)(86362001)(54906003)(25786009)(76130400001)(5660300002)(4326008)(46406003)(70586007)(316002)(6116002)(33656002)(23726003)(58126008)(3846002)(50466002)(6512007)(9686003)(14454004)(386003)(6506007)(33716001)(26826003)(26005)(478600001)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2317;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4f531287-7c9d-4c08-4519-08d7449799c5
NoDisclaimer: True
X-Forefront-PRVS: 017589626D
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /rof1PTCgXZ4MuGax5b5SgFv8SZ21xEk/53te7xfGI1GhVvfmOih8GYv1vPxMZyKGK9JFmcNvQbdErPJlUggeOj+n2a5fCRJwq6stMH6SHuE42c/hw3Z6VeEZkwWZi/2PhAGU4NK3rDKTlL2v0SIQLZQPd1t9N0sA4xBDju0I9ZBU5lfJhpso94+78TDmTGE6qgaDxmP5K0FvZ1f+VxTnik3f5rJYKQ8IwzdfUBR6IT02L8JdOIE8BSVK26OWLAEfaQtBiMFp40Wb2GWwNQtIY5CH1kDl3lXCTN1LEVj3sSADUvSyl5KiujUCuY8jTq1Y0RWWb0S7AfcMsePIDLlVL80ZO6Ga/Zkhtdaj6+sRwwX0OnsL87V4HUleNhixGWom1BWNl82RSUnGqEGnGE8PySfzx9obTfXhP1YRyA9J2o=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2019 04:43:51.7886 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d09e8b-6933-48d8-94b6-08d74497a079
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_214405_819903_F55D8FCA 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 06:31:24PM -0700, Jeykumar Sankaran wrote:
> The mode_config max width/height values determine the maximum
> resolution the pixel reader can handle. But the same values are
> used to restrict the size of the framebuffer creation. Hardware's
> with scaling blocks can operate on framebuffers larger/smaller than
> that of the pixel reader resolutions by scaling them down/up before
> rendering.
> 
> This changes adds a separate framebuffer max width/height fields
> in drm_mode_config to allow vendors to set if they are different
> than that of the default max resolution values.
> 
> Vendors setting these fields should fix their mode_set paths too
> by filtering and validating the modes against the appropriate max
> fields in their mode_valid() implementations.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Jeykumar Sankaran <jsanka@codeaurora.org>

Hi Jeykumar:

Komeda driver also meets this problem, thank for the fix.

Reviewed-by: James Qian Wang (Arm Technology China) <james.qian.wang@arm.com>

Thanks
James

> ---
>  drivers/gpu/drm/drm_framebuffer.c | 15 +++++++++++----
>  include/drm/drm_mode_config.h     |  3 +++
>  2 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_framebuffer.c b/drivers/gpu/drm/drm_framebuffer.c
> index 5756431..2083168 100644
> --- a/drivers/gpu/drm/drm_framebuffer.c
> +++ b/drivers/gpu/drm/drm_framebuffer.c
> @@ -300,14 +300,21 @@ struct drm_framebuffer *
>  		return ERR_PTR(-EINVAL);
>  	}
>  
> -	if ((config->min_width > r->width) || (r->width > config->max_width)) {
> +	if ((config->min_width > r->width) ||
> +	    (!config->max_fb_width && r->width > config->max_width) ||
> +	    (config->max_fb_width && r->width > config->max_fb_width)) {
>  		DRM_DEBUG_KMS("bad framebuffer width %d, should be >= %d && <= %d\n",
> -			  r->width, config->min_width, config->max_width);
> +			r->width, config->min_width, config->max_fb_width ?
> +			config->max_fb_width : config->max_width);
>  		return ERR_PTR(-EINVAL);
>  	}
> -	if ((config->min_height > r->height) || (r->height > config->max_height)) {
> +
> +	if ((config->min_height > r->height) ||
> +	    (!config->max_fb_height && r->height > config->max_height) ||
> +	    (config->max_fb_height && r->height > config->max_fb_height)) {
>  		DRM_DEBUG_KMS("bad framebuffer height %d, should be >= %d && <= %d\n",
> -			  r->height, config->min_height, config->max_height);
> +			r->height, config->min_height, config->max_fb_width ?
> +			config->max_fb_height : config->max_height);
>  		return ERR_PTR(-EINVAL);
>  	}
>  
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 3bcbe30..c6394ed 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -339,6 +339,8 @@ struct drm_mode_config_funcs {
>   * @min_height: minimum fb pixel height on this device
>   * @max_width: maximum fb pixel width on this device
>   * @max_height: maximum fb pixel height on this device
> + * @max_fb_width: maximum fb buffer width if differs from max_width
> + * @max_fb_height: maximum fb buffer height if differs from  max_height
>   * @funcs: core driver provided mode setting functions
>   * @fb_base: base address of the framebuffer
>   * @poll_enabled: track polling support for this device
> @@ -523,6 +525,7 @@ struct drm_mode_config {
>  
>  	int min_width, min_height;
>  	int max_width, max_height;
> +	int max_fb_width, max_fb_height;
>  	const struct drm_mode_config_funcs *funcs;
>  	resource_size_t fb_base;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
