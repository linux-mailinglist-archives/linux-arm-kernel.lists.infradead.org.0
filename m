Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217CD6E13A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 08:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bL0uDWh9goN5IzTDThYV2Cc6Prrs0mAJHKybzz/h3A=; b=dr2DP+gYc+ksBP
	rllyDrPq39DExsDQUigs4gi4ksGcHm83UF0HLuG4W48lfoPBCRjBD37m6pPXv8mMM8o2VqEloxNel
	7E0pjRktzbSv4H48NBmmX7Gp7Y5w+98B/fkhTHX1EioK/l7+lA7TE0IzANAOjwyPPsPBYQn3mvUht
	qJ0Jy0spr4CNXmEju/LxYyplKDlOoXhqMhuSSROrFeK8ZuHkLYsaO0GwaPTBDWuiI9yy3lw9FGZHX
	I7iXCsEDqKK3mUFlLnVCEUsf2qn0k0t0ywITHi8HNfolh1W7lUZF/zNlaBifpfTbmna02bnUUbcgi
	qxOfxrPPaLletZ3dcBYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMmw-0001Cu-Hp; Fri, 19 Jul 2019 06:54:42 +0000
Received: from mail-eopbgr720047.outbound.protection.outlook.com
 ([40.107.72.47] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMmj-0001BU-D1; Fri, 19 Jul 2019 06:54:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9x2+GJjO7j+rKYBEb4xSzvuax9c1GWjPisrzAAGkmgrnVYgP04rHkHjw98rpjY6ZeLS7pcIkLsIGbJuWSaCt1qXPG8XOMiRv7EOZ84MK+kDJ0WKicgtnbk61RoVyCsBDXAu2X0lxdTwn9OzdQTp73JcTRA6IE8xye7NAwxnNT1dzzpjanTMqyVQOMd0eOgjhQ4ITgy6hxxU9bhsXrcZbFzKhFZD3cluMZI7cwtBC0mVwdvkUrIoXwIlIvA6k6RrPZ/75xBzrLnxFsFqwCt8I4VdJp5frDtBW+TvtMhghDhtL2iX8/wfvoG5em2orZ4DQ50UqrF0+E8ca80ZLWMcNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhk+nIT65fF//Ls04nAYxki4vfS4MA9rvnAiIwIonoc=;
 b=U1OzvGLLDgnIJDqTEVQhzlAWwu0XFX+G8fydNxaZwTrA3rgoxjkLezqgwTm+Bs554cKfTanT/dR+HRNxcSPsunXO3CPon44/CD2nAva2lUWS2BlqGGej7dMYxBU0+D3hBtCL6enpudzXUbYUDsY/aL8ewO/fwxGC5+7fx7jGX6pVPtyOsdvnK3mUy8jkaaBX9kHvyzLXaOY4pYVz4oEKiKitsWRWbc5aFj4T4T16WdSazrlsT48ubgh/Zcjy+G5bemDz8obhkr+gVZgMFFmtpXNhTYcTUcgqj35kTFY7e1dUZzIIfgA+m9wndFpdaelMPjkpoRVCRiduOuAmXlGYUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhk+nIT65fF//Ls04nAYxki4vfS4MA9rvnAiIwIonoc=;
 b=ilyVoTZk5JK3eNTBfQKnsaiwNFkp5iUA/zIg5D/k2OLi4KvnmZA1okLfCvahm8Um8N4dfGR8D2M+1gzLIOMU/AczP55M7lXh9r/XWRGa3WAwBF3na35Qo1RkwSbh9bNx4Y9OZUbEO2IMVs8Bb38Mf2w4cXSI103yQBzprQfCSJs=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1579.namprd12.prod.outlook.com (10.172.38.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 06:54:26 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7%10]) with mapi id 15.20.2094.011; Fri, 19 Jul
 2019 06:54:26 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, Sam Ravnborg <sam@ravnborg.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Thread-Topic: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Thread-Index: AQHVPYQGC1CUWl5tBEabUnuzJI4nDabQlbYAgADs0IA=
