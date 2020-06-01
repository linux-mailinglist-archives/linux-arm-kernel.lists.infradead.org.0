Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C9D1EB14B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi3yjESAERwZT4xBD3FPB8cE/U7EYjtROv0POeXbD5I=; b=S3VsPk84CB2FfF
	W4oRnbiXxbWZ8eDhrxYGrtA28xSFLAd9BD+CIjl3xIoyRtVl8PokRM3Qfx1r+aLktRFyChe8SKGuk
	Bb3QY6Q4rPYPOHJV2EINvqnxfkzeawoVb1l8iUhBPcLifWdz6YFCT9NVXQfMVvzkkw/urUuRNEGgb
	zeb9uJsaBvs7JVOq7PUtvHgzyhQ98ntwdwP90jM9Eb8rTYXfdUEo7w+cJy0QwGOGTAQln4ukjTHTS
	4znObPQYJEbJ9gRCnYTfoJWwy3bIVLiawNzKrADrH1e3Y3Luc8qzMirRdncyeZDwmZBSZy/J1IEkh
	APaNfasEU4nE6XWfY/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsLw-0004Dw-9V; Mon, 01 Jun 2020 21:52:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsLp-0004DK-Ut
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:52:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id m7so474901plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=onQKbzkilz0X5tVc09T8iL8x6pvNazvbXVadw7hgTwg=;
 b=g0ZCrPcw+8Y4ceJnJeW4DMbSloHDtOqZhyhQ3PpwR9AqJxOPW9dw6muw4SjgImhrS6
 8vSLhQEy8iEccEUxm1vsQAz9hFO3RcSlgfNSKB+O9ZlTYX1yuKZGwCWjYvRKCw2RvBgt
 t7B2hoBLMWPzqi7cUHbgmn9qtkFflXg4WZbJsd4J6s9HQeiKhEtOLc+JhoLekK/15yxU
 LHOU7tSnQvcmHifNcOlWT/katcTSXjBJo6bo4n7ez8GE48AZJNDFY4Cj/5ovsa5eg+UK
 GQbnOATDPqwqu951zF/14BCMDtH0O1XFNRkNAIo2tFGZ2/pIZp7N5Sxwfl0McN//rXmQ
 caaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=onQKbzkilz0X5tVc09T8iL8x6pvNazvbXVadw7hgTwg=;
 b=fa43ptJrIpghuwMJe/YpKIMm+jTSp7SbTVT8ta+qFtrztpnAhRmjZKboe4L/cgZA7J
 kXtmOF3oJ7yEtbKFl4hMOnQdgI8XkbdbxndH4QhfZjzLyzTfA8kWG0QAHnUBd7xLwCBb
 oRyniqaapPpZzgEhU2yXlaCrpAetb4ltn6wKpWz4f88venWipeZB8ceRgi9KeP2AUs17
 t2WGG2Wl1CC3m5U9+6a0biKDjkfnt2rCBtRMrmViw2p36LZ+Ed5nVrJ4UkQyleGawc0F
 e2uH7YH/LcreJYNfbKUgnpabnVLr6uKpT7eJ/GT+PSzNsUoAk30/RneYjoaENzdaiyXW
 PG3Q==
X-Gm-Message-State: AOAM533x5kGGRjmlVr4k9TFt5cjVzOSW3S4bdW3nxLuwMQCUx/+je9ff
 MYBPeuOJrvENNgBhR/UXU7VdwrLS5jK/NJt8XMWuZg==
X-Google-Smtp-Source: ABdhPJwH/d09UUxphQlanLQBcjSqhz0t3KJnbw6ZMwuQXdqQ+tJ/31ktb4sxDBLjxnuw1taD+PyT9F0D75TmRc7A/7w=
X-Received: by 2002:a17:902:724a:: with SMTP id
 c10mr21740309pll.223.1591048326923; 
 Mon, 01 Jun 2020 14:52:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
 <20200526202157.GE2206@willie-the-truck>
 <20200527134104.GA16115@e121166-lin.cambridge.arm.com>
 <20200601070459.GB8601@willie-the-truck>
