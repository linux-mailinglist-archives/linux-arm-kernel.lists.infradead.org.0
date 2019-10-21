Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A18FDEE5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGaHz591eGkxMdINqYr/CWXZZCmnLgvzh3Ha3Od4y3w=; b=SQppl/zKkjxYaM
	hPSV6xFYe6hRexPCdjXQL7P/7BtatmffV7bKZ0DGAmtMtbq7B4/7YycgJ6kwzmB3+yT2NoCIv9h9y
	vlb4BMJ7BUjM+u6kxR3T42b1W/WHv7OCGnZ0v4jXrfXNFXJigmm4n3IVkuTShzNMCPUtQ5hQIKN9+
	B8aE9sqz/UUC8wKzFXbE+az6vBYnR9qnDrLkRrPSQDtxVVmNTfARE2zFfOKM/c+F0YW4DIKDjsxrs
	QvyFSZ4VxfzwUpAF0Wpk2S76dpS9Fa6TppWsnDax0C5oiz354jSSC3bbDBafna7uQUvjvibpuKNrc
	LAcAd7LxSQWH+juk7k+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMY5E-0006Ck-23; Mon, 21 Oct 2019 13:50:52 +0000
Received: from mail-eopbgr20059.outbound.protection.outlook.com ([40.107.2.59]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMY4x-0006BA-P2; Mon, 21 Oct 2019 13:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNQw4MAh1vWfmkMrOkpsYy90frDzjVUAtuDV5qPFGZI=;
 b=FmGGSx7oHP+VPW6cTSVki2X5QUhTe/x57CuDmIeXsPC5yHnk4xFDuPFPM/AbKG23WaI5mRmwzeQoPev9Dd0K/KM4NRpSzfCyoE+JBKo5I23tsk4gT+9tnod6N36qOFjsQstj5ohpmhQxqlF37SeXEP4egRO9ua87Dn4CjzmL2bc=
Received: from VI1PR08CA0111.eurprd08.prod.outlook.com (2603:10a6:800:d4::13)
 by DB6PR0801MB1703.eurprd08.prod.outlook.com (2603:10a6:4:2e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Mon, 21 Oct
 2019 13:50:28 +0000
Received: from VE1EUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by VI1PR08CA0111.outlook.office365.com
 (2603:10a6:800:d4::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.20 via Frontend
 Transport; Mon, 21 Oct 2019 13:50:28 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT063.mail.protection.outlook.com (10.152.18.236) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 21 Oct 2019 13:50:26 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Mon, 21 Oct 2019 13:50:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 02b31e81f56a8ffb
X-CR-MTA-TID: 64aa7808
Received: from c1a923bf249d.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.6.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D4774A2B-14BA-4A6A-88B9-7CD8D0178220.1; 
 Mon, 21 Oct 2019 13:50:16 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2053.outbound.protection.outlook.com [104.47.6.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c1a923bf249d.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 21 Oct 2019 13:50:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzQ/jYqBx+9uwD53na4vlCy5RcoCmUWEEJSWXWzv7MmallS8afL0zc12R9FQuJCEToR+02DtfittfaQ/dutCzxVDO7xH2pRtVadulJV2RethX5EC5TCkwZvmq0qdmesQqxrbrORFQO5eJjk5sFtneDGWAYNX+kqrn/PnFTOalhXUt/ru10oX8w+xo2UniVfypJi/QNTK4d8TpQajgegDK249qQVpMFAK/BF03zKLgFgXX4r1DTayWIWQOXw/9yuTJpWEzlkmLwLqodMSqP2fshBsgTpfAbyCSlPI5iZJF4fnmPgcMRxqXIlPv7SyVaLLhSOOsn61xrgESobYDwP+/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNQw4MAh1vWfmkMrOkpsYy90frDzjVUAtuDV5qPFGZI=;
 b=lyAOs3FcH9LwUf7DMxO9xDxjCIAKk4nepvvQoTqLjopv+lg8Q0lVQnyNx9OiALG63GVkdp7togg5I8XeXXFxoEYe61DO1fjJdEGrT6aEd0fzKUfdc4qMIIGkW9bdRIAHI6v6+pbSGbw/eikNjL3ECC1yB8VlVgOS4mKUuE4LdAkofVIc3o8IWLc6+knsWWiNCOgZ1UL4j+Bu6OOZzJ2tUP6cSeFTuksmCBBFxeTEIXknJujT4uKHrbAU5jBTQGgEqG8Tl8rSPj885ny/v+kGw7T+x1PoCRyyRRsuhj8SAgjjn16MO13nJxg5cW4MsnjG/nFvu5z31MRtPenCOFXPfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNQw4MAh1vWfmkMrOkpsYy90frDzjVUAtuDV5qPFGZI=;
 b=FmGGSx7oHP+VPW6cTSVki2X5QUhTe/x57CuDmIeXsPC5yHnk4xFDuPFPM/AbKG23WaI5mRmwzeQoPev9Dd0K/KM4NRpSzfCyoE+JBKo5I23tsk4gT+9tnod6N36qOFjsQstj5ohpmhQxqlF37SeXEP4egRO9ua87Dn4CjzmL2bc=
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com (52.132.215.213) by
 AM0PR08MB4561.eurprd08.prod.outlook.com (20.178.119.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Mon, 21 Oct 2019 13:50:14 +0000
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f]) by AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f%4]) with mapi id 15.20.2367.021; Mon, 21 Oct 2019
 13:50:14 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 1/2] drm/arm: Factor out generic afbc helpers
