Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBE01A6EBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 23:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVLjthYh7SgrzX4V3teduTieVkUeVauxZVmR8eCLjBU=; b=mUVlXoM0RSUfxC
	KLanyRFqFm4ey/vmEtUBco5/FJqe9T7F9NSVVYx4krNPITl7Xqjow4nkgNtD33O3D2gVSZEpuNEuM
	qStI5mLu2NfZLuLYBn+FhqWxLTbVxSJhopXaHfZJbzblE9aCvKnbG4ka4qbtp2HKjDmi4U2O0VNy+
	1sqvY+F5wiAsOxOvnebXJ87wea1hlZuupF406ndFnvmEEIq6XGDXqHwM+oQwvMULOQHqwBG23Pivw
	A9F48yPVXlDzMmQ8jcBAtLmve+6syQdUX9gLFwww2qR5Q0+IAihwdELSJRmq9D1wYlgV1wvHb4ShB
	Dsnv7SN/02dgDZRDFOvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO71w-00081b-66; Mon, 13 Apr 2020 21:54:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO71n-000817-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 21:54:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nz5k7MFsacjtp7/YPK//L5CSH/mmmC8q8PXpApOKsrA=; b=LMtehSwHUNK1C48tAQrfzkWHm
 Mr+f/BlTgjrCZWlRGUbIKIUOtLJ/1ErxqedmNbH2T+VbXNjMfCltuU6LdslpDYaTJZRN6xM0MCW7c
 1uYQxUvnSZjkma3N670urOeu6ZUSvpnuVO8sR6b5coE7Z0iP5WwfVyQeSF8iHCU5Ab/qi8DlzwyNe
 vDCQhdcoxseldMB4VVHgaQoCNKp2YM1LsGhd9NMuVd5CV737q5+T8Hn75qYhWlsp476mi6e1HnXwN
 UmHqdjU7ly3pelifcqCt0QbgFgIp2D8gVcJuKRS6Cw9N5kfyHCORLZR9A2xqKx2vbNLbR9DTXk0So
 jt86PFolA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49662)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jO71G-0004BL-T8; Mon, 13 Apr 2020 22:53:31 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jO719-0007Ju-Tj; Mon, 13 Apr 2020 22:53:23 +0100
Date: Mon, 13 Apr 2020 22:53:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200413215323.GR25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <20200410165948.GD448831@lunn.ch>
 <20200410183420.GE25745@shell.armlinux.org.uk>
 <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_145403_242661_8525DAAB 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Linus Walleij <linus.walleij@linaro.org>,
 Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
 David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 12:26:16PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 10, 2020 at 11:34 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> > > On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > > > iwmmxt.S contains XScale instructions
> > >
> > > Dumb question....
> > >
> > > Are these Xscale instructions? My understanding is that they are an
> > > instruction set of their own, implementing something similar to IA-32
> > > MMX.
> > >
> > > Would it be more accurate to say CLANG does not support the iwmmxt
> > > instruction set?
> >
> > Yes, because the XScale core on its own (otherwise known as 80200)
> > doesn't support iWMMXT.
> >
> > It's worth pointing out that the iWMMXT instruction set uses the
> > co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
> > which is also the FPA (floating point accelerator) instruction
> > space - which is the FP instruction set prior to VFP.
> 
> Reusing instruction encoding space? :-X  I'll have to look and see how
> we define cases like this in LLVM.

Unfortunately yes.

The ARM CPU was originally an integer-only CPU, and the design was
to allow up to 16 "co-processors" to be added for bolt-on facilities.
The ARM architecture reserves various instructions in its instruction
space for the co-processors, with instructions to load/store from the
co-processor to memory (the ARM works in unison with the co-processor
to provide the address for the memory access), transfer data between
the ARM integer register set and co-processor, and instruct the co-
processor to perform various data operations.

Back in the days of the ARM2 CPU, the ARM2 on its own had no co-
processors, but had external pins to external co-processors to be added
to the system, such as the FPA (floating point accelerator) hardware.
Early Acorn ARM-based computers had a separate socket to allow the FPA
chip to be plugged in.  The FPA used the co-processor 0/1 instruction
space.

The ARM3 CPU added a cache, and with it the need to control that
cache, which is where the origins of the CP15 control co-processor
comes from (although ARM3 has a totally different CP15 layout.)

When a co-processor is addressed by an instruction, if it doesn't
respond, the ARM takes an undefined instruction exception, which allows
software to emulate the co-processor - and this is how software FP
emulation had been done - userspace continues to use the FPA ISA,
with the instructions trapping to an emulator.

Eventually, VFP came along, which uses the co-processor 10/11 space,
superseding FPA.  However, the principle is still there - it is
entirely _possible_ if one had enough motivation to implement a VFP
software emulator on ARM2 and "execute" VFP instructions.

By the time that Intel decided to add iWMMXT, the ARM CPUs no longer
had support for external co-processors, so FPA had likely been long
forgotten (despite lots of Linux systems using it for their FP), and
they picked the same co-processor instruction space, which means FPA
and iWMMXT are mutually exclusive: you can't have a kernel supporting
both.

In all cases, the co-processor instructions have always had two
definitions: there's the ARM integer CPU naming of the instructions
which uses things like "CDP", "LDC", "STC", "MRC", "MCR" and so forth,
and the co-processor specific naming.  In fact, the early VFP
documentation referred to the ARM integer CPU naming of the
instructions, talking about the FMRX being a MRC instruction etc.

So, for example, with VFP:

	fmrx	r0, fpsid

and:

	mrc	p10, 7, r0, c0, c0, 0

are exactly the same opcode.  The former is defined in what used to be
the separate VFP architecture document (such as DDI0238A), the latter
in the ARM reference manual.

It's just the same with stuff like CP15 - ARM tried in ARMv7 to rename
various CP15 instructions such as "MCR p15, 0, c7, c5, 0" (which I can
tell you off the top of my head invalidates the instruction cache to
the point of unification) to be "ICIALLU" - a neumonic I still have to
look up.  These are just different names for the same opcode.

I'm sure there's a document somewhere that defines the iWMMXT
instruction set (I don't seem to have it), but ultimately it can be
described in terms of the ARM co-processor instruction set, just like
any of the other ARM co-processors.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
