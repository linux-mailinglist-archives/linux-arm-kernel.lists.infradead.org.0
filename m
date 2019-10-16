Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E046D8DD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyWgOqniTVF9Uuv4ztZDseS+GGx5UFT8fVu345vRb3Y=; b=pwAaacXU3PAVUc
	6djXn0N02y/sVTazSLftBF2t2+NMyRBcve37b2xzXSIo9J75eVt7wCL3KD6KupM3n79iBMYfWPWVu
	wiVVgYG4RfCOe03J7sJ1uN150gh93JNJ8JLyub2HSgI+tUV1go22894jU7NfCY7JVTxH/u7LhLMj3
	ySAuMRwynnsPUDOARVyXhkm5GVQIR4kZ+0LIlYSCl25wHlB6rGbhLNGiVFgCSJlbYJlP/jO7SpcOG
	dP2CCaXyfrWSB1s9NS+QrBXQdMPVLNWO9QKWrVyyd45+1Wivy9Wjqg3yTk0iUUeVUK2DzHgByzQJI
	P6hj2Oy0WxhBVNM2oqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgTE-0007HK-3A; Wed, 16 Oct 2019 10:23:56 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgT6-0007Gm-33
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:23:49 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iKgSw-0002ga-0Y; Wed, 16 Oct 2019 12:23:38 +0200
Date: Wed, 16 Oct 2019 12:23:37 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
Subject: RE: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
In-Reply-To: <HE1PR0801MB1676EC775B7BFA5FC7E4F9D5F4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1910161218020.2046@nanos.tec.linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <9274d21c-2c43-2e0d-f086-6aaba3863603@redhat.com>
 <alpine.DEB.2.21.1910152212580.2518@nanos.tec.linutronix.de>
 <aa1ec910-b7b6-2568-4583-5fa47aac367f@redhat.com>
 <alpine.DEB.2.21.1910160914230.2518@nanos.tec.linutronix.de>
 <HE1PR0801MB1676EC775B7BFA5FC7E4F9D5F4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_032348_275317_A32DB37B 
X-CRM114-Status: GOOD (  22.96  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>, Paolo Bonzini <pbonzini@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianyong,

On Wed, 16 Oct 2019, Jianyong Wu (Arm Technology China) wrote:

Please fix your mail client not to copy the full headers into the reply.

> > On Wed, 16 Oct 2019, Paolo Bonzini wrote:
> > > On 15/10/19 22:13, Thomas Gleixner wrote:
> > That's a completely different beast, really.
> > 
> > The clocksource pointer is handed in by the caller and the core code validates
> > if the clocksource is the same as the current system clocksource and not the
> > other way round.
> > 
> > So there is no need for getting that pointer from the core code because the
> > caller knows already which clocksource needs to be active to make.the whole
> > cross device timestamp correlation work. And in that case it's the callers
> > responsibility to ensure that the pointer is valid which is the case for the
> > current use cases.
> > 
> I thinks there is something misunderstanding of my patch. See patch 4/6,
> the reason why I add clocksource is that I want to check if the current
> clocksouce is arm_arch_counter in virt/kvm/arm/psci.c and nothing to do
> with get_device_system_crosststamp.

There is no misunderstanding at all. Your patch is broken in several ways
as I explained in detail.

> So I really need a mechanism to do that check.
> 
> Thanks
> Jianyong

So just by chance I scrolled further down and found more replies from
you. Please trim the reply properly and add your 'Thanks Jianyong' to the
end of the mail.
 
> > From your other reply:
> > 
> > > Why add a global id?  ARM can add it to archdata similar to how x86
> > > has vclock_mode.  But I still think the right thing to do is to
> > > include the full system_counterval_t in the result of
> > > ktime_get_snapshot.  (More in a second, feel free to reply to the other
> > email only).
> > 
> > No, the clocksource pointer is not going to be exposed as there is no
> > guarantee that it will be still around after the call returns.
> > 
> > It's not even guaranteed to be correct when the store happens in Wu's patch
> > simply because the store is done outside of the seqcount protected region.
> 
> Yeah, all of the elements in system_time_snapshot should be captured in
> consistency. So I think the consistency will be guaranteed if the store
> ops added in the seqcount region.

Again. While it is consistent in terms of storage, it's still wrong to
expose a pointer to something which has no life time guarantee. Even if
your use case is just to compare the pointer it's a bad idea to do that
especially without any comment about the pointer validity at all.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