Thread-Topic: [PATCH 1/2] drm/arm: Factor out generic afbc helpers
Thread-Index: AQHVgCWk2PTQa3ML1Uqc0tbSduIYPqdlLKCA
Date: Mon, 21 Oct 2019 13:50:14 +0000
Message-ID: <20191021135013.GA16072@arm.com>
References: <20191011111813.20851-1-andrzej.p@collabora.com>
 <20191011111813.20851-2-andrzej.p@collabora.com>
In-Reply-To: <20191011111813.20851-2-andrzej.p@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0057.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::21) To AM0PR08MB5345.eurprd08.prod.outlook.com
 (2603:10a6:208:18c::21)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: c9fc2add-f0fb-4608-180a-08d7562da0e2
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM0PR08MB4561:|AM0PR08MB4561:|DB6PR0801MB1703:
X-MS-Exchange-PUrlCount: 3
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB17034A7FE93B24AEB8AE9F92E4690@DB6PR0801MB1703.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 0197AFBD92
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(66556008)(66446008)(6306002)(64756008)(66946007)(66476007)(3846002)(2616005)(6116002)(446003)(486006)(4326008)(44832011)(476003)(6246003)(2906002)(86362001)(11346002)(26005)(8936002)(6486002)(229853002)(5660300002)(6436002)(6512007)(81166006)(102836004)(81156014)(8676002)(1076003)(30864003)(36756003)(6506007)(386003)(14444005)(966005)(316002)(99286004)(478600001)(76176011)(256004)(54906003)(14454004)(52116002)(6916009)(186003)(66066001)(71200400001)(71190400001)(33656002)(305945005)(7736002)(25786009)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4561;
 H:AM0PR08MB5345.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fwdZ5v698MYD6Lq9SXc0zqqNXyH9Z6YGuUoI/SBKmna+ZHHFx7Mcj2DlcMYZ+fjst1QTs8kQgCg+B9f1T+b4ylgIWn4Vkw+L6+rjCZV3byloEs+jkRY8S6jT+j9+oguLpdDCL/6bWOdLAvsL3jNH4pi9ZUXtDHcsCECKrnNUKOhCdUsoL6I8ZOD7t4IRR3WfQzh3s/1xqGlr/kibymPVTX+zRAcakZ7mobHlwcY4V8OIG6MoHVCzBjUmQm+goIPah1mBlwCnGcXHk8xDNedr8a5mkcUmnsfGhoRfP2Q4G5DMj+Y34NHAetz0iBZgDk05jwnDcjUFlZdmhZGl1m8zPzqKlQ6scfZ220+3vWZx9zi8kl0TdZjIp7vcdl4QEDG/682k/i66zcu+jy5zDA2xYrq9U02kCzViXHetppw0VwYbROI4KP2+pWNVJ/n0rxeOjLjAwSrS/U3LnhSx1arp+eEP4SVJpVacamO63yySNOU=