In-Reply-To: <20200601070459.GB8601@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 1 Jun 2020 14:51:55 -0700
Message-ID: <CAKwvOdmXmxOdW_TJQmYBYDY8gDOacjDTcpSWQGATb2p_85tFAQ@mail.gmail.com>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_145210_013680_4C261E61 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 guohanjun@huawei.com, Peter Collingbourne <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 12:05 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 02:41:04PM +0100, Lorenzo Pieralisi wrote:
> > On Tue, May 26, 2020 at 09:21:57PM +0100, Will Deacon wrote:
> > > Hi Lorenzo, Hanjun, [+Nick]
> > >
> > > On Thu, May 21, 2020 at 06:37:38PM +0100, Lorenzo Pieralisi wrote:
> > > > On Thu, May 21, 2020 at 11:09:53AM +0100, Will Deacon wrote:
> > > > > Hi folks,
> > > > >
> > > > > I just tried booting the arm64 for-kernelci branch under QEMU (version
> > > > > 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a
> > > > > couple of NULL pointer dereferences reported at boot. I think they're
> > > > > both GIC related (log below). I don't see a panic with UBSAN disabled,
> > > > > so something's fishy here.
> > > >
> > > > May I ask you the QEMU command line please - just to make sure I can
> > > > replicate it.
> > >
> > > As it turns out, I'm only able to reproduce this when building with Clang,
> > > but I don't know whether that's because GCC is missing something of Clang
> > > is signalling a false positive. You also don't need all of those whacky
> > > fuzzing options enabled.
> > >
> > > Anyway, to reproduce:
> > >
> > >  $ git checkout for-next/kernelci
> > >  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- defconfig
> > >  <then do a menuconfig and enable UBSAN>
> > >  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- Image
> > >
> > > I throw that at QEMU using:
> > >
> > > qemu-system-aarch64 -M virt -machine virtualization=true \
> > >     -machine virt,gic-version=3 \
> > >     -cpu max,sve=off -smp 2 -m 4096 \
> > >     -drive if=pflash,format=raw,file=efi.img,readonly \
> > >     -drive if=pflash,format=raw,file=varstore.img \
> > >     -drive if=virtio,format=raw,file=disk.img \
> > >     -device virtio-scsi-pci,id=scsi0 \
> > >     -device virtio-rng-pci \
> > >     -device virtio-net-pci,netdev=net0 \
> > >     -netdev user,id=net0,hostfwd=tcp::8222-:22 \
> > >     -nographic \
> > >     -kernel ~/work/linux/arch/arm64/boot/Image \
> > >     -append "earlycon root=/dev/vda2"
> > >
> > > I built QEMU a while ago according to:
> > >
> > > https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-howto.html
> > >
> > > and its version 4.2.50 (v4.2.0-779-g4354edb6dcc7).
> > >
> > > My clang is version 11.0.1.
> >
> > Thanks a lot Will.
> >
> > I *think* I was right - it is the ACPI_OFFSET() macro:
> >
> > #define ACPI_OFFSET(d, f)  ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> >
> > that triggers the warnings (I suspected it because at least in one of
> > the warnings I could not see any dereference of any dynamically
> > allocated data).
>
> Cheers, Lorenzo.
>
> > Now on what to do with it - thoughts welcome.
>
> Nick -- any idea what to do about the above? The '#define' pasted by
> Lorenzo is causing a couple of spurious UBSAN splats when compiling with
> clang 11.

If there's undefined behavior from that macro soup, we should be able
to reproduce it outside of the kernel and regardless of target
architecture, right?  The macros aren't too much to throw into a file:

```foo.c
#define acpi_uintptr_t void *
#define ACPI_CAST_PTR(t, p) ((t *) (acpi_uintptr_t) (p))
typedef unsigned char u8;
typedef unsigned long u64;
typedef u64 acpi_size;
#define ACPI_PTR_DIFF(a, b) ((acpi_size) (ACPI_CAST_PTR (u8, (a)) -
ACPI_CAST_PTR (u8, (b))))
#define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)

struct foo {
unsigned char bar;
int baz;
};

int main() {
return ACPI_OFFSET(struct foo, baz);
}
```
I think looks right.  If we run that through -E, and clean that up
further, we get:
```bar.c
typedef unsigned char u8;
typedef unsigned long u64;

struct foo {
unsigned char bar;
int baz;
};

int main() {
return ((u64) (((u8 *) (void *) ((&(((struct foo *) 0)->baz)))) - ((u8
*) (void *) (((void *) 0)))));
}
```
I may be miscounting my parentheses, but how do you take the address
of `type`->`member`?  What does that even mean?

+ some more sanitizer folks and Ard for ACPI.

anyways, running foo.c through a compiler:
$ clang -O2 foo.c -fsanitize=undefined
$ ./a.out
foo.c:15:12: runtime error: member access within null pointer of type
'struct foo'
SUMMARY: UndefinedBehaviorSanitizer: undefined-behavior foo.c:15:12 in

(msg looks truncated, wtf)

Anyways, it looks like the address of member from NULL subexpression
looks problematic.  I wonder if offsetof can be used here?

#define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (offsetof(d, f), (void *) 0)

Seems to work in my basic test case.  Untested in the kernel.

IIUC, ACPI_OFFSET is trying to calculate the difference between the
offset of a member of a struct and 0?  Isn't that the tautology `x - 0
== x`?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
