Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D8B8F326
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFXF8uD4Vu8HEg3YUUjXOeHEBXRx4OcCN0rfLSihVDY=; b=pjO8cP0LzIQBxy
	nShDhW/0KmyVTl6JkGhDyHcPS2xkSeZkdsC/MEWs+GHNPJ1WC/7xQOoUDwxw8TjuEXznRgs6beqgE
	e0/T8zXZtFUT6s6px+vXZ+lg2tZlOy03Nu96P6oDX+DRWLI3gevcX39L+WShFKkDqIhYRrf5py6en
	mh1D0xVxvFejvITQ7utbYH4SfziEfPzyqruaNd3xYnq+MjJ5WSzXD7hkdYmQ/bduTmP0K4X4qaP0l
	yTQ96FiVGcTajg4Ql3W2cjQvq7r3ftycYbFJY4b6Tj5tWmQMda2q0b39DIFlJ2dgnQaHFL3pv+tab
	fChwK7HMMGUyREAIhKVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKNC-0005uM-9z; Thu, 15 Aug 2019 18:21:18 +0000
Received: from mail-eopbgr680075.outbound.protection.outlook.com
 ([40.107.68.75] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKMz-0005tu-JT
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:21:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfviY8FA9c5M498MIBNdoq4y8L+6YvobCvunw8y7KowpaQUr4OFfB3MMMCdUgU3q0BMgp2GuQKZc+htQcWJ0F0us4CpkyFsIQ1wmYQy1+IFo/Ht4tPUDjRvLseoLuhWUp8lX18tQdbo/g5OF8Ljprr8zADvob3P4iidHkeqzqL/A1wa7VLR0lkaYJBTbsvSPRXgJALY5ONzswRFmhUAg+0a2tC2EB416nGAt8jzTxXklXuXt+DJzpRwGezeMv2BIp/GDIG5nzhjxlYlTroLUkl40xKddYCmQk2bU1R05ghaks6TvVBI/9CssL41NJYp/rsj55pKK4rpIK2zHjryo+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rq/Qt+N6mJauGSQER/F0ygVUwMjubyDLbDlHJkhacaQ=;
 b=L2v2MNQlCOyhDR3KPna9me3VH0QGCRc7T133IE6bAm145OHOofCnrG87RZdljBNTRbIOnytCbZs2f77grUxHl4CuSPEN2gZ0gp/uPaKwttEgBQBdbwCE2oWH/bu0L9d8AYllAE1fuhKGKAi2DsRRANc7cCmEcaw1vTcEhM7vqJckA5Iv23sFjPOuYDG0mLVtMc0oyXaAeX8e+rqSJ9eGkVEhZB1QRCEl7uR3dT3cijpU4mXWapRWfzEfVPuCBj5cHLLzaK7V1pFDrS+74Fd5NaNtvOCUKukmebAyI2+rGO6o8Zx/Ee11eH/q+Xw5kZWWOiNT+9glmRf9tSKHVqCl1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rq/Qt+N6mJauGSQER/F0ygVUwMjubyDLbDlHJkhacaQ=;
 b=ytqJ04Y5NilDqnM7wSR0QMfgf+rv+A38rysKtFErp1NVqFEC0A0tjB/G/zgCsz54EP06pT+gvCuIxcDy+VPYIUM2z9clBXfqwU2AcgXxIN6jNdmIF/Fl8mD9Sq82GqaUGyqbzHKKZkEhL2Ucpu8MgRDZ6tPPkxTwdM51xFSsNAY=
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (10.175.88.22) by
 DM5PR12MB1498.namprd12.prod.outlook.com (10.172.39.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 18:21:01 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::a129:1f1a:52a9:4ac3]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::a129:1f1a:52a9:4ac3%5]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 18:21:01 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Christoph Hellwig <hch@lst.de>, Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 0/6] drm+dma: cache support for arm, etc
