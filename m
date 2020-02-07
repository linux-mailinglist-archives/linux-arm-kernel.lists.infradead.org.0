Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBC915559E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 11:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgUwFxIz4P8rpjSpfEP5LO8qK2rFIu2Yisi9Z0r2Y6s=; b=ZGQBoyRstlu0XO
	tnfsnWVeYOmJfW2cV6HdbcNk7ChBOeLJh5/QZgjfPV3en8D6I5onxPicik7Ph8oEwAErRpnbsZAvF
	PI4Hn8Yu7Y9s0h1eu3UzX4clhwzvNblipZdtPacKfpQyLwxLdTZzpnjg9P6Lf/BEIQ7Q+8AaD5uZ+
	mDv92vGTzenMeIM6tdhq7vJcsCBixFH0A328k9IfReGcmMxqugVSfgJyOgePqs3FMZN3kju16cKH2
	qijb3GFpIf8p/2HXmOwd+qPqVxnqTBCTVB8ykGIGlDHnQyN5UTBH1IzxxfzoiPkPRcY45LMIY8Z8x
	iHFwgj22z3foKt5Z+mUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j00qn-0006iw-DT; Fri, 07 Feb 2020 10:27:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00qi-0006im-Sm
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Feb 2020 10:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=L3BlihRpV2iRLC6YY8WIGJCu0AhpCAbYwMvQBNO6mS0=; b=TexuxSH9agtY/5ee2O4MoaKYeN
 583CwsTzpUTyGYS1puz5eeDqsjFT4EoBEFIL9ehVekKcUX/dRvL4hmZY9nB07VxbBPSxaqKePvDqF
 w2YEQJIRq4rfn594HQdCGkZY7IPGTHO/0SsYNLLvzhl+AfOXlCAACcbGt7KN4h4NA8nrqdPnV0afw
 Qv2zUyrcSFfk2UmHFrg5l3caflmW20yszfEWQXGBvDBCcTR9E7sy+uJtXypPQ1SfnrJMPhsWV2dTo
 16Lu4zh9GfhutLTVO7G1ZWw4agBQiV4LMR0wkE76vJSmEbkboXl5S9MEmGPJLhbjQ+BJ+RsxLQ6ti
 2LHaM6Ag==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00qf-0005BO-Ny; Fri, 07 Feb 2020 10:26:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 694D430258F;
 Fri,  7 Feb 2020 11:25:09 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3DC162B834C29; Fri,  7 Feb 2020 11:26:56 +0100 (CET)
Date: Fri, 7 Feb 2020 11:26:56 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [tip: core/kprobes] arm/ftrace: Use __patch_text()
Message-ID: <20200207102656.GS14946@hirez.programming.kicks-ass.net>
References: <20191113092636.GG4131@hirez.programming.kicks-ass.net>
 <157544841563.21853.2859696202562513480.tip-bot2@tip-bot2>
 <10cbfd9e-2f1f-0a0c-0160-afe6c2ccbebd@gmail.com>
 <20200207101747.GE14914@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207101747.GE14914@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86 <x86@kernel.org>,
 Denys Vlasenko <dvlasenk@redhat.com>, linux-tip-commits@vger.kernel.org,
 Brian Gerst <brgerst@gmail.com>, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org,
 tip-bot2 for Peter Zijlstra <tip-bot2@linutronix.de>,
 Jon Hunter <jonathanh@nvidia.com>, rabin@rab.in,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 james.morse@arm.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 11:17:47AM +0100, Peter Zijlstra wrote:
> Is that crash with FTRACE=y or =n ?
> 
> This really isn't making much sense to me, Will, Mark, any clues?

Does the initial patch:

  https://lkml.kernel.org/r/20191111132458.220458362@infradead.org

work, or does it crash the exact same?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