Content-ID: <B9786950CDE45D469A6CD62AB01D9560@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4561
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(189003)(199004)(54906003)(36906005)(305945005)(966005)(8746002)(46406003)(76130400001)(229853002)(7736002)(70586007)(70206006)(14454004)(6486002)(6306002)(102836004)(26826003)(4326008)(8936002)(81156014)(81166006)(386003)(6506007)(6862004)(50466002)(26005)(97756001)(8676002)(316002)(76176011)(6512007)(6246003)(186003)(14444005)(99286004)(5660300002)(25786009)(356004)(1076003)(486006)(36756003)(23726003)(66066001)(3846002)(446003)(11346002)(2906002)(63350400001)(30864003)(2616005)(450100002)(33656002)(86362001)(6116002)(47776003)(478600001)(336012)(126002)(22756006)(476003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1703;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 04ec1194-78a1-40ca-9306-08d7562d9920
NoDisclaimer: True
X-Forefront-PRVS: 0197AFBD92
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EKDK6vH9iNNmYeroFOvCOnJSmbNqbZvyp6xDECDDH/dMUg1Nm9g2kMk5VQt50OTRImZXZ9REmAKHllgd72HG/NYci01AA/9NKWN5qUFCRHJGqARPPv1Xe4MnhItBH+oeaWdH5CcsnlEh8GrWNhgESzAT4BshtJQ6HSYGm0oTswdOcF2fGo44CChinC6YZregiyHS2oK6Vocb9oyhGI+47XuHx12wKuaqd6b2xMpjrpwT1mke0hTcRDhasrQNROuDHfXss8+CcD5NhFrUNUDe5M5Hnhngsjh1XUo3kcY5Gj/Lzo3Hrie5e9AvnHCVuBZKiSMgmEEk0ZnL42ed4U7otMjCf/gsnk7GtTvFE7rpXdCGUYyHgDb1ZUa1h+CXyLM9JLQUV5jnQpAJrQEOTguKj+sL5aZ1mcryoflIajfaeb4v0nuwXbgpMT/bz8977T+r7hk9v3gDBrmNLGRaco8dfanSc5DAaPUQhsOMu4Q+qzM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2019 13:50:26.7202 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c9fc2add-f0fb-4608-180a-08d7562da0e2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1703
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_065035_980485_D359A361 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.59 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, "kernel@collabora.com" <kernel@collabora.com>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 Mihail Atanassov <Mihail.Atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 01:18:10PM +0200, Andrzej Pietrasiewicz wrote:
> These are useful for other users of afbc, e.g. rockchip.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Hi Andrzej,

Thanks a lot for doing this. Much appreciated. :)
It was on our TODO list for a long time.

I have cc-ed james.qian.wang@arm.com, Mihail.Atanassov@arm.com for
their comments as well.

> ---
>  drivers/gpu/drm/Kconfig          |   4 ++
>  drivers/gpu/drm/Makefile         |   1 +
>  drivers/gpu/drm/arm/Kconfig      |   1 +
>  drivers/gpu/drm/arm/malidp_drv.c |  58 ++--------------
>  drivers/gpu/drm/drm_afbc.c       | 114 +++++++++++++++++++++++++++++++
>  include/drm/drm_afbc.h           |  25 +++++++
>  6 files changed, 149 insertions(+), 54 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_afbc.c
>  create mode 100644 include/drm/drm_afbc.h
> 
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 3c88420e3497..00e3f90557f4 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -195,6 +195,10 @@ config DRM_SCHED
>  	tristate
>  	depends on DRM
>  
> +config DRM_AFBC
> +	tristate
> +	depends on DRM
Adding a 'help' would be great here. Stealing the first line from
https://www.kernel.org/doc/html/latest/gpu/afbc.html

"AFBC is a proprietary lossless image compression protocol and format.
It provides fine-grained random access and minimizes the amount of
data transferred between IP blocks."

