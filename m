Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF91209E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USDFgaIfBeXxlo3utN58OafIBqq6dHwHESFyjcr9s8A=; b=noFVRgt6BszRDL
	lRRCben6/+TPY7vNj8YpUQ7fAAAfO+nrg295cqnO0KDX2PxxQq2a2NMTdpj3a5D4P5zmEWbbiUGaH
	wHqXE3+Rq4d0nlWsSo5LCnN+e+chDv9XzbxVzT7H1rOBB92q+q0bvSxo3wlaQT0ZCwF2EoHRKeAgb
	aB2651uIgDjnP4xZMuzeX+v9d1sp18uXwOcU7yFC4GC+EC2ZwnqbGKK8czXArrA6WRsw89YPKvKQv
	94ll2T9vyVN9V6K/RU+bOyUKhVzujFgrd9WHOFhHHxPzO2qXH9FOJ4dQ/coik+txNiB1Op53+qcYg
	tVEE2u/FXgkKGAbeii3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHVf-0005cg-0n; Thu, 16 May 2019 14:37:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHVW-0005cG-Nv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:37:20 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBBA92166E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558017438;
 bh=UPgAsUc79XNtfoQLrq5V7qKL0/VATYvYljrh0Yj6lC8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QllcyBBq1lCdxvxYFC+wpifcvhSzRW/WuBZJRIJQ9eU3bsJh2b06bpAgNoltgPbjP
 TE+/KRhYKFCr4kabv+pMoHxlao5SZfwryV4V1BL/0ih/Wt6AX8itI6Wh+ZuPP06sTO
 kXjY/nCie/uPEJX03ZJZ3eOCoFDRjzTng2O3V0Kg=
Received: by mail-qt1-f175.google.com with SMTP id a17so4172397qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:37:17 -0700 (PDT)
X-Gm-Message-State: APjAAAVnLPoXR9sqwCrR1Vp2HdAwJFWW4uZnI2Fsgcnzdl4T7hFXoIIh
 In+JaCwNHIFzeXyoFvXSx+mGlqwwFm3ECdYbcQ==
X-Google-Smtp-Source: APXvYqxjn8+Q/tX6w4aHOCCOy/nwGU1dlgV2FSFLkzU2uNxOFA2xYDsfkDw8xIChp0sA+l8ZLuw1WIIccuhOM18Sefw=
X-Received: by 2002:a0c:87cd:: with SMTP id 13mr13711355qvk.218.1558017437078; 
 Thu, 16 May 2019 07:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
In-Reply-To: <20190516102817.188519-2-hsinyi@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 09:37:05 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
Message-ID: <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073718_859901_FBBE46EE 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Chintan Pandya <cpandya@codeaurora.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 5:28 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Basically does similar things like __fixmap_remap_fdt(). It's supposed
> to be called after fixmap_remap_fdt() is called at least once, so region
> checking can be skipped. Since it needs to know dt physical address, make
> a copy of the value of __fdt_pointer.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/kernel/setup.c |  2 ++
>  arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
>  2 files changed, 19 insertions(+)

Why not just map the FDT R/W at the start and change it to RO just
before calling unflatten_device_tree? Then all the FDT scanning
functions or any future fixups we need can just assume R/W. That is
essentially what Stephen suggested. However, there's no need for a
weak function as it can all be done within the arch code.

However, I'm still wondering why the FDT needs to be RO in the first place.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
