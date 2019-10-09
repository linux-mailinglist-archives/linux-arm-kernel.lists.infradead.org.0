Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32CCD123F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CQS9BDrfN+iOW6bktg9V1KDfBrYdfamRgfDdqcbkIU=; b=CPXg3/Jof2VK4t
	Kg0gis9oBvfzlr80LD5EwzcWfPxL8BpcYhM8Pbs0lp1KQTrwFwujizjHVZOhzJXNrxsxtk53tkdVt
	E1HFlEc3FloKT+EzXapiCwvJHCgf8NbcsdpUTbdIcfuhfMhWbDDVOkWE1Nx7YKCkWzo4/HSwuWsWV
	odvWQ8UBBX76t1EjDDol08SAto1iOtqRKtqNgVA+vFfuE3ePwRLBP+zaXhTpm3a4jfjFrY1e2xQr/
	sXd5c8jQcMG8yOKtyCRZDQrInm+vaNT66MvnTYBLooDOwd7lyZf9l10r8o52hqreQ10t1pXCWB8wh
	yDheMlBVbczWveOSeJhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDha-0005mJ-2T; Wed, 09 Oct 2019 15:16:34 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDhS-0005lx-B9
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:16:28 +0000
Received: by mail-io1-xd44.google.com with SMTP id b136so5824054iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/kmGgxYKbMYmR07k4D9TeFbA+bHn4ZVWSB4jdY++PpY=;
 b=KjHah5jffqM94Yhzc/ZJOelG637bBsHrZd43VvXyHm9u+TmusaHlJ86FCfcqMzjdnN
 QEI6rkhs2aFmbEhJ9C42fVYL9t2muKzuNoLLJE+wFz3odLX2nSIUkoXPab6j+xWUvIB6
 ArbfyHiFgi4aXH6hno7L7MQkFg8gFvUH3g1TQueig9LSMR6sG+cSWkD+98VUl0cSP5w0
 bkY4XDMcvFp3RdnoZUWgvu1LxZt20siYVr6iN5syDkv/t/hyLBLGPbzkF3f3rSIy9NKp
 ILz2tNQDTYerJvfpAmeURP7SEs/b9pCAS4OAvmvzW+eUd7MiAxQ76K1y2Y75hvYZQxDR
 /FKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/kmGgxYKbMYmR07k4D9TeFbA+bHn4ZVWSB4jdY++PpY=;
 b=IeCmRM8shtZcdbub3otROVodbHF2/LBDnOJsuiYT0k6HSF8RtuyeuYAUnN8Vh+Eudk
 BQIRT4ghCF9E496WNUbXBwMbFAZpC7QZD9LLpWNA0nnheTxoIRA4J7xDvt8fizydI4at
 Ef4L18z1rAKMgeyJrB68y0mvvLvuXB8HR9eaD69iG9UHzPAM0WE4IX4yE2nlU53lOi1S
 NtCY0RYQeyYf2y+TAJq1jHrYOrt+8eDwIHZM1gIDthkIMfyWhgIvZmtZb6BLA/fS5VOk
 HABdZmlczuub5uiczVw7OAyroL7cd4zOW5fjQv6Okm2p9T88rJUnYKz9WH+PE4FqgKPO
 LgEw==
X-Gm-Message-State: APjAAAW4Y6f+M7psi/VFIeeAQItndFuYtu8wOF6ibr5qJwBlkA0GXSCr
 limtLSEfyMWndeOOMtRwK1nLYJBjM1/d2OXhRJPmVA==
X-Google-Smtp-Source: APXvYqwe4mu2xdra+VvUJNCiz6m13Euwa+BbmQ6h8cpxMpeyB/6IkxDikgRpUqtW06Hg0em36cWAGaVQYSQ77zvZ/Qc=
X-Received: by 2002:a02:ac8e:: with SMTP id x14mr3460129jan.11.1570634183883; 
 Wed, 09 Oct 2019 08:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <5104777b69d711e8746f3c39dfac615f85d64b3f.camel@v3.sk>
 <CAOesGMiJp9AN2vMsWnJ6PzniHdC-G+gOLbmqn-6KnMC=VbRA=Q@mail.gmail.com>
 <8929b453371e26428388f4f202e5cf4a0410433f.camel@v3.sk>
