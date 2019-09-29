Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845B8C137C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 07:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFPIREbLJm52EVMxPOUfQDBjmdVKa3xKI9s/jAbiqaE=; b=se3nsKpjVfPmM4
	Y39+0erD4mWCH1icstszKSBhVTp7OcEGgRrcHLNRJvXM3ANQARgCYB9jIJyxUcophvIztQnO+x06+
	sscRUbUJktYmJ1I8eN5TM3TKivQUfnvlAJd8qqQz1iuGDxViVt+lUKMPOlvDJWMo3xaf//GCQaCex
	k60kJCUz/wUymh7CggPUvD0qfDZiDcbu+pMgH/tGn7lU8h0WuaJF0dUWp8haSSa1b2KKhuxRFjQZ1
	C0Fhwb6IKhifUf/74FfqKZ2pko6fLGqdbD+3qnR+qw4wSHN02SP9Ej7OSuqlP+sQc4mssoP4sUb5A
	z8ydTiFtDvJJuwgP1TtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iERgU-0004vq-OT; Sun, 29 Sep 2019 05:23:50 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iERgE-0004ux-ND; Sun, 29 Sep 2019 05:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9P+wAd+Z1hHNNb9A9N6OTC+duUrGTYpjIxR+D145nnE=;
 b=2uCNeb0yTLgZjjhHfCflhfgnDaP+DDmJJYPP7PptP+hlWZxaQ8uGxQrZN9hGFGmfaNQFeLnCQtYd7To8j5UYnGe6WwLXHFYx6rqiPq2wo5Lorq/SySCD9wADRWB21/YkKNVuB54neoHMZAh8q5VbrdJwe/1Ztontu2Fh9HXDRgU=
