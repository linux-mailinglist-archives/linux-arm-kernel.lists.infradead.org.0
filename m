Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834AB155EF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 20:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myq5tGZOsLzAYL98qZuc/NCqmdZxx1dA7Md8QhxiMmk=; b=uBGIM2QqTKrhvE
	Un/vw10C67mkozsWjxY4MpJ+UQHiWWe+YnnfFEcrjrKf+0QaDDgCabE+Jq0yjfmuNlCSF4UvtS5Mk
	FyRvWMVcBowe3p8G9qOsDR05b/3mpB8+JmCK4ms+K5bEMcuI4r0i/QMooNDaZPcvfYCiaEXfMHGvq
	YieRDqEPg0zjyJsvKAcCeB20IKIyQG3bWmJI/zoOaGbXCJDk5UfkTDEgmVdEcDOa2SV9KJFlw67Xu
	YYI3wv6ys1eenIfEPhr0LSm0jfIA5F1K3pWQWx1N5G80rxfgIS5gQ+HreEw5lR+DhlNI5Hu++qAE5
	CduMtnrgpP3ru6tpLsHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09hz-0000Ir-6w; Fri, 07 Feb 2020 19:54:35 +0000
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09ht-0000IY-Br
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 19:54:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 856738EE165;
 Fri,  7 Feb 2020 11:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1581105267;
 bh=nwwCfdr9IRdM4o2QVGdnaVzNrm7zJ8bHxvLC3vENBCA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ZCha+UDNdlHqqjuX7yqUY8oQkgSWcsp/V8dkFEWRYTgx/rWaKUv86mGqydF72KWMs
 bnpgDQ0yQHecKGRVLmuNhw+4+BjtJkvo//KyCqq6rf2AZWySCofB9I7Rvqv81tkyXM
 yh3GFEtJkVFlupbgaaP59shqcw5xLwlqhJ1lU4QE=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id n-qUKKLwmuaF; Fri,  7 Feb 2020 11:54:27 -0800 (PST)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id B52018EE0E2;
 Fri,  7 Feb 2020 11:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1581105267;
 bh=nwwCfdr9IRdM4o2QVGdnaVzNrm7zJ8bHxvLC3vENBCA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ZCha+UDNdlHqqjuX7yqUY8oQkgSWcsp/V8dkFEWRYTgx/rWaKUv86mGqydF72KWMs
 bnpgDQ0yQHecKGRVLmuNhw+4+BjtJkvo//KyCqq6rf2AZWySCofB9I7Rvqv81tkyXM
 yh3GFEtJkVFlupbgaaP59shqcw5xLwlqhJ1lU4QE=
Message-ID: <1581105265.4545.17.camel@HansenPartnership.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 07 Feb 2020 11:54:25 -0800
In-Reply-To: <CAKv+Gu99wxr+OHwqPRjfF136VB3AwPbXXg1tx1=34jF2DU6Z6g@mail.gmail.com>
References: <20200206140352.6300-1-ardb@kernel.org>
 <fa3b3103-e77d-571d-71a4-604fa48368e6@redhat.com>
 <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
 <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
 <1581092420.7608.15.camel@HansenPartnership.com>
 <CAKv+Gu99wxr+OHwqPRjfF136VB3AwPbXXg1tx1=34jF2DU6Z6g@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_115429_412021_A9AA648D 
