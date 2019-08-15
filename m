Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DAB8F3F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QP4xwId5crteAf8h9Jd+97/xYOCTUVgCyjQhMz2hf0=; b=Sf+eLp+pA0nNeB
	W5KQcVx3P4VsAi6A3FXb9pArZOzIX2jmhfOFFJxeE0i+gEnHANLqwfHW5rPEI8l1hKotJ6CS+w2R7
	cOLFpzYWueQXk7WSEyeBSdSfiFjdMUyfRueFZjrruUIZpmOU61NFf8TPNakXcZA5GTd3kDZuYnr50
	HJUzfMvtgHiJcuEtB+9oEbRYaGsRxRR9C4OwqInv1HNqTmToQSas8ZByreTyuiCpVsg42q/jFKdxP
	VkOPggQ0ZZSWD8zB3fhPuXmnifuTjY24nEz7ih5UiemM+bLS1Pd1YDCEG4Ac4SUzKmC/b3MfGzcqf
	6IGO8z/M8YCrhSdScXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKrC-0005UH-Kd; Thu, 15 Aug 2019 18:52:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKr0-0005Th-Ho
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:52:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5E18068AFE; Thu, 15 Aug 2019 20:52:00 +0200 (CEST)
Date: Thu, 15 Aug 2019 20:52:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH 0/6] drm+dma: cache support for arm, etc
Message-ID: <20190815185200.GA21407@lst.de>
References: <215e5cb7-0fcf-48db-a656-817054dde420@email.android.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <215e5cb7-0fcf-48db-a656-817054dde420@email.android.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_115206_742548_1CD0DD8A 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Clark <robdclark@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Burton <paul.burton@mips.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 "Sharma, Deepak" <Deepak.Sharma@amd.com>, Joerg Roedel <jroedel@suse.de>,
 Arnd Bergmann <arnd@arndb.de>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Enrico Weigelt <info@metux.net>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 06:48:39PM +0000, Koenig, Christian wrote:
> Well, for the graphics case I absolutely need to keep the linear kernel mapping. Because for certain use cases the memory is accessed by the kernel all the time as well.

Then don't set DMA_ATTR_NO_KERNEL_MAPPING.  At least for x86 and arm64
we should be able to support uncached allocations easily even without
that, and I plan to support that for your use case.  But if the driver
is explicitly saying it doesn't want a permanent kernel mapping it makes
sense to (optionally if the architecture can easily do it) unmap the
memory from the kernel linear mapping.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
