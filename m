Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A61C138F20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CnyGaakv2Wu6Yzos0fOOjv8pWsRtf+wEUqgrGKwPS0=; b=P4oxuGbJbkNq75
	i4pAZlZxgHQ+9i71Ne66fl3oTskaigg671Fp3qzOtWbgCg1puGLZ4mttYClu4fsdRznw3bUHtCYmU
	E0vR8XL8CT/oF10lnmoP+DfPPf91+DmtuXRlIbG8Zl85ixdeKlEYQ87wDUFcaLXmMrO4ZzglvgYTr
	0BqjvQdauzAvvPGfqHhMu+A0aKp4VSGEsz+IPxP8CXLUv02Cjq3xd6vvT4uBXfbzSEnFKE4EJ2B0Y
	CHeEVxxcp+99jFx7r0+AbJIAySjOh1DIAtJYEduJXawI0WE7X5a8nn42R4/HyZ2VO+Iai72Pf0HMX
	PTvCNCBZ2CS0Fkw9XnpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx0Z-0003TH-Cp; Mon, 13 Jan 2020 10:31:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqx0J-0003Od-PU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:31:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DFF713D5;
 Mon, 13 Jan 2020 02:31:25 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 571363F534;
 Mon, 13 Jan 2020 02:31:23 -0800 (PST)
Date: Mon, 13 Jan 2020 10:31:18 +0000
From: Steven Price <steven.price@arm.com>
To: yezengruan <yezengruan@huawei.com>
Subject: Re: [PATCH v2 3/6] KVM: arm64: Support pvlock preempted via shared
 structure
Message-ID: <20200113103117.GA44375@arm.com>
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20191226135833.1052-4-yezengruan@huawei.com>
 <468e2bb4-8986-5e1e-8c4a-31aa56a9ae4f@arm.com>
 <c479977c-3824-4b53-ef46-300d59ac35de@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c479977c-3824-4b53-ef46-300d59ac35de@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023127_889975_D606B5AF 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>, James Morse <James.Morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 07:30:42AM +0000, yezengruan wrote:
> Hi Steve,
> 
> On 2020/1/9 23:02, Steven Price wrote:
> > On 26/12/2019 13:58, Zengruan Ye wrote:
> >> Implement the service call for configuring a shared structure between a
> >> VCPU and the hypervisor in which the hypervisor can tell the VCPU is
> >> running or not.
> >>
> >> The preempted field is zero if 1) some old KVM deos not support this filed.
> > 
> > NIT: s/deos/does/
> 
> Thanks for posting this.
> 
> > 
> > However, I would hope that the service call will fail if it's an old KVM not simply return zero.
> 
> Sorry, I'm not sure what you mean. The service call will fail if it's an old KVM, and the Guest will use __native_vcpu_is_preempted.

You previously said the "field is zero if [...] some old KVM does not
support this field". This seems a bit of an odd statement, because the
field just doesn't exist (it's an old KVM so won't have allocated it),
and if the guest attempts to find the field using the service call then
the call will fail.

So I'm not sure in what situation you are expecting the field to be zero
on an old KVM.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
