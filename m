Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED83874B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beu1BvUCGrbPeNyAs8INvv6QEcAt36xTmdnx4j1erHU=; b=k0EdyrRZH/zp1w
	/RELnEtTrvt+nGnz6on7B31NsIxSy+cNwujvTU51sNt7mXWMuJ6/Eb4EjBtSOumljk5mnPYH5ewVG
	jx4II14CIgwN52dGD6R2HGtsbLR8CJBFngJcAcFl2wGwH3edW9eUdmD1VYtMM1ui3ZU3ojZ8xk0Te
	PH4dCs/0mxziRkNhhp1FrhwHkmz0QwEJT8dl/qt7FBWFJvdhyLhtJ+wIKZFvZWeZMsfYmZ3aPQy49
	WefxeamAwUNUyM1eIgiR+TOK1NYwalXKR2syr8yPCRPY4ViMs1l0+cQ4DF0U2ma0izI1DQhHot+ri
	DYU3HT46YLcD4bftl2MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0lL-00082p-99; Fri, 09 Aug 2019 09:00:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0l7-00082H-RU
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:00:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F595344;
 Fri,  9 Aug 2019 02:00:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 796343F706; Fri,  9 Aug 2019 02:00:19 -0700 (PDT)
Date: Fri, 9 Aug 2019 10:00:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <20190809090016.GA23083@arrakis.emea.arm.com>
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
 <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
 <20190724142059.GC21234@fuggles.cambridge.arm.com>
 <20190806171335.4dzjex5asoertaob@willie-the-truck>
 <CAAeHK+zF01mxU+PkEYLkoVu-ZZM6jNfL_OwMJKRwLr-sdU4Myg@mail.gmail.com>
 <201908081410.C16D2BD@keescook>
 <20190808153300.09d3eb80772515f0ea062833@linux-foundation.org>
 <201908081608.A4F6711@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201908081608.A4F6711@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_020025_977922_9691D3C2 
X-CRM114-Status: GOOD (  20.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 04:09:04PM -0700, Kees Cook wrote:
> On Thu, Aug 08, 2019 at 03:33:00PM -0700, Andrew Morton wrote:
> > On Thu, 8 Aug 2019 14:12:19 -0700 Kees Cook <keescook@chromium.org> wrote:
> > 
> > > > The ones that are left are the mm ones: 4, 5, 6, 7 and 8.
> > > > 
> > > > Andrew, could you take a look and give your Acked-by or pick them up directly?
> > > 
> > > Given the subsystem Acks, it seems like 3-10 and 12 could all just go
> > > via Andrew? I hope he agrees. :)
> > 
> > I'll grab everything that has not yet appeared in linux-next.  If more
> > of these patches appear in linux-next I'll drop those as well.
> > 
> > The review discussion against " [PATCH v19 02/15] arm64: Introduce
> > prctl() options to control the tagged user addresses ABI" has petered
> > out inconclusively.  prctl() vs arch_prctl().
> 
> I've always disliked arch_prctl() existing at all. Given that tagging is
> likely to be a multi-architectural feature, it seems like the controls
> should live in prctl() to me.

It took a bit of grep'ing to figure out what Dave H meant by
arch_prctl(). It's an x86-specific syscall which we do not have on arm64
(and possibly any other architecture). Actually, we don't have any arm64
specific syscalls, only the generic unistd.h, hence the confusion. For
other arm64-specific prctls like SVE we used the generic sys_prctl() and
I can see x86 not being consistent either (PR_MPX_ENABLE_MANAGEMENT).

In general I disagree with adding any arm64-specific syscalls but in
this instance it can't even be justified. I'd rather see some clean-up
similar to arch_ptrace/ptrace_request than introducing new syscall
numbers (but as I suggested in my reply to Dave, that's for another
patch series).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
