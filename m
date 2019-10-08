Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCDD016E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgOS+R1Co7wK07LXToFattjDtBsbOKwtyHZNvk0am/E=; b=QPrO2es0n4psuo
	siRjoTPdmNpuSgb247ztOCOb7KMSBxoYz0YwfPYIqQ5l4rLHZnYOL0+/e/BFu90JWIB3FbcT8GLyB
	7YrbsHnWIuso828mKmAJMlIHGTaCQRMn4sRv3cgS/dBnHce9FsiIy3kB2GX3z/nG3ivE59+jqJwSg
	J8MG6/7VxaVyx0w4AtNyMFcgIA/Lbab8ac1I/lEsppn1QVTR5/kscyMpkcnr4nCyOdi0d9wEzWScR
	UZkNI+xc4xdF2y4yKgmVJX7vrDXXQE7cnYWMSxPiWFDy0p/V5ay84+mmFBCFoXPGmDOYgyWniyIzs
	CKyASTA0/71BJKac1eqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvSH-00007e-1h; Tue, 08 Oct 2019 19:47:33 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvSA-00006t-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:47:27 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHvS9-0005uF-6K; Tue, 08 Oct 2019 21:47:25 +0200
Date: Tue, 8 Oct 2019 21:47:25 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191008194724.evlk3bnomcz3kxwg@flow>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_124726_570576_7DB478A2 
X-CRM114-Status: GOOD (  11.84  )
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

On 2019-10-08 16:32:27 [+0200], Arnd Bergmann wrote:
> On Tue, Oct 8, 2019 at 3:36 PM Waiman Long <longman@redhat.com> wrote:
> > In x86, the lock instruction prefix is patched out when running on UP
> > system. This downgrades the atomic cmpxchg to non-atomic one. We may do
> > something similar in other architectures.
> 
> Unfortunately, the atomic macros cannot trivially be made cheaper
> on non-SMP systems based on load-locked/store-conditional
> based architectures, as there may be an interrupt in-between,
> and disabling interrupts would likely be more expensive.
> 
> However, there might be a way to take a shortcut out of
> queued_spin_lock() using asm-goto combined with the ARM
> __ALT_SMP_ASM() macro.

The smp_xchg16_relaxed() snippet above looked good. I would buy it :)
Where are you heading with __ALT_SMP_ASM()?

>       Arnd

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
