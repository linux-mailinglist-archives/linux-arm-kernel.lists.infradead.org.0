Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58171681D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Rz60HZ+cEZMe2q0o5vpUTc9jlKyDjvmbItx32hGaSM=; b=aC49PINYZP3S+4
	DlyrykeU+sr9MOymz7FrYkw4s7Jh+2bViLB1Z7EOAUvbnijdWpxeIaxp21XrJlV8q4RjWpXigJTY0
	hRRCQ2idsRqEoqQUgCs+zBE0zNDS/MQ+uOCIRx2TF3awNsn3GPx3Th1MEDhDF/r7RaP0irTktZa9h
	PqNCYmJbxGkqdHcIpHe0I/EfSpIuUU1nBkgdTVeKNCMzrTotaW6W50gdA0Yi2YWtW5bLxr+gGa+hg
	ZQz45JZyB2R7xGBBCYmuCEsJQ+uGsbTXTE40tIh9Ha0jeUrgRkwQkefIVbA/Hu2df/KG72rIhA6xU
	uw40qmhOQB6PA23PI4hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3C8-0000hJ-Lk; Tue, 07 May 2019 16:43:56 +0000
Received: from mail-eopbgr730046.outbound.protection.outlook.com
 ([40.107.73.46] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3C0-0000gs-K8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 16:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amd-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6VFbky3ymyVMrcNdfwd/tdxQTzdcc3pSaBPWG3vy6A=;
 b=HjfFqM3UsXrd+Qok5En8MfdyZFNJ8bFZ/ag7iiAfSDoMlfaD2HVd8/vk2e886DFRBtJ+TT3XpBuvCWBJJa6jui9ZWygx9dU0JxWxGtJbUwcCiT+3Wj2iSHV0mYir9iaE8nwBWblnb2Bx71JtVjg1/XOjlANN7eigqBFyYAGn6gM=
Received: from BYAPR12MB3176.namprd12.prod.outlook.com (20.179.92.82) by
 BYAPR12MB3544.namprd12.prod.outlook.com (20.179.94.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 16:43:44 +0000
Received: from BYAPR12MB3176.namprd12.prod.outlook.com
 ([fe80::9118:73f2:809c:22c7]) by BYAPR12MB3176.namprd12.prod.outlook.com
 ([fe80::9118:73f2:809c:22c7%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 16:43:44 +0000
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
Subject: Re: [PATCH v15 11/17] drm/amdgpu, arm64: untag user pointers
Thread-Topic: [PATCH v15 11/17] drm/amdgpu, arm64: untag user pointers
Thread-Index: AQHVBCkwhlWrfC6yEUGolKUQ2UvD0qZf37iA
Date: Tue, 7 May 2019 16:43:44 +0000
Message-ID: <f452d003-157d-c307-3a27-fe5c3394e34e@amd.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <84676a97cec129eb7a10559ceae2bec526160ad6.1557160186.git.andreyknvl@google.com>
In-Reply-To: <84676a97cec129eb7a10559ceae2bec526160ad6.1557160186.git.andreyknvl@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.251]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-clientproxiedby: YTXPR0101CA0068.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::45) To BYAPR12MB3176.namprd12.prod.outlook.com
 (2603:10b6:a03:133::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Felix.Kuehling@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09e7b200-0034-47ca-9971-08d6d30b2b1a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR12MB3544; 
x-ms-traffictypediagnostic: BYAPR12MB3544:
x-microsoft-antispam-prvs: <BYAPR12MB3544ED1AEDC3F608873090EF92310@BYAPR12MB3544.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(346002)(136003)(39860400002)(189003)(199004)(72206003)(71190400001)(2501003)(316002)(76176011)(386003)(36756003)(81166006)(53546011)(66066001)(476003)(81156014)(6506007)(14454004)(8936002)(478600001)(52116002)(102836004)(486006)(2906002)(8676002)(65956001)(31696002)(65806001)(68736007)(25786009)(5660300002)(186003)(2616005)(6116002)(6246003)(66446008)(73956011)(11346002)(86362001)(446003)(66476007)(64756008)(2201001)(66946007)(26005)(4326008)(31686004)(71200400001)(6512007)(66556008)(53936002)(229853002)(64126003)(58126008)(54906003)(305945005)(6486002)(7406005)(7416002)(256004)(14444005)(99286004)(65826007)(7736002)(110136005)(6436002)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3544;
 H:BYAPR12MB3176.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fHcoZnbq9hf2cYkyJCy1IaiD/PM1Vj0DJH3jKfi+aVbuz0nKby+qIya9Jvj61fxNkWgd6wJ2TZFhOMWgIRoBLMBanxM859JGflQ59K+s8RFNIct8hJsIwJ6VE53EniVRTEiOJ71+THdgKc4UuaglK/w1gwDkEDO7Sz49xcdNMo+B6a1Kwr99TuQBUx3qSeFHEqTixIo1etZTz3A69eG9Ssn5u7UWxbSNv847Lm/d0RBKzL7aXwFTQKty6oCOW3GeQJo76qimZ4rrx1r9hK9R4O+yyTEBt8IJttn3Qr0DA58jGDFXtmL/ImI4mjiXUDqyGS6xQ/i5qRjq1gb0r/8PxTNgenUEyN8djedX6sU93fV22s1Ch5Wxi6pvsOW9dF1SwO5fO/xjwavNzjJfY3hmjA==
Content-ID: <D2B88B58BE4D1C41BB18133F73BDE5B9@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09e7b200-0034-47ca-9971-08d6d30b2b1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 16:43:44.3320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3544
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094348_710909_351403ED 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.46 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [165.204.55.251 listed in dnsbl.sorbs.net]
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
 "Kuehling@google.com" <Kuehling@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Lee Smith <Lee.Smith@arm.com>, Alex Williamson <alex.williamson@redhat.com>,
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
> In amdgpu_gem_userptr_ioctl() and amdgpu_amdkfd_gpuvm.c/init_user_pages()
> an MMU notifier is set up with a (tagged) userspace pointer. The untagged
> address should be used so that MMU notifiers for the untagged address get
> correctly matched up with the right BO. This patch untag user pointers in
> amdgpu_gem_userptr_ioctl() for the GEM case and in amdgpu_amdkfd_gpuvm_
> alloc_memory_of_gpu() for the KFD case. This also makes sure that an
> untagged pointer is passed to amdgpu_ttm_tt_get_user_pages(), which uses
> it for vma lookups.
>
> Suggested-by: Kuehling, Felix <Felix.Kuehling@amd.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>


> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c          | 2 ++
>   2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> index 1921dec3df7a..20cac44ed449 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> @@ -1121,7 +1121,7 @@ int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
>                  alloc_flags = 0;
>                  if (!offset || !*offset)
>                          return -EINVAL;
> -               user_addr = *offset;
> +               user_addr = untagged_addr(*offset);
>          } else if (flags & ALLOC_MEM_FLAGS_DOORBELL) {
>                  domain = AMDGPU_GEM_DOMAIN_GTT;
>                  alloc_domain = AMDGPU_GEM_DOMAIN_CPU;
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> index d21dd2f369da..985cb82b2aa6 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> @@ -286,6 +286,8 @@ int amdgpu_gem_userptr_ioctl(struct drm_device *dev, void *data,
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
