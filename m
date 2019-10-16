Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04626D8DE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYxS610UVAfy9yXq3HdNqGeR8V/n3+XZ4JV4Ds09xBE=; b=Lwhem6+cI8JJLq
	jiFOJFyfcFPuUvnHYSJJkLkL0MVKliNVbkuuXb+haiArxKFwQDJVZEv5nDmd6RY+7wnsb5VM027sQ
	mDWKrVo/Wy2+RxnnKfwZxSfE15Fc9vss6eBxD0Nd+IgrYP/LgJlc2sDf5i1SlEJbBY0iu9u3/kzlD
	/c21LHtz/5ANAUoidru9nHgsJ9hLhfSxuT9NZuxXka2ttCmzk1SSmiEKrEypSOt8YhyR318Mx/W05
	fGwlSOQOrLqL6QmxoorYBwt1bvhqNE/rs9GNy31m3XyIzIvrcmD454IWew4Y/0Pf4Z9aM9t6itch5
	x8NfQIy+Gz8cSz5l6mJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgVm-0001ES-6Y; Wed, 16 Oct 2019 10:26:34 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgVb-0001E0-6w
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:26:25 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iKgVU-0002kt-VI; Wed, 16 Oct 2019 12:26:17 +0200
Date: Wed, 16 Oct 2019 12:26:16 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
Subject: RE: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
In-Reply-To: <HE1PR0801MB1676B967505C44D385F21E6DF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1910161224050.2046@nanos.tec.linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
 <HE1PR0801MB1676B967505C44D385F21E6DF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_032623_557076_6FD63D55 
X-CRM114-Status: GOOD (  10.31  )
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
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019, Jianyong Wu (Arm Technology China) wrote:
> On Wed, 16 Oct 2019, Thomas Gleixner wrote:
> > On Tue, 15 Oct 2019, Jianyong Wu wrote:
> > +/* Enum to give clocksources a unique identifier */ enum
> > +clocksource_ids {
> > +	CSID_GENERIC		= 0,
> > +	CSID_ARM_ARCH_COUNTER,
> > +	CSID_MAX,
> > +};
> > +
> 
> Does this mean I must add clocksource id for all kinds of ARCHs and
> update all the code which have checked clocksource in the old way?

What is the old way? No code exists which can access the current
clocksource pointer because the core code does not expose it at all.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