Received: from VI1PR08CA0092.eurprd08.prod.outlook.com (2603:10a6:800:d3::18)
 by DBBPR08MB4457.eurprd08.prod.outlook.com (2603:10a6:10:cd::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18; Sun, 29 Sep
 2019 05:23:25 +0000
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by VI1PR08CA0092.outlook.office365.com
 (2603:10a6:800:d3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.17 via Frontend
 Transport; Sun, 29 Sep 2019 05:23:25 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Sun, 29 Sep 2019 05:23:23 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Sun, 29 Sep 2019 05:23:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6ed8157f2402cf5c
X-CR-MTA-TID: 64aa7808
Received: from 8e86b7e8f3cf.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.6.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B49AD9E9-9769-404B-A0D3-BC3FDE6EB248.1; 
 Sun, 29 Sep 2019 05:23:16 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2052.outbound.protection.outlook.com [104.47.6.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8e86b7e8f3cf.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Sun, 29 Sep 2019 05:23:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9aA+zM3U04TKZQCxqMdgBw4pZ519Z3yOnH8flUw0iS2T1UWut7JANdO8b5dyd3zJR6KAXs3v4KzRTu201Aiig/NMxRig5svt7Q7OqhthPzmAOurq8eICzGhzAXBm/TGSCZHjKSSrvlR0EKt72Mi2NXMr/fJt7YOQTHFsHXB0+tw9jClO8sug7teAgenjzlUQK7gdBrxBAg1PpZ4SbOsmvrptkTyJYe9WMOU3DD1vufqYYh2LOAryNFRuZ38tJ0D1FTVj5mHoCcXcweBCIbcr+B9Cb30sqzpM/LTGvaAy98LKzwMmhBjZgLR7ACVlZieUogVubnI1GWCIeolKVn55Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9P+wAd+Z1hHNNb9A9N6OTC+duUrGTYpjIxR+D145nnE=;
 b=cZ3drsQj+AfbJokAlAYgjqN1nFrKT8Ngi8hE4pg3xIRYA5SdEzr2LQKthVKNOlGE1ug6zRcGiNosKaVOPRC/GF22thZmMn5MAZFVdIS9XAoiLbJbKe41gbRlGH5mJ8odmc9oaz0keZ3rR2QZTz4payDLE5qPH7Dnm0PnxW4liGh3nJAFmgts+2uotwwKZG63r3iMKV3AE2cVIFHnVqlaubVwQbyv/co90MFopk9KTergm4HV89fFlnOP9kDOv4dfTfp7E3NmzJ/bTHrc+64zMNUliChxSsx7FJpVYjZBYxupcIFGemm163cXxWBq5P2JcY/7mM0ZvydrbPMRi+1ktg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9P+wAd+Z1hHNNb9A9N6OTC+duUrGTYpjIxR+D145nnE=;
 b=2uCNeb0yTLgZjjhHfCflhfgnDaP+DDmJJYPP7PptP+hlWZxaQ8uGxQrZN9hGFGmfaNQFeLnCQtYd7To8j5UYnGe6WwLXHFYx6rqiPq2wo5Lorq/SySCD9wADRWB21/YkKNVuB54neoHMZAh8q5VbrdJwe/1Ztontu2Fh9HXDRgU=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB4830.eurprd08.prod.outlook.com (10.255.113.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Sun, 29 Sep 2019 05:23:14 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a0a6:ad4c:b7a7:f879]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a0a6:ad4c:b7a7:f879%5]) with mapi id 15.20.2284.028; Sun, 29 Sep 2019
 05:23:14 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [v8,2/4] drm/panel: set display info in panel attach
Thread-Topic: [v8,2/4] drm/panel: set display info in panel attach
Thread-Index: AQHVdoX9hlvb+H46dE2AJOeuAIY3EA==
Date: Sun, 29 Sep 2019 05:23:14 +0000
Message-ID: <20190929052307.GA28304@jamwan02-TSP300>
References: <20190925225833.7310-3-dbasehore@chromium.org>
In-Reply-To: <20190925225833.7310-3-dbasehore@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: HK0P153CA0035.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::23) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: da36d087-d780-453a-0bd3-08d7449d2667
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: VE1PR08MB4830:|DBBPR08MB4457:
X-Microsoft-Antispam-PRVS: <DBBPR08MB44578803AC1FC0BB5A361D58B3830@DBBPR08MB4457.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 017589626D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(39850400004)(376002)(396003)(136003)(346002)(189003)(199004)(5660300002)(6486002)(25786009)(256004)(58126008)(54906003)(6246003)(99286004)(86362001)(4326008)(229853002)(33656002)(6512007)(9686003)(5024004)(66066001)(81166006)(7416002)(316002)(8676002)(6916009)(6436002)(8936002)(52116002)(81156014)(64756008)(66446008)(66476007)(11346002)(2906002)(26005)(446003)(3846002)(186003)(76176011)(66556008)(102836004)(55236004)(386003)(6506007)(1076003)(71200400001)(6116002)(66946007)(71190400001)(476003)(486006)(305945005)(14454004)(33716001)(7736002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4830;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: V+gWh0SOiCJZx9vpM8JB+q2TrlXBzjfX+GqN7IDKsMDhSpDcSwRIEIsps3vubKYAngvTMALFRI8R0CG/qxZDfK4O1SVdauHoD+53E1q/cvlNNE2Ed0jR5zYJns2mxJojTPd25ou6wAyDLmgR+Tay3suM44LmfB7HLwhvFnSoXEbVyDM4cvZHksuVJ0jDJSvI720OdJNcmfv5JIUPBbk1/NpsWHdoRY7zDINCpFHddJNQGFs2fQvRrIUy8gHb0L7k1MG17/UPSpY8CW8lIOR+S6oTZYYwHDZCc2Qx7DDyfX5dS473J/FeMI0YOSX5xHNSpZbmw5YmY4joPWNnTG6lFTrFHB4VxRV8WwmF4ygNATvRQv8VkFUsd1RF2ARsjZ6il4vM+JIQ0RLyxPyHpKLBm+EW7iElnHdJVvcoVhFekkg=
x-ms-exchange-transport-forked: True
Content-ID: <672C734F3D2D1142A821032C5E0FBE8C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4830
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(346002)(136003)(39850400004)(396003)(376002)(189003)(199004)(2906002)(4326008)(23726003)(70206006)(478600001)(97756001)(3846002)(5660300002)(8746002)(11346002)(26826003)(6116002)(47776003)(229853002)(102836004)(50466002)(26005)(81166006)(6862004)(81156014)(5024004)(46406003)(14454004)(63350400001)(33716001)(186003)(33656002)(6506007)(305945005)(8936002)(126002)(476003)(76176011)(22756006)(76130400001)(6486002)(25786009)(66066001)(486006)(6246003)(8676002)(99286004)(70586007)(336012)(58126008)(450100002)(36906005)(9686003)(356004)(6512007)(446003)(316002)(1076003)(386003)(86362001)(54906003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4457;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 89114cdd-ee15-4b23-7be2-08d7449d2048
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DBBPR08MB4457; 
NoDisclaimer: True
X-Forefront-PRVS: 017589626D
X-Microsoft-Antispam-Message-Info: 8zR7i93rVuOctWRkuQ/3L7RW2vJFPlABg0w424j9gejo5bvZKkNqxmP8P1qtNXFFaYO/2KsxcSeNwPnkjcLfT8uv1KD/4nGN0/0n7/JKV+ZARLYtBqeQ+HK/vBPGkRfD5ddc7vHL0mcvoWtdz517iRx7KR+nItvPXBbt03Q7Tl5/lmoDz3/s9fJFLp/QEkN876RGPI4O4iZF2OJLrg5boqjV+i9S2GBdTyk4RiLU/pnot2S3IqI9wqwM1P9hmInFLNgAR3G1NUYyNmhFEFEQT54bAoUdvnndixSjecVe0QtrcitN6wTMa3LL8sbunT4JYYRB0R2kiVXHPUftU0Ck8oEQInxtC/4BB7+iE0shHHSOt09QyLQZJ2FZgFTkS86tUS7wPYdmAfLa5ipgIGvLYBFKuknXV/QHfwdBzFUwn3Y=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2019 05:23:23.9374 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da36d087-d780-453a-0bd3-08d7449d2667
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_222334_764016_761D7179 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Sam Ravnborg <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:58:31PM -0700, Derek Basehore wrote:
> Devicetree systems can set panel orientation via a panel binding, but
> there's no way, as is, to propagate this setting to the connector,
> where the property need to be added.
> To address this, this patch sets orientation, as well as other fixed
> values for the panel, in the drm_panel_attach function. These values
> are stored from probe in the drm_panel struct.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 28 +++++++++++++++++++++
>  include/drm/drm_panel.h     | 50 +++++++++++++++++++++++++++++++++++++
>  2 files changed, 78 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 0909b53b74e6..1cd2b56c9fe6 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +	struct drm_display_info *info;
> +
>  	if (panel->connector)
>  		return -EBUSY;
>  
>  	panel->connector = connector;
>  	panel->drm = connector->dev;
> +	info = &connector->display_info;
> +	info->width_mm = panel->width_mm;
> +	info->height_mm = panel->height_mm;
> +	info->bpc = panel->bpc;
> +	info->panel_orientation = panel->orientation;
> +	info->bus_flags = panel->bus_flags;
> +	if (panel->bus_formats)
> +		drm_display_info_set_bus_formats(&connector->display_info,
> +						 panel->bus_formats,
> +						 panel->num_bus_formats);
>  
>  	return 0;
>  }
> @@ -126,6 +138,22 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  void drm_panel_detach(struct drm_panel *panel)
>  {
> +	struct drm_display_info *info;
> +
> +	if (!panel->connector)
> +		goto out;
> +
> +	info = &panel->connector->display_info;
> +	info->width_mm = 0;
> +	info->height_mm = 0;
> +	info->bpc = 0;
> +	info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +	info->bus_flags = 0;
> +	kfree(info->bus_formats);
> +	info->bus_formats = NULL;
> +	info->num_bus_formats = 0;
> +
> +out:
>  	panel->connector = NULL;
>  	panel->drm = NULL;
>  }
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index d16158deacdc..f3587a54b8ac 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -141,6 +141,56 @@ struct drm_panel {
>  	 */
>  	const struct drm_panel_funcs *funcs;
>

All these new added members seems dupliated with drm_display_info,
So I think, can we add a new drm_plane_funcs func:

int (*set_display_info)(struct drm_panel *panel,
                        struct drm_display_info *info);

Then in drm_panel_attach(), via this interface the specific panel
driver can directly set connector->display_info. like

   ...
   if (panel->funcs && panel->funcs->set_display_info)
		panel->funcs->unprepare(panel, connector->display_info);
   ...

Thanks
James

> +	/**
> +	 * @width_mm:
> +	 *
> +	 * Physical width in mm.
> +	 */
> +	unsigned int width_mm;
> +
> +	/**
> +	 * @height_mm:
> +	 *
> +	 * Physical height in mm.
> +	 */
> +	unsigned int height_mm;
> +
> +	/**
> +	 * @bpc:
> +	 *
> +	 * Maximum bits per color channel. Used by HDMI and DP outputs.
> +	 */
> +	unsigned int bpc;
> +
> +	/**
> +	 * @orientation
> +	 *
> +	 * Installation orientation of the panel with respect to the chassis.
> +	 */
> +	int orientation;
> +
> +	/**
> +	 * @bus_formats
> +	 *
> +	 * Pixel data format on the wire.
> +	 */
> +	const u32 *bus_formats;
> +
> +	/**
> +	 * @num_bus_formats:
> +	 *
> +	 * Number of elements pointed to by @bus_formats
> +	 */
> +	unsigned int num_bus_formats;
> +
> +	/**
> +	 * @bus_flags:
> +	 *
> +	 * Additional information (like pixel signal polarity) for the pixel
> +	 * data on the bus.
> +	 */
> +	u32 bus_flags;
> +
>  	/**
>  	 * @list:
>  	 *

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