Thread-Topic: [PATCH 0/6] drm+dma: cache support for arm, etc
Thread-Index: AQHVU5JmDrmSZWuFL068/CJR6aJZq6b8hSsA
Date: Thu, 15 Aug 2019 18:21:00 +0000
Message-ID: <e3f73b3c-49d5-3c19-dfff-0a24b4617e50@amd.com>
References: <20190814220011.26934-1-robdclark@gmail.com>
 <20190815065117.GA23761@lst.de>
 <CAJs_Fx4bS64s7+xQqsead3N80ZQpofqegFQu+tT=b3wcGd_2pA@mail.gmail.com>
 <20190815175346.GA19839@lst.de>
In-Reply-To: <20190815175346.GA19839@lst.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0033.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::21) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de4ad33d-86fa-4654-afa7-08d721ad532f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1498; 
x-ms-traffictypediagnostic: DM5PR12MB1498:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR12MB14980593AB1F77840C217C7683AC0@DM5PR12MB1498.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(189003)(199004)(478600001)(8676002)(14444005)(6116002)(81156014)(81166006)(36756003)(110136005)(256004)(54906003)(4326008)(14454004)(25786009)(6246003)(31686004)(64126003)(5660300002)(58126008)(7736002)(71200400001)(99286004)(53936002)(305945005)(71190400001)(316002)(186003)(7406005)(7416002)(102836004)(66946007)(6436002)(53546011)(52116002)(8936002)(446003)(6512007)(476003)(31696002)(66446008)(6506007)(66556008)(46003)(86362001)(66476007)(64756008)(6486002)(386003)(2906002)(76176011)(229853002)(11346002)(65826007)(2616005)(65956001)(65806001)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1498;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mjkHOObKBkCvOmvAt7FgynzwLeqBX4jPF5vYY2ctttZv3EYvOLzZEgygKRGvhgE6xv1cYv+/TedaHtmIjCFKrGMDNq4d2dSGkjcO9hYe7G6wDqRlEW35yYI2D0DbNw3Aw1aCwKfgE5PRRq3IAT94o8E34qq4DWB5vQkTFi7+KuajgiTwmQ7S43DpxjYzVDSwBq0itQx6qzFoK7UiYefuq+5SUbF6VRKa2t498ILq37ENAJzTY5J+PCYBTPsOiEk6//DhyX6FZS4CI4ndUfFOjKeO+q5Px17aept1OK3WpJvcJ1dtmKV33y508nxj6N1ZudJeovWEzKGUSTbwjcTqfqXB/zs9E8CsrMMaM3HTl6bKCGkRGk3elCLucOcT7DhgWvTgw8WWqxxKghMqtPs61daNzyHwpDKfL35lF2g7qkc=
Content-ID: <2458A0C96E02564CBEC3503674921588@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de4ad33d-86fa-4654-afa7-08d721ad532f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 18:21:01.0325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0q8ZR4mj3HGLi77GQZGvseiD7M5u/NmaVslkiWmFbWAHKNRTTSdyjlWsPDGP9raE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_112105_735723_2B86DE4C 
X-CRM114-Status: GOOD (  37.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.75 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Emil Velikov <emil.velikov@collabora.com>,
 "Sharma, Deepak" <Deepak.Sharma@amd.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Burton <paul.burton@mips.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT \(AARCH64
 ARCHITECTURE\)" <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND
 64-BIT\)" <linuxppc-dev@lists.ozlabs.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, "open list:DRM
 DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 15.08.19 um 19:53 schrieb Christoph Hellwig:
> On Thu, Aug 15, 2019 at 06:54:39AM -0700, Rob Clark wrote:
>> On Wed, Aug 14, 2019 at 11:51 PM Christoph Hellwig <hch@lst.de> wrote:
>>> As said before I don't think these low-level helpers are the
>>> right API to export, but even if they did you'd just cover a tiny
>>> subset of the architectures.
>> Are you thinking instead something like:
>>
>> void dma_sync_sg_for_{cpu,device}(struct device *dev, struct scatterlist *sgl,
>>                                    int nents, enum dma_data_direction dir)
>> {
>>      for_each_sg(sgl, sg, nents, i) {
>>          arch_sync_dma_for_..(dev, sg_phys(sg), sg->length, dir);
>>      }
>> }
>> EXPORT_SYMBOL_GPL(dma_sync_sg_for_..)
>>
>> or did you have something else in mind?
> No.  We really need an interface thay says please give me uncached
> memory (for some definition of uncached that includes that grapics
> drivers call write combine), and then let the architecture do the right
> thing.  Basically dma_alloc_coherent with DMA_ATTR_NO_KERNEL_MAPPING
> is superficially close to what you want, except that the way the drm
> drivers work you can't actually use it.

