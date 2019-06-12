Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C51423BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ay3Mzl/o171fQxDTMZ+x+swZB2n6ntFYOWnX0E+wPg=; b=Nj7E5cU9OHA5/i
	zOohaK79pj15KjFgq83NsQvQCmh/3kUNu0w7KeOYngH9a1ASHAuCsAkjb1Qd0HJFJ8/9/plloQhpU
	436v7j7G4sfxDQO0yO95jGbMfcmzs0J+klt1kl4ieyg6v4k5FjfNLi9wb9ayvU8GR/wIKZ4QE2W92
	gLlVqdNNjnOkTEFuf0pW+LORk3vGTrXPNxsnmNSvqtr0WkfMvjbYXJNZ4Nu51KgicTknlQJIe/I80
	xbzkCy6RI0ToDIw9lAJ9ghQU96F2ydTDtWiff9i3th173T0NeRDmfOE5lb2KU8QdBmQGnAg0ceF3v
	msbT0CeeV8oMvI709Wnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1DW-00060s-HP; Wed, 12 Jun 2019 11:14:58 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DG-0005zl-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi6so6107464plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ICAcqmNM80YqXGU9u0yKcUq/onm/SsQo2SDs/l3f+hY=;
 b=QkhZMvI8xgho9eMFZ7w6J/3duhWcdGLEkVVUAU2qSaxNfXU+GXLc+PdiUdCpUn61iY
 0xCUxQ9wiA1Jj7ZnvEwSzmljdVe71a10tK0t/VIk6vJ6KuoIESh9plrNP00oJ9EUV9CE
 7ZXKJL/NmCDrLh5D1fRV3U/5XcSqnaFIYrJ7IhnmnWDC1y2ZQhZMwMFDrVZ4wkPjj2PR
 KjnNxVxOeNHsZ1yb6hgnM2H6TbZTzWPz9Cffq6e0f9rEpBuiI2bynmdfsgpQFhae4y5r
 LLRsk0MnIrY8OwbkGOOGkhYBEu+P7mFEBBswTcH9Mhn9r0qq9AEF/SsRyiNTxER5NtY3
 eTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ICAcqmNM80YqXGU9u0yKcUq/onm/SsQo2SDs/l3f+hY=;
 b=NihHxGylI23qm0GlE0OPP19KOhAB+RUxU9QarJ1OytxXD+kF/rixda7M1WX8f1bojc
 +X5903zaIESJEA/+8RN+Lueqw81ASchIxR1d+9BMhD76YwGuSisWWiKh/CQ5KC+71owQ
 dn3NmLKGW0roM7Cg5Q3zqlyZtbmLkItVBXntTlfGLAyzJ4Et6KaA160e0RjxoPXwwfd6
 I879yzjjubT/JjkjJ1tDwm9XiuZIz7xR3LyMDWuLLmp6krD2OOj3d1yR8+Ugc3Ojoelc
 hbyD1wh7FD9HYIqcL33WfcHISPFc5Cze6fqFDeoM8Hy/wsFVPo/Fy5TTM1z7kk7D0ZzN
 UTsA==
X-Gm-Message-State: APjAAAUEHcayx9XF/kceX9WspwnVPA6J4ABSTXbhgr/7ApPEZwdNFW0l
 hwMew0elcRBA9Xc/XcaqpIx8iYLKW5bXrlGDWxGP8w==
X-Google-Smtp-Source: APXvYqygEZ27HGfNqszCpdSgojAf7S6ru14/DaT8Or0Syv3FL9sWDfZ+9LXBU0/5Hxbzx8tkSmaHaZjTcL+f/jghf7s=
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr75570344plo.252.1560338081704; 
 Wed, 12 Jun 2019 04:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <9e1b5998a28f82b16076fc85ab4f88af5381cf74.1559580831.git.andreyknvl@google.com>
 <20190611150122.GB63588@arrakis.emea.arm.com>
 <CAAeHK+wZrVXxAnDXBjoUy8JK9iG553G2Bp8uPWQ0u1u5gts0vQ@mail.gmail.com>
 <20190611175037.pflr6q6ob67zjj25@mbp>
In-Reply-To: <20190611175037.pflr6q6ob67zjj25@mbp>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 12 Jun 2019 13:14:30 +0200
Message-ID: <CAAeHK+x4sHKfQx31uQ9zSO48oRs3XLATfymY=vgEHQ1FLNmeig@mail.gmail.com>
Subject: Re: [PATCH v16 16/16] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041442_946181_727EA385 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 7:50 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Jun 11, 2019 at 07:18:04PM +0200, Andrey Konovalov wrote:
> > On Tue, Jun 11, 2019 at 5:01 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > static void *tag_ptr(void *ptr)
> > > {
> > >         static int tagged_addr_err = 1;
> > >         unsigned long tag = 0;
> > >
> > >         if (tagged_addr_err == 1)
> > >                 tagged_addr_err = prctl(PR_SET_TAGGED_ADDR_CTRL,
> > >                                         PR_TAGGED_ADDR_ENABLE, 0, 0, 0);
> >
> > I think this requires atomics. malloc() can be called from multiple threads.
>
> It's slightly racy but I assume in a real libc it can be initialised
> earlier than the hook calls while still in single-threaded mode (I had
> a quick attempt with __attribute__((constructor)) but didn't get far).
>
> Even with the race, under normal circumstances calling the prctl() twice
> is not a problem. I think the risk here is that someone disables the ABI
> via sysctl and the ABI is enabled for some of the threads only.

OK, I'll keep the code racy, but add a comment pointing it out. Thanks!

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
