Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5640078F34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufUy4S81rY/YA7qQ9qJypqagcljsqQvsC7YomBmVL+k=; b=HjR+wRf6D9Pt4c
	N/NR5SQ3HDYGwn36tZ9buQKx0po1B3QBRll3EJ4CiYCXElatJXRo8T/TtvC2RGK4qzDt7A3OmsPkf
	fqf5JuNroxvrvddIGeQdck8iM0TuvAVObWyXORoHsX1fWgo7N911zjbJN3UmVKbbe/eB0UJWCzLy6
	27Kc4sPmxZLf5LgcchEj72FtOnPYTD/Pfyb0TOlzJDAF7YEsu6qMnqc9AE9X4Jsqkl1u/Wa1AM44d
	7ZRuZKcPBEInUka95EF+one25RbE7W+9eQJVcNhGBD7VtQVcddz0163GEK2C0pnYnb47PoY5en3b4
	G0P3bBL3zPSMTtAdGHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7Zn-0004no-Nc; Mon, 29 Jul 2019 15:28:40 +0000
Received: from mail-eopbgr720041.outbound.protection.outlook.com
 ([40.107.72.41] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7ZX-0004n1-Gl; Mon, 29 Jul 2019 15:28:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNCDVOef6CJkNpB8/lR1R+lvqGxtfYMX87nk75eOz/K/CWOGr8+CmNxnEJ7a/eN1uSe7u9YquaG+IvlSI4llI5Med316IL7CAyInNcpj5Nm15Nl/nM0VkT4/U5uuGunT5JPTHioe4z6jhRlbTcjZ067vFvbGxYFxJ+5k+IvgcDgFYRJzydhMulV+NI0STh6yBvRhtuDqe8FbetFpXhASPpjhFkVNDAxjoaITHjyG4QGdTYNFwo1cAzkj2mB/dqOzF/SfBj9Q+kdQfAK/xwavaU1JCtytH/NB/Y/4v+GJDgZbBI2aiuKGNmFGys6fymgt+mnbaMULzHRchbYvPyXzxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Du1A6EJe7Bev/MzUoECU3SbhpZvFkTx5zpRmfOsJUOE=;
 b=QanaQW0FFs3yGU9/Dhe1ccGG687fcQ9PHNNLTd5o23kB1okGk2bG65g2lBcKGjBpAnd2unqsx04iHIKkL488/Z0LsJ9udnqfin3q0tkSa9U6dRFCExtixlFaMEBV4KP2wztH760Wxaan35y/w2/GrazRhlBz654Cpv5aeN00fyzPRpsW85BMivjqsow+qv2PaInCSgUK2meaZ6z8FZt0wKQKQUON6sy9s0Vb5FoTIwy+g55bTo/mNZ8pTUum9IWfZIB2OKnJcAu1PCk/+m45sijmkN3DpxynyQxJlYiJJixGa3LAg3rLqoexCaFNCJVny5CJZ9ycOFCHQxHWhmtrlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Du1A6EJe7Bev/MzUoECU3SbhpZvFkTx5zpRmfOsJUOE=;
 b=uAgxDrO4b1c88/tOCqIor4s9IkWAaL3EQc9gKSDj/FVQRpWYdJFIqZ/Bac0i9+cpAQf9xarQDKqvhWSgnpsEUwUax2OCsOtOHpFsYj2il21X4kvZ4A6yKUstd6PzRJTku6vAwn0bhgNYkwaib7C0mTUe2c8sSJo+detkzaYVp/M=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1628.namprd12.prod.outlook.com (10.172.35.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Mon, 29 Jul 2019 15:28:15 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::9ddf:934:8155:a6ff]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::9ddf:934:8155:a6ff%2]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 15:28:15 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Sam Ravnborg <sam@ravnborg.org>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Thread-Topic: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Thread-Index: AQHVPYQGC1CUWl5tBEabUnuzJI4nDabQlbYAgADs0ICAEBl5gIAAHtSAgAAOlwA=
