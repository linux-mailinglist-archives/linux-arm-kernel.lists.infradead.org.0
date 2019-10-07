Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E785CE4E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w4Xb6jVtJnzBs/iRj0hWqXYlG1fj3IoFE2lOlHi5nk=; b=LZuodytsKUkQPC
	qh3VFWfNs6xEGoZRhhn7SaJ1Y5PQLG6yZTPqM8F3nhU6n0BF6E9uOnkvEr5CaQ46VKdx952XSW9PL
	GyJlRFeHJN+cEoB8PZhV4Lxx6QlY50eL0HrEoO48czvak2syXUyRo1yw8m1X32CwGznF/kEoyZ0Bw
	21PIYCjxvAL4KJhdAWAYQcm+QLgY4+5k0G2PKsSGL+qS5efQhm9Z6CKmeiN8/he0bYXfTqbLLTo/y
	LT5O3mMluauR8pei6acEsvrf4VSwzwmwRr5zyvI8yXuhsyodl9HiAp29WOUcwOA1NXKCbe2F/URoD
	HUhTc61SdlDMghetzOLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTnx-0006Qa-2s; Mon, 07 Oct 2019 14:16:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTnp-0006Q7-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:15:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF82F206BB;
 Mon,  7 Oct 2019 14:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570457757;
 bh=EQUjqeE9IjYrFNkRTWbqGmoBkeMX9I6aRT1drhyRgqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bki4PB9aJwYSU3VoAmnqlp3fV08Wk1bpSBcbovgUpW2hPIO65aJri1O+4bn3RBwLv
 gzMxZg91QfLnpFyVXv+Fs/m0vpSh/ckUcllPTkt5+3OVFf185rpUeGuSuj8QJTLV36
 CQ/f87oQ4lMUnLLoNgC7+dT09ItZWBDE7YWgnSCQ=
Date: Mon, 7 Oct 2019 15:15:53 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 0/6] arm64: vdso32: Address various issues
Message-ID: <20191007141552.tbk3n6hgpq4cgane@willie-the-truck>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191007133106.j3gtsuatsw6hgllz@willie-the-truck>
 <a35ad8b6-fcd8-a681-b456-cc931f1e58cb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a35ad8b6-fcd8-a681-b456-cc931f1e58cb@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_071557_819555_50D077A9 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, luto@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 02:54:29PM +0100, Vincenzo Frascino wrote:
> On 07/10/2019 14:31, Will Deacon wrote:
> > On Thu, Oct 03, 2019 at 06:48:32PM +0100, Vincenzo Frascino wrote:
> >> This patch series is meant to address the various compilation issues
> >> reported recently for arm64 vdso32 [1].
> >>
> >> From v4, the series contains a cleanup of lib/vdso Kconfig as well since
> >> CROSS_COMPILE_COMPAT_VDSO is not required anymore by any architecture.
> > 
> > I've queued this up as fixes for 5.4, but I ended up making quite a few
> > additional changes to address some other issues and minor inconsistencies
> > I ran into. In particular, with my changes, you can now easily build the
> > kernel with clang but the compat vDSO with gcc. The header files still need
> > sorting out properly, but I think this is a decent starting point:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/fixes
> > 
> > Please have a look.
> > 
> 
> Thank you for letting me know, I will have a look.

Thanks.

> I see acked-by Catalin on the patches, did you post them in review somewhere? I
> could not find them. Sorry

I pushed them out to a temporary vdso branch on Friday and Catalin looked at
that. If you'd like me to post them as well, please let me know, although
I'm keen to get this stuff sorted out by -rc3 without disabling the compat
vDSO altogether (i.e. [1]). In other words, if you're ok with my changes on
top of yours then let's go for that, otherwise let's punt this to 5.5 and
try to fix the header mess at the same time.

Will

[1] https://lkml.kernel.org/r/20190925130926.50674-1-catalin.marinas@arm.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
