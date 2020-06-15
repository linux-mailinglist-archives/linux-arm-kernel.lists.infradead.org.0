Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898281F99EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiCblKAHjWfO9Csp4ST//A5l01hMajNN1l9AJ0bCY5U=; b=PMnKuz7HPnDLsT
	ftsRn6xJxjhpT6tuAi/OsJW3LgToLL2vBvNdVjLKVQL8uevBC+WhKcyoyobz//fvzHNZr5yQlPgdF
	IR1hECG2TFDSTXjTKe0PUHUtOS7Ey/b0d2qgORty1xG3sz6jLc8Wn3sthIpbX4GvhBZOtBMmIR8WA
	k9wBK/WCYnqnvj3VzLMBeaHOG2T7W6t8dburZlgQTeOPLzRQv08t/30GvMlmxvPV/0P02NebsA6Eu
	CkVoDsLeIx0kUn43r+4hAilekvS1jrSQ1DKPkToDePbD3UDPZM+FqlITHhThyC+8JH59bK4TGtOW1
	5MyCuulV8e2gGI34SI/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpwK-0007he-10; Mon, 15 Jun 2020 14:18:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpw0-0007Z9-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:18:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB5BC31B;
 Mon, 15 Jun 2020 07:17:58 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CA6A3F6CF;
 Mon, 15 Jun 2020 07:17:58 -0700 (PDT)
Date: Mon, 15 Jun 2020 15:17:56 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 0/4] KVM/arm64: Enable PtrAuth on non-VHE KVM
Message-ID: <20200615141755.GK25945@arm.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615125920.GJ25945@arm.com>
 <dd0e5196a4e7baf4d0f8fba2b00e9ef5@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd0e5196a4e7baf4d0f8fba2b00e9ef5@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_071800_307635_30719662 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-team@android.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 02:22:19PM +0100, Marc Zyngier wrote:
> Hi Dave,
> 
> On 2020-06-15 13:59, Dave Martin wrote:
> >On Mon, Jun 15, 2020 at 09:19:50AM +0100, Marc Zyngier wrote:
> >>Not having PtrAuth on non-VHE KVM (for whatever reason VHE is not
> >>enabled on a v8.3 system) has always looked like an oddity. This
> >>trivial series remedies it, and allows a non-VHE KVM to offer PtrAuth
> >>to its guests.
> >
> >How likely do you think it is that people will use such a configuration?
> 
> Depending on the use case, very. See below.
> 
> >The only reason I can see for people to build a kernel with CONFIG_VHE=n
> >is as a workaround for broken hardware, or because the kernel is too old
> >to support VHE (in which case it doesn't understand ptrauth either, so
> >it is irrelevant whether ptrauth depends on VHE).
> 
> Part of the work happening around running protected VMs (which cannot
> be tampered with from EL1/0 host) makes it mandatory to disable VHE,
> so that we can wrap the host EL1 in its own Stage-2 page tables.
> We (the Android kernel team) are actively working on enabling this
> feature.
> 
> >I wonder whether it's therefore better to "encourage" people to turn
> >VHE on by making subsequent features depend on it where appropriate.
> >We do want multiplatform kernels to be configured with CONFIG_VHE=y for
> >example.
> 
> I'm all for having VHE on for platforms that support it. Which is why
> CONFIG_VHE=y is present in defconfig. However, we cannot offer the same
> level of guarantee as we can hopefully achieve with non-VHE (we can
> drop mappings from Stage-1, but can't protect VMs from an evil or
> compromised host). This is a very different use case from the usual
> "reduced hypervisor overhead" that we want in the general case.
> 
> >I ask this, because SVE suffers the same "oddity".  If SVE can be
> >enabled for non-VHE kernels straightforwardly then there's no reason not
> >to do so, but I worried in the past that this would duplicate complex
> >code that would never be tested or used.
> 
> It is a concern. I guess that if we manage to get some traction on
> Android, then the feature will get some testing! And yes, SVE is
> next on my list.
> 
> >If supporting ptrauth with !VHE is as simple as this series suggests,
> >then it's low-risk.  Perhaps SVE isn't much worse.  I was chasing nasty
> >bugs around at the time the SVE KVM support was originally written, and
> >didn't want to add more unknowns into the mix...
> 
> I think having started with a slightly smaller problem space was the
> right thing to do at the time. We are now reasonably confident that
> KVM and SVE are working correctly together, and we can now try to enable
> it on !VHE.

Cool, now I understand.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
