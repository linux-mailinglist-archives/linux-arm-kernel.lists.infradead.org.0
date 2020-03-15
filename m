Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E56185BCF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 11:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeBnHnStym2Bjrm1K40TB5KbdGyPppTYJAYJb7e6mqw=; b=QJJ8oXPjlyjimb
	+rZK1NEY9eKANZ+fgtaIlidwCPVEIBhzfEAGNZ8cZ2gUug7Q7x83XoN5LYqLFJOAVP78Vr6u7dIbs
	w5ha3kW1TiLJbWg/wiV3jaK2zQxaH3F3Odl2SWJX2sAbTzGSZxu33M7/GWjr7C74PjqCX8NVCVunm
	zA07B9d4FOCVN1IxUeTgpAoVvJrugR5sxChRamaQpoTC8Mg6cO1oh1kAMTkugBojXTu+xiwooJwSq
	cYltDqnsmCTvNDI+KoH+bSFe4jOJ6O3dysxqpjsQSoKAsoxQN2tgIW6tSrp9MkzkHVEDYDs7fcnVK
	Qc+hgKbGo8hr2LJv7V5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDQ6u-0007zF-CZ; Sun, 15 Mar 2020 10:03:08 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDQ6m-0007yf-R7
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 10:03:02 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jDQ6Y-0007T9-0n; Sun, 15 Mar 2020 11:02:46 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 09DCD101305; Sun, 15 Mar 2020 11:02:45 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Safonov <0x7f454c46@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com, x86@kernel.org
Subject: Re: [PATCH v3 00/26] Introduce common headers for vDSO
In-Reply-To: <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
Date: Sun, 15 Mar 2020 11:02:45 +0100
Message-ID: <87fteadjga.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_030301_015713_0E37CCDE 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Peter Collingbourne <pcc@google.com>,
 Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dmitry Safonov <0x7f454c46@gmail.com> writes:
> I like the idea, but I'm wondering if we could have less-grained
> headers? Like, AFAICS the patches create headers < 10 lines and even
> mostly < 5 lines.. I like that header's names perfectly describe what's
> inside, but I'm not sure how effective to have a lot of extra-small
> includes.

If that goes all into a big header then the headers from where the bits and
pieces are split out would have all to include this big header which
might result in other include dependency nightmares.

>>  create mode 100644 include/vdso/time.h
>>  create mode 100644 include/vdso/time32.h
>>  create mode 100644 include/vdso/time64.h
>
> Maybe we could made them less-grained?
>
> I.e, time32 + time64 + time.h => time.h?

Then you end up with ifdeffery. I like the clear separation.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
