Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031AA1A6DB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 23:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4njuqYo21lKKvpkYmquTO0C8bULPJZaWDLyAIPue1k=; b=Rjz/QNP5w9WGey
	zArlr/3lJEKCuPA7Q/DwgRpEsjlsliSYR56X3cdFEQ/FQtGlvbhvD8iyMQc1dr6DL6VshvQwIPG/9
	JZrSnswEYYpwrqj7kZDm/mJfiLOZA0BmODJPR9bwoype6Bj7btWbwL4P8icGtHVfevusvq78Azq0U
	ZP79sHresFhVOThwm/m9LguLfi5OLPnylucgD6UiGvyNgbhyLlFtTKrKN9WVMoaNdjhzup34K9f8o
	lHvD9Jh/dGxtV/DLwjXLbXOzVxyc1y7E5rjCz7BPDx/V42p1jGfOPZrsWqK05TnsjvUC8cIJdBaqR
	2Z0PDWjU+wrL9Igjl0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6DD-0001PC-Tf; Mon, 13 Apr 2020 21:01:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6D6-0001Nb-Mf
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 21:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ws2nR0EpxKl2RJkJk3e0Vaf6eTLG8ASGEhenXWS4AfY=; b=Dzxd7eN4Q7tKI7wkTM+04sKxs
 5Tv2wkNSh4cyWzjeq8y4LGxAKRKEvWAeUXH+MGKS+rVoVfeZQkGQL9TZoeyw9gY6q85Sq4NWuAVKo
 2fo03TIBlIr/qc/AIvuRzJXycJuL1e4BAT0zzb1M+8cOnj7Z+Neg/YAtFHQEZbqQxAgdR2MSDyEBE
 cSMTbfuKCJ+Z4ndEQm5fQo7zmDxg75ugA+PkjkCKEHD9cSVcRrMa+9IAGMnmQi0mf7lVHx9EpDezD
 VmeiH0S0sd+8T0DlkVNUMcYuuU0YWZ5ieoYqAuiaZ+BuGGA1Q8qeXsKqW86nm2rFDA45xYxbXAEyz
 ha2KBtFgw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49652)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jO6CQ-0003wo-Gw; Mon, 13 Apr 2020 22:00:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jO6CH-0007Ht-8g; Mon, 13 Apr 2020 22:00:49 +0100
Date: Mon, 13 Apr 2020 22:00:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200413210049.GQ25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_140140_907453_ED3B72F8 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jian Cai <caij2003@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 12:23:38PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 10, 2020 at 5:33 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > For older CPUs, it doesn't matter what the latest ARM ARM says, the
> > appropriate version of the ARM ARM is the one relevant for the CPU
> > architecture.  This is a mistake frequently made, and it's been pointed
> > out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> > keeping older revisions is necessary if you want to be interested in
> > the older architectures.
> 
> As if it never existed *waves hands*.  Interesting.  Does ARM still
> distribute these older reference manuals? Do you keep copies of the
> older revisions?

I keep copies of every document I've needed that I'm allowed to keep
as a general rule, including the early paper copies of the ARM
architecture reference manual. I even have the original VLSI ARM2
databook.

For the ARMv5TE architecture, you're looking for DDI0100E which can be
found via google.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