> +
>  source "drivers/gpu/drm/i2c/Kconfig"
>  
>  source "drivers/gpu/drm/arm/Kconfig"
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 9f0d2ee35794..55368b668355 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -31,6 +31,7 @@ drm-$(CONFIG_OF) += drm_of.o
>  drm-$(CONFIG_AGP) += drm_agpsupport.o
>  drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
>  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
> +drm-$(CONFIG_DRM_AFBC) += drm_afbc.o
>  
>  drm_vram_helper-y := drm_gem_vram_helper.o \
>  		     drm_vram_helper_common.o \
> diff --git a/drivers/gpu/drm/arm/Kconfig b/drivers/gpu/drm/arm/Kconfig
> index a204103b3efb..25c3dc408cda 100644
> --- a/drivers/gpu/drm/arm/Kconfig
> +++ b/drivers/gpu/drm/arm/Kconfig
> @@ -29,6 +29,7 @@ config DRM_MALI_DISPLAY
>  	select DRM_KMS_HELPER
>  	select DRM_KMS_CMA_HELPER
>  	select DRM_GEM_CMA_HELPER
> +	select DRM_AFBC
>  	select VIDEOMODE_HELPERS
>  	help
>  	  Choose this option if you want to compile the ARM Mali Display
> diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
> index f25ec4382277..a67b69e08f63 100644
> --- a/drivers/gpu/drm/arm/malidp_drv.c
> +++ b/drivers/gpu/drm/arm/malidp_drv.c
> @@ -16,6 +16,7 @@
>  #include <linux/debugfs.h>
>  
>  #include <drm/drmP.h>
> +#include <drm/drm_afbc.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> @@ -33,8 +34,6 @@
>  #include "malidp_hw.h"
>  
>  #define MALIDP_CONF_VALID_TIMEOUT	250
> -#define AFBC_HEADER_SIZE		16
> -#define AFBC_SUPERBLK_ALIGNMENT		128
>  
>  static void malidp_write_gamma_table(struct malidp_hw_device *hwdev,
>  				     u32 data[MALIDP_COEFFTAB_NUM_COEFFS])
> @@ -275,24 +274,8 @@ malidp_verify_afbc_framebuffer_caps(struct drm_device *dev,
>  					mode_cmd->modifier[0]) == false)
>  		return false;
>  
> -	if (mode_cmd->offsets[0] != 0) {
> -		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
> -		return false;
> -	}
> -
> -	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
> -	case AFBC_SIZE_16X16:
> -		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
> -			DRM_DEBUG_KMS("AFBC buffers must be aligned to 16 pixels\n");
> -			return false;
> -		}
> -		break;
> -	default:
> -		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
> -		return false;
> -	}
> -
> -	return true;
> +	return drm_afbc_check_offset(dev, mode_cmd) &&
> +	       drm_afbc_check_size_align(dev, mode_cmd);
>  }
>  
>  static bool
> @@ -300,53 +283,20 @@ malidp_verify_afbc_framebuffer_size(struct drm_device *dev,
>  				    struct drm_file *file,
>  				    const struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> -	int n_superblocks = 0;
>  	const struct drm_format_info *info;
>  	struct drm_gem_object *objs = NULL;
> -	u32 afbc_superblock_size = 0, afbc_superblock_height = 0;
> -	u32 afbc_superblock_width = 0, afbc_size = 0;
>  	int bpp = 0;
>  
> -	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
> -	case AFBC_SIZE_16X16:
> -		afbc_superblock_height = 16;
> -		afbc_superblock_width = 16;
> -		break;
> -	default:
> -		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
> -		return false;
> -	}
> -
>  	info = drm_get_format_info(dev, mode_cmd);
> -
> -	n_superblocks = (mode_cmd->width / afbc_superblock_width) *
> -		(mode_cmd->height / afbc_superblock_height);
> -
>  	bpp = malidp_format_get_bpp(info->format);
>  
> -	afbc_superblock_size = (bpp * afbc_superblock_width * afbc_superblock_height)
> -				/ BITS_PER_BYTE;
> -
> -	afbc_size = ALIGN(n_superblocks * AFBC_HEADER_SIZE, AFBC_SUPERBLK_ALIGNMENT);
> -	afbc_size += n_superblocks * ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
> -
> -	if ((mode_cmd->width * bpp) != (mode_cmd->pitches[0] * BITS_PER_BYTE)) {
> -		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) "
> -			      "should be same as width (=%u) * bpp (=%u)\n",
> -			      (mode_cmd->pitches[0] * BITS_PER_BYTE),
> -			      mode_cmd->width, bpp);
> -		return false;
> -	}
> -
>  	objs = drm_gem_object_lookup(file, mode_cmd->handles[0]);
>  	if (!objs) {
>  		DRM_DEBUG_KMS("Failed to lookup GEM object\n");
>  		return false;
>  	}
>  
> -	if (objs->size < afbc_size) {
> -		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
> -			      objs->size, afbc_size);
> +	if (!drm_afbc_check_fb_size(dev, mode_cmd, objs, bpp)) {
>  		drm_gem_object_put_unlocked(objs);
>  		return false;
>  	}
Also can you do the code refactoring for komeda driver as well.
specifically komeda_fb_afbc_size_check(). I will let
james.qian.wang@arm.com and Mihail.Atanassov@arm.com have their
opinion on this.

