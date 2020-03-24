Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC17191C9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 23:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtJMvtBhUEzZ/rILhBu1klMisIp1adG9Lr91h9eR6ng=; b=tntYmSgNHy6ubj
	KuOWZJNHGOk5vUXk9q2mz8MFSnB5d7PYP9VE1m6JuRejSJRVL/mVp26V7OQb05lkiI4+dpYyzRCic
	YwrqcFHzTK/fPyARhYiOBZX/7mlbsBhxoQh7ucrGBglGxe9eZLiMGF5nU0NIWRic26vkxDJZuy7Cv
	qE2vJqGBqMfY0MkZ54THqzeb15wmmnypnxv9/QMRHugElM1MucH8kjfV2SS9CViqlLCdZb4dN//D6
	+LkXbrs8lT9NPeVOtI42iajmdLtiHJxKUiKEyDtFqJYcS1gNLe6UtHc19/gijg6OHDjwujEV19EFx
	dHWpXGNQCtZ7BJuhcy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrzM-00046l-Gp; Tue, 24 Mar 2020 22:25:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrt3-0002tQ-TX
 for linux-arm-kernel@bombadil.infradead.org; Tue, 24 Mar 2020 22:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XKNgoBjeJpFSrzdeQLenXOy4+xjpuFlzYwwcw+5MsF8=; b=kjjdtuutttikliMxwfZ4qPQQfi
 ystU1lMGu/bExZUpK8vkXd5XAktAWZMbrTtU+AnqytpH/jKUhHNI9zGc7XswStDG/64cHE817DnJZ
 QTU1S0YkiWgwPvA8OcDV3ID+0oedWzPz/NorCZKDJIwTXJkyAD5mzX+9zT8n4gD7PunXQ/iJlywEh
 MJp6PLuulGj8TIjjsWl5JcpMRX9WnNtMQC+kLgVA7xyW4tIyH5quCnnz/RrhdF1n2ogK0AIOlgYA9
 GObXG7wOh5uWE/BHXShHprqb2OgXnmKF864UqWZDiQfg61/qX4IBIGyNZK81dkU6EKF4Hk6YyVNE7
 UEV8WxbA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrsW-0007HU-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 22:18:36 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3CB220870
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 22:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585088238;
 bh=OqPR+4D1uC9GWHUem15Mg6AZG5q2UVMdcm7rhGCAkbE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L/97ivusb7Sx60tE3mPvCNugvFScTiwz+eVz4xutkhhDY/DMfGOXP1ox+XbQsm+ca
 cXZXEyEupv3U/CgU6Rm4PIghC3NJ1hz/iHohqutgf/g/zzuq7JoG+s5+2RuRqWgdsf
 YCCj+7Hta9VLodWn9uGvxkJRPJiW1tcAKPafpZSQ=
Received: by mail-wm1-f53.google.com with SMTP id g62so407931wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 15:17:17 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2MzjPvTeBTLxKKo+gA1Bw49QBA0CMp9yTiNV68Z3sovvQlGKY3
 36+WEN/A3qtKxJlJ55TFU8dvaX9ITri31BNPOuLKGQ==
X-Google-Smtp-Source: ADFU+vvDRM1to/M31AAJMBok/qKvhGg5czqgq7WBjlO7WGdwrdzY32L0uGMqhT4cdyDXjnM1G/kqdLHbwbQsIkz6nzk=
X-Received: by 2002:a1c:6285:: with SMTP id w127mr174431wmb.133.1585088236122; 
 Tue, 24 Mar 2020 15:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200323191807.3864-1-broonie@kernel.org>
 <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
 <20200324185847.GJ7039@sirena.org.uk>
In-Reply-To: <20200324185847.GJ7039@sirena.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 24 Mar 2020 23:17:05 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-wPyPufNah5FJ2VrKA5MUNZTDpJrWu+1oXEmrQwqDDdQ@mail.gmail.com>
Message-ID: <CAKv+Gu-wPyPufNah5FJ2VrKA5MUNZTDpJrWu+1oXEmrQwqDDdQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_221833_196826_BB5C659E 
X-CRM114-Status: GOOD (  28.70  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 at 19:58, Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Mar 24, 2020 at 07:19:17PM +0100, Ard Biesheuvel wrote:
> > On Mon, 23 Mar 2020 at 20:18, Mark Brown <broonie@kernel.org> wrote:
>
> > > order to generate BTI landing pads.  We did this due to a lack of
> > > support for the .arch_extension gas feature in older versions of the
> > > clang built in assembler but since current versions of clang now have
> > > support for .arch_extension we can use that.
>
> > This is not 100% accurate. Support for .arch_extension was added to
> > GAS/aarch64 much later, so we should at least double check that it
> > works on the oldest binutils that we do support.
>
> Ah, OK - the information I figured out from history was misleading
> sorry.
>
> We've already got quite a lot of usages of .arch_extension in the kernel
> for arm and a couple for arm64 (one in TF and another for LSE).

ARM had support for this way before it was added to AArch64 as well.
In the LSE case, it doesn't matter since LSE itself was not
implemented by the assembler before that. For other things, we should
really avoid .arch_extension as long as we still support binutils <
2.26

>  It
> looks like the feature was added in binutils 2.26 which is newer than
> the current advertised minimum binutils version of 2.21 but dates from
> 2016 (the code was added in 2014 and looks like it might've appeared in
> downstream releases earlier) so is pretty old in arm64 terms.  If that's
> not OK I've got an open coded version for BTI that does this with macros
> but it's obviously not as nice.
>
> I do wish the binutils docs included information on when features were
> added, it'd make life easier :/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
