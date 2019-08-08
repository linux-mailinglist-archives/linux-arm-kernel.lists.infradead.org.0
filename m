Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF8A867B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8smBHyjVaMQUV7QhyXde8wZ/mWvHfwFkjiUP6WZzZfA=; b=evLb9jOxvvNgPW
	4WhWbBtWhsDEY1MXOgA/PMZEYtUrm2Gjv+pnfO+FwGY9cKYsslyTaaYCReIiNRY0bmLTJfkrQHdIG
	zqJeeSrE7i4U7T1otGZ3Qxq7oPpNoxTO1jqxa0KZu1IEK9TUeNqkMNHvSCzrGWkCEJTmQ/FFMOHKU
	QdbLqsUN/qoV5WutwOMZkfzny62AnnsUS9gQ3tsQ0boIauCK3Y9e3GCjZHtvrc5E6DjxDFOfkwV/s
	miYXGgeNfh/strCsKBVEoKgTM418Z0ebrlCsPWQ1xAi65fY4VqbJmHOrH599pJF9uktLzUYQYLWXj
	edJ1sHqchhj58SAkfmxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlus-0003aU-7T; Thu, 08 Aug 2019 17:09:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvluj-0003a9-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:09:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so3130573wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 10:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/RMqWJBZb+n91pADuicj3MI1Qevek2uTYFVfpzwwQYk=;
 b=mYI6ER/mImkFZNM1JZSRimjLCk1m9yKBp7MFo6R2vJElLd5RBgIbnfTTSaK0TgOWZk
 tgYU7T9y1cN2gH4spkcu8BdHVctmfrSUxPSubs2ouVJxh4yhBzYVE4QuOQRIz4f2RS/x
 OMLLuqDfuBtGtn6fzFkUBpxoJ5om4DHo2yaE+CzEuqgzkx19P05vWedXWUjM9zVXi6u0
 vTXFzlWiNpXP3UlRpIhE0a04ZajxbhGe14aCZV1VytgG2virlQL6fijO1C87nQiSDZ9H
 uNa3v/9DnsRi6yTQazWZxdTH90mjFg16NX4Vj3AhkCc08BjYwgsTRVgbyj7OXNZ85+ro
 fGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/RMqWJBZb+n91pADuicj3MI1Qevek2uTYFVfpzwwQYk=;
 b=tCTCd/GAybTDiVDTPyzpKDpNoZrfylRAy47BbgOo7gTFW2nP/40TDuAN8JpIM66HJ/
 kEZ/j3CcvmfjM8QBrPQ6Z+l6VsJ8jHLhbSF2x46PmK8c+wVp/tylOY+Uz+TijYC/63fp
 l0b8Oj1Ze/WSfQ71fNi9OLVMrFvIMo8keczTKGv/Y4JmDJHz11Md12ymSMwGcgT9xGDC
 u/CMVAfcsBvGxUPp9+bRPkUwx4Zxal4MaiilJbM8DNu8jWqoUtdGvNaGcvi/jawypdOG
 qw3v+ZxBf7ZZUDBYs8aXJYAACqRi3/52CZwn+qwG5zIh0wXgR34Ovy7mc7ucaVQ9Sxel
 R0Wg==
X-Gm-Message-State: APjAAAXjGanmOjC7rTLxrybKWUh0cROpKJSgvd7SHcKzi16GIMjpwQhK
 SuQsJnF1yQWZvm1uOI9yzFc=
X-Google-Smtp-Source: APXvYqzdP10PSpvSmqXcoaKhRQopyLLo13J5gwU1q/kfwSjlDon48+ds0qZsJzoRdvE4pJ2fwoicBA==
X-Received: by 2002:a1c:f116:: with SMTP id p22mr5413792wmh.70.1565284159335; 
 Thu, 08 Aug 2019 10:09:19 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c15sm22423803wrb.80.2019.08.08.10.09.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 10:09:18 -0700 (PDT)
Date: Thu, 8 Aug 2019 10:09:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808170916.GA32668@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808103808.GC46901@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_100921_162989_BE058298 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > VIVT I-caches") introduced some compiation warnings from GCC (and
> > Clang) with -Winitializer-overrides),
> > 
> > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_VIPT]  = "VIPT",
> >                         ^~~~~~
> > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > 'icache_policy_str[2]')
> > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_PIPT]  = "PIPT",
> >                         ^~~~~~
> > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > 'icache_policy_str[3]')
> > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> >                          ^~~~~~~
> > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > 'icache_policy_str[0]')
> > 
> > because it initializes icache_policy_str[0 ... 3] twice. Since
> > arm64 developers are keen to keep the style of initializing a static
> > array with a non-zero pattern first, just disable those warnings for
> > both GCC and Clang of this file.
> > 
> > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > Signed-off-by: Qian Cai <cai@lca.pw>
> 
> This is _not_ a fix, and should not require backporting to stable trees.
> 
> What about all the other instances that we have in mainline?
> 
> I really don't think that we need to go down this road; we're just going
> to end up adding this to every file that happens to include a header
> using this scheme...
> 
> Please just turn this off by default for clang.
> 
> If we want to enable this, we need a mechanism to permit overridable
> assignments as we use range initializers for.
> 
> Thanks,
> Mark.
> 

For what it's worth, this is disabled by default for clang in the
kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69

It only becomes visible with clang at W=1 because that section doesn't
get applied. It becomes visible with GCC at W=1 because of -Wextra.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
