Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD69EE1D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+T4rZXeRyQJI6OQGSy8dHYMkePQJhPkQ0m9uxj/B30Q=; b=sgVs+ueXRjIiBI
	PnB28dtCKH9VwFTwxKxvY8P8Uf2sIkkmt8HXDrmeRz2FXBcJg/VMlgb6EI6+cHpwXtJZjDRm9PywA
	GuRAnh7KWXfnOu9Iap0gazc3u+okdjHDpwqbSS/ZS+jYy0D7qJC15YEjlNVXuv5G+CXjPONtXpXf4
	EVYfvkbV5e9WGexUM2lZHRsdkOQsFx719ZQ9wHNjv6GSbTDhr0JmGRYUP3zJNwfl+TfTXQRVpxEMR
	qJ8L40Zu7RW3Zmganm8Kwd1QXLP0j4X3LgyN4jGL8BTzEjkkglF4C9slQMDlISiuYYgB7IPfFoT2Q
	gJ7HmAnL3bSP5VsXE7pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcyW-0007Bz-Ei; Mon, 04 Nov 2019 14:04:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcyM-0007BI-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:04:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F30A01FB;
 Mon,  4 Nov 2019 06:04:44 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA3EA3F6C4;
 Mon,  4 Nov 2019 06:04:42 -0800 (PST)
Date: Mon, 4 Nov 2019 14:04:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Kachhap <Amit.Kachhap@arm.com>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191104140440.GJ45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <42c113ee-e7fc-3e94-cca0-f05f1c89fdb8@arm.com>
 <20191104125637.GB24108@willie-the-truck>
 <d9b738fa-b7c5-f1b2-3878-d7afa4ba7ba5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9b738fa-b7c5-f1b2-3878-d7afa4ba7ba5@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_060446_447859_87BBDD6E 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "jthierry@redhat.com" <jthierry@redhat.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, "deller@gmx.de" <deller@gmx.de>,
 "jpoimboe@redhat.com" <jpoimboe@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 "mingo@redhat.com" <mingo@redhat.com>, James Morse <James.Morse@arm.com>,
 "svens@stackframe.org" <svens@stackframe.org>,
 "jeyu@kernel.org" <jeyu@kernel.org>, Will Deacon <will@kernel.org>,
 "duwe@suse.de" <duwe@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 01:03:51PM +0000, Amit Kachhap wrote:
> 
> 
> On 11/4/19 6:26 PM, Will Deacon wrote:
> > On Sat, Nov 02, 2019 at 05:42:25PM +0530, Amit Daniel Kachhap wrote:
> >> On 10/29/19 10:28 PM, Mark Rutland wrote:
> >>> This series is a reworked version of Torsten's FTRACE_WITH_REGS series
> >>> [1]. I've tried to rework the existing code in preparatory patches so
> >>> that the patchable-function-entry bits slot in with fewer surprises.
> >>> This version is based on v5.4-rc3, and can be found in my
> >>> arm64/ftrace-with-regs branch [2].
> >>>
> >>> Patch 1 adds an (optional) ftrace_init_nop(), which the core code uses
> >>> to initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
> >>> symbol, and more cleanly separates the one-time initialization of the
> >>> callsite from dynamic NOP<->CALL modification. Architectures which don't
> >>> implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
> >>>
> >>> Recently parisc gained ftrace support using patchable-function-entry.
> >>> Patch 2 makes the handling of module callsite locations common in
> >>> kernel/module.c with a new FTRACE_CALLSITE_SECTION definition, and
> >>> removed the newly redundant bits from arch/parisc.
> >>>
> >>> Patches 3 and 4 move the module PLT initialization to module load time,
> >>> which simplifies runtime callsite modification. This also means that we
> >>> don't transitently mark the module text RW, and will allow for the
> >>> removal of module_disable_ro().
> >>>
> >>> Patches 5 and 6 add some trivial infrastructure, with patch 7 finally
> >>> adding FTRACE_WITH_REGS support. Additional work will be required for
> >>> livepatching (e.g. implementing reliable stack trace), which is
> >>> commented as part of patch 7.
> >>>
> >>> Patch 8 is a trivial cleanup atop of the rest of the series, making the
> >>> code easier to read and less susceptible to config-specific breakage.
> >> I tested the whole series with my latest in-kernel ptrauth patches [1]
> >> and graph_tracer/function_graph_tracer works fine, So for the whole series,
> >> Tested-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> >>
> >> Also I gave few minor comments in the individual patches. With those
> >> comments,
> >> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Oops sorry I meant,
> Reviewed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Thanks!

I've added the Tested-by for the whole series, and the Reviewed-by for
patches 4 and 7. I haven't added it for patch 1 just yet; please reply
to my comment there if you'd still like to add a Reviewed-by.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
