Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C77079209
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+FZZe8bKP0LWECj8KqtnqkO0BliSQP+y7NnyMLmOMk=; b=A8Fr/IkOEReXaZ
	4pbCzl3ONfeV0ibQuXcQUUfh3bioxmBQ9sOpKxr2ymgxM3fJe6BQQrJiyEZf8r358d67ouv+DVGbJ
	vwe2H51RVewlbGQyKTYgveiEuh9OPcG6MSwP+zCF+rjSpmvFUZzuZbLZt1JGVAlVLZNxtsGfTuPiT
	eK4f22Pp4T4vctY4RyF0Su4tC3qwZdfRaOQ+V4LV08GSQdX/tamalqMjd950LKTG2SO9nvov9p+4S
	+EknPyNQi0JPZ80LD0LLxqU7Hqkpxffh2j987b6tlPCkyqrAmR8SMg4x6tsT8WNMPy/SbpqycKPsa
	nsyqPqoOcoSzB2h8pqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9Nz-0007g0-M1; Mon, 29 Jul 2019 17:24:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9Nj-0007fg-O5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 17:24:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9012206DD;
 Mon, 29 Jul 2019 17:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564421059;
 bh=ejbyHcqYBb2roKhKeGT35luwC+25Ji49Pree87xpLKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UgMSXtEdfOi+JaV95hk+t+/Trj+nl7L6OGc7IzvIq2AdbEI0fvNxuiGg9gkgpfvmu
 9JCAlenqDfkqSt7QP0bGX0TNWsSe+TOp0L8Vlcg3T7Ngm6aYqdD04yG5vkNpGx96RI
 Pj6PyB3hqNTU3sl2ww6bvQEa+jA6J5hOYnMpuSWA=
Date: Mon, 29 Jul 2019 18:24:15 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <20190729172414.odpcqugvtcwjnbe5@willie-the-truck>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
 <201907220942.69F916657@keescook>
 <20190722171141.3cgmw5ej7p2caddn@willie-the-truck>
 <201907221024.3BC2ABB13A@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201907221024.3BC2ABB13A@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_102419_803072_D51F2D06 
X-CRM114-Status: GOOD (  12.77  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:27:07AM -0700, Kees Cook wrote:
> On Mon, Jul 22, 2019 at 06:11:42PM +0100, Will Deacon wrote:
> > On Mon, Jul 22, 2019 at 09:43:54AM -0700, Kees Cook wrote:
> > > (Also, what happened to the *_checked() variations?)
> > 
> > The new implementation is intended to replace the *_checked() variants,
> > and the discrepancy in naming doesn't make any sense to me once everything
> > is inline in the header file. Am I missing something?
> 
> I haven't looked at the resulting builds, but the reason for the
> _checked() macro stuff was to provide a way for callers to opt into a
> checked refcount_t regardless of the state of REFCOUNT_FULL (especially
> for architectures without special refcount handling). If that is
> retained, then all is well. It just looked odd to me in the patch.

Hmm, so that has a grand total of zero users in mainline afaict. Do you
expect that to change?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
