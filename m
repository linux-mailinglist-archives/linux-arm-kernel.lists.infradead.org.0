Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26151EB166
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9LiNABBqBHwk3cfJXsE5jSElEN42Uq7GgIzsna1WR4=; b=JzGfZX09Gt3CQd
	+VRLJJDphPpXhVoXXZI8NoBb86LH5fesI5CvyE06ytHI8Y7H0/BqExmKPrzcYOLXLq2Jch8JDV2B6
	v84+txIpmNA0xaB9N5G4ZjIKvyje2ADtztIjoxRWcxu6swMZVx/kk0Ix2dqg01l4CpYOdSRKRS5JH
	ZXy7WlSrpS9Nobh6JxY5Ve7VDLxc9dXpiKUGTdGH6mmO0zN8IikOQ0ooN8uBRSb/qbW2+qs1cSO7V
	jZuIgaGrhRuASclNCibphFsSckDDvCoysFQUBi9LwKJuIHU6wGdB1TcJdgUl9OIJbv1qEtbMdqtXq
	A5rNFtWkW0hi9ogT5fzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsRT-0007mV-Aa; Mon, 01 Jun 2020 21:57:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsRJ-0007lJ-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:57:50 +0000
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B40D12073B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 21:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591048667;
 bh=AKFeVvvp8LVyjfTkKWoYziq7hclqKDBIeDN0NgDDkgk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AFJOoQ8gFME1wsDJxqLKkWDYmlWfer7cncjhx603warjh/3KBhl88U8m8SSOxSp5G
 yqjZTPukpoPhptso7/qSJCt3PE69ZEw7OkIFTuAtxNRTmMNTi+QbVT9GtvkMURP0to
 B9mf9TRFfCNon8nQzjxFUzdz+wN+whMHfw80dxdU=
Received: by mail-oi1-f175.google.com with SMTP id d67so5230872oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:57:47 -0700 (PDT)
X-Gm-Message-State: AOAM530AtXcdI/OFqw30OFFseLT/8eGB3OK1GmZT6YSi2YlqjxAWkfXa
 r2exatSqe/ENm5fgY/2B53nU2VaOE+UhNWd8JKY=
X-Google-Smtp-Source: ABdhPJxZ3di0kZqsmnkJeyAQZSrzjrSqDTplVH3vkYBpYwYBPioXbSKXgIYx2HsuflwOt0FHKV7KoycXYJDMAxOgBOA=
X-Received: by 2002:aca:b707:: with SMTP id h7mr980564oif.174.1591048667042;
 Mon, 01 Jun 2020 14:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
 <20200526202157.GE2206@willie-the-truck>
 <20200527134104.GA16115@e121166-lin.cambridge.arm.com>
 <20200601070459.GB8601@willie-the-truck>
 <CAKwvOdmXmxOdW_TJQmYBYDY8gDOacjDTcpSWQGATb2p_85tFAQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmXmxOdW_TJQmYBYDY8gDOacjDTcpSWQGATb2p_85tFAQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 1 Jun 2020 23:57:35 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFQzBaZO+RGKs2iJOzW6rdEiAjdVc8PJ4U+KMWgCD9a6w@mail.gmail.com>
