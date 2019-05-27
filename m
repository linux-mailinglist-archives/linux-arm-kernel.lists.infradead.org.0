Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5EA2B7AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w13BMjfQSlWTqXMMPYpvv374c7tzmbnCVc1WfPIrsuk=; b=h3SWQ1XhazAwUv
	B3alj1+V3wDb1HODKzJb1fent1OHt4r5RfviS9JHGE7OVhipFFqa8v71Fp5m+ekjPG7v9vmt0b7Oc
	xxoDK2MpGRFlknRT0UKJva/YSieC/8r9z2H/ENMvltvZMR6MtkKYoqRJm5aeB+2+4X+UinOnRU2g5
	+zSVfPEm/Rx+PVNuZUN9ptqBcujHu844wJYwfxwKjJaZXnbv51aV4aBGmgVoG03jrhQ/X7ij5bG5S
	DoRUJo8vPhJCxUjdUS4CeOYDyDal8BVUsccPc+XoK+q0gnt36T50VsbsKtLiXQYwmxM6amWGhO3z7
	VWtqnxWujVTt8rdRJAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGlK-0005di-RB; Mon, 27 May 2019 14:38:06 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGl4-0005Zo-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:37:54 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id A081915EDF3;
 Mon, 27 May 2019 10:37:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=zot+SgMMZ6NLkAbEfpi2LUH3mQg=; b=sWfOaR
 Vk+aJbCEAlII2KwizI8uEAjvrRCGxGjVlq9esNoojV6ynhwQKBcAvWyvfipnrCwE
 OhZa7VZwY/DfU1CC3BDgEpBieBcuLXnVSMEG85s977vrD8xv6Lv/E2UY48runV0f
 uH/YesulcIvXULY5X6xTYKZRXW5ZHalfCjWhI=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 9757315EDF2;
 Mon, 27 May 2019 10:37:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=iGYrYXMmcUG/e3dkcmXnxQB5h/4Pjc8UzTVPVZ4a6Eg=;
 b=T3H3Hf1yUjjiAwjwbeXLI2c1avRjSUaDRUKgwlobx330QqXp72MtELf0geJg99iyhaGzLXIlUYpcIbOfP5xWb9uoFIKnMPHdcNV+sz9wuy0HqpgoB7RvzxrmzlDZDCQWAuRxkJgosFDOLBGgEIAORfZIpwqMq4G2plGrOz46iuM=
Received: from yoda.home (unknown [70.82.130.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 08FEF15EDF1;
 Mon, 27 May 2019 10:37:48 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id E1ADA2DA045D;
 Mon, 27 May 2019 10:37:46 -0400 (EDT)
Date: Mon, 27 May 2019 10:37:46 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
In-Reply-To: <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1905271031340.1558@knanqh.ubzr>
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: FF6CA618-808C-11E9-ACB2-72EEE64BB12D-78420484!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_073750_718615_E7396512 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-m68k@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 May 2019, Jann Horn wrote:

> On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> <akpm@linux-foundation.org> wrote:
> > On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
> > > load_flat_shared_library() is broken: It only calls load_flat_file() if
> > > prepare_binprm() returns zero, but prepare_binprm() returns the number of
> > > bytes read - so this only happens if the file is empty.
> >
> > ouch.
> >
> > > Instead, call into load_flat_file() if the number of bytes read is
> > > non-negative. (Even if the number of bytes is zero - in that case,
> > > load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
> > >
> > > In addition, remove the code related to bprm creds and stop using
> > > prepare_binprm() - this code is loading a library, not a main executable,
> > > and it only actually uses the members "buf", "file" and "filename" of the
> > > linux_binprm struct. Instead, call kernel_read() directly.
> > >
> > > Cc: stable@vger.kernel.org
> > > Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> > > Signed-off-by: Jann Horn <jannh@google.com>
> > > ---
> > > I only found the bug by looking at the code, I have not verified its
> > > existence at runtime.
> > > Also, this patch is compile-tested only.
> > > It would be nice if someone who works with nommu Linux could have a
> > > look at this patch.
> >
> > 287980e49ffc was three years ago!  Has it really been broken for all
> > that time?  If so, it seems a good source of freed disk space...
> 
> Maybe... but I didn't want to rip it out without having one of the
> maintainers confirm that this really isn't likely to be used anymore.

Last time I played with this, I couldn't figure out the toolchain to 
produce shared libs. Only static executables worked fine. If I recall, 
existing binfmt_flat distros don't use shared libs either.

For shared lib support on no-MMU target, binfmt_elf_fdpic is a much 
saner choice.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
