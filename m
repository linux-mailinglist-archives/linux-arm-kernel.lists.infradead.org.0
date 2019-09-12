Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF2B0FA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1quzKCjEPaBP75vlBbsrY+FOLkpM+FVCAyeCy4+dkc=; b=Yp9Ya3rsC+6WAQ
	DqRYERVdE5Va/HliMYNA9SCfSdqks6rOCcS6RiqQLdJgVot7VRatVFZBkWfYvoEFDEbRkz+zASkhc
	a4e1zo9Uq7TIxHiFYpivU0//XaBvAKa7T3puJmXpti7z88fzsnGumjXuNYIdWYXNNVpYJ8qyXPpfn
	j3Fyabv5PKVjvpv+k1KZNVkXjrnzhBOfpm7bzWZaAYHkORnCH95CodKHR8xlZNcUaMNyc+VnOfr7J
	pH+Ldl34hQGc5t70n0dwHJg2hxdn0GCsiE8nKCtGrt/o8gtfYQTdL382Mepr1Ltb62s/KYsYTJZ2U
	1heWlm8mnUi72vgRt2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OtG-000791-IB; Thu, 12 Sep 2019 13:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ot2-00078G-QF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 13:11:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DC3C2084D;
 Thu, 12 Sep 2019 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568293908;
 bh=1BVRp6Jdhq2LIzfXH91FkdH1Pyx1eRvvXJVHjQ5DMrw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pwR5uMriy0MozL8gyPhsCQ6j9MrbR7tKEdL3o9VMuwaAacTIvttZSreG0nYE1A/7m
 sJnTtIoSHNhRMxBHiYtv9f7iKLVSGDrt9iOTH2xscPYScJmgOMuwYOebUu4fDpOE6A
 rpbKjPwmaGwU6DBvfsFwrXM/5Fwfr20h6y3KNRC8=
Date: Thu, 12 Sep 2019 14:11:44 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: fix function types in COND_SYSCALL
Message-ID: <20190912131143.u3rncvqdgx4z3ckz@willie-the-truck>
References: <20190910224044.100388-1-samitolvanen@google.com>
 <20190911151545.GD3360@blommer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911151545.GD3360@blommer>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_061148_877805_BB104682 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>,
 Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 04:15:46PM +0100, Mark Rutland wrote:
> On Tue, Sep 10, 2019 at 03:40:44PM -0700, Sami Tolvanen wrote:
> > Define a weak function in COND_SYSCALL instead of a weak alias to
> > sys_ni_syscall, which has an incompatible type. This fixes indirect
> > call mismatches with Control-Flow Integrity (CFI) checking.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> This looks correct to me, builds fine, and I asume has been tested, so FWIW:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> In looking at this, I came to the conclusion that we can drop the ifdeffery
> around our SYSCALL_DEFINE0(), COND_SYSCALL(), and SYS_NI(), which I evidently
> cargo-culted from x86 (where the ifdeffery is actually necessary).

Curious: why is it required on x86?

> I can send a follow up for that.

Yes, please.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