Date: Fri, 19 Jul 2019 06:54:25 +0000
Message-ID: <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
In-Reply-To: <156346840026.24728.936589728458336617@skylake-alporthouse-com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR2P264CA0019.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::31)
 To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2130c504-0d8f-467b-7ca7-08d70c15efcd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1579; 
x-ms-traffictypediagnostic: DM5PR12MB1579:
x-microsoft-antispam-prvs: <DM5PR12MB1579C8FA45995710FFDEA92283CB0@DM5PR12MB1579.namprd12.prod.outlook.com>
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
x-microsoft-antispam-message-info: zI2EXEMpXPJXrlBcrNy3622k0Jdp8pmMUuW1ZZoWJLIVolPPAXqA61OOZAhqoVoTIjuo9S+ocCKBl2ZbOMTU772vizWgEorgzWkPuDSxiqXCAlwhBYlj6hfTFEKyLdtOVMwKmSy7gnXbva5kk+vCTcSfSnt7cc6BsVIXt0S3rKn9x9Mwl+M1fn9OPAJdZUzoQjS7ufn69XyxzmWsMC6qZqbTg39utwWFyecRLH/j+kD9QwC+WXkEpzvVQdF4ZaYOg/qFXvY+0r903R0K9snwWqG2RokwZKXNQeqYCSvJmQRKEzuYhf2jKtV+JEcNCyZU6xz6XODKTDG58RQPXFv/oLI+Y2HdvkAH4jO+HVhucpw2T8p9HQMvq71zM+JoM44f9VO4wi5fwSqfjjCnjh3rofv73OxOmXxKePSMuLWhW98=
Content-ID: <0F13428D29D0644B8089D84916AB9841@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2130c504-0d8f-467b-7ca7-08d70c15efcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 06:54:25.7325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1579
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_235429_474349_DB8F03B0 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.47 listed in list.dnswl.org]
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
 Eric Anholt <eric@anholt.net>, "Zhou, David\(ChunMing\)" <David1.Zhou@amd.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>, Rob Clark <robdclark@gmail.com>,
 =?utf-8?B?Tm9yYWxmIFRyw7hubmVz?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 18.07.19 um 18:46 schrieb Chris Wilson:
> Quoting Sam Ravnborg (2019-07-18 17:14:58)
>> drm_print.h used DRM_NAME - thus adding a dependency from
>> include/drm/drm_print.h => uapi/drm/drm.h
>>
>> Hardcode the name "drm" to break this dependency.
>> The idea is that there shall be a minimal dependency
>> between include/drm/* and uapi/*
>>
>> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
>> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
>> Cc: Sean Paul <sean@poorly.run>
>> Cc: David Airlie <airlied@linux.ie>
>> Cc: Rob Clark <robdclark@gmail.com>
>> Cc: Sean Paul <seanpaul@chromium.org>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> ---
>>   include/drm/drm_print.h | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
>> index a5d6f2f3e430..760d1bd0eaf1 100644
>> --- a/include/drm/drm_print.h
>> +++ b/include/drm/drm_print.h
>> @@ -32,8 +32,6 @@
>>   #include <linux/device.h>
>>   #include <linux/debugfs.h>
>>   
>> -#include <drm/drm.h>
>> -
>>   /**
>>    * DOC: print
>>    *
>> @@ -287,7 +285,7 @@ void drm_err(const char *format, ...);
>>   /* Macros to make printk easier */
>>   
>>   #define _DRM_PRINTK(once, level, fmt, ...)                             \
>> -       printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
>> +       printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)
> I guess I'm th only one who
>
> #undef DRM_NAME
> #define DRM_NAME i915
>
> just so that I didn't have inane logs?
>
> One might suggest that instead of hardcoding it, follow the pr_fmt()
> pattern and only add "[drm]" for the drm core.
>
> Even then it so useless (which drm driver is this message for???) that I
> want to remove them all :(

Yeah, agree. I mean it is nice if the core drm functions use a prefix 
for debug output.

But I actually don't see the point for individual drivers.

Christian.

> -Chris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
