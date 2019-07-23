Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3314171946
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4DL6r/G12fySkrgs0vC6nILIWdBDg4slKskuvl/AP/c=; b=pSzriLO1Ip6ocSj6pbaKHZ8Y0
	7a88CCIG/+eMr/54QYppyqDFhZJQP5AER5wPQdyKAN6PGeUDVtk1a+bBwZ0SPb0tvOHoSLBZ9Y0Xw
	dhsGScxxdyUeu71QpUQVif5Rtd9TcNuytmbkkeYjIth19Lb5315ptOgidrAD3OwckzkZQRLROJtlC
	0YGhdTkWvBwrZwJCD5/ZjSGS5cEMwNUt065ap5f/96AZW4E7b8iHvDK+kp82Y/jjJ5eiLWJM0wnRg
	DJsDVwpbGLEd4HEZcQ6ymTDXYOOvYEVUfJ6DJE+YtGPEfHZLlj9S0VuALKorH4jsA4Fcn3Jck3jJc
	1PUjGO6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuu7-00017b-HE; Tue, 23 Jul 2019 13:32:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hputo-00015c-0U; Tue, 23 Jul 2019 13:32:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96EF228;
 Tue, 23 Jul 2019 06:32:11 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 927A93F71F;
 Tue, 23 Jul 2019 06:32:10 -0700 (PDT)
Subject: Re: kexec on rk3399
To: Vicente Bergas <vicencb@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
 <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
 <8f71e7de-7eaf-58c7-6471-c8eb01e656ce@arm.com>
 <e42e7e24-a616-4a11-8c4d-1f44146e0a19@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c83f2748-52a0-45c8-b906-288d329439c2@arm.com>
Date: Tue, 23 Jul 2019 14:32:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e42e7e24-a616-4a11-8c4d-1f44146e0a19@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063212_139317_97052DE9 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/07/2019 19:53, Vicente Bergas wrote:
> On Monday, July 22, 2019 7:35:01 PM CEST, Robin Murphy wrote:
>> On 22/07/2019 18:05, Vicente Bergas wrote:
>>> On Monday, July 22, 2019 4:54:41 PM CEST, Marc Zyngier wrote: ...
>>
>> The obvious culprit would be DMA devices left running by the first 
>> kernel scribbling over the second kernel's memory before it's had the 
>> chance to reset them. Since boot-time memory allocation patterns tend 
>> to be relatively repeatable for a given platform and kernel 
>> configuration, "random" may well look a lot less random than you might 
>> expect, and it wouldn't be unheard of for e.g. the second kernel to 
>> mostly allocate its dentry cache from the same area the first kernel 
>> was mostly putting a network Rx descriptor ring.
>>
>> Robin.
> 
> Here is another attempted test: on the first kernel disable:
> # CONFIG_ZONE_DMA32 is not set
> # CONFIG_DMADEVICES is not set
> # CONFIG_PL330_DMA is not set
> that is, all i could disable matching CONFIG_*DMA*=y, which is not much.
> Still enabled are:
> CONFIG_HAVE_DMA_CONTIGUOUS=y
> CONFIG_DMA_SHARED_BUFFER=y
> CONFIG_SCSI_DMA=y
> CONFIG_IOMMU_DMA=y
> CONFIG_HAS_DMA=y
> CONFIG_NEED_SG_DMA_LENGTH=y
> CONFIG_NEED_DMA_MAP_STATE=y
> CONFIG_ARCH_DMA_ADDR_T_64BIT=y
> CONFIG_DMA_DECLARE_COHERENT=y
> CONFIG_ARCH_HAS_SETUP_DMA_OPS=y
> CONFIG_ARCH_HAS_TEARDOWN_DMA_OPS=y
> CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
> CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
> CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
> CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
> CONFIG_ARCH_HAS_DMA_MMAP_PGPROT=y
> CONFIG_DMA_REMAP=y
> CONFIG_DMA_DIRECT_REMAP=y
> 
> Then the second kernel still fails with d_lookup errors.

Yeah, none of those configs are particularly relevant - I'm thinking 
more about the drivers for ethernet, wifi, USB, PCI devices, and any 
other peripherals which may be set up to make DMA accesses based on 
external stimuli and don't get shut down cleanly by a kexec.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
