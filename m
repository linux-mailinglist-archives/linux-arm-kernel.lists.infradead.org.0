Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F49B15368
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=is6yY2lqLidcLjnYyWlPhhP3XAoce/UZ6uyGhSr0UWs=; b=BARiE86WCXpKkT
	3eYKbeP4dgwVgZjjNZ6aoveOz/iBsF81vHBXUi05JbyUt4yVNNbovN3Lqd1VeqcL+lzMueDwKasUE
	5yP3IIO2A3saE+4/aHAjCmZ8cOMo2bNaQWjm7+T1SNfuYMpj64T9eV5pCvdJtP2K/7Xd7IYHLY5HW
	jCb0D3lGLvjeMaI7AFOeWaHrtpFJq5vrFfIs7aXJYvhj31WPtn9quQ1+zfG0+Hbl+iw7b2DxJ5m7g
	inGiry74bHzLa8UhWy5DBy9nT3PrjofIWfx8GrObvMkD4n0R1Oeiaj9f1Vr2qTKIS9mJyCV5LL8IL
	c7IkeNbLyjOklJxGF/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNi4s-0007OG-Vf; Mon, 06 May 2019 18:11:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNi4m-0007NT-9F
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:10:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8A08A78;
 Mon,  6 May 2019 11:10:52 -0700 (PDT)
Received: from brain-police (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10A6C3F5AF;
 Mon,  6 May 2019 11:10:50 -0700 (PDT)
Date: Mon, 6 May 2019 19:10:40 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: Re: [EXT] Re: [RFC] Disable lockref on arm64
Message-ID: <20190506181039.GA2875@brain-police>
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_111056_380782_54A35253 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 06:13:12AM +0000, Jayachandran Chandrasekharan Nair wrote:
> Perhaps someone from ARM can chime in here how the cas/yield combo
> is expected to work when there is contention. ThunderX2 does not
> do much with the yield, but I don't expect any ARM implementation
> to treat YIELD as a hint not to yield, but to get/keep exclusive
> access to the last failed CAS location.

Just picking up on this as "someone from ARM".

The yield instruction in our implementation of cpu_relax() is *only* there
as a scheduling hint to QEMU so that it can treat it as an internal
scheduling hint and run some other thread; see 1baa82f48030 ("arm64:
Implement cpu_relax as yield"). We can't use WFE or WFI blindly here, as it
could be a long time before we see a wake-up event such as an interrupt. Our
implementation of smp_cond_load_acquire() is much better for that kind of
thing, but doesn't help at all for a contended CAS loop where the variable
is actually changing constantly.

Implementing yield in the CPU may generally be beneficial for SMT designs so
that the hardware resources aren't wasted when spinning round a busy loop.
For this particular discussion (i.e. lockref), however, it seems as though
the cpu_relax() call is questionable to start with.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
