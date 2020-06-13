Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E571F821E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhtlYj/f/g+uD0m95ljds81azQadUVVqYl40vj2K9IE=; b=HjERBcjfJgGTtL
	gKQ7khuBREzDbQQtOIarpTpY54N0auYZr0fpQraVi3LzEV2PsV95bUCHo7WMub2IxY2dOGxmx8YjA
	fkCh517JjkxZD5FhQqLoGFSQ7yWn770W5OmG+n7ygr29WU4aKC6JH5dNtyD2YdJiq8EsRoO/lsc39
	aTbQUiZKSM0ctBIz0OIpoVJHpEc9VO707E5g6wISNuF6D33SPOgx8BUtuafQjlwX6RmAyjbsjPiFA
	GotlD/C9808sFvPPWfiEtBQbqMyS9A0yotI32vRcpFn2zQPjPqziTwvf5qZF8wP9J90LS9++RKZ2n
	uQQKwA6su/hn6LttR7Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1n8-0005Hf-QX; Sat, 13 Jun 2020 08:45:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1n0-0005HK-FX
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:45:23 +0000
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEDB32081A
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 08:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592037922;
 bh=LI3XWoVZ/iK3LguVGoYssjJWUbVYb6ztDCB7s+3Dj/c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ntjDM32z/gnkt2nHxFZUIQZPPZ5XTF5ofkbhhuSChghSOUxUaYE6C1fY2kOA6suMU
 4vuSlYnXZEG4JAEXW+r1f5xPC7uyQhjB/WrbybPH+ZVx1Rx5p6H7i+tg4r0j8lCDhW
 vM6ajDX1xRf4p77n3pPkKNZ30HBCohxDfhYePmSc=
Received: by mail-oi1-f180.google.com with SMTP id p70so11003936oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:45:21 -0700 (PDT)
X-Gm-Message-State: AOAM532J6UCMNaNSNxCrLTfBmY5vCsh/nAOPh5FMf9N9vur5qivm0IKs
 yXN9a0601OLUGXw/naWc5ZwskucPxLQwnH/SnHg=
X-Google-Smtp-Source: ABdhPJyoui++K/oZkTCN3woLvLT2MXf33ZM+e+ERY9Lo1gznkvdL7EwYaGV3JwC8LvxPkptMPZ3dC8zuHqJdsW/RXzs=
X-Received: by 2002:aca:6144:: with SMTP id v65mr1983545oib.33.1592037921220; 
 Sat, 13 Jun 2020 01:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200611124330.252163-1-ardb@kernel.org>
 <159188119408.197277.6500663041357704124.b4-ty@kernel.org>
In-Reply-To: <159188119408.197277.6500663041357704124.b4-ty@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 13 Jun 2020 10:45:10 +0200
X-Gmail-Original-Message-ID: <CAMj1kXENVduZAWOqkSE3ZvW=u=vyVjXBCe-1+i3h1oi1RjW_JA@mail.gmail.com>
Message-ID: <CAMj1kXENVduZAWOqkSE3ZvW=u=vyVjXBCe-1+i3h1oi1RjW_JA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: warn on incorrect placement of the kernel by
 the bootloader
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_014522_538886_F86825FE 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Marek <jonathan@marek.ca>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 at 15:23, Will Deacon <will@kernel.org> wrote:
>
> On Thu, 11 Jun 2020 14:43:30 +0200, Ard Biesheuvel wrote:
> > Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> > removing it entirely") results in boot failures when booting kernels that
> > are built without KASLR support on broken bootloaders that ignore the
> > TEXT_OFFSET value passed via the header, and use the default of 0x80000
> > instead.
> >
> > To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> > itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> > to be enabled to deviate from this. Then, emit a warning into the kernel
> > log if we are not booting via the EFI stub (which is permitted to deviate
> > from the placement restrictions) and the kernel base address is not placed
> > according to the rules as laid out in Documentation/arm64/booting.rst.
>
> Applied to arm64 (for-next/core), thanks!
>
> [1/1] arm64: warn on incorrect placement of the kernel by the bootloader
>       https://git.kernel.org/arm64/c/dd4bc6076587
>

This test

((u64)_text % MIN_KIMG_ALIGN) != 0

should have been written as

((u64)_text % MIN_KIMG_ALIGN) != TEXT_OFFSET

because now, we are throwing the warning when
CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is enabled :-(

I was reluctant to add another Makefile rule to add a
-DTEXT_OFFSET=... GCC option when compiling this source file, but it
appears we need it after all.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
