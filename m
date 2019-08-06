Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA08837BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwfZqMdfyeBPK9YsqgOjvWuueNK9oxHRvAsDIwOoLBI=; b=WAfzlWbUPq+Xmo
	To1ODUWxSjjXYiy6aBwIIz77hXhUoOFP7jSWp3BHEZg1Q32ujZxpB5sXfl5UfuyGmtYZxhEZ/kEac
	cFvLrGKqBBNB6icWS7KwtgQVHz8kc8kggksl4JumJFBiK2Kbh53JOVQ1ZqDmbuyqDqBrCrXW1Dxoh
	GvwyPsMDBX3RcaaX8/YUeoEPXWEwH0VHAyzfZNrJkuYBvnkwGjj0sDO0TBrRxtk7bpEebPgyJu1lT
	JXQgJzIhTs1u+ICChzNavpD+v3hLrN8hcTtBeewiXoPDeJhq/trRRU7RRts679rukAqHvxmsDFq+y
	YnW3nSlVBLjalPEBoj6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv324-0007FL-FE; Tue, 06 Aug 2019 17:13:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv31u-0007EP-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:13:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7ACF82086D;
 Tue,  6 Aug 2019 17:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565111625;
 bh=GcwPgkJicx4YCfVs1IPwu6WwyqpK78qeXeT/YMfDkko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rTAT9bH7GKNJUZdS8BRtbH8phw4qgZ5+dRNFkldjVWk6dGxX0O1d/RnE/0V20gryu
 PTJMl31RRRdUsoRUBPiBr87DgRaB/HWSPKLtCibTJQQUtSYBOvQ2oBVDM1HUaAlT2q
 mkbOtB7+YYYk5DiFCNquMbqioXWuU2alu3yKrGRo=
Date: Tue, 6 Aug 2019 18:13:36 +0100
From: Will Deacon <will@kernel.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <20190806171335.4dzjex5asoertaob@willie-the-truck>
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
 <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
 <20190724142059.GC21234@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724142059.GC21234@fuggles.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_101346_958635_65422059 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
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

On Wed, Jul 24, 2019 at 03:20:59PM +0100, Will Deacon wrote:
> On Wed, Jul 24, 2019 at 04:16:49PM +0200, Andrey Konovalov wrote:
> > On Wed, Jul 24, 2019 at 4:02 PM Will Deacon <will@kernel.org> wrote:
> > > On Tue, Jul 23, 2019 at 08:03:29PM +0200, Andrey Konovalov wrote:
> > > > Should this go through the mm or the arm tree?
> > >
> > > I would certainly prefer to take at least the arm64 bits via the arm64 tree
> > > (i.e. patches 1, 2 and 15). We also need a Documentation patch describing
> > > the new ABI.
> > 
> > Sounds good! Should I post those patches together with the
> > Documentation patches from Vincenzo as a separate patchset?
> 
> Yes, please (although as you say below, we need a new version of those
> patches from Vincenzo to address the feedback on v5). The other thing I
> should say is that I'd be happy to queue the other patches in the series
> too, but some of them are missing acks from the relevant maintainers (e.g.
> the mm/ and fs/ changes).

Ok, I've queued patches 1, 2, and 15 on a stable branch here:

  https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/tbi

which should find its way into -next shortly via our for-next/core branch.
If you want to make changes, please send additional patches on top.

This is targetting 5.4, but I will drop it before the merge window if
we don't have both of the following in place:

  * Updated ABI documentation with Acks from Catalin and Kevin
  * The other patches in the series either Acked (so I can pick them up)
    or queued via some other tree(s) for 5.4.

Make sense?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