> diff --git a/drivers/gpu/drm/drm_afbc.c b/drivers/gpu/drm/drm_afbc.c
> new file mode 100644
> index 000000000000..3e8a9225fd2e
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_afbc.c
> @@ -0,0 +1,114 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * (C) 2019 Collabora Ltd.
> + *
> + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> + *
> + */
> +#include <linux/module.h>
> +
> +#include <drm/drm_afbc.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_mode.h>
> +#include <drm/drm_print.h>
> +
> +#define AFBC_HEADER_SIZE		16
> +#define AFBC_SUPERBLK_ALIGNMENT		128
> +
> +bool drm_afbc_check_offset(struct drm_device *dev,
> +			   const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	if (mode_cmd->offsets[0] != 0) {
> +		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> +
> +bool drm_afbc_check_size_align(struct drm_device *dev,
> +			       const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +
> +	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> +		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
> +			DRM_DEBUG_KMS(
> +				"AFBC buffer must be aligned to 16 pixels\n"
> +			);
> +			return false;
> +		}
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> +		/* fall through */
> +	default:
> +		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_check_size_align);
> +
> +bool drm_afbc_check_fb_size(struct drm_device *dev,
> +			    const struct drm_mode_fb_cmd2 *mode_cmd,
> +			    struct drm_gem_object *objs, int bpp)
> +{
> +	int n_superblocks = 0;
> +	u32 afbc_superblock_size = 0, afbc_superblock_height = 0;
> +	u32 afbc_superblock_width = 0, afbc_size = 0;
> +
> +	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> +		afbc_superblock_height = 16;
> +		afbc_superblock_width = 16;
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
Copying from
https://cgit.freedesktop.org/drm/drm-tip/tree/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c#n60
                afbc_superblock_width = 32;
                afbc_superblock_height = 8;
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> +		/* fall through */
> +	default:
> +		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
> +		return false;
> +	}
Can you combine the two switch - case confitions (from this function
and the one in drm_afbc_check_size_align()) and put it in a separate
function (say drm_afbc_get_superblock_dimensions()) of its own ?
This will help to avoid code repetition.

> +
> +	n_superblocks = (mode_cmd->width / afbc_superblock_width) *
> +		(mode_cmd->height / afbc_superblock_height);
> +
> +	afbc_superblock_size =
> +		(bpp * afbc_superblock_width * afbc_superblock_height)
> +			/ BITS_PER_BYTE;
> +
> +	afbc_size = ALIGN(n_superblocks * AFBC_HEADER_SIZE,
> +			  AFBC_SUPERBLK_ALIGNMENT);
> +	afbc_size += n_superblocks *
> +		ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
> +
> +	if ((mode_cmd->width * bpp) != (mode_cmd->pitches[0] * BITS_PER_BYTE)) {
> +		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\n",
> +			mode_cmd->pitches[0] * BITS_PER_BYTE,
> +			mode_cmd->width, bpp
> +		);
> +		return false;
> +	}
> +
> +	if (objs->size < afbc_size) {
> +		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
> +			objs->size, afbc_size
> +		);
> +
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL(drm_afbc_check_fb_size);
> diff --git a/include/drm/drm_afbc.h b/include/drm/drm_afbc.h
> new file mode 100644
> index 000000000000..ce39c850217b
> --- /dev/null
> +++ b/include/drm/drm_afbc.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * (C) 2019 Collabora Ltd.
> + *
> + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> + *
> + */
> +#ifndef __DRM_AFBC_H__
> +#define __DRM_AFBC_H__
> +
> +struct drm_device;
> +struct drm_mode_fb_cmd2;
> +struct drm_gem_object;
> +
> +bool drm_afbc_check_offset(struct drm_device *dev,
> +			   const struct drm_mode_fb_cmd2 *mode_cmd);
> +
> +bool drm_afbc_check_size_align(struct drm_device *dev,
> +			       const struct drm_mode_fb_cmd2 *mode_cmd);
> +
> +bool drm_afbc_check_fb_size(struct drm_device *dev,
> +			    const struct drm_mode_fb_cmd2 *mode_cmd,
> +			    struct drm_gem_object *objs, int bpp);
> +
> +#endif /* __DRM_AFBC_H__ */
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
