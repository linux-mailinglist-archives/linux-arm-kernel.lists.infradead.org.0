Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27F3D8968
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ncpMUpDKEr0j9eotB/BTkBuJpcdmYYGHidkx/q8TZs=; b=mtYtAR6d3MBULE
	BaYm52LMZ7IvpDd9m/3g5h4bQOw0qS/QxcK0rEB9wQHd1uwoi2yHaNdpC27NSe9iT4MtXXmIjzYfS
	6u9lpN6vzJfH7chNW9PU6fc7KECcMVqc0qM7NiMI4XV/xKDdRth9LLML/bMTeiJNZ2gzo+t3L5mxS
	6j1BM6WS77PqsXunh+5m97C0N0pg07bcDIuoeqkE+KrFYKaUDGPnqe7G74+SitwYNGrkmCqQWRLBl
	rvS1fYYmfZjBctvP+ypB8CSmIBtXP9e4WmII08HlijD2UJO5o8ZeGlH1kd4PywIOMhH+1pUpktNK5
	X5Q3XXXunMYjNYiQk5eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdjj-0001ec-Qa; Wed, 16 Oct 2019 07:28:47 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdjb-0001eA-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:28:40 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iKdjU-0007KO-Cs; Wed, 16 Oct 2019 09:28:32 +0200
Date: Wed, 16 Oct 2019 09:28:31 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
In-Reply-To: <aa1ec910-b7b6-2568-4583-5fa47aac367f@redhat.com>
Message-ID: <alpine.DEB.2.21.1910160914230.2518@nanos.tec.linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <9274d21c-2c43-2e0d-f086-6aaba3863603@redhat.com>
 <alpine.DEB.2.21.1910152212580.2518@nanos.tec.linutronix.de>
 <aa1ec910-b7b6-2568-4583-5fa47aac367f@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_002839_321850_4C7AF2B8 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, yangbo.lu@nxp.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, netdev@vger.kernel.org, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019, Paolo Bonzini wrote:
> On 15/10/19 22:13, Thomas Gleixner wrote:
> > On Tue, 15 Oct 2019, Paolo Bonzini wrote:
> >> On 15/10/19 12:48, Jianyong Wu wrote:
> >>>  
> >>>
> >>
> >> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > 
> > You're sure about having reviewed that in detail?
> 
> I did review the patch; the void* ugliness is not in this one, and I do
> have some other qualms on that one.
> 
> > This changelog is telling absolutely nothing WHY anything outside of the
> > timekeeping core code needs access to the current clocksource. Neither does
> > it tell why it is safe to provide the pointer to random callers.
> 
> Agreed on the changelog, but the pointer to a clocksource is already
> part of the timekeeping external API via struct system_counterval_t.
> get_device_system_crosststamp for example expects a clocksource pointer
> but provides no way to get such a pointer.

That's a completely different beast, really.

The clocksource pointer is handed in by the caller and the core code
validates if the clocksource is the same as the current system clocksource
and not the other way round.

So there is no need for getting that pointer from the core code because the
caller knows already which clocksource needs to be active to make.the whole
cross device timestamp correlation work. And in that case it's the callers
responsibility to ensure that the pointer is valid which is the case for
the current use cases.

From your other reply:

> Why add a global id?  ARM can add it to archdata similar to how x86 has
> vclock_mode.  But I still think the right thing to do is to include the
> full system_counterval_t in the result of ktime_get_snapshot.  (More in
> a second, feel free to reply to the other email only).

No, the clocksource pointer is not going to be exposed as there is no
guarantee that it will be still around after the call returns.

It's not even guaranteed to be correct when the store happens in Wu's patch
simply because the store is done outside of the seqcount protected region.

Vs. arch data: arch data is an opaque struct, so you'd need to store a
pointer which has the same issue as the clocksource pointer itself.

If we want to convey information then it has to be in the generic part
of struct clocksource.

In fact we could even simplify the existing get_device_system_crosststamp()
use case by using the ID field.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
