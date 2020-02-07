Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9457155F08
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 21:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OVmzaG6C2vPHsRy6pQpe0JKyP0BvPqUA0sAGZlYedU=; b=t1hGL7TDOHFgtg
	H0ctVEaUjP9dTGenVVFBLrUc/ZE/aZxzX04v48S1TO8rE3BJmLLk/btoGVyQtf2MaIl2OSMGG6z9X
	FiecO29HYO8T+UMeMptcDCr33RSC5BHvzdsHSUk5hW8ZdLmgCMoy1+oTXWIqY3YQlPxI5xaUwh7E3
	efFpKob8w1qhCF1l1yIEQpM7ZIKUMiua3CH4pMQJXB4yiyfDuUhaUIC43/sJodQD4R1awq7tET2E5
	rFCtZ+A2P5FfNq7OIy8GVaNZ2Vqciu6Dq+Z4m1HWhukZmzL/j1w6TGivwdegP1tRF/hm9Q2LG0dW+
	kVc1K3WSB7ChN9kzloFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09rS-0004bY-Mb; Fri, 07 Feb 2020 20:04:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09rI-0004ak-AB
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 20:04:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so326872wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 12:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/cjJttADTR7x5y7X61oHSqiTQWNdM2U/1/pLmsbVFWU=;
 b=a3PmSRlKqq4EAlnePg2rU+Axgzwomz+8WnRMjfMiIUW/y17gkQfunczIzbphyL49Wa
 5Wf5Lw4PFfhqHI/rlQdk9Bbf/jccwc/RhqxO9K4iLWjYbKzqzLmxD4GRE5QuXvJb/q/A
 t3rrtrxVIjNLiWkE47/FTr0NydZ7y68Jtz3m6jcoEzd0XLE1GeazCnjLaOG3O9QT0IAM
 bnnV8Wl0KBnwF+S4IpBgX4hLHthHfrKwe8/4WIh9wW9SFrSCvsJH3L2HoYks4+BX8FU6
 MUGdKqFR6R0CTlN55qqIMObX/Vt2fQ1Cr8v3l+Ywh1JF2VjGA79F7XCslSCTW82WtHpa
 YiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/cjJttADTR7x5y7X61oHSqiTQWNdM2U/1/pLmsbVFWU=;
 b=CxplxzXn7Uvax7nryUXAfNu9bDOpIGk71dol7UMnDqgLaiKUe9slahUQGA/+35Ck8W
 tyX4WfH1+WPslcn8Jsl47hnpOWny4iyxOmZCjhnx9BYT6YvZoIqKzXs4FfeHNGgHKagf
 cL/RN66K1buCDyQkzP/3Xs8giW42CO2toV+uN4mItvTAGBuz9ECjgLp33NxBgnLCUruo
 dT1mOak06J2/AgW0afSlodNeJwIOn8/LzMvB2GV/X5gT2DNx8VUQb3R0s/3lUc0+3f4u
 1KCpbPji8vXGPe2JCkGWwBEhRH7iIOciud67aBTijzTVh2wecspZCHRBqpddV9YbcJ03
 dZrA==
X-Gm-Message-State: APjAAAXF0R3Z5bD6l1kUSffMydiHfotXxxcKIIyohlNMuJVdtJZ81aEG
 BDyXAAdHyct0Fyzq4xlBAbPo9LYYcjYn9xPrVCTBBw==
X-Google-Smtp-Source: APXvYqyg6dkIv/QUnbUXe3idvlG17jt8sE48s/mLAN3GYbGD9MMYafQMqdY++pqS+LvnoZ12K6+DF2lEhSZdTMHOod4=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr706184wrr.208.1581105850562; 
 Fri, 07 Feb 2020 12:04:10 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <fa3b3103-e77d-571d-71a4-604fa48368e6@redhat.com>
 <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
 <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
 <1581092420.7608.15.camel@HansenPartnership.com>
 <CAKv+Gu99wxr+OHwqPRjfF136VB3AwPbXXg1tx1=34jF2DU6Z6g@mail.gmail.com>
 <1581105265.4545.17.camel@HansenPartnership.com>
