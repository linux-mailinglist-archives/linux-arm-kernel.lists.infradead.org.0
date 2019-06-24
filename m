Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF04FE4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wJwF3/7aMT/ouHazJoianGC5KdNXyj6Ax1uEuJ7lJI=; b=RYuQLVSZp4tyG0
	4x6kWQVcTN3cRxlnnYUESUUH69EzNuHfOA5Wjyze6pmlaZnRT7BLvfDOgaUmp6w7Z11AXskvl/RIm
	GN7WESK6XcX1i1YLZ6f9CmhFoYbhL/r8I+FvvAFfUIzoX7Iq0DVuop0wAYIt2GEIDtzPop2Xfcfld
	rleXUHueWpncKCi5azN5iJe7Tdpb52NRkmrdffRbsHBvexyqbPUB9kaCLro0SNWsQdaQahJcPS+Tg
	aE+q3dEXH1m3FjbrR2c0eLm52HA+uCNmvA5VcFdvp3S+J39tWmiWu1fJGX7fOt6ZNRZALwVxjGeHo
	hOkohCpvfb6A5OfGP/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfCnk-00014M-VN; Mon, 24 Jun 2019 00:25:41 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfCnR-00013k-CO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:25:22 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfCnK-0000Kk-5Z; Mon, 24 Jun 2019 02:25:14 +0200
Date: Mon, 24 Jun 2019 02:25:12 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Kelley <mikelley@microsoft.com>
Subject: RE: [PATCH v6 18/19] x86: Add support for generic vDSO
In-Reply-To: <BYAPR21MB135202F46C4B023B51EBBFD0D7E00@BYAPR21MB1352.namprd21.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1906240221550.32342@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
 <20190623190929.GL2226@sasha-vm>
 <alpine.DEB.2.21.1906240006090.32342@nanos.tec.linutronix.de>
 <BYAPR21MB135202F46C4B023B51EBBFD0D7E00@BYAPR21MB1352.namprd21.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_172521_567157_253D3955 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 Sasha Levin <sashal@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019, Michael Kelley wrote:
> From: Thomas Gleixner <tglx@linutronix.de> Sent: Sunday, June 23, 2019 3:13 PM
> > 
> > I have no objections if you collect hyper-v stuff, quite the contrary, but
> > changes which touch other subsystems need to be coordinated upfront. That's
> > all I'm asking for.
> > 
> > Btw, that clocksource stuff looks good code wise, just the change logs need
> > some care and after the VDSO stuff hits next we need to sort out the
> > logistics. I hope these changes are completely self contained. If not we'll
> > find a solution.
> >
> 
> In my view, the only thing that potentially needs a solution is where the
> Hyper-V clock code used by VDSO ends up in the code tree.  I think the
> right long term place is include/clocksource/hyperv_timer.h.   That location
> is architecture neutral, and the same Hyper-V clock code will be shared by
> the Hyper-V on ARM64 support that's in process.
> 
> Vincenzo's patch set creates a new file arch/x86/include/asm/mshyperv-tsc.h,
> which I will want to move when creating the separate Hyper-V clocksource
> driver.   If you're OK with that file existing for a release and then going away,
> that's fine.  Alternatively, put the code in include/clocksource/hyperv_timer.h
> now as part of the VDSO patch set so it's in the right place from the start.  My
> subsequent patch set will add a few additional tweaks to remove x86-isms
> and fully integrate with the separate Hyper-V clocksource driver.

I don't care whether this goes into 5.3 or later. If you can provide me
rebased self contained patches on top of

  git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso

I'm happy to pull them in on top.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
