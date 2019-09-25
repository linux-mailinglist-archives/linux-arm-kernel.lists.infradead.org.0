Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D473BDB1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSlHi4fe2/dpKYvVocarHMR4Gd6nuX+zTfERLGcOGKA=; b=dHkU/4nATSaNtu
	nybV1vP7rVJlo/DNSSfnJcus+I1NV8Q/ic+N2lzN5VtHl7TLg1/twltIMjv2FaaeXWZnjWR2+Gk52
	MN7Y01RCw8mAFJxiXRMmAhaLGm8T0dnBKLZ0LKVQBmX5QS6ThKu5TqOPYWDG9M3UP0a/P9Co6UgwL
	GdnT8nsRYU3Gd0q1O2wz4V1MiMz6wuo7W9D/zN7XtPzFT1r5+ow+LEvF2niI4QUFeTHHHbnIFUp1q
	38mUEQbWA40OTkLvmCqmTFN2O/EUfIkaaGsmurCIPiNUEdyOHecsW41w/ZMMoogoA4476okoVsvr6
	lTh1DRut7PCiHeZIbXNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3is-0002B0-8G; Wed, 25 Sep 2019 09:36:34 +0000
Received: from mail-eopbgr50081.outbound.protection.outlook.com ([40.107.5.81]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3hc-00023p-2d; Wed, 25 Sep 2019 09:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wPizz3GutmUJswB6mTwLOROSCCHCA1H3L9ZljLjieQ=;
 b=LxSRHkIyYGMWfVdm1UldE/XadrpqgNZR0BQ3PXEnPVQ0Lq/GU6BaxjYPGJG4DgXm6baTXeNmgXj0NuTROEnpBAcgE7CGmJosqEtAHT3VsNP9BDgEpNe5/sEu25SITa5W32BHrVfwvEZ6ndMlZmfFjj6/iv5izENHZrGIalrDx/s=
Received: from AM6PR08CA0039.eurprd08.prod.outlook.com (2603:10a6:20b:c0::27)
 by AM4PR08MB2692.eurprd08.prod.outlook.com (2603:10a6:205:c::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.25; Wed, 25 Sep
 2019 09:35:11 +0000
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by AM6PR08CA0039.outlook.office365.com
 (2603:10a6:20b:c0::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Wed, 25 Sep 2019 09:35:11 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 25 Sep 2019 09:35:11 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Wed, 25 Sep 2019 09:35:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6424ea4d94a928c9
X-CR-MTA-TID: 64aa7808
Received: from 827c4abc28f0.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 33A544C2-3B3B-429E-938D-BEE7EA5BCD26.1; 
 Wed, 25 Sep 2019 09:35:03 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2059.outbound.protection.outlook.com [104.47.1.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 827c4abc28f0.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 25 Sep 2019 09:35:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGjDw+MHHn7zGOnWrVCPwUqB+xeL7YdqZqTMkgOpt48VUEvjwcXBJ35eipixfoV0bkPACpzbMISlIIEk7zM6D+bs86Dy/ieg+brD97ajdRhoTxmHnnvXOS/L7iBKxmpff3JvC1utkzd2DHQ9mrftRIymwrEgD+e8CEQp+xwO+a/yn9fUqihJuNqGs0fYMN5WQFRI00zp52mMRXIGyQZGHWHZoc0MULL/+VpEUHKlfHEwd+NJU9Ney+9N2scoJpW6DJk2j5zpfH21Rjx4esWMaFw2S5gJWaYZ8aGySew2X75Rs/DIqQoOIW6fmJjxHZrWqv5hitJvpAbn08J+YbMwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wPizz3GutmUJswB6mTwLOROSCCHCA1H3L9ZljLjieQ=;
 b=LXIapqGSV1x2Gjm6JyvttRf+MXUaasfGkiBjzIdT7uZ12Ha3bzThLdqC86irX26IBwxY8kWXiI2gasbiqRyZ83vczcGUiM92/7LMv2eY8HXkxMSCOZhUY9XyiQnZh9wjjlSXpfW1YoY8l4ZfbeZT23Aep1w1JqLZp67P6jCVK88sp569WwkC5N452L3J88QJ1/s19imiQsQ/6OfuHwgBrxCNm1jqmK23MY5RLyxBcvocaYYUpQ60ZUIiklyZGJASlogrODgTrrETOxVb5qJJh/qOGZgyg9ys5gJW2RiQk0kXComOhKdbkLjf1Lxi7Y51IIm09ey0H2ISXtPtn7yzlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wPizz3GutmUJswB6mTwLOROSCCHCA1H3L9ZljLjieQ=;
 b=LxSRHkIyYGMWfVdm1UldE/XadrpqgNZR0BQ3PXEnPVQ0Lq/GU6BaxjYPGJG4DgXm6baTXeNmgXj0NuTROEnpBAcgE7CGmJosqEtAHT3VsNP9BDgEpNe5/sEu25SITa5W32BHrVfwvEZ6ndMlZmfFjj6/iv5izENHZrGIalrDx/s=
Received: from DB8PR08MB5354.eurprd08.prod.outlook.com (52.133.240.216) by
 DB8PR08MB5484.eurprd08.prod.outlook.com (52.133.242.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 09:35:01 +0000
Received: from DB8PR08MB5354.eurprd08.prod.outlook.com
 ([fe80::b076:40e8:6e7b:6a18]) by DB8PR08MB5354.eurprd08.prod.outlook.com
 ([fe80::b076:40e8:6e7b:6a18%3]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 09:35:01 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
Thread-Topic: [PATCH] drm/rockchip: Add AFBC support
Thread-Index: AQHVcglQgFQKNg7dnEKeB+EcOCgUI6c8JO0A
Date: Wed, 25 Sep 2019 09:35:01 +0000
Message-ID: <20190925093500.GB21018@arm.com>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
In-Reply-To: <20190923122014.18229-1-andrzej.p@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0701CA0037.eurprd07.prod.outlook.com
 (2603:10a6:200:42::47) To DB8PR08MB5354.eurprd08.prod.outlook.com
 (2603:10a6:10:114::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.54]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: ea75fcc6-de87-4420-f45e-08d7419ba949
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5484; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5484:|AM4PR08MB2692:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <AM4PR08MB2692F202C97C7A0AD9BE7BEBE4870@AM4PR08MB2692.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2803;OLM:2803;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(199004)(189003)(36756003)(33656002)(6306002)(14444005)(6512007)(256004)(6246003)(66066001)(6916009)(71200400001)(71190400001)(229853002)(486006)(86362001)(54906003)(478600001)(44832011)(2616005)(26005)(186003)(316002)(476003)(25786009)(4326008)(446003)(11346002)(14454004)(6436002)(2906002)(966005)(52116002)(6506007)(386003)(6486002)(76176011)(66476007)(66446008)(3846002)(64756008)(66556008)(66946007)(99286004)(102836004)(30864003)(6116002)(305945005)(7736002)(5660300002)(81156014)(7416002)(81166006)(8676002)(1076003)(8936002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5484;
 H:DB8PR08MB5354.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: /3I1PV/5cW0Kj8RfuDJkd7fS4ccJ9r4VrT28S5Uj+TLQtWCwxKh7BTgkVOtALPPpeyDE29IQTLHJVfxW5U/9FqzGtx1qo6iy6YG4pU5JXnxdv8twlTLn9PxfeElB1w1fYtsS0S8YCW3LGXoJK3o2g5du/R2OC3famKkoZ5ZwyyHKNHm3/xQ5ZCNOMlgVkLA8I0OiY/6LJ9vGr2i90OFkhKuzv0doKGN5K0R5wkHcEC1JNjKu8dsgj5D8Cb5HyppjSTVK9wNMyNfCnm2rxCi2ihJqRO6+pi66Eo5k+VJAdcSx6IGlY+q1hfAhT+Q2gYyD7dPXfzBlBsCuhTXfoGBf+ycNaBRsq838bASYE4ycU/HVZV1AUqwUFy2Po1evbJYaamnt9T6Vu+EmDq/rSVjEcszUUq4JctdQPwl2ouIjkwNkhJca+F3tpnqVzlaqEZQHEH6dpLRcB+LPpRt7LYD5ug==
x-ms-exchange-transport-forked: True
Content-ID: <DD692A5B3B938242AACF43A84D240C5E@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5484
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(39860400002)(346002)(136003)(376002)(199004)(189003)(336012)(86362001)(450100002)(966005)(5660300002)(26826003)(478600001)(11346002)(446003)(63350400001)(46406003)(99286004)(36906005)(316002)(386003)(356004)(6506007)(102836004)(26005)(54906003)(25786009)(1076003)(14444005)(14454004)(486006)(126002)(476003)(2616005)(30864003)(76176011)(22756006)(186003)(33656002)(76130400001)(6306002)(70206006)(229853002)(70586007)(6512007)(7736002)(305945005)(66066001)(47776003)(97756001)(4326008)(6116002)(3846002)(23726003)(8936002)(36756003)(6246003)(6486002)(8746002)(81166006)(81156014)(50466002)(8676002)(6862004)(2906002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR08MB2692;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 64d47b03-5d00-4c5f-dc21-08d7419ba32a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM4PR08MB2692; 
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam-Message-Info: IjhF9be8j9p9PPtY1ixfW9wK0y6adcfEGxDT266JDRs04UTfJbq4RzKuTZsTT2KE1m3mRft49V3uyPZ9kdZCu0Sk1yJF+UBdQj+0+l1aQFLOR8fs4qFy/1QUeirpbmNqhpueE3qv/IEXDxj/x0vZZYmdIKKfnU/Bhu3mgCReRw20dCZkKfv6t8EvlrVLKtkok9EVF7OPYnyf91qaOpnBRHCi1P8gsw3BcF46hp/SQCCvq0a3Zyg2Bk21u9fVNWF49jUE3cWksPJ3MXWB6tbJIPKfv4/iqsf63GgebNs+mOMQI2HAtS7PmEhXbWA004heMrEgxaRCURy0Xo4/scM55JodwUxqACZWGvbBg0CAg2kdrvTyB1BsC17CKGx3O0qJtDOVPD5UaMVYmp6qenLnhNn62QSrBqWczWNrJHGLKvYJQHLtjEDXUMUqmhmGhduVZGfeJ+4UKwtEqm6lEIi9mQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 09:35:11.0495 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea75fcc6-de87-4420-f45e-08d7419ba949
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR08MB2692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_023516_284941_83233195 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.81 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 "kernel@collabora.com" <kernel@collabora.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
I think you are missing one additional check here.
framebuffer width and height should be aligned to 16 pixels as you are
using AFBC_FORMAT_MOD_BLOCK_SIZE_16x16.
Please have a look at malidp_verify_afbc_framebuffer_caps()

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
> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ABGR8888:
> +		return AFBC_FMT_U8U8U8U8;
> +	case DRM_FORMAT_RGB888:
> +	case DRM_FORMAT_BGR888:
> +		return AFBC_FMT_U8U8U8;
> +	case DRM_FORMAT_RGB565:
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