X-CRM114-Status: GOOD (  33.51  )
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
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-02-07 at 18:31 +0000, Ard Biesheuvel wrote:
> On Fri, 7 Feb 2020 at 16:20, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > 
> > On Fri, 2020-02-07 at 12:23 +0000, Ard Biesheuvel wrote:
> > > On Fri, 7 Feb 2020 at 09:22, Laszlo Ersek <lersek@redhat.com>
> > > wrote:
> > > > 
> > > > On 02/07/20 10:09, Laszlo Ersek wrote:
> > 
> > [...]
> > > > > For example, virt-install's "--location" option "can
> > > > > recognize certain distribution trees and fetches a bootable
> > > > > kernel/initrd pair to launch the install". It would be nice
> > > > > to keep that working for older distros.
> > > > > 
> > > > > I think LoadFile[2] can co-exist with SimpleFs.
> > > > > 
> > > > > I also think that the "try SimpleFs first, fall back to
> > > > > LoadFile[2] second" requirement applies only to the UEFI boot
> > > > > manager, and not to the kernel's EFI stub. IOW in the new
> > > > > approach the kernel is free to ignore (abandon) the old
> > > > > approach for good.
> > > > 
> > > > ... But that might not be good for compatibility with grub
> > > > and/or the platform firmware, from the kernel's own
> > > > perspective, perhaps?...
> > > > 
> > > > Who is supposed to produce LoadFile2 with the new VenMedia
> > > > devpath?
> > > > 
> > > 
> > > What I am ultimately after is a generic GRUB that uses
> > > LoadImage+Startimage for starting the kernel on all
> > > architectures,
> > 
> > For most boots, we need to pivot to the MoK.  A long time ago, I
> > proposed updating the platform security policy to do an override to
> > allow MoK to become the security verifier (actually principally so
> > I could get the gummiboot bootloader to work with the MoK method):
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/t
> > ree/lib/security_policy.c
> > 
> > And I believe all the pivot bootloaders now do this, but the fear
> > was always this looks a bit like hackery that might not work in
> > some UEFI implementations.  Since we don't really rely on it (shim
> > link loads after signature verification) we don't know whether the
> > assumption does break or not.  We'll need to get much more
> > comfortable with the security override before we can let grub do a
> > simple load+start.
> > 
> 
> I'd like to do something much simpler: let shim override LoadImage
> and StartImage,

Actually, the non-shim bootloaders really don't want to do that: the
whole point of being able to use LoadImage is that you don't need to
know how to load a PECOFF binary or check its signature.  Overriding
the security protocol allows updating the signature check, but if you
look at the current efitools implementation it uses the pkcs7 protocol
to avoid having to include crypto code.

I've got the pecoff code they'd need in my uefi library:

https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/pecoff.c

But it's a lot of code for things that pride themselves on being tiny.

>  and in their implementations, fall back to the firmware
> ones if necessary.
> 
> > > and is able to load the initrd from anywhere in an arch agnostic
> > > manner.
> > 
> > I think the use case might not really be grub, it's gummiboot, or
> > systemd-boot as its now called:
> > 
> 
> No it is definitely GRUB. GRUB today needs to attach to the shim
> protocol, perform the authentication, measure the payload etc etc,
> which means it knows far too much about the internals of shim or the
> fact that it even exists.

The shim protocol and shim are fairly separate.  I agree it means grub
has to load and know the two entry points for context and verify but
they're very far removed for the inner workings of shim.  Obviously, my
non-shim loader has to supply them for grub, so this is the
implementation:

https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/shim_protocol.c

It's only 50 lines.

The other thing to consider is that crypto code is huge.  Shim
currently includes it (although it could avoid this by using the pkcs7
verifier protocol trick I use ... I should push that harder) and it
adds about 1M of static code.  Grub does not have this code, so either
grub uses shim and its code to do the signature verification or grub
will have to include the additional 1M as well ... I think using shim
via the protocol is preferable.

> My ideal bootflow would be where the OS installer looks at the
> firmware's db/dbx, doesn't bother to install shim if the OS vendor's
> cert is there, and uses the exact same GRUB regardless of whether
> shim is part of the bootflow or not.

That's not enough.  The whole point of MoK is that the user may have
done their own key addition, so you could be in the situation where the
vendor cert is present in db but the user has a MoK override for boot
and if you assume presence of the vendor cert means you can use
loadimage, this will fail because the MoK cert isn't in db ... unless
you've added the MoK key via the security protocol override.

> One of the things impeding this is the fact that we cannot load the
> initrd from anywhere when using loadimage+startimage.

unless initrd becomes a PECOFF binary, it can never be loaded by
loadimage ... I thought you were still letting the kernel load it via
LoadFile2?  (assuming you are and that the above is just a typo).

James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