Date: Mon, 29 Jul 2019 15:28:15 +0000
Message-ID: <67c2807f-582c-49a9-5699-a8baab3d3a0f@amd.com>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
 <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com> <87tvb5nh5c.fsf@intel.com>
 <20190729143555.GA16927@ravnborg.org>
In-Reply-To: <20190729143555.GA16927@ravnborg.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0093.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::33) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecfe9b11-0583-41ec-38f1-08d714396000
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1628; 
x-ms-traffictypediagnostic: DM5PR12MB1628:
x-microsoft-antispam-prvs: <DM5PR12MB16283D0D7B70DCBDBEA0B41683DD0@DM5PR12MB1628.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(199004)(189003)(486006)(54906003)(65956001)(64126003)(71190400001)(6512007)(476003)(11346002)(71200400001)(81156014)(68736007)(81166006)(99286004)(86362001)(65806001)(110136005)(31686004)(31696002)(14454004)(316002)(7736002)(76176011)(256004)(6116002)(446003)(6436002)(7416002)(58126008)(305945005)(46003)(66556008)(2616005)(4326008)(6246003)(8676002)(66946007)(8936002)(25786009)(65826007)(53936002)(6506007)(2906002)(64756008)(52116002)(66446008)(102836004)(5660300002)(386003)(6486002)(66476007)(186003)(229853002)(478600001)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1628;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MrfBZZa7YTsENGQs76boff0KVwMKjlTh5kviiZI6BeeIpAQuSoOIuLz20fJTvz4TQ6fvEYZJCHedCC9lzQP+Oi3IGP0YC+zw3rxJQqgoN/2J2p6f6PJ4n1uM8qh6Wm7CIe8fOdyK3bVGkRM4EcJeLUUyB5BuYh1RbVD/umKsai3er7n7ztYlQMqzjASNQHZwMd141s97JyPMtcKYmUABCnXsJSdWV1ulYLYNHPXCUsV7EHi97ub8tvDkLmuPvCrrQD3XlCaIJJ4q7RT69uaaEb/1Y3dEMjH+nPkPx0ZanIY8P6CvVdX87UwqfWiz87ziYc3egoa+2YMRW2KJejpQ5uiuOZDfkJvBh6liOZqPv8OhpjbRSI0VqrLjGItuC1PSlgj4WKh14im39aQ7V3iNnpqLsfILoiHZl78ioo25lvQ=
Content-ID: <84E71931003A7145BA52528F26BA144F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecfe9b11-0583-41ec-38f1-08d714396000
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 15:28:15.4855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_082823_627456_339935EE 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.41 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 29.07.19 um 16:35 schrieb Sam Ravnborg:
>>>> Even then it so useless (which drm driver is this message for???) that I
>>>> want to remove them all :(
>>> Yeah, agree. I mean it is nice if the core drm functions use a prefix
>>> for debug output.
>>>
>>> But I actually don't see the point for individual drivers.
>> We should all migrate to the versions with device...
> Just to do an xkdc.com/927 I have considered:
>
> drm_err(const struct drm_device *drm, ...)
> drm_info(const struct drm_device *drm, ...)
>
> drm_kms_err(const struct drm_device *drm, ...)
> drm_kms_info(const struct drm_device *drm, ...))

Why not get completely rid of those and just use dev_err, dev_warn, 
pr_err, pr_warn etc?

I mean is it useful to have this extra printing subsystem in DRM while 
the standard Linux one actually does a better job?

Christian.

>
> And so on for vbl, primse. lease, state etc.
>
> Then we could fish out relevant info from the drm device and present
> this nicely.
>
> For the cases where no drm_device is available the fallback is:
> drm_dev_err(const struct drm_device *drm, ...)
> drm_dev_info(const struct drm_device *drm, ...))
>
> We could modify the existing UPPERCASE macros to be placeholders for
> the more reader friendly lower cases variants and base it all on the
> established infrastructure.
>
> But this is just idle thinking, as only a serious patch would stir the
> relevant discussions.
>
> For now this is far from the top of my TODO list.
>
>
> 	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
