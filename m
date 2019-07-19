Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BC66E149
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 08:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suc0mzbmb/15XTEHRQHbTW6QkeZuvyCKFRSqqAxbwwU=; b=A//BeBgIy3wCTK
	t0+2aeKfiu8QCKFXh+MxYzJSaCGH4Jb9qY0w6aHHiQ0p4fjP9S7G3d7J84Oh8+2Q4fXeeqs+YaUjM
	pHgd82PolFVn8JBbE+r88Rs0hzJXXcfXjG5hu5gBAnVeO1fR9TspHYTRH34QjmqpNrRqDtGHSSd8G
	K+6hZJ5Q/SLCoh/c0Dg4JVSdyOFm5xm6g0fZjN2emH8Un+vbL9M5FApBaPh4rjNnbZqE7atIqW8oD
	AVKvRfF+3BfowC1E5nQpLM1ErwnnVcROVcotbfBgzvmdqZzrTWbuPbGdxtaEm30Xs4XoZj3RTdbBi
	/FlIC2773lGVem1/df+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMpH-0003BK-Q3; Fri, 19 Jul 2019 06:57:07 +0000
Received: from mail-eopbgr720044.outbound.protection.outlook.com
 ([40.107.72.44] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMp1-00039g-Fb; Fri, 19 Jul 2019 06:56:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrMDV5DvwmrGZsGRAQfC6GKDyX1sA7e6rJ0wnfEZweqIgDfxARjoNqGmFvZX2/h5HrTvbOOX4xGjdCvPqTvNmtTHcSg0ML6V57kXzNMdBgBpxMrEudNJZB6VLgL9PWDEw7DtO8NgkK4abksDczR9fANnBfVMKBc2/UfUCe2VIALTgTZCs9At/Z5OD5GGVgK8x3XwaBcGC2grCMv9dG9MMA9I0jDTW+vuwfjYTNlpb0B8YCXpwWYBEngjm1mJaM3x34vdGuB8xDZLxb6e1+uVKTO4VSPMUdq1rk4tyTcn0n7NOYLhSC/jWNr2J40qzA2+vfCiD//LvsAVycSy5T/0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGn16F+GcdQT+ENPfJ0DfUi9UIu3sBp1VLc8FtOyS/Y=;
 b=iEgXT3/N+suQvAB/Re34ptHkR4cURNg8Q2B2QQ9j56o772VMohKLJRiiQz+t3sIupjbNFke33VCffv4Hyzk0C3GaWKLTljSqtZLXp+5h0CrOqPHO9nhA881eGvhcKf9RJavAgG/wsLFSGAMGhZEb4b8v/6c6QAmvLApaXGxlQgfv4mgmvB6YJ/+2Jagk99pKOubAKe+bgdlTsWrSmkDBym1ch9vIACD9MG1CjmIZM3OQGd0Vqu9e8SfqSEfjkq98SPKgfyA87hJf+Kp3qtuOAe7Et4k8s9ICjcfhmHddBARSNEsJTqoMVWJDZ+w2N76NK1omy/acKQN1zfJX3b2OjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGn16F+GcdQT+ENPfJ0DfUi9UIu3sBp1VLc8FtOyS/Y=;
 b=tkrTfk0besjcpUBpoSCs7XeVydeyyOjSBrXOXles5gEfOoyTgWtvGG0g3JckCHjwa0NFLJQG9RsYwzS2wPFiIdekeMq/k0lI8L+OiZhJxtqDhalMTINBp1g54EHTJ8HnTEn2d0UFhdVXiIUaOQqhvTbh1EO9KC38DZ3Bk4qlr9c=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1579.namprd12.prod.outlook.com (10.172.38.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 06:56:47 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7%10]) with mapi id 15.20.2094.011; Fri, 19 Jul
 2019 06:56:47 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Sam Ravnborg <sam@ravnborg.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v1 11/11] drm: drop uapi dependency from drm_file.h
