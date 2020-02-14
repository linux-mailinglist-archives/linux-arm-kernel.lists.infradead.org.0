Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AEF15CEFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EdcJ+0iSckj82/uV+Okt5D3Bs0VYm8jVXF2yfYETAQ=; b=GtmvnfO0fUqQVA
	o/OWybXyPIDGPeAXiaPJlyA+qc1WlHUpFgbYGzYRHillw6iJLGxiDVYlZrFcA0iHDJfRxThV3Z3gK
	XDZ+MTGYogiK+ZL8lxLVhw9KCBzxCiY5qJWxzdHFX2wXp+cVRswNdfXvr8NryBkXzbknSV/Rkyik1
	DjI1rZaTc1sF81Gvb5ouXlsgi5altksqbm0GSRwmmlofxJbel/tHJXyvlZTKP3vkNuFgcV+H0bC1E
	+O1ZjoCeIQUP/F0BTegqYMA3QOBBYDQobK8g7SjYwvhRyMrMUJhxgRRhDyoXYYDRKmdS3DauJwEWw
	kfyrgdkaaDXa7WijQilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ok0-00020l-5f; Fri, 14 Feb 2020 00:21:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ojs-00020E-57
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:21:49 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3850217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 00:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581639706;
 bh=fFxcHKGqsnnryolaekcwMamiWaYL1ghNllNr1GlKSlc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1uS8bfwyiCqmTSZK+Ay/YoyOSkmvLrTGwNekaFq8eqv1jRr7ikV7JPFctrc/969uQ
 xXpidpbggRymLU363Q9jAtd6EJ474JpmzlJGqu9b6XVmXEq/vjz3aXjDIrlAv0+REE
 zD7BS7pCvJZThLsPLDvrXVhtzvTPaTDKgY0KYq68=
Received: by mail-qt1-f181.google.com with SMTP id l16so1190099qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 16:21:45 -0800 (PST)
X-Gm-Message-State: APjAAAXnMaPxfec7DvDgitRzkVmoY1M5n4brXghO2J8Fac5ydpslbldC
 8ZCWkWmazHBt6H1K/uxKkzuOO1JAyW59x9EV6Vc6+w==
X-Google-Smtp-Source: APXvYqyeN6yL1/VuwqYWMNCwyW+7WK5Z541o+aWniGuOqzgJunAwb26w/CEZRf+t6m3rS1OzHVRkfQsbEwQXNCahdzo=
X-Received: by 2002:ac8:1194:: with SMTP id d20mr546422qtj.243.1581639704938; 
 Thu, 13 Feb 2020 16:21:44 -0800 (PST)
MIME-Version: 1.0
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
 <20200213184752.GA1424509@rani.riverdale.lan>
 <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
 <20200214001048.GA3054227@rani.riverdale.lan>
 <20200214001257.GB3054227@rani.riverdale.lan>
In-Reply-To: <20200214001257.GB3054227@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 14 Feb 2020 00:21:30 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu92Tny_PJjddAtLrhdFJm0GqgSfj3NA26PX6xOiaStozg@mail.gmail.com>
Message-ID: <CAKv+Gu92Tny_PJjddAtLrhdFJm0GqgSfj3NA26PX6xOiaStozg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_162148_237759_FE8BBAF7 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>, Matthew Garrett <mjg59@google.com>,
 Michael Brown <mbrown@fensystems.co.uk>, Hans de Goede <hdegoede@redhat.com>,
 Peter Jones <pjones@redhat.com>, Leif Lindholm <leif@nuviainc.com>,
 Laszlo Ersek <lersek@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Feb 2020 at 01:13, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 13, 2020 at 07:10:49PM -0500, Arvind Sankar wrote:
> > On Thu, Feb 13, 2020 at 10:36:14PM +0000, Ard Biesheuvel wrote:
> > > On Thu, 13 Feb 2020 at 19:47, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Thu, Feb 13, 2020 at 05:55:44PM +0000, Ard Biesheuvel wrote:
> > > > > On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > > > As an alternative to the new section, how about having a CONFIG option
> > > > > > to emit the 64-bit kernel with a 32-bit PE header instead, which would
> > > > > > point to efi32_pe_entry? In that case it could be directly loaded by
> > > > > > existing firmware already. You could even have a tool that can mangle an
> > > > > > existing bzImage's header from 64-bit to 32-bit, say using the newly
> > > > > > added kernel_info structure to record the existence and location of
> > > > > > efi32_pe_entry.
> > > > > >
> > > > >
> > > > > That wouldn't work with, say, signed distro kernels.
> > > >
> > > > No, the idea would be that the distro would distribute two signed
> > > > images, one 32-bit and one 64-bit, which are identical except for the
> > > > header. At install time, the installer chooses based on the system's
> > > > firmware bit-ness.
> > > >
> > >
> > > I guess it would be possible, but then we'd need two different images
> > > while today, we can run the same image on both kinds of firmwares. The
> > > only thing I am trying to do is remove all the quirky bootparams stuff
> > > from the loader so that we can switch to LoadImage
> >
> > Yeah, but doing that will allow you to boot directly from firmware on
> > existing machines, and only one image needs to be chosen at install
> > time, so it just adds a few MiB to the package. I guess most people will
> > still use a boot manager or loader that can be easily enhanced to use
> > LoadImage and the new section, but it would be nice to have the option
> > to avoid that.


I see the value of having a 64-bit image that can boot natively on
32-bit firmware, but I am not expecting any buy in from the distros
for this scheme.


>
> Also not quite today, right? You still need this patchset and the
> modifications to bootloaders to get away with one image.

Sure. But we already have mixed mode support today that doesn't
require this, so it's going to be a difficult sell to switch to a new
scheme that requires infrastructure to distribute different kernels,
and logic to choose between the two.

A generic EFI bootloader/firmware will need to implement the initrd
loadfile2 protocol as well, so some Linux specific features will need
to be implemented anyway. This series is intended to ensure that mixed
mode doesn't get left behind, even though very few people use it
today.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
