Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C7ABC53D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzUEnFGq8Eib1OJYrSw8OrRmRw+H1pIk7h8lVEdH27U=; b=tQMDixKlPjkhK1
	IgK73vDBR7BR+pkpDrq+J6VQPEDUq5AD8PSQQa5/TkxfDbOasyVklPvNCMto7NsaR5ihmbpT8hX4E
	N7FcYxAYKn/VJpJ+Pck+q9DZB2hu5deaOVqVXFLEyyYbl+QFvV4m0qQ5HW/uaieehphxntTROhORO
	7SqQT9MpNTo32oXNclBhgLqNG7h7LT8fPvbjMJbjKQsX1yrQVHvugHYbHRytjDxBA/1rT/7NfGh9E
	qmeKlAyyglANe7x4Zgo9YX9xjmEghqtaQr0FOK1CNV5sOxjnOnqxDg/Kzi5dSmxWBBq/qyE6n5sut
	Y7JApzPTj/xeonZcK09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChU2-0004GX-Ne; Tue, 24 Sep 2019 09:51:47 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChTl-0004Fp-6m; Tue, 24 Sep 2019 09:51:31 +0000
Received: from zn.tnic (p200300EC2F0DB70045CA8E18EABF8C40.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0d:b700:45ca:8e18:eabf:8c40])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 19F401EC03F6;
 Tue, 24 Sep 2019 11:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1569318683;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=CLiBj8APfucHnx376AS0quJvXHMKstRAZp2sMymzyI0=;
 b=ljdx59zSyPJ6nMhH3ITKYKXxTI+vYfAGEtqUk+g2gxHpBIa1KB/eHDC9gk6dgQiSOXRpo7
 /ZKMI11kGei/OrcJ8Sk31OFpA1yEsttSchB0eMQ6ncQ2KzbIM3isN/diR7FuUtzFm3n0J8
 sTVmffANuWERrQE7QW4lP2jKL1M7irY=
Date: Tue, 24 Sep 2019 11:51:27 +0200
From: Borislav Petkov <bp@alien8.de>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH v1] seccomp: simplify secure_computing()
Message-ID: <20190924095127.GE19317@zn.tnic>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190924064420.6353-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924064420.6353-1-christian.brauner@ubuntu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_025129_399516_EFEAB84E 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, wad@chromium.org, keescook@chromium.org,
 linux-parisc@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, oleg@redhat.com, luto@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 08:44:20AM +0200, Christian Brauner wrote:
> Afaict, the struct seccomp_data argument to secure_computing() is unused
> by all current callers. So let's remove it.
> The argument was added in [1]. It was added because having the arch
> supply the syscall arguments used to be faster than having it done by
> secure_computing() (cf. Andy's comment in [2]). This is not true anymore
> though.
> 
> /* References */
> [1]: 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
> [2]: https://lore.kernel.org/r/CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com
> 
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Will Drewry <wad@chromium.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-parisc@vger.kernel.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-um@lists.infradead.org
> Cc: x86@kernel.org
> ---
> /* v1 */
> - Borislav Petkov <bp@alien8.de>:
>   - provide context for the arg addition to secure_computing() in the
>     commit message
> 
> /* v0 */
> Link: https://lore.kernel.org/r/20190920131907.6886-1-christian.brauner@ubuntu.com
> ---
>  arch/arm/kernel/ptrace.c              | 2 +-
>  arch/arm64/kernel/ptrace.c            | 2 +-
>  arch/parisc/kernel/ptrace.c           | 2 +-
>  arch/s390/kernel/ptrace.c             | 4 ++--
>  arch/um/kernel/skas/syscall.c         | 2 +-
>  arch/x86/entry/vsyscall/vsyscall_64.c | 2 +-
>  include/linux/seccomp.h               | 6 +++---
>  7 files changed, 10 insertions(+), 10 deletions(-)

Acked-by: Borislav Petkov <bp@suse.de>

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
