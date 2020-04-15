Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5702E1AAC67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erz4FhHBT/ggMocM2M2C8oRHfUwjIvxLsqxNevwVmV4=; b=XIKIBVbPD6zYxt
	FiRKlJX+X+0NsQrRN+AoPZbqcPMsP9dOX+xa02m6vjY2K9Rcjv/dh/yGuMd/yqQ+G9ICPWPr24UtA
	a0HR1gdG6afGQ15URdYh+B16wVt8unFUr1kw7n7U+s8Y0QZWz18xyA2ieuJCvSrAtQQgZN3g//I7b
	LuuoR9VnfE9/Npjxo6m/od4BUBWEWRVArK1AbH1dXIEwWV6KAi/a0hSSdaUwaJnrY0g821rZ5mqC2
	BUEVjgqBf2q7DfVNcXqmXpwitbsTnMQbuJbC2DgQSW3/XpQE60LK4dQUFmR2zJ6HvwUTICqiANSGX
	bjoQQnyqB2QYi0wu2u6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkOZ-00025h-OD; Wed, 15 Apr 2020 15:56:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkOS-00025O-8j
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:56:05 +0000
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D02122063A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586966163;
 bh=n4WL1T858zal6SWux0kcghyeb03YcdCK83LPyQqpmOU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yychbi2M7PdL4U/sur0ERyt44GK4CFegqPUkaZ1u5iy/BuUdzfAp14ANUWaR8RxPY
 bwqjQ64EQpRgDtmlgXu9BiUK0xgrFqQTt18ZLPPLIvp0DI+7bea4NZZSwk2qL2/iIK
 8cJC/FT8JDPZpcoYDkmf2w2RhK7MSepi/7zMldDI=
Received: by mail-il1-f181.google.com with SMTP id b18so3811458ilf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 08:56:03 -0700 (PDT)
X-Gm-Message-State: AGi0PuYUmNcPsLChXLD/6evPdZXU4nbVNb0/RBOGOf5fqoWoS4XHqMi7
 J0Wgwgz8G7j29MYj4jvvz4i8Ly2M0tg4w1zTIGY=
X-Google-Smtp-Source: APiQypJO2rcsOAPOZwNgYyBGwSD18Rro24rIIN5xJo2IrgJIuBFWlXuwcbqq2VlhdS3Pf3dN91LZUXXkZ6WIB4fz4EM=
X-Received: by 2002:a92:5a4c:: with SMTP id o73mr5693957ilb.218.1586966163228; 
 Wed, 15 Apr 2020 08:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200221165532.90618-1-andre.przywara@arm.com>
 <2d3bad43-10a5-3ee1-72e7-e1da1d6c65dd@arm.com>
 <CAMj1kXGUiCLvmJUwrxCc8aHdE30WWfa95ou-tEM8Kv0nj2GdDA@mail.gmail.com>
In-Reply-To: <CAMj1kXGUiCLvmJUwrxCc8aHdE30WWfa95ou-tEM8Kv0nj2GdDA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 17:55:51 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF6iw47MM_tg5izB9KC-N2zrnQbhwT2TVPOuKdpOBX=ow@mail.gmail.com>
Message-ID: <CAMj1kXF6iw47MM_tg5izB9KC-N2zrnQbhwT2TVPOuKdpOBX=ow@mail.gmail.com>
Subject: Re: [PATCH kvmtool v3] Add emulation for CFI compatible flash memory
To: Alexandru Elisei <alexandru.elisei@arm.com>, sami.mujawar@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_085604_347309_826982FC 
X-CRM114-Status: GOOD (  26.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Raphael Gault <raphael.gault@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 17:43, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 7 Apr 2020 at 17:15, Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> >
> > Hi,
> >
> > I've tested this patch by running badblocks and fio on a flash device inside a
> > guest, everything worked as expected.
> >
> > I've also looked at the flowcharts for device operation from Intel Application
> > Note 646, pages 12-21, and they seem implemented correctly.
> >
> > A few minor issues below.
> >
> > On 2/21/20 4:55 PM, Andre Przywara wrote:
> > > From: Raphael Gault <raphael.gault@arm.com>
> > >
> > > The EDK II UEFI firmware implementation requires some storage for the EFI
> > > variables, which is typically some flash storage.
> > > Since this is already supported on the EDK II side, we add a CFI flash
> > > emulation to kvmtool.
> > > This is backed by a file, specified via the --flash or -F command line
> > > option. Any flash writes done by the guest will immediately be reflected
> > > into this file (kvmtool mmap's the file).
> > > The flash will be limited to the nearest power-of-2 size, so only the
> > > first 2 MB of a 3 MB file will be used.
> > >
> > > This implements a CFI flash using the "Intel/Sharp extended command
> > > set", as specified in:
> > > - JEDEC JESD68.01
> > > - JEDEC JEP137B
> > > - Intel Application Note 646
> > > Some gaps in those specs have been filled by looking at real devices and
> > > other implementations (QEMU, Linux kernel driver).
> > >
> > > At the moment this relies on DT to advertise the base address of the
> > > flash memory (mapped into the MMIO address space) and is only enabled
> > > for ARM/ARM64. The emulation itself is architecture agnostic, though.
> > >
> > > This is one missing piece toward a working UEFI boot with kvmtool on
> > > ARM guests, the other is to provide writable PCI BARs, which is WIP.
> > >
>
> I have given this a spin with UEFI built for kvmtool, and it appears
> to be working correctly. However, I noticed that it is intolerably
> slow, which seems to be caused by the fact that both array mode and
> command mode (or whatever it is called in the CFI spec) are fully
> emulated, whereas in the QEMU implementation (for instance), the
> region is actually exposed to the guest using a read-only KVM memslot
> in array mode, and so the read accesses are made natively.
>
> It is also causing problems in the UEFI implementation, as we can no
> longer use unaligned accesses to read from the region, which is
> something the code currently relies on (and which works fine on actual
> hardware as long as you use normal non-cacheable mappings)
>

Actually, the issue is not alignment. The issue is with instructions
with multiple outputs, which means you cannot do an ordinary memcpy()
from the NOR region using ldp instructions, aligned or not.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
