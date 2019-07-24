Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB273164
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHSI+RCaOcEEZXDqn08bT/Fe0MVuFht0xN6qd4y+lR4=; b=N72Tnw0kQK3I1V
	TK2zviNFJHJR/tMd55T/ijF+QS07Xz86UwmvZFOz89PNnf3Aw4FzZ5vwtu2e8/3+gQASu5ArDW3Jj
	781uU7EXRzfRLyPKw+iaBPWyxMZxgOKO7Gtpe5gdBJd6OPkpFwWBKdtEBSePGvtOEYw8BxSf+HJuV
	QxjH1FFBZzL9Se6h17RieJgYNuu/RrBGiLajcFjIKTvFlNQxBzTfN3uZFfKOBpDPdFAnhCwzWUGZY
	vk+Wd0qeX+IJebYPzQNqWb7eXic2RRcZMsqjlOB43ep+BxRSuW0j7rGTGHHZOQgK/trEpv0IVe80M
	8g1fWxP+mkQyZCLLDQdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqI4v-0006US-4Q; Wed, 24 Jul 2019 14:17:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqI4j-0006Te-KD
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:17:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id y15so21037827pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iVEa+BrbD+ybsnA2U1ljAFs3yPdamhmoGuSiTUjWPJ4=;
 b=DWU4WjGAtgl8VCFFOjc8wXQ0g23uMAUtJpd38Z3oaJgwn4NfatixOvhmdpOdL+fxhG
 e0wlc3X1shT5Iq30jjbbWGUReEBT4OBXlYiiQUhWx2Q7uiFMfOEneT8NH6f9J2qp0V5H
 uul5tf2SvUAF38K7907CwJA6dKexcEorDJsv/KoSqA3HSUAO6tsOMxjz0hFsJBWrp9kB
 d53dWGlSvFswyl6j+n5LUh4qGYRvo3+KwFNfAV8S+2jUqD0GvKKHxnABV1FWZ1+b1OBh
 oB2T3ZDN/Zfw5qlFjUWW5qYsM2z/YZXngByjiqcmIeT7gWGze9CMbYqnOAvNwjkoL4TA
 mEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iVEa+BrbD+ybsnA2U1ljAFs3yPdamhmoGuSiTUjWPJ4=;
 b=IJbd5V6G8DIokaWgnVPSOyMqIcyJQOG5+nPIY9HQGVCm6gBrmvNySnAiJxO3tihpIq
 3HiK3INQ2kpiUICbJ5bS5TjGQDr1IT2RFpHR02cT+P99n1hK4o/PUl4SMLTeBZI1izby
 lF91BC8rG6NU+yZeX5GNfcMW1FEisKnd5IS0B3/e1feL5cqb4FYy9LLkUaes9CNsgfVH
 5qaTBCDP4RI5X/wuEUSVUJLDBLanaPlaqGi0ixZpCpY9bwkAU+SNqkwSmjm+/pXwj7Zw
 Oic4Ae6Fm3wUXSBgYRwnH3trz4KoF0aEM6Gdpz2qphbw1SE+nmadOailueUSsfq977x7
 zY2Q==
X-Gm-Message-State: APjAAAXkohrSnfstE+/a2iPqKlTk50qMM2AuiDRJ1GBnzELFzknj44va
 visFIRtAMoaIZyKWEFe4aP5BxPcAzKFd6bjnPo/LLg==
X-Google-Smtp-Source: APXvYqz2dMxGxnq2kAfIP49TpeG4FcaV+yTvRZ4CcUcR9QT0oeQ2GoQPtuki1B+xbKFnrASZfeBQUkyN7t1WRbfNCv8=
X-Received: by 2002:aa7:86c6:: with SMTP id h6mr11779914pfo.51.1563977820600; 
 Wed, 24 Jul 2019 07:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
In-Reply-To: <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 24 Jul 2019 16:16:49 +0200
Message-ID: <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
To: Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_071701_691547_2EF6A4BB 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

On Wed, Jul 24, 2019 at 4:02 PM Will Deacon <will@kernel.org> wrote:
>
> Hi Andrey,
>
> On Tue, Jul 23, 2019 at 08:03:29PM +0200, Andrey Konovalov wrote:
> > On Tue, Jul 23, 2019 at 7:59 PM Andrey Konovalov <andreyknvl@google.com> wrote:
> > >
> > > === Overview
> > >
> > > arm64 has a feature called Top Byte Ignore, which allows to embed pointer
> > > tags into the top byte of each pointer. Userspace programs (such as
> > > HWASan, a memory debugging tool [1]) might use this feature and pass
> > > tagged user pointers to the kernel through syscalls or other interfaces.
> > >
> > > Right now the kernel is already able to handle user faults with tagged
> > > pointers, due to these patches:
> > >
> > > 1. 81cddd65 ("arm64: traps: fix userspace cache maintenance emulation on a
> > >              tagged pointer")
> > > 2. 7dcd9dd8 ("arm64: hw_breakpoint: fix watchpoint matching for tagged
> > >               pointers")
> > > 3. 276e9327 ("arm64: entry: improve data abort handling of tagged
> > >               pointers")
> > >
> > > This patchset extends tagged pointer support to syscall arguments.
>
> [...]
>
> > Do you think this is ready to be merged?
> >
> > Should this go through the mm or the arm tree?
>
> I would certainly prefer to take at least the arm64 bits via the arm64 tree
> (i.e. patches 1, 2 and 15). We also need a Documentation patch describing
> the new ABI.

Sounds good! Should I post those patches together with the
Documentation patches from Vincenzo as a separate patchset?

Vincenzo, could you share the last version of the Documentation patches?

Thanks!

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
