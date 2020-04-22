Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C021B4C5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+TJwJiPUoQwuN52dFMoS/7yRsHioQqQ6z1+WiSl+pU=; b=Sos7kymImKWroh
	t/1gd4UIHcxTZ3jfRIfh4u/EJ9tqY+pw3688jhxoi9GIm83WI4YicZsan3ZkZc1X9LVo/LcYknr9U
	Y43YWMD48OP3LhC4nePkQbAqkgb0Uuhwl7vNimi9ZcHFiEP7e5hcGzCIWarFnDLZf9rmDXr6C/vS9
	S0HeCYmXb3gK9Ci21jx2OyFIbPCvd+R52Ab9sce5+xRvq96xNwgzTTvWTiS85jrPzIYqVetU7whB3
	1uo89t5EYHIi1eE9PJQUh3gXquUvzYAfDyZeIDpEdFeV7fRQpPws+pJwpByg5n/yVcCLAhlxtR0XC
	zxw/eWQq5oD3Ev6LkLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJfs-0007Oh-Gn; Wed, 22 Apr 2020 18:00:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJfl-0007OF-2B
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 18:00:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF72A1FB;
 Wed, 22 Apr 2020 11:00:31 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7EB83F6CF;
 Wed, 22 Apr 2020 11:00:30 -0700 (PDT)
Date: Wed, 22 Apr 2020 19:00:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200422180027.GH3585@gaia>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325115038.GD4346@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_110033_156285_F4D377DB 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eric Biggers <ebiggers@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:50:38AM +0000, Mark Brown wrote:
> On Wed, Mar 25, 2020 at 12:45:11PM +0100, Ard Biesheuvel wrote:
> > I don't think this is the right fix. What is wrong with keeping these
> > .cpu and .arch directives in the .S files, and simply make
> > SYM_FUNC_START() expand to something that includes .arch_extension pac
> > or .arch_extension bti when needed? That way, we only use
> > .arch_extension when we know the assembler supports it (given that
> > .arch_extension support itself should predate BTI or PAC support in
> > GAS or Clang)
> 
> Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> you can only enable it by moving the base architecture to v8.5.  You'd
> need to use .arch and that feels likely to find us sharp edges to run
> into.

For MTE, .arch armv8-a+memtag won't work since this is only available
with armv8.5-a. My preference would be to have the highest arch version
supported by the kernel in the assembler.h file, i.e. ".arch armv8.5-a"
followed by .arch_extension in each .S file, as needed.

Forcing .S files to armv8.5 would not cause any problems with
the base armv8.0 that the kernel image support since it shouldn't change
the opcodes gas generates. The .S files would use alternatives anyway
(or simply have code not called).

The inline asm is slightly more problematic, especially with the clang
builtin assembler which goes in a single pass. But we could do something
similar to what we did with the LSE atomics and raising the base of the
inline asm to armv8.5 (or 8.6 etc., whatever we need in the future).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
