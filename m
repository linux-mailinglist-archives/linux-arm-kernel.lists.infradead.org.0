Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBB7209FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEQnmzJ0QOtxD9KK2vRosc7DiIVIz0hWg68LLN413LA=; b=fuwDNart2KsBsC
	shjw/PHze9/vrooI5/LV0GBoDaw6z7DBoPBOFAATdd/WUComrsVmGNilqizc3x41LtIFqhCa+GbLw
	XqCrCxtLonRr2hNKWJhMIh3tlW1sPlz2J0twC4GDYcXoQ6adsJhjM7sWfsRvJFtkTBS5jRLj6gWSF
	O+9ww2v4JmbGhcdmw1mrK+RKvkI3d5tXS1okD7uI1aApXiGfTcf2cuSj9M47N0voieAuaLFBxpi3n
	UKA3CS3OXVd3SNZKapDbThVJqh9s6krL+yZb5fP3mz4M1RR2ZdPVrCNT1tDGC1jmM43JDOnx831FM
	G5iybu4mwe38Y1YYo9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHbM-0008OW-7B; Thu, 16 May 2019 14:43:20 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHbE-0008NI-CF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:43:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D5461715;
 Thu, 16 May 2019 07:43:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFD003F71E;
 Thu, 16 May 2019 07:43:06 -0700 (PDT)
Date: Thu, 16 May 2019 15:43:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
Message-ID: <20190516144303.GF43059@lakrids.cambridge.arm.com>
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_074312_425929_B7E718D5 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chintan Pandya <cpandya@codeaurora.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 09:37:05AM -0500, Rob Herring wrote:
> On Thu, May 16, 2019 at 5:28 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Basically does similar things like __fixmap_remap_fdt(). It's supposed
> > to be called after fixmap_remap_fdt() is called at least once, so region
> > checking can be skipped. Since it needs to know dt physical address, make
> > a copy of the value of __fdt_pointer.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  arch/arm64/kernel/setup.c |  2 ++
> >  arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
> >  2 files changed, 19 insertions(+)
> 
> Why not just map the FDT R/W at the start and change it to RO just
> before calling unflatten_device_tree? Then all the FDT scanning
> functions or any future fixups we need can just assume R/W. That is
> essentially what Stephen suggested. However, there's no need for a
> weak function as it can all be done within the arch code.
> 
> However, I'm still wondering why the FDT needs to be RO in the first place.

We want to preserve the original FDT in a pristine form for kexec (and
when exposed to userspace), and mapping it RO was the easiest way to
catch it being randomly modified (e.g. without fixups applied).

I'd prefer to keep it RO once we've removed/cleared certain properties
from the chosen node that don't make sense to pass on for kexec

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
