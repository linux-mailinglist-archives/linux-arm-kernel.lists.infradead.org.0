Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E73B1A49EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 20:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjOMLYmHFzeDVTvZbIFJAUDvdImisPE13ztThxyK9cY=; b=eXtJEsPksu42EC
	RMyWOQIkmnJgT+k3iqz6jv8/aFLUZgtHCr8rNM2orUHDxaMh/S9I09SpOX6gd3kkbzWg5AR0h8qfL
	lhA8+/KbcY48rY1fGmUkmR2cxiBraDRNYLykzmRYlQRky2Q2eaGyy2vHdj7OCwPzVovrDoVMe1ATd
	RRKdmFeZ0qIQ7OKSRTNMq7Yx24AhAeDYDCQv41MxqfxEzVVXyFIPe17CBnxavTgq+HXl0QlIPXb6n
	R6u7OrYZ0HNC3LX4EwAgoSacs5UOvWFhIrlOIoALbYjFC2vIDT9w+OjH+pKcP2GGsulHWU2qtkmDS
	xCWcTfoQz65c03sn5JMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyUu-0002Ro-V3; Fri, 10 Apr 2020 18:35:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyUn-0002R8-Ob
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 18:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iE3hzL/9X7rG7H3ZLH0Kx2JNDMI6UfSi0bHUIshctfk=; b=TKMLGyc44N6rFRxM8pK0FRxg9
 E1N11nA7yKnQnQV9Wx7lJKK8uMbQ+ZzClB0zVKA2GUJuF4BE8VkPUs3DX6xPLwmchc/MFkFTAZo79
 74Il9X8AheqK1S41djmmvwLmVLy8IV3E3euxtC6YfSVwIEXNIJMfWwAMWCZS187WgJH2vh2BVKPPq
 5RJJ8reztG64yD59k5vz5+emm3sys/r+t7dr0SKNULKkUvpBICIBwoj3He4JQvjk4sD1BEM40SSBX
 zkwqtkTYb4ekXAunYE5bN+kaolyIuPXAmsT4msjInHEqXw14VQtlnhQbrHU2xlVAgRkaIXVWn3B/S
 7iJ0qG+Iw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48304)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jMyU0-0002yv-1a; Fri, 10 Apr 2020 19:34:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jMyTs-0004Fo-Dw; Fri, 10 Apr 2020 19:34:20 +0100
Date: Fri, 10 Apr 2020 19:34:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410183420.GE25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <20200410165948.GD448831@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410165948.GD448831@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_113517_802375_B59EF1B9 
X-CRM114-Status: GOOD (  13.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 stefan@agner.ch, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, manojgupta@google.com,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ilie.halip@gmail.com, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 samitolvanen@google.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > iwmmxt.S contains XScale instructions
> 
> Dumb question....
> 
> Are these Xscale instructions? My understanding is that they are an
> instruction set of their own, implementing something similar to IA-32
> MMX. 
> 
> Would it be more accurate to say CLANG does not support the iwmmxt
> instruction set?

Yes, because the XScale core on its own (otherwise known as 80200)
doesn't support iWMMXT.

It's worth pointing out that the iWMMXT instruction set uses the
co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
which is also the FPA (floating point accelerator) instruction
space - which is the FP instruction set prior to VFP.

The LDFP and similar instructions that binutils decodes the opcodes
as are FPA instructions, and the LDC2 instructions are their "generic
co-processor" versions where there's no FPA instruction that matches
the op-code.

I'll also point out that the reason the iWMMXT code has never been
ported to Thumb2 is because there are no equivalents for the
co-processor instructions in the Thumb2 instruction set defined in
ARMv5.  Hence why the file has a .arm.  So, the fact the file hasn't
changed for a long time and hasn't been updated with "improvements"
such as Thumb2 kernels is because that's completely irrelevent to
the ISA.

It is an example of code that has become stable and mature, and
requires no maintanence with GNU toolchains.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
