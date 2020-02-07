Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B601A155BA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJN3Iy/rjJnuun3zJXuejX2ChdHeQGpPocwVIF2PUHQ=; b=KqWyPwQLVx6ZTP
	YrhRzgw4LIdPAeOUGL8IvrfTyBA514T9NgqXEzaGYpjQZ3cIblBS0a7wGkzHK7Ri558PVHK3lMbK6
	3vt71kAxChN71sxbD7E77jMeOLDYqZNPP2FLErhG0YGqWMoKvfJiEJ2IO2+DhH4kDHZdRyVw9gXq+
	w8mPIZeQCBaBYFF8sYhdp8QbLp7LlMni0yhDKPJrJcBWp63QBv7lNrMxu2LqLIhyQvORtpLOxV9we
	sD5wFzV0X05PkYZPevguZg7FvIz5bhQ8DVdWy+d/fq+SqPRoZkSMLhafzAmXZospFrhZvqJz1gSXM
	Mj65KK9xzP0ubA2b6J9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06Mo-0005CR-QV; Fri, 07 Feb 2020 16:20:30 +0000
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06Mi-0005C6-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:20:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 804A18EE165;
 Fri,  7 Feb 2020 08:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1581092422;
 bh=uvd4rwLEaY2+E2FC+J/+GniOjYoGdBNbZoO4ku6gsSE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=xexRZIhrm9xHJGV2dhfty1luTqCxUvHKzrbknQNwWlcd7xwv0ozKBYwSeIcTb+T7t
 IW12BhgAjugv7gru51mdm4mH/xh6RWRWESsVBOhlqsSkikxkkmXzyFP+Ur0VIINWHe
 8V4yqglOLiSIRibaNCh63o56brr+5K6i3fKwEFbc=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id CWzZ8kdisAgm; Fri,  7 Feb 2020 08:20:22 -0800 (PST)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id AAA758EE0E2;
 Fri,  7 Feb 2020 08:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1581092422;
 bh=uvd4rwLEaY2+E2FC+J/+GniOjYoGdBNbZoO4ku6gsSE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=xexRZIhrm9xHJGV2dhfty1luTqCxUvHKzrbknQNwWlcd7xwv0ozKBYwSeIcTb+T7t
 IW12BhgAjugv7gru51mdm4mH/xh6RWRWESsVBOhlqsSkikxkkmXzyFP+Ur0VIINWHe
 8V4yqglOLiSIRibaNCh63o56brr+5K6i3fKwEFbc=
Message-ID: <1581092420.7608.15.camel@HansenPartnership.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Laszlo Ersek
 <lersek@redhat.com>
Date: Fri, 07 Feb 2020 08:20:20 -0800
In-Reply-To: <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
References: <20200206140352.6300-1-ardb@kernel.org>
 <fa3b3103-e77d-571d-71a4-604fa48368e6@redhat.com>
 <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
 <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_082024_439205_7A6C48A6 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.63.167.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-02-07 at 12:23 +0000, Ard Biesheuvel wrote:
> On Fri, 7 Feb 2020 at 09:22, Laszlo Ersek <lersek@redhat.com> wrote:
> > 
> > On 02/07/20 10:09, Laszlo Ersek wrote:
[...]
> > > For example, virt-install's "--location" option "can recognize
> > > certain distribution trees and fetches a bootable kernel/initrd
> > > pair to launch the install". It would be nice to keep that
> > > working for older distros.
> > > 
> > > I think LoadFile[2] can co-exist with SimpleFs.
> > > 
> > > I also think that the "try SimpleFs first, fall back to
> > > LoadFile[2] second" requirement applies only to the UEFI boot
> > > manager, and not to the kernel's EFI stub. IOW in the new
> > > approach the kernel is free to ignore (abandon) the old approach
> > > for good.
> > 
> > ... But that might not be good for compatibility with grub and/or
> > the platform firmware, from the kernel's own perspective,
> > perhaps?...
> > 
> > Who is supposed to produce LoadFile2 with the new VenMedia devpath?
> > 
> 
> What I am ultimately after is a generic GRUB that uses
> LoadImage+Startimage for starting the kernel on all architectures, 

For most boots, we need to pivot to the MoK.  A long time ago, I
proposed updating the platform security policy to do an override to
allow MoK to become the security verifier (actually principally so I
could get the gummiboot bootloader to work with the MoK method):

https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/security_policy.c

And I believe all the pivot bootloaders now do this, but the fear was
always this looks a bit like hackery that might not work in some UEFI
implementations.  Since we don't really rely on it (shim link loads
after signature verification) we don't know whether the assumption does
break or not.  We'll need to get much more comfortable with the
security override before we can let grub do a simple load+start.

> and is able to load the initrd from anywhere in an arch agnostic
> manner.

I think the use case might not really be grub, it's gummiboot, or
systemd-boot as its now called:

https://wiki.archlinux.org/index.php/systemd-boot

The standard way of using grub and EFI is to put grub on the EFI
parition but have the kernel and the initrd on the root parition (which
won't be EFI readable).  This means we can keep the EFI partition small
and only needing modification when grub is updated, meaning it doesn't
even need mounting at all usually.

Don't get me wrong, I like the gummiboot way of doing the
LoadImage+StartImage: it's small and clean and doesn't need the shim
protocol, but people like the sophistication grub provides including
its ability to read kernel filesystems, so they're unlikely to change
that.

James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