The terminology graphics driver use is USWC (Uncached Speculative Write 
Combine).

Essentially it is a leftover from the AGP days where the graphics 
devices couldn't snoop the CPU caches.

Nowadays they either don't want to snoop the CPU caches for performance 
reasons.

Or because of special requirements that certain areas of system memory 
are not cached for certain functionality.

For example the "VRAM" on AMD GPUs which are integrated into the CPU is 
just stolen system memory. Then you can scanout your picture to the 
display from this memory or "normal" system memory, but only if the 
system memory is mapped as USWC.

> The reason for that is if we can we really need to not create another
> uncachable alias, but instead change the page attributes in place.
> On x86 we can and must do that for example, and based on the
> conversation with Will arm64 could do that fairly easily.  arm32 can
> right now only do that for CMA, though.
>
> The big question is what API do we want.  I had a pretty similar
> discussion with Christian on doing such an allocation for amdgpu,
> where the device normally is cache coherent, but they actually want
> to turn it into non-coherent by using PCIe unsnooped transactions.
>
> Here is my high level plan, which still has a few lose end:
>
>   (1) provide a new API:
>
> 	struct page *dma_alloc_pages(struct device *dev, unsigned nr_pages,
> 			gfp_t gfp, unsigned long flags);
> 	void dma_free_pages(struct device *dev, unsigned nr_pages,
> 			unsigned long flags);
>
>       These give you back page backed memory that is guaranteed to be
>       addressable by the device (no swiotlb or similar).  The memory can
>       then be mapped using dma_map*, including unmap and dma_sync to
>       bounce ownership around.  This is the replacement for the current
>       dma_alloc_attrs with DMA_ATTR_NON_CONSISTENT API, that is rather
>       badly defined.
>
>   (2) Add support for DMA_ATTR_NO_KERNEL_MAPPING to this new API instead
>       of dma_alloc_attrs.  The initial difference with that flag is just
>       that we allow highmem, but in the future we could also unmap this
>       memory from the kernel linear mapping entirely on architectures
>       where we can easily do that.

Mhm, why would we want to do this?

>
>   (3) Add a dma_pages_map/dma_pages_unmap or similar API that allows you
>       to get a kernel mapping for parts or all of a
>       DMA_ATTR_NO_KERNEL_MAPPING allocation.  This is to replace things
>       like your open-coded vmap in msm (or similarly elsewhere in dma-buf
>       providers).
>
>   (4) Add support for a DMA_ATTR_UNCACHABLE flags (or similar) to the new
>       API, that maps the pages as uncachable iff they have a kernel
>       mapping, including invalidating the caches at time of this page
>       attribute change (or creation of a new mapping).  This API will fail
>       if the architecture does not allow in-place remapping.  Note that for
>       arm32 we could always dip into the CMA pool if one is present to not
>       fail.  We'll also need some helper to map from the DMA_ATTR_* flags
>       to a pgprot for mapping the page to userspace.  There is also a few
>       other weird bits here, e.g. on architectures like mips that use an
>       uncached segment we'll have to fail use with the plain
>       DMA_ATTR_UNCACHABLE flag, but it could be supported with
>       DMA_ATTR_UNCACHABLE | DMA_ATTR_NO_KERNEL_MAPPING.
>
> I was hoping to get most of this done for this merge window, but I'm
> probably lucky if I get at least parts done.  Too much distraction.

Thanks again for taking care of this,
Christian.

>
>> Hmm, not entirely sure why.. you should be on the cc list for each
>> individual patch.
> They finally made it, although even with the delay they only ended up
> in the spam mailbox.  I still can't see them on the various mailing
> lists.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
