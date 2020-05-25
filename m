Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E341E11B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 17:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MUrolDBvMxL467hk53WFYwa+i7DiZoguJhtEcTYEibk=; b=pZcmvxT5HtzTsa2qi9d43vV9N
	mzqpS3cyUQX4hQ/BkPvFyxyLqYdAT3ZpvxjcIN9UiIAsSkrx37KpAa1E78tLIMlCM0Xf5hmcgEJn2
	Pt6Bk+K9Ddx2tFkhdIwUQh4wec97htvwI5avbPMjnahVNzBjYIT571UR223BmxO3h9Hn4rY6g3WrP
	b7T4xqXOz8hkTZyNFabp8LT5uu2vED7kn210JUJC3ojZlSrcoAUHuLtPX5eEx9J8SvFyY4NyXlUoc
	kW82BvLIoRdJAy9nIGz/nULlzD8DLUjkBu9JepzyfIjKWTYrBh/SjTQUQMBtQp+bSnQ2ynnT3swFt
	5hOMmvSiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdF1m-0006A2-60; Mon, 25 May 2020 15:28:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdF1e-00068z-7a
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 15:28:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B44D92071A;
 Mon, 25 May 2020 15:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590420503;
 bh=3X4sQ7kcpAcBdWmFPLh2z6FUnu+whu05DPLM1j+9VQY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0bBuzBY5wC1xcpMo04SVEVYyNO8F3N5GWqP7oDFDTbPCo3EUisqzVks3B99I4/hdY
 /iEgGaONpIC9cmuYkN8WpvOyZ6fzMILw87y7sn4R0VuCPQebUSBI+bsP0/+gZVHcVq
 /FsxUauOXD8YIvXLhbH0AjW3jJDp8Sul7gdt/vF0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdF1Z-00FC3W-Mv; Mon, 25 May 2020 16:28:21 +0100
MIME-Version: 1.0
Date: Mon, 25 May 2020 16:28:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
In-Reply-To: <HE1PR0802MB2555E64BD5C076E5AF08E644F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
 <20200524021106.GC335@localhost>
 <306951e4945b9e486dc98818ba24466d@kernel.org>
 <HE1PR0802MB2555E64BD5C076E5AF08E644F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <b5b4266f6bdac6c4921ab1a577b8e343@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Jianyong.Wu@arm.com, richardcochran@gmail.com,
 netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 Mark.Rutland@arm.com, will@kernel.org, Suzuki.Poulose@arm.com,
 Steven.Price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, Justin.He@arm.com,
 Wei.Chen@arm.com, nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_082826_314145_BD6C1DD5 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 Wei Chen <Wei.Chen@arm.com>, kvm@vger.kernel.org,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, john.stultz@linaro.org, yangbo.lu@nxp.com,
 pbonzini@redhat.com, tglx@linutronix.de, nd <nd@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-25 15:18, Jianyong Wu wrote:
> Hi Marc,
> 
>> -----Original Message-----
>> From: Marc Zyngier <maz@kernel.org>
>> Sent: Monday, May 25, 2020 5:17 PM
>> To: Richard Cochran <richardcochran@gmail.com>; Jianyong Wu
>> <Jianyong.Wu@arm.com>
>> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
>> tglx@linutronix.de; pbonzini@redhat.com; 
>> sean.j.christopherson@intel.com;
>> Mark Rutland <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
>> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>; linux-
>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
>> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
>> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>; nd <nd@arm.com>
>> Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user
>> choose which counter to return
>> 
>> On 2020-05-24 03:11, Richard Cochran wrote:
>> > On Fri, May 22, 2020 at 04:37:23PM +0800, Jianyong Wu wrote:
>> >> In general, vm inside will use virtual counter compered with host use
>> >> phyical counter. But in some special scenarios, like nested
>> >> virtualization, phyical counter maybe used by vm. A interface added
>> >> in ptp_kvm driver to offer a mechanism to let user choose which
>> >> counter should be return from host.
>> >
>> > Sounds like you have two time sources, one for normal guest, and one
>> > for nested.  Why not simply offer the correct one to user space
>> > automatically?  If that cannot be done, then just offer two PHC
>> > devices with descriptive names.
>> 
>> There is no such thing as a distinction between nested or non-nested.
>> Both counters are available to the guest at all times, and said guest 
>> can
>> choose whichever it wants to use. So the hypervisor (KVM) has to 
>> support
>> both counters as a reference.
>> 
> It's great that we can decide which counter to return in guest kernel.
> So we can abandon these code, including patch 9/11 and 10/11, that
> expose the interface to userspace to do the decision.
> 
>> For a Linux guest, we always know which reference we're using (the 
>> virtual
>> counter). So it is pointless to expose the choice to userspace at all.
>> 
> So, we should throw these code of deciding counter type in linux
> driver away and just keep the hypercall service of providing both
> virtual counter and physical counter in linux to server non-linux
> guest.
> Am I right?

Exactly. We control Linux, and so far nothing is using the physical
counter directly. It is only using the virtual counter.
On the other side, this is *only* Linux. Other operating systems
will need to pick the reference clock that matches their own.
If one day we change Linux to use the physical counter, we'll
have to do the same thing.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