In-Reply-To: <8929b453371e26428388f4f202e5cf4a0410433f.camel@v3.sk>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 9 Oct 2019 08:16:12 -0700
Message-ID: <CAOesGMgcYUTCt98+K_cq2w4EG37Pdjy4+0-pqRtZENQFwFKkGw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: soc: Marvell MMP changes for v5.5
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_081626_520759_E43E5137 
X-CRM114-Status: GOOD (  30.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 6:06 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Hello,
>
> On Wed, 2019-10-02 at 13:11 -0700, Olof Johansson wrote:
> > Hi,
> >
> > Thanks for sending these in. A couple of items I think needs addressing:
> >
> > 1) The MAINTAINERS update seems to have an erroneous entry for
> > "linux/soc/mmp/" -- other platforms use "include/linux/soc/mmp/"
> > format.
>
> Thanks for catching this. Will fix.
>
> > 2) I don't see any Acks from the subsystem maintainers for the code
> > you've changed, in particular for phy-mmp3-usb. Ideally you should
> > collect acks from said maintainers if you want to merge the patches
> > yourself.
>
> I'm in the process of getting them.

Great!

> I'm wondering what's the usual way of getting the attention when the
> maintainer won't respond to mails where they're Cc'd. Is it acceptable
> to ping them-off list (that is what I've done this time)?

Eventually you will time out. At that point, make sure you have an
accurate "Cc: [... maintainer ...]" in the S-o-b sequence, to show
that you kept them in the loop.

If you apply the patch with a link to the posting, others can easily
find where/how you posted it if they want to look at email thread
history as well.

Sometimes for "simpler", more hardware-specific patches, general
driver subsystem maintainers don't pay very close attention due to
volume, etc.

> > 3) We prefer to see contents broken up a bit more. Normally we ask for
> > these categories to be separate:
> >  - Any branch contents that you need to share with patches going in
> > through another tree (this is usually dt-binding include file changes
> > these days)
> >  - arch/arm/mach*  and drivers/soc/ changes (these go into our "arm/soc" branch)
> >  - device-tree changes (these go into our "arm/dt" branch)
> >  - driver subsystem changes if merged through our tree (these go into
> > "arm/drivers"). If there's no good reason to merge them with other
> > contents and they can go in through driver maintainer trees without
> > regressing anybody, that's preferred.
>
> That is not the case here (apart from the dt changes, which are sort of
> independent due to their nature) the latter patches are dependent on
> the earlier ones.
>
> The independent patches related to MMP3 (basically the irqchip) went in
> separately already.

Ok! In that case, I propose still building separate branches, but you
can use the dependencies as your base.

I.e. if you need mach changes as base for the driver changes, still
send separate pull requests for the two of them, but you can use your
mach branch as base for the driver branch.

That allows us to still merge per topic, but bring dependencies in.
This also works (but requires careful coordination) if you want an
external maintainer to bring in a branch that depends on something in
our tree. Reach out to us before you go down that route the first time
though (and I don't think that is needed here/yet).


> >  - configuration changes (defconfig updates). Speaking of which,
> > MACH_MMP3_DT should be enabled in multi_v7_defconfig I think.
>
> Yes. The defconfig changes are independent and I intend to submit them
> separately.

Sounds good. For those, you can send just a patch if you want (if it
is just one patch), no need to send a pull request. Up to you what's
easier at your end.

> My previous attempt to get a defconfig change applied (that would be
> CONFIG_MACH_MMP2_DT [1]) was not successful, which I was not sending
> more, at least I verify that I send it in the correct direction.
>
> [1] https://lore.kernel.org/lkml/20190828074204.287415-1-lkundrak@v3.sk/

That patch looks fine, I must have missed it since it wasn't sent to
soc@kernel.org.

Only comment is that you probably don't what the SERIAL_8250_PXA
option as a module, since you likely want it for boot console?


> > Maybe this seems like a lot of awkward sorting, and in some cases it's
> > overkill to do it. But if you think you'll keep sending in more
> > contributions over time, it's useful to get familiar with the
> > workflow.
>
> Yes. Thanks for taking time to explain this to me.
>
> > For now, there's really two actions and a question:
> >  1) Fixup the MAINTAINERS entry
> >  2) Make sure you send the driver patches to the right places and
> > collect acks (or get them to pick them up)
> >
> > Then, beyond that I'll leave it up to you on what to do, whether you
> > want to send a few pull requests, or -- if you don't have any
> > downstream users to your tree -- we can also cherry-pick patches apart
> > (or you can send us the series of patches and we can apply them).
>
> I don't really have a preference and I have no idea about downstream
> users. I sent a pull request because Arnd suggested I send one [1].
>
> [1] https://lore.kernel.org/lkml/CAK8P3a0Jq93AVYau_7odZz73ZL22buVCveiHoC6oGf=Oy6KEKQ@mail.gmail.com/

Ok, that's fine. For now, I suggest you make an attempt to prepare the
patches as above to get used to it, and if you think it's too much
work just let us know and we can show how we'd sort it (by doing the
cherry-picks).

And thanks for your efforts so far on getting the MMP platforms better
supported!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
