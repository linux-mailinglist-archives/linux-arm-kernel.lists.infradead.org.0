Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CD81E1F68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdaEidLjC/0EE7vpiMU44pLQW+I4S7QVsFCgVIi5Tco=; b=j35evyqCprjFyD
	v6+YmicC42x3STDJ4yZUnY5sCQNxK0HqWF0V1OIECcRko+wda1ZYVPp/2FvWp0/Fwa8YlPDYoM5SL
	apKSE/hAvI4jMNG9meZ9hoSksIYUu3U5aLlnkxbp0QgBzKfnLBFKGbrHZ9nO/zEgu4UQRPDv2fnpo
	E8ds6+vnSbmeLGuNy92Ci5h4v0OXIaUnHcovG7mlyF0QpdRnorRAZ6yQ004s2q+09N+n/bLMqzl0k
	rNhfkYrB2BrgBkQ5utJaZtAw36/86y6+uqB+M8NEjlrwxJgeNzUVocBmnrbMEPBwXN0rM2qOBh0xt
	s8Lx9Yb++POk0GPx0JYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWXf-0002s5-A5; Tue, 26 May 2020 10:10:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWXU-0002rR-PN
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:10:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F6941FB;
 Tue, 26 May 2020 03:10:26 -0700 (PDT)
Received: from bogus (unknown [10.37.8.209])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56E413F52E;
 Tue, 26 May 2020 03:10:22 -0700 (PDT)
Date: Tue, 26 May 2020 11:10:19 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Message-ID: <20200526101019.GB11414@bogus>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-4-jianyong.wu@arm.com>
 <20200522131206.GA15171@bogus>
 <HE1PR0802MB255537CD21C5E7F7F4A899A2F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0802MB255537CD21C5E7F7F4A899A2F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_031028_909913_EFBEF57A 
X-CRM114-Status: GOOD (  16.74  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Justin He <Justin.He@arm.com>, Wei Chen <Wei.Chen@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 01:37:56AM +0000, Jianyong Wu wrote:
> Hi Sudeep,
> 
> > -----Original Message-----
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > Sent: Friday, May 22, 2020 9:12 PM
> > To: Jianyong Wu <Jianyong.Wu@arm.com>
> > Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> > tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> > maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> > <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> > <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>; Justin
> > He <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>;
> > kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; linux-
> > kernel@vger.kernel.org; Kaly Xin <Kaly.Xin@arm.com>; nd <nd@arm.com>;
> > Sudeep Holla <Sudeep.Holla@arm.com>; kvmarm@lists.cs.columbia.edu;
> > linux-arm-kernel@lists.infradead.org
> > Subject: Re: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
> > 
> > On Fri, May 22, 2020 at 04:37:16PM +0800, Jianyong Wu wrote:
> > > Export arm_smccc_1_1_get_conduit then modules can use smccc helper
> > > which adopts it.
> > >
> > > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > > ---
> > >  drivers/firmware/psci/psci.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/firmware/psci/psci.c
> > > b/drivers/firmware/psci/psci.c index 2937d44b5df4..fd3c88f21b6a 100644
> > > --- a/drivers/firmware/psci/psci.c
> > > +++ b/drivers/firmware/psci/psci.c
> > > @@ -64,6 +64,7 @@ enum arm_smccc_conduit
> > > arm_smccc_1_1_get_conduit(void)
> > >
> > >  	return psci_ops.conduit;
> > >  }
> > > +EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);
> > >
> > 
> > I have moved this into drivers/firmware/smccc/smccc.c [1] Please update
> > this accordingly.
> 
> Ok, I will remove this patch next version.

You may need it still, just that this patch won't apply as the function
is moved to a new file.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
