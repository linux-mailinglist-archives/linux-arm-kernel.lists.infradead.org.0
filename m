Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27960F7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 10:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBfVVsHcWESKFNWJ3wiBYUOQpDp7QbpVKqVNLc4wuOg=; b=mq/gmGCZDkn/vE
	GlDi2OkH1Qnf4NlCUpMSBxyZ8ci/KdbRQnNgKXIFrNt7UoP9ABS3buEJytbAKVDVgDkT+O3UxCjVP
	qwPQjvPGZto1Xd+cBKIRcPqufsC/MYJb4HWPORk/FMgtudBpsE3DaBQTEmru7qFZ+Teyq8ds8piEK
	zCUCn6JlYAo8uhldisFCFp5Vr76XXOv6FRO4VeorMfYMr6B90ul1hUCFrstIdzvMPLGbtfqN6TOx+
	rTkHed8bPsgSHTdDi2fc9wxCcedF8fneocI8MfZJuccpJJHeELvcgsDg8wW+/shB1ttX5GCZogHBx
	i/dK4wgUlR5rD4CO+Bag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjg9E-0000rB-Ef; Sat, 06 Jul 2019 08:34:20 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjg90-0000qh-GN
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 08:34:08 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hjg8e-0006If-QV; Sat, 06 Jul 2019 10:33:44 +0200
Date: Sat, 6 Jul 2019 10:33:43 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dexuan Cui <decui@microsoft.com>
Subject: RE: [tip:timers/core] clocksource/drivers: Make Hyper-V clocksource
 ISA agnostic
In-Reply-To: <alpine.DEB.2.21.1907060944200.3648@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1907061032400.3648@nanos.tec.linutronix.de>
References: <1561955054-1838-2-git-send-email-mikelley@microsoft.com>
 <tip-fd1fea6834d0f9f93062ae6685862908a9baed39@git.kernel.org>
 <PU1P153MB0169E8E3898897BF3B3BE0F6BFF40@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <alpine.DEB.2.21.1907060944200.3648@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_013406_693443_D3BFF9DB 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, KY Srinivasan <kys@microsoft.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "linux-tip-commits@vger.kernel.org" <linux-tip-commits@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "bp@alien8.de" <bp@alien8.de>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 6 Jul 2019, Thomas Gleixner wrote:

> On Sat, 6 Jul 2019, Dexuan Cui wrote:
> > > From: linux-hyperv-owner@vger.kernel.org
> > > <linux-hyperv-owner@vger.kernel.org> On Behalf Of tip-bot for Michael Kelley
> > > No behavior is changed and no new functionality is added.
> > >... 
> > > +void hv_stimer_cleanup(unsigned int cpu)
> > > +{
> > > +	struct clock_event_device *ce;
> > > +
> > > +	/* Turn off clockevent device */
> > > +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> > > +		ce = per_cpu_ptr(hv_clock_event, cpu);
> > > +		hv_ce_shutdown(ce);
> > > +	}
> > > +}
> > 
> > Actually, there is a behavior change (see https://lkml.org/lkml/2019/7/1/9):
> > 	Removed call to clockevents_unbind_device() [Thomas Gleixner]
> > and this breaks my ongoing work of Linux guest hibernation on Hyper-V. :-(
> > 
> > I guess Thomas suggested we remove the call because the clockevent device
> > can be automatically cleaned up in tick_cleanup_dead_cpu(), when a CPU is 
> > offlined? BTW, I didn't find Thomas's mail suggesting the change.
> > 
> > In the case of hibernation, this is not true for CPU0, because 
> > tick_cleanup_dead_cpu() is not called for CPU0. As a result, when the
> > system resumes from hibernation, we add the same clock_event_device
> > into the global list clockevent_devices twice in hv_stimer_init(0) ->
> > clockevents_config_and_register() for CPU0, causing unexpected
> > behaviors...
> 
> The way this is normally done is to suspend the clockevent device on
> hibernation and resume it when coming back. From a kernel POV resume is
> really different than boot.
> 
> But that needs probably more surgery. I'll add the unbind() call back for
> now.

Second thoughts. As it was just on top of the branch, I dropped the two
patches and we can sort it out for 5.4 without a hurry.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