In-Reply-To: <1581105265.4545.17.camel@HansenPartnership.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 20:03:59 +0000
Message-ID: <CAKv+Gu9fO1aB2wmVjLyGPJ0LjbZeBTtCW_pdmR2cAyHgTR4++w@mail.gmail.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_120412_365037_9DA9B74E 
X-CRM114-Status: GOOD (  40.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

On Fri, 7 Feb 2020 at 19:54, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Fri, 2020-02-07 at 18:31 +0000, Ard Biesheuvel wrote:
> > On Fri, 7 Feb 2020 at 16:20, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > >
> > > On Fri, 2020-02-07 at 12:23 +0000, Ard Biesheuvel wrote:
> > > > On Fri, 7 Feb 2020 at 09:22, Laszlo Ersek <lersek@redhat.com>
> > > > wrote:
> > > > >
> > > > > On 02/07/20 10:09, Laszlo Ersek wrote:
> > >
> > > [...]
> > > > > > For example, virt-install's "--location" option "can
> > > > > > recognize certain distribution trees and fetches a bootable
> > > > > > kernel/initrd pair to launch the install". It would be nice
> > > > > > to keep that working for older distros.
> > > > > >
> > > > > > I think LoadFile[2] can co-exist with SimpleFs.
> > > > > >
> > > > > > I also think that the "try SimpleFs first, fall back to
> > > > > > LoadFile[2] second" requirement applies only to the UEFI boot
> > > > > > manager, and not to the kernel's EFI stub. IOW in the new
> > > > > > approach the kernel is free to ignore (abandon) the old
> > > > > > approach for good.
> > > > >
> > > > > ... But that might not be good for compatibility with grub
> > > > > and/or the platform firmware, from the kernel's own
> > > > > perspective, perhaps?...
> > > > >
> > > > > Who is supposed to produce LoadFile2 with the new VenMedia
> > > > > devpath?
> > > > >
> > > >
> > > > What I am ultimately after is a generic GRUB that uses
> > > > LoadImage+Startimage for starting the kernel on all
> > > > architectures,
> > >
> > > For most boots, we need to pivot to the MoK.  A long time ago, I
> > > proposed updating the platform security policy to do an override to
> > > allow MoK to become the security verifier (actually principally so
> > > I could get the gummiboot bootloader to work with the MoK method):
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/t
> > > ree/lib/security_policy.c
> > >
> > > And I believe all the pivot bootloaders now do this, but the fear
> > > was always this looks a bit like hackery that might not work in
> > > some UEFI implementations.  Since we don't really rely on it (shim
> > > link loads after signature verification) we don't know whether the
> > > assumption does break or not.  We'll need to get much more
> > > comfortable with the security override before we can let grub do a
> > > simple load+start.
> > >
> >
> > I'd like to do something much simpler: let shim override LoadImage
> > and StartImage,
>
> Actually, the non-shim bootloaders really don't want to do that: the
> whole point of being able to use LoadImage is that you don't need to
> know how to load a PECOFF binary or check its signature.  Overriding
> the security protocol allows updating the signature check, but if you
> look at the current efitools implementation it uses the pkcs7 protocol
> to avoid having to include crypto code.
>
> I've got the pecoff code they'd need in my uefi library:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/pecoff.c
>
> But it's a lot of code for things that pride themselves on being tiny.
>

I think you are missing the point. GRUB will only use
loadimage+startimage, no matter what is backing it (the firmware or
shim). The same applies to gummiboot or even the uefi shell if you
wanted to. So all loaders use LoadImage/StartImage as usual, but shim
inserts itself into the call chain if it was loaded first.


> >  and in their implementations, fall back to the firmware
> > ones if necessary.
> >
> > > > and is able to load the initrd from anywhere in an arch agnostic
> > > > manner.
> > >
> > > I think the use case might not really be grub, it's gummiboot, or
> > > systemd-boot as its now called:
> > >
> >
> > No it is definitely GRUB. GRUB today needs to attach to the shim
> > protocol, perform the authentication, measure the payload etc etc,
> > which means it knows far too much about the internals of shim or the
> > fact that it even exists.
>
> The shim protocol and shim are fairly separate.  I agree it means grub
> has to load and know the two entry points for context and verify but
> they're very far removed for the inner workings of shim.  Obviously, my
> non-shim loader has to supply them for grub, so this is the
> implementation:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git/tree/lib/shim_protocol.c
>
> It's only 50 lines.
>
> The other thing to consider is that crypto code is huge.  Shim
> currently includes it (although it could avoid this by using the pkcs7
> verifier protocol trick I use ... I should push that harder) and it
> adds about 1M of static code.  Grub does not have this code, so either
> grub uses shim and its code to do the signature verification or grub
> will have to include the additional 1M as well ... I think using shim
> via the protocol is preferable.
>

No. GRUB will call loadimage+startimage, and will end up hitting the
implementation exposed by shim.

> > My ideal bootflow would be where the OS installer looks at the
> > firmware's db/dbx, doesn't bother to install shim if the OS vendor's
> > cert is there, and uses the exact same GRUB regardless of whether
> > shim is part of the bootflow or not.
>
> That's not enough.  The whole point of MoK is that the user may have
> done their own key addition, so you could be in the situation where the
> vendor cert is present in db but the user has a MoK override for boot
> and if you assume presence of the vendor cert means you can use
> loadimage, this will fail because the MoK cert isn't in db ... unless
> you've added the MoK key via the security protocol override.
>

No. The LoadImage you are hitting is shim's loadimage not the
firmware's loadimage in this case.

> > One of the things impeding this is the fact that we cannot load the
> > initrd from anywhere when using loadimage+startimage.
>
> unless initrd becomes a PECOFF binary, it can never be loaded by
> loadimage ... I thought you were still letting the kernel load it via
> LoadFile2?  (assuming you are and that the above is just a typo).
>

No it is not a typo.

If you load the kernel vis LoadImage, you need to use initrd= to load
the initrd, which required that file to be hosted on a file system
that EFI understands. The alternative is to load the initrd into
memory, store the address and size into a bootparams structure or DT,
and invoke the kernel via some other entry point that allows you to
carry this metadata.

I want to get rid of the latter, which means I need a way to load the
initrd that is not limited to loading from the same [EFI supported]
file system as the kernel. *That* is what this series is about.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
