Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F01EA397
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 14:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtTR5shJYENuzChZTCGmU2q2zPSkb+mu611jcwagrp4=; b=FKYOoNCCa50/Hg
	5OZ1wQltRLj8wJpnRr3ApK/qgNJ8h1W/kYHhT1qAqfPELgfBjTS248ANfc2Kt5ZqhPmTuJs9i26qb
	GJY2j1SCQMyQuBcaaeAt383S54NpsU2zdrAKP5R5OTR57US8ayRiNGzQkSsoEOlqrcSea51un1xKh
	1TPsPsrBp/ioiOMUDcMtD2GtaJyPR1eB+GJP4amWLmWYAtERZ792c0iH5MOarer55BuXPvPTK3UYW
	1BuoeHKRK07RohqdtDecTy/tUmVUi8BoVu+CBSPF8Wy7uMsgb9c12tmiqnfFyM+UWuyXYGY8CacuW
	jTHFnR0h9QvyAkofz5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfjKO-0004Db-2f; Mon, 01 Jun 2020 12:14:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfjE1-0001Jx-NE
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 12:07:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEDE755D;
 Mon,  1 Jun 2020 05:07:28 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3609F3F52E;
 Mon,  1 Jun 2020 05:07:27 -0700 (PDT)
Date: Mon, 1 Jun 2020 13:07:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [PATCH v4 18/26] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200601120724.GB23419@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-19-catalin.marinas@arm.com>
 <a6fb329c-b4ad-9ffa-5344-601348978c34@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6fb329c-b4ad-9ffa-5344-601348978c34@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_050729_820338_F2B868B5 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 06:25:14PM -0300, Luis Machado wrote:
> I have a question about siginfo MTE information. I suppose SEGV_MTESERR will
> be the most useful setting for debugging, right? Does si_addr contain the
> tagged pointer with the logical tag, a zero-tagged memory address or a
> tagged pointer with the allocation tag?

The si_addr is zero-tagged currently. We were planning to expose the tag
in FAR_EL1 as a separate siginfo field. See these discussions:

https://lore.kernel.org/linux-arm-kernel/20200513180914.50892-1-pcc@google.com/
https://lore.kernel.org/linux-arm-kernel/20200521022943.195898-1-pcc@google.com/

In theory, we could add the tag to si_addr for SEGV_MTESERR, it
shouldn't break the existing ABI (well, it depends on how you look at
it).

> From the debugger user's perspective, one would want to see both the logical
> tag and the allocation tag. And it would be handy to have both available in
> siginfo. Does that make sense?

The debugger can access the allocation tag via PTRACE_PEEKMTETAGS. I
don't think the kernel should provide this in siginfo. Also, the signal
handler can do an LDG and read the allocation tag directly, no need for
it to be in siginfo.

> Also, when would we see SEGV_MTEAERR, for example? That would provide no
> additional information about a particular memory address, which is not that
> useful for the debugger.

Yeah, we can't really do much here since the hardware doesn't provide us
such information. The async mode is only useful as a general test to see
if your program has MTE faults but for actual debugging you'd have to
switch to synchronous. For glibc at least, I think the mode can be
driven by an environment variable.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