Message-ID: <CAMj1kXFQzBaZO+RGKs2iJOzW6rdEiAjdVc8PJ4U+KMWgCD9a6w@mail.gmail.com>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_145749_119135_D0101AA8 
X-CRM114-Status: GOOD (  34.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Collingbourne <pcc@google.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>, Alexander Potapenko <glider@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 1 Jun 2020 at 23:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Jun 1, 2020 at 12:05 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, May 27, 2020 at 02:41:04PM +0100, Lorenzo Pieralisi wrote:
> > > On Tue, May 26, 2020 at 09:21:57PM +0100, Will Deacon wrote:
> > > > Hi Lorenzo, Hanjun, [+Nick]
> > > >
> > > > On Thu, May 21, 2020 at 06:37:38PM +0100, Lorenzo Pieralisi wrote:
> > > > > On Thu, May 21, 2020 at 11:09:53AM +0100, Will Deacon wrote:
> > > > > > Hi folks,
> > > > > >
> > > > > > I just tried booting the arm64 for-kernelci branch under QEMU (version
> > > > > > 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a
> > > > > > couple of NULL pointer dereferences reported at boot. I think they're
> > > > > > both GIC related (log below). I don't see a panic with UBSAN disabled,
> > > > > > so something's fishy here.
> > > > >
> > > > > May I ask you the QEMU command line please - just to make sure I can
> > > > > replicate it.
> > > >
> > > > As it turns out, I'm only able to reproduce this when building with Clang,
> > > > but I don't know whether that's because GCC is missing something of Clang
> > > > is signalling a false positive. You also don't need all of those whacky
> > > > fuzzing options enabled.
> > > >
> > > > Anyway, to reproduce:
> > > >
> > > >  $ git checkout for-next/kernelci
> > > >  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- defconfig
> > > >  <then do a menuconfig and enable UBSAN>
> > > >  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- Image
> > > >
> > > > I throw that at QEMU using:
> > > >
> > > > qemu-system-aarch64 -M virt -machine virtualization=true \
> > > >     -machine virt,gic-version=3 \
> > > >     -cpu max,sve=off -smp 2 -m 4096 \
> > > >     -drive if=pflash,format=raw,file=efi.img,readonly \
> > > >     -drive if=pflash,format=raw,file=varstore.img \
> > > >     -drive if=virtio,format=raw,file=disk.img \
> > > >     -device virtio-scsi-pci,id=scsi0 \
> > > >     -device virtio-rng-pci \
> > > >     -device virtio-net-pci,netdev=net0 \
> > > >     -netdev user,id=net0,hostfwd=tcp::8222-:22 \
> > > >     -nographic \
> > > >     -kernel ~/work/linux/arch/arm64/boot/Image \
> > > >     -append "earlycon root=/dev/vda2"
> > > >
> > > > I built QEMU a while ago according to:
> > > >
> > > > https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-howto.html
> > > >
> > > > and its version 4.2.50 (v4.2.0-779-g4354edb6dcc7).
> > > >
> > > > My clang is version 11.0.1.
> > >
> > > Thanks a lot Will.
> > >
> > > I *think* I was right - it is the ACPI_OFFSET() macro:
> > >
> > > #define ACPI_OFFSET(d, f)  ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> > >
> > > that triggers the warnings (I suspected it because at least in one of
> > > the warnings I could not see any dereference of any dynamically
> > > allocated data).
> >
> > Cheers, Lorenzo.
> >
> > > Now on what to do with it - thoughts welcome.
> >
> > Nick -- any idea what to do about the above? The '#define' pasted by
> > Lorenzo is causing a couple of spurious UBSAN splats when compiling with
> > clang 11.
>
> If there's undefined behavior from that macro soup, we should be able
> to reproduce it outside of the kernel and regardless of target
> architecture, right?  The macros aren't too much to throw into a file:
>
> ```foo.c
> #define acpi_uintptr_t void *
> #define ACPI_CAST_PTR(t, p) ((t *) (acpi_uintptr_t) (p))
> typedef unsigned char u8;
> typedef unsigned long u64;
> typedef u64 acpi_size;
> #define ACPI_PTR_DIFF(a, b) ((acpi_size) (ACPI_CAST_PTR (u8, (a)) -
> ACPI_CAST_PTR (u8, (b))))
> #define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
>
> struct foo {
> unsigned char bar;
> int baz;
> };
>
> int main() {
> return ACPI_OFFSET(struct foo, baz);
> }
> ```
> I think looks right.  If we run that through -E, and clean that up
> further, we get:
> ```bar.c
> typedef unsigned char u8;
> typedef unsigned long u64;
>
> struct foo {
> unsigned char bar;
> int baz;
> };
>
> int main() {
> return ((u64) (((u8 *) (void *) ((&(((struct foo *) 0)->baz)))) - ((u8
> *) (void *) (((void *) 0)))));
> }
> ```
> I may be miscounting my parentheses, but how do you take the address
> of `type`->`member`?  What does that even mean?
>
> + some more sanitizer folks and Ard for ACPI.
>
> anyways, running foo.c through a compiler:
> $ clang -O2 foo.c -fsanitize=undefined
> $ ./a.out
> foo.c:15:12: runtime error: member access within null pointer of type
> 'struct foo'
> SUMMARY: UndefinedBehaviorSanitizer: undefined-behavior foo.c:15:12 in
>
> (msg looks truncated, wtf)
>
> Anyways, it looks like the address of member from NULL subexpression
> looks problematic.  I wonder if offsetof can be used here?
>
> #define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (offsetof(d, f), (void *) 0)
>
> Seems to work in my basic test case.  Untested in the kernel.
>
> IIUC, ACPI_OFFSET is trying to calculate the difference between the
> offset of a member of a struct and 0?  Isn't that the tautology `x - 0
> == x`?

No. ACPI_OFFSET() is just a poor person's version of offsetof().

(Note that it calculates the difference between &(((d *) 0)->f) and
(void *)0x0, so the 0x0 term is there on both sides)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
