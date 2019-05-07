Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8493916829
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS3eTr7LXbAv7JSf11Hvz5LMIfjcr4lPedYSJJM9RZ0=; b=Taa8tnfe5mUFi4
	cXAfbFB6kMJKBPoLrDKUQZkESu2DZ4hbvIw0NG07NM3sw6yJMSg3PWSZA7gezFEbvzJnBaqDIOlaC
	iogKRnqD/0gEAx1r4cxEZ52NQb6O/wkwEx67xjE7S5WQiOt3Y2SOS8/54UDPBngD0Op/naWLe4lWP
	uhC+G5++w1DB4979iEv3lj0sh31XMPaGuzm3VNS1WYbQfSwZolnz8Hm0f6hUUdAKlsuNIoHTjCek0
	rnqbS71UySZVHRevOYOl49lcYpCKHYIvjlNulS5mrOEGRlRuEUPXiBodslee3t9QWSanH0U6YuCo7
	2rpG/Tu4z7qM02BfpOJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3CR-00011S-7d; Tue, 07 May 2019 16:44:15 +0000
Received: from mail-eopbgr730062.outbound.protection.outlook.com
 ([40.107.73.62] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3CI-0000zH-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 16:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amd-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDmUxc0I3Vs06iUOv0mgYhYfmxdHxaW2JnGAm6xmlv4=;
 b=Uo8Nv1i3+69R/LhIxA3soBtXJ2s46HvlJdQoCtBNkfjEGnuoOXrCeXEd+f+FmlnJA0QmasVRB7BYDnk2uCZy86IWpuo418YVAzko+51ZBkfaRJKMicVW0XR7xHG8dD8Ngc8gbJnMxuTKKQmrt3wxM4zHz376fEGgZ9IuvR64H8E=
Received: from BYAPR12MB3176.namprd12.prod.outlook.com (20.179.92.82) by
 BYAPR12MB3544.namprd12.prod.outlook.com (20.179.94.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 16:44:02 +0000
Received: from BYAPR12MB3176.namprd12.prod.outlook.com
 ([fe80::9118:73f2:809c:22c7]) by BYAPR12MB3176.namprd12.prod.outlook.com
 ([fe80::9118:73f2:809c:22c7%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 16:44:02 +0000
From: "Kuehling, Felix" <Felix.Kuehling@amd.com>
To: Andrey Konovalov <andreyknvl@google.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org"
 <amd-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Subject: Re: [PATCH v15 12/17] drm/radeon, arm64: untag user pointers in
 radeon_gem_userptr_ioctl
Thread-Topic: [PATCH v15 12/17] drm/radeon, arm64: untag user pointers in
 radeon_gem_userptr_ioctl
Thread-Index: AQHVBCkzLfkJvfOc9kqyclyg05ajP6Zf386A
Date: Tue, 7 May 2019 16:44:02 +0000
Message-ID: <7568118b-ad57-156c-464f-54fb3f90a783@amd.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <03fe9d923db75cf72678f3ce103838e67390751a.1557160186.git.andreyknvl@google.com>
In-Reply-To: <03fe9d923db75cf72678f3ce103838e67390751a.1557160186.git.andreyknvl@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.251]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-clientproxiedby: YTXPR0101CA0058.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::35) To BYAPR12MB3176.namprd12.prod.outlook.com
 (2603:10b6:a03:133::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Felix.Kuehling@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93eca1e0-2a8f-45ef-5051-08d6d30b35d1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR12MB3544; 
x-ms-traffictypediagnostic: BYAPR12MB3544:
x-microsoft-antispam-prvs: <BYAPR12MB35449D43230F5246FFBE6D1892310@BYAPR12MB3544.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(346002)(136003)(39860400002)(189003)(199004)(72206003)(71190400001)(2501003)(316002)(76176011)(386003)(36756003)(81166006)(53546011)(66066001)(476003)(81156014)(6506007)(14454004)(8936002)(478600001)(52116002)(102836004)(486006)(2906002)(8676002)(65956001)(31696002)(65806001)(68736007)(25786009)(5660300002)(186003)(2616005)(6116002)(6246003)(66446008)(73956011)(11346002)(86362001)(446003)(66476007)(64756008)(2201001)(66946007)(26005)(4326008)(31686004)(71200400001)(6512007)(66556008)(53936002)(229853002)(64126003)(58126008)(54906003)(305945005)(6486002)(7406005)(7416002)(256004)(99286004)(65826007)(7736002)(110136005)(6436002)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3544;
 H:BYAPR12MB3176.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Lq5pCPDcPNLU5X+6HbKKo8uqlLH+qh1zPjC6a8jGCekQNZW/q3Uz5M5mILQQpOHPKm6yY7nVRSZkwb1aqbixPMKXDgRTrUEtSJc3P0fPdeVOAWwqkgoD6CXrw1+YnroUVESXWCnoWejM1WWWmtHHXP/3jLhJBO+0owXMBvH5Zjj7+nHCSozrJ++KKAP4ZRiPdoDmJVdEjPv4cM/2d8TBRHXO/Qd6GZcvYkcHUd1Nd9wYO+vrqFTuHiSZXQIUA+091XhYfn/pTZ5FbYAGZQFJZGCdA4KlegQuZPs2ughkxoW92Z9qq4w/pVD1i2tJKBOKsXs+vssL9Jfc4LWT0XHg5u6nA1YN4UpzQZ4b7EHBx37e00LlGJc2ZkMXVBMWO3RFqCccp5ZFyrsn9YtusagfI81mN78mXr3VKrVHTnKLwGY=
Content-ID: <AC55AB809D9E174784D2867A22094BC5@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93eca1e0-2a8f-45ef-5051-08d6d30b35d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 16:44:02.5248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3544
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094406_095629_86CB111E 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [165.204.55.251 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>, Lee Smith <Lee.Smith@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, "Deucher, 
 Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-06 12:30 p.m., Andrey Konovalov wrote:
> [CAUTION: External Email]
>
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
>
> In radeon_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
> userspace pointer. The untagged address should be used so that MMU
> notifiers for the untagged address get correctly matched up with the right
> BO. This funcation also calls radeon_ttm_tt_pin_userptr(), which uses
> provided user pointers for vma lookups, which can only by done with
> untagged pointers.
>
> This patch untags user pointers in radeon_gem_userptr_ioctl().
>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>


> ---
>   drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
> index 44617dec8183..90eb78fb5eb2 100644
> --- a/drivers/gpu/drm/radeon/radeon_gem.c
> +++ b/drivers/gpu/drm/radeon/radeon_gem.c
> @@ -291,6 +291,8 @@ int radeon_gem_userptr_ioctl(struct drm_device *dev, void *data,
>          uint32_t handle;
>          int r;
>
> +       args->addr = untagged_addr(args->addr);
> +
>          if (offset_in_page(args->addr | args->size))
>                  return -EINVAL;
>
> --
> 2.21.0.1020.gf2820cf01a-goog
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
