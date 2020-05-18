Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01C1D6FCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 06:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKb9Ake8MVTpoonE/FqHWC0DDpUIPxPHSZ1dwqJS5rU=; b=FD5EaiAjO0lbzh
	LyAEVh1DTjFIZp7K6BgZuv1yOUUhde6bzZxUOEjhjRwPD/GTwoC35ief2mAmYzrZf+cOptN8zyBek
	u5dSlsAo+VdC+bvxONeDnOmOixgvo8owhECeQWbE0VoCt+2hGIx/mCuVXgrJ+42sgESrh/mlGLGli
	22aAKahvaBCUyPWgJiFs5vNW8jW39Hrp5VMtQpsR+ZolINJQcubaS1X9rZouWndZZMRsZOHpYUVEl
	JhFsdB1KCHZaEjfhju+i1mR7/1Ddmj7ghc5E2qgn2oFDiYnQpTxry93Av3W4zj7+ZFu3XYoLJlWy0
	VJZ3ZJSu8vv2vYnl5c5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXLW-0006V4-Ff; Mon, 18 May 2020 04:25:46 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXLK-0006UZ-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 04:25:36 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ec20db00000>; Sun, 17 May 2020 21:23:12 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 17 May 2020 21:25:33 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 17 May 2020 21:25:33 -0700
Received: from [10.40.100.11] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 May
 2020 04:25:25 +0000
Subject: Re: [PATCH v6 09/10] arm64: efi: Export screen_info
From: Nikhil Mahale <nmahale@nvidia.com>
To: Michael Kelley <mikelley@microsoft.com>, Arnd Bergmann <arnd@arndb.de>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
 <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
 <MW2PR2101MB1052E413218D295EF24E5E05D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <f2b63853-24ae-d6b7-cd43-5792c0d4d31b@nvidia.com>
X-Nvconfidentiality: Public
Message-ID: <4202ea20-6e51-31d3-44b1-3861798a8158@nvidia.com>
Date: Mon, 18 May 2020 09:55:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <f2b63853-24ae-d6b7-cd43-5792c0d4d31b@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1589775792; bh=ekIXZzrCnsEE0UL348V3okhZK7T2Db9hjgnyPCpZFQo=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=hnm9iVrq0+hxj9S+6CP6ONZHVycQsEsKBoV846kHFRHb/EfZmjjw1YnuEJO3PMK31
 7Tp+RQs87fW+2hXs5HIPHryeAvOYSGRc9+UHWUBLrpullIG/JR1+KreOTaDSXJ19WR
 JeLOJXR3gWEmPz+++aLpibN4o5szDoMAzbSEfOaRDFTz/O5xkQ0PeyApkA3P9AbQ2q
 Ah8PsuSWn+XGG0FGIsl22iBXaOszg2/WJyQXMg2Twzrzi73HEYxTmN1cVqgTikkOak
 J3K/0UDgQIKk+PmsmQNzZ/lXwCqBwcbsDtRdcFPBs45EevrTD027c1ngLGKycG8D4V
 GD3lUMo+rBrHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_212534_866549_46BFBED6 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/20 7:56 PM, Nikhil Mahale wrote:
> On 3/20/20 3:16 AM, Michael Kelley wrote:
>> From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:27 AM
>>>
>>> On Wed, Mar 18, 2020 at 1:18 AM Michael Kelley <mikelley@microsoft.com> wrote:
>>>> From: Arnd Bergmann <arnd@arndb.de>
>>>>> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
>>>>>>
>>>>>> The Hyper-V frame buffer driver may be built as a module, and
>>>>>> it needs access to screen_info. So export screen_info.
>>>>>>
>>>>>> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
>>>>>
>>>>> Is there any chance of using a more modern KMS based driver for the screen
>>>>> than the old fbdev subsystem? I had hoped to one day completely remove
>>>>> support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
>>>>> architectures.
>>>>>
>>>>
>>>> The current hyperv_fb.c driver is all we have today for the synthetic Hyper-V
>>>> frame buffer device.  That driver builds and runs on both ARM64 and x86.
>>>>
>>>> I'm not knowledgeable about video/graphics drivers, but when you
>>>> say "a more modern KMS based driver", are you meaning one based on
>>>> DRM & KMS?  Does DRM make sense for a "dumb" frame buffer device?
>>>> Are there any drivers that would be a good pattern to look at?
>>>
>>> It used to be a lot harder to write a DRM driver compared to an fbdev
>>> driver, but this has changed to the opposite over the years.
>>>
>>> A fairly minimal example would be drivers/gpu/drm/pl111/pl111_drv.c
>>> or anything in drivers/gpu/drm/tiny/, but you may want to look at the
>>> other hypervisor platforms first, i.e drivers/gpu/drm/virtio/virtgpu_drv.c,
>>> drivers/gpu/drm/vmwgfx/vmwgfx_drv.c, drivers/gpu/drm/xen/xen_drm_front.c,
>>> drivers/gpu/drm/qxl/qxl_drv.c, and drivers/gpu/drm/bochs/bochs_drv.c.
>>>
>>
>> Thanks for the pointers, especially for the other hypervisors.
>>
> Sorry if anybody in 'to' or 'cc' is receiving this reply multiple times.
> I had configured by email client incorrectly to reply.
> 
> screen_info is still useful with a modern KMS-based driver.  It exposes
> the mode parameters that the GOP driver chose.  This information is
> needed to implement seamless or glitchless boot, by both ensuring that
> the scanout parameters don't change and being able to read back the
> scanout image to populate the initial contents of the new surface.
> 
> This works today on arches which implement (U)EFI and export
> screen_info, including x86 and powerpc, but doesn't work on arm or
> arm64.  As arm64 systems that implement UEFI with real GOP drivers
> become more prevalent, it would be nice to be have these features there
> as well.

In addition to this, even if a driver doesn't implement a framebuffer
console, or if it does but has an option to disable it, the driver still
needs to know whether the EFI console is using resources on the GPU so
it can avoid clobbering them. For example screen_info provides information
like offset and size of EFI console, using this information driver can
reserve memory used by console and prevent corruption on it.

I think arm64 should export screen_info.

> Thanks,
> Nikhil Mahale
> 
>> Michael
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
