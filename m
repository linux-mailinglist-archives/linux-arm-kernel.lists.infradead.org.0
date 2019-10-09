Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0158D1B1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 23:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5FU4wrqVilYCFLET5L4JHM4797fsc4b5+9hZ62+tC4=; b=C1aJjTSs2yM07H
	t77N4qHhgwg8wEfE8oX5tuJd4IwuuuEQER1hpB3l9rLggBUmzxKsBX+ryUL+q2F2n3eZrOj5FubJv
	N2VdkRVhJQ0Fuf/Nufgyi5YJJ3P5PBvEbRC6S4BnsYLdAHb18KmD4nWoD8uYjroUlItusVBE9mCR5
	C9CsbqrnyZ5edL0Flb+OAitR8dJGzjsKXjH/4VduO9bpG86QDPtv0ILV4iL3aoL1jwqotSOloO2bJ
	F1xvf6MfyFDdTyaQQP70u7iUITQeWJOeHxmIUfu62v9V3ewjvbcEaT5boYishdyBdO7fA4JGj2JN8
	DQblSpWgsqI9KCHkf/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJjB-00023q-CZ; Wed, 09 Oct 2019 21:42:37 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJj3-00023H-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 21:42:30 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iIJiz-0006C9-1u; Wed, 09 Oct 2019 23:42:25 +0200
Date: Wed, 9 Oct 2019 23:42:24 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009214224.qcv5jenrceoijk5y@flow>
References: <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
 <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
 <20191009105650.GM2328@hirez.programming.kicks-ass.net>
 <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
 <20191009120639.GI2311@hirez.programming.kicks-ass.net>
 <CAK8P3a1nMjjZCT+do6y07yvm-JLy-HhXCNrcqfDr=sAoAtM9-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1nMjjZCT+do6y07yvm-JLy-HhXCNrcqfDr=sAoAtM9-Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_144229_760452_0E49E646 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-09 15:50:24 [+0200], Arnd Bergmann wrote:
> Ok. I looked a bit at the other implementations that do xchg16() through
> cmpxchg32(), and it seems it would be easiest to reuse the superh version,
> which is fully portable by moving arch/sh/include/asm/cmpxchg-xchg.h
> into include/asm-generic/, the same thing would allow us to change a
> number of other architectures to use the generic qspinlock instead of
> their own locks.
> 
> Sebastian, do you want to try doing it that way?

sounds good, I'm on it.

>      Arnd

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
