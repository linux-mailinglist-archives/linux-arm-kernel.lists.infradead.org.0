Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF971957E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=em1Vi2q7rDwzaYrApF9ThyQJhBTIJi4NwT/ojsfNyTo=; b=S7mMMtOATJmJC/
	7DxkD3OadmETJtV5LOO4O6/hgOZ2/j45o5u6oIqL+GFz+eVBiKWhvCKriX9KwZcXGY8e/Aedlt2g0
	lzQeEY2Eb6CtKutp/jKfs1OwtEDBbPwdu8Ochr8VDLzJPYatjwt5XHsRp6FfjNEVHdIg8Ig4Vfn1a
	fUDAp009ry5movAHzSxyPmnAFlF16KKrogXoD6bgM8lHdev30D3vbTApVtRy1MNOR2X751m7N3FQj
	hhkyxfq225D1YyUfvAvt5ual1ZKwjs1hVTm7BuBUL0Ji6udshiE3GHP7bf7HFTe7TZ1rs5BaT/ejt
	x1xzOshrjisDFOCthSYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHotZ-0004Vp-Bu; Fri, 27 Mar 2020 13:19:33 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHotN-0004V4-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:19:25 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 202EF426DB9E39C1A150;
 Fri, 27 Mar 2020 13:19:10 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML711-CAH.china.huawei.com (10.201.108.34) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 27 Mar 2020 13:19:09 +0000
Received: from localhost (10.47.90.231) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 27 Mar
 2020 13:19:09 +0000
Date: Fri, 27 Mar 2020 13:19:00 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/2] efi/arm64: execute the kernel in place if possible
Message-ID: <20200327131900.000068aa@Huawei.com>
In-Reply-To: <20200326165905.2240-1-ardb@kernel.org>
References: <20200326165905.2240-1-ardb@kernel.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.90.231]
X-ClientProxiedBy: lhreml739-chm.china.huawei.com (10.201.108.189) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_061921_788920_9563744D 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-efi@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 17:59:03 +0100
Ard Biesheuvel <ardb@kernel.org> wrote:

> Update the relocation logic in the EFI stub for arm64 so it runs the
> kernel in place if it was loaded by firmware at an address which allows
> doing so. Then, update the PE/COFF header metadata and increase the
> section alignment to force the UEFI image loader to honour the minimal
> alignment requirement imposed by the kernel proper.
> 
> Ard Biesheuvel (2):
>   efi/libstub/arm64: avoid copying the kernel unnecessarily
>   efi/arm64: increase the PE/COFF alignment so the kernel can run in
>     place
> 
>  arch/arm64/kernel/efi-header.S            | 2 +-
>  arch/arm64/kernel/image-vars.h            | 7 +++++++
>  drivers/firmware/efi/libstub/arm64-stub.c | 9 +++++++++
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
Hi Ard.

Seems sensible to me so I decided to give it a quick test.
As things stand RELOCATABLE is only selectable by selecting
RANDOMIZE_BASE.   Probably want to be able to configure it
separately (needs some help text, or a specific option to
select CONFIG_RELOCATABLE).

Otherwise, superficially seems to work good for me doing a
boot via pxe/grub on a Kunpeng 920 with some prints added to
make sure it's taking the right paths.

Thanks,

Jonathan




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
