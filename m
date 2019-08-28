Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5833DA06C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSRejY/IPv/i3uaHyzBvbZHY5fjqf0llHOKx57GdUTI=; b=VGRi8Mk2wv62ZD
	uqV/uRc0EY9bAd7k6gSqFsCfsIgRDoJEr2AsOai+2mtN46Z22ezYvaXEsvqFmpLdXIwVARRprOb8E
	KSiuvmGi9eUO9oGJ/E0HGjClIIXKsGctEZXBXTjiMzJRzz+ZkeTMa3z/nx1g6dpPyI8tqZy/+QSsp
	oUMK91/uOtkwT9fBNQs7I4ow3NR3gGJyasMxId/rZ7T1JDwkKXXJK86LYODquU5TFUfMSDKV3TLHA
	wfSUtjQCpoxbX3w9iMjeDM/V3AILpkKqYpdqJTwWdpaXaKFltV6DhQ76/kat1xAcT5jIp2k729YjT
	jIYMplEt2kUZK+jz40QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30In-0007KK-FO; Wed, 28 Aug 2019 15:56:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30Ia-0007J7-Mk
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:55:54 +0000
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 765322064A;
 Wed, 28 Aug 2019 15:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567007749;
 bh=tm23iPOHz5qNiVmbKBRthv6o0H14qpr8dY7bd4MTQKs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=pqTccn5JcnucNCAhPvukewbhK7LnqfZiA1JhrrT1FDFY4mCrVB8AZyQ8GN7mLjP8y
 7s9EDdOPkKuIVFWDEaVrPbihjrm8teyPYUCsz+WciUJXkEpW4kr0ySk55f/ASUGrn8
 zpEFoJeA5Hy5XDMtaE0vrkdWUVKHa2wWQhJO2xxg=
Message-ID: <4da231cd52880991d8a038adb8fbb2ef3d724db9.camel@kernel.org>
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
From: Jeff Layton <jlayton@kernel.org>
To: sbaugh@catern.com, linux-fsdevel@vger.kernel.org
Date: Wed, 28 Aug 2019 11:55:47 -0400
In-Reply-To: <854l2366zp.fsf@catern.com>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com> <854l2366zp.fsf@catern.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_085552_766294_04D6F40B 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@ozlabs.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-26 at 19:50 +0000, sbaugh@catern.com wrote:
> Aleksa Sarai <cyphar@cyphar.com> writes:
> > To this end, we introduce the openat2(2) syscall. It provides all of the
> > features of openat(2) through the @how->flags argument, but also
> > also provides a new @how->resolve argument which exposes RESOLVE_* flags
> > that map to our new LOOKUP_* flags. It also eliminates the long-standing
> > ugliness of variadic-open(2) by embedding it in a struct.
> 
> I don't like this usage of a structure in memory to pass arguments that
> would fit in registers. This would be quite inconvenient for me as a
> userspace developer.
> 
> Others have brought up issues with this: the issue of seccomp, and the
> issue of mismatch between the userspace interface and the kernel
> interface, are the most important for me. I want to add another,
> admittedly somewhat niche, concern.
> 
> This interfaces requires a program to allocate memory (even on the
> stack) just to pass arguments to the kernel which could be passed
> without allocating that memory. That makes it more difficult and less
> efficient to use this syscall in any case where memory is not so easily
> allocatable: such as early program startup or assembly, where the stack
> may be limited in size or not even available yet, or when injecting a
> syscall while ptracing.
> 
> A struct-passing interface was needed for clone, since we ran out of
> registers; but we have not run out of registers yet for openat, so it
> would be nice to avoid this if we can. We can always expand later...
> 

We can't really expand later like you suggest.

Suppose in a couple of years that we need to add some new argument to
openat2 that isn't just a new flag. If all these values are passed by
individual arguments, you can't add one later without adding yet another
syscall.

Using a struct for this allows this to be extended later, OTOH. You can
extend it, and add a flag that tells the kernel that it can access the
new field. No new syscall required.
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
