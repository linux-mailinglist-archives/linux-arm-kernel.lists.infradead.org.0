Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D2818E0F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 13:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlLXn3yaD1hcfAlVRXUle46l3prYgmcThbZfVCBoYQY=; b=ZVTDaqMvh0Db1i
	V029+1U5bylr4X2z+PS9f7EKhM3Wgkq6DbzSa9xuImTemgIupW/MrIlbt6+fYAl7lRFPIAsmaecLe
	6ABGt2KYIxrJub7q/9+TK8LOMlYQa9jjgzkfnKCQ+FaCXOxxoifwVyMsXorzTXzflD5YPs9yYHZr7
	rESOxbJzpmL6TBktX8aAcReZEa+d8IgXW75pFqQHU9ZcsSb3FMZdFnx/8dWomJYrjLhTsRjhR67tI
	KExng3BjuIz9AlRNqk/sTQDvi/z3ajgJilIFClyaAn4xww3jIkweWW03xJm4ZNlEGVNjpOwV//ga0
	WCUKA8GdXfMV4+tg8q5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFctx-000732-4p; Sat, 21 Mar 2020 12:06:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFctn-00072N-TL
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 12:06:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 134EC31B;
 Sat, 21 Mar 2020 05:06:42 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026A33F52E;
 Sat, 21 Mar 2020 05:06:38 -0700 (PDT)
Date: Sat, 21 Mar 2020 12:06:36 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v5 18/26] arm64: vdso32: Code clean up
Message-ID: <20200321120635.GA3052@mbp>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
 <20200320145351.32292-19-vincenzo.frascino@arm.com>
 <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_050643_990811_5A7EE655 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrei Vagin <avagin@openvz.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 04:21:06PM -0700, Stephen Boyd wrote:
> Quoting Vincenzo Frascino (2020-03-20 07:53:43)
> > The compat vdso library had some checks that are not anymore relevant.
> 
> Can we get the information on why they aren't relevant anymore in the
> commit text? I'd rather not find this commit three years from now and
> have no idea why it was applied.

Good point. But I'd rather say that the original reason for adding them
was bogus (ABI compatibility between arm64 compat and arm32, when arm32
vdso never got them).

There may be some (very hard to justify) reason to add them if we want
compatibility between vdso and syscall fallback on addresses greater
than TASK_SIZE. The vdso code generates a SIGSEGV or SIGBUS while the
syscall returns -EFAULT. However, you'd have similar mismatch on
unmapped addresses below TASK_SIZE which cannot be handled by the vdso
(not a simple comparison).

I think the vdsotest code should be adjusted accordingly.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