Thread-Topic: [PATCH v1 11/11] drm: drop uapi dependency from drm_file.h
Thread-Index: AQHVPYQPxxf70kJH2U2mcmXD4bmlyKbRgysA
Date: Fri, 19 Jul 2019 06:56:47 +0000
Message-ID: <57ad927c-4b7f-d6e2-edda-720386190054@amd.com>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-12-sam@ravnborg.org>
In-Reply-To: <20190718161507.2047-12-sam@ravnborg.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0104.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::20) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 442feb6d-79de-4a0e-007a-08d70c16444e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1579; 
x-ms-traffictypediagnostic: DM5PR12MB1579:
x-microsoft-antispam-prvs: <DM5PR12MB157902555D6F8D596B130C6783CB0@DM5PR12MB1579.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(189003)(199004)(66946007)(6486002)(14454004)(6512007)(53936002)(5660300002)(6116002)(229853002)(478600001)(65956001)(2501003)(58126008)(86362001)(6246003)(68736007)(6436002)(256004)(36756003)(99286004)(2906002)(81166006)(46003)(186003)(71200400001)(64126003)(8936002)(25786009)(31686004)(446003)(11346002)(65826007)(7416002)(71190400001)(81156014)(8676002)(2616005)(486006)(6506007)(7736002)(110136005)(386003)(54906003)(65806001)(4326008)(66476007)(66446008)(66556008)(31696002)(64756008)(76176011)(52116002)(476003)(316002)(102836004)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1579;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y+KZ/gD9/Mvhg1n1qnZFUyTVbi7puvnNlT3yyiapTW1cXKbFu6yEKQyb7zER6mbkJvoTgbZE1GYspqc/U+JB7Tr7IAw9kUV9Ktwlot6tfaK0iZDAMlCfWdbIXy6IoySpR1j83WaS5kqCKvyHoWoWbXeLUHIPQv6Ye+zlMK03EFaC5irskFZzpMUKtTX18kb0l3XULOe5iPbemz15KWx6tHPRCcgjzr3Zt20xaYmjYCNskTJvt7FyJCuNcZqm0wPzGMpHa1XhkzAAQB3E01VjmEiMpRisDwjIlOOoOp6cgDvhooqmoUnQydALrumi9wYduroOqw0Bsv0IknFdetNu0Ofx8zUsTxwGG/SkIKDUR3neLxLvVq994V5pvDD+eKLDpspohvU33/vVB4Ot0pVYkMQDyf+dFXsjQYb60sFrmPg=
Content-ID: <FB76C18FB64AFB478EFAFE7250E3D9A2@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 442feb6d-79de-4a0e-007a-08d70c16444e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 06:56:47.5064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1579
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_235651_526112_5A01A63A 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>, "Zhou,
 David\(ChunMing\)" <David1.Zhou@amd.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?utf-8?B?Tm9yYWxmIFRyw7hubmVz?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 18.07.19 um 18:15 schrieb Sam Ravnborg:
> drm_file used drm_magic_t from uapi/drm/drm.h.
> This is a simple unsigned int.
> Just opencode it as such to break the dependency from this header file
> to uapi.

Mhm, why do you want to remove UAPI dependency here in the first place?

I mean the type can't change because it is UAPI, but it is rather bad 
for a documentation point of view.

Christian.

>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Liviu Dudau <Liviu.Dudau@arm.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Eric Anholt <eric@anholt.net>
> ---
>   include/drm/drm_file.h | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
> index 67af60bb527a..046cd1bf91eb 100644
> --- a/include/drm/drm_file.h
> +++ b/include/drm/drm_file.h
> @@ -34,8 +34,6 @@
>   #include <linux/completion.h>
>   #include <linux/idr.h>
>   
> -#include <uapi/drm/drm.h>
> -
>   #include <drm/drm_prime.h>
>   
>   struct dma_fence;
> @@ -227,7 +225,7 @@ struct drm_file {
>   	struct pid *pid;
>   
>   	/** @magic: Authentication magic, see @authenticated. */
> -	drm_magic_t magic;
> +	unsigned int magic;
>   
>   	/**
>   	 * @lhead:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
