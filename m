Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4211B155E1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 19:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX2BWwHRLk1QsgomS49S7l/ego/xk9AvPU4pzV3eHz8=; b=NGYwNCfobMQsJY
	u8UelAypxymrgidsjEALzp37iHxWRId6x4/hIIfi2au7q+ThwP8QqoaeQGBEz2UBUwlgzfGMgIRVw
	Pm7MSsmvzI28pQi+SqdMCv+LMti0+PQVry0N1qBJz9i47kpj3GYkaGB/o/hDf2wPXIYdSCXaYVi+b
	D54DV5aeMuwHZdWyvF/mztu0Vj/gpW613JkgEC3e7yWo24YU45zWjL07MIgmlVJe6yw1evvWhwKxW
	vSQSACYYiiC4jacFgPZq1kDMqdWDi72ddGy4QAulokAgnnh35vVGMCsOzCl3WRAgTslPE9fqyYth0
	RRwFRCGCoBdYXVRfs6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j08Q3-00079h-La; Fri, 07 Feb 2020 18:31:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j08Pt-00078a-TR
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 18:31:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id t3so20153wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 10:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0v34gJothHO3j4Q4wlZmrNzO+MkkL5KtAqTgVsXD5t8=;
 b=c/KE7MDXnr27AuNVH5pVqkgRp1vvz6CmI/2tggk/F4MilQvTzr1FU0WH0WOpDRhYD5
 bU7VomlGH5L02fGbPt1PdZygYZWscxoxuOw+yx19ezD5waJBtQs+FIhHVCln4RKo6n48
 S0Yc9Vo9/SYWnrlXCxq4ViVRY1xk+5cbc6MaAJTWdQoROaCIUwvasoS5H2MqJ/rLl1J5
 5PqiGErFUbIMhdQzKGhkQZyfxn0lHQhyTtNsxRSLLW30pAtk7GKoeMwXg2+y1zH3qXpH
 kr4esO0v+kS58mRzC28aAmPGjfR9IUIyrWrvibSwlQjw8ElhZkRWu1qQNWT1OedDkMI8
 qm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0v34gJothHO3j4Q4wlZmrNzO+MkkL5KtAqTgVsXD5t8=;
 b=ktGTbM3scGg6vipNUohrL4I2QQVUu+GUKNQUQEFl66EGunWb7JAt1dyPTnS6VoZSO2
 TCl5mHvKnU7B75CIEvBaTm2DVHY+gAP1Bv8Vpsi5zEVjpyQxu5fE5BPEXviPmAvSC4ad
 hSVtuJVdYzthABJ8h8BVVsoxFVVEU0eKp1Ntx1n7m3dTJTie4qHKOcH7lbMELd6Y+aYY
 SUO8SFuvsSqQYOBc04cFfMVTK45CzMTOswd2ghf/5VO8VrjOoYgeIBKMOm+5U9sQHBXq
 u3XBhOheWb9gWYRTYtJK7rr/6Z+lRUE4SjsqUHtqmSxqFjgsKBcDxivOWqC97y6ho7EN
 Y2sg==
X-Gm-Message-State: APjAAAX43SZWy78vFVZ93u+qcfqQflbDxCJ0B1QgtiohPniMNKUMfbAm
 ric6282cGrazvEcWz59ZZl2pBNjsmGBWeDXUCSEeRA==
X-Google-Smtp-Source: APXvYqyVbP4+gSnuDzbO/iK3mOF8OGLPaTetRFZdihOAga1O45m+Zg2UTz4gB3UaPq/25V9fIH2KaNb4aSIPlkv/3Xs=
X-Received: by 2002:a5d:42c6:: with SMTP id t6mr313068wrr.151.1581100304442;
 Fri, 07 Feb 2020 10:31:44 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <fa3b3103-e77d-571d-71a4-604fa48368e6@redhat.com>
 <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
 <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
 <1581092420.7608.15.camel@HansenPartnership.com>
In-Reply-To: <1581092420.7608.15.camel@HansenPartnership.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 18:31:33 +0000
Message-ID: <CAKv+Gu99wxr+OHwqPRjfF136VB3AwPbXXg1tx1=34jF2DU6Z6g@mail.gmail.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_103149_983235_81D472D0 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 16:20, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Fri, 2020-02-07 at 12:23 +0000, Ard Biesheuvel wrote:
> > On Fri, 7 Feb 2020 at 09:22, Laszlo Ersek <lersek@redhat.com> wrote:
> > >
> > > On 02/07/20 10:09, Laszlo Ersek wrote:
> [...]
> > > > For example, virt-install's "--location" option "can recognize
> > > > certain distribution trees and fetches a bootable kernel/initrd
> > > > pair to launch the install". It would be nice to keep that
> > > > working for older distros.
> > > >
> > > > I think LoadFile[2] can co-exist with SimpleFs.
> > > >
> > > > I also think that the "try SimpleFs first, fall back to
> > > > LoadFile[2] second" requirement applies only to the UEFI boot
> > > > manager, and not to the kernel's EFI stub. IOW in the new
> > > > approach the kernel is free to ignore (abandon) the old approach
> > > > for good.
> > >
> > > ... But that might not be good for compatibility with grub and/or
> > > the platform firmware, from the kernel's own perspective,
> > > perhaps?...
> > >
> > > Who is supposed to produce LoadFile2 with the new VenMedia devpath?
> > >
> >
> > What I am ultimately after is a generic GRUB that uses
> > LoadImage+Startimage for starting the kernel on all architectures,
>
> For most boots, we need to pivot to the MoK.  A long time ago, I
> proposed updating the platform security policy to do an override to
> allow MoK to become the security verifier (actually principally so I
> could get the gummiboot bootloader to work with the MoK method):
>
> https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/security_policy.c
>
> And I believe all the pivot bootloaders now do this, but the fear was
> always this looks a bit like hackery that might not work in some UEFI
> implementations.  Since we don't really rely on it (shim link loads
> after signature verification) we don't know whether the assumption does
> break or not.  We'll need to get much more comfortable with the
> security override before we can let grub do a simple load+start.
>

I'd like to do something much simpler: let shim override LoadImage and
StartImage, and in their implementations, fall back to the firmware
ones if necessary.

> > and is able to load the initrd from anywhere in an arch agnostic
> > manner.
>
> I think the use case might not really be grub, it's gummiboot, or
> systemd-boot as its now called:
>

No it is definitely GRUB. GRUB today needs to attach to the shim
protocol, perform the authentication, measure the payload etc etc,
which means it knows far too much about the internals of shim or the
fact that it even exists.

My ideal bootflow would be where the OS installer looks at the
firmware's db/dbx, doesn't bother to install shim if the OS vendor's
cert is there, and uses the exact same GRUB regardless of whether shim
is part of the bootflow or not.

One of the things impeding this is the fact that we cannot load the
initrd from anywhere when using loadimage+startimage.

> https://wiki.archlinux.org/index.php/systemd-boot
>
> The standard way of using grub and EFI is to put grub on the EFI
> parition but have the kernel and the initrd on the root parition (which
> won't be EFI readable).  This means we can keep the EFI partition small
> and only needing modification when grub is updated, meaning it doesn't
> even need mounting at all usually.
>
> Don't get me wrong, I like the gummiboot way of doing the
> LoadImage+StartImage: it's small and clean and doesn't need the shim
> protocol, but people like the sophistication grub provides including
> its ability to read kernel filesystems, so they're unlikely to change
> that.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
