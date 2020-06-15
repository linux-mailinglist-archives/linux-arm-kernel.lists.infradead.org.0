Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7501F984C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CgPTN48vB5l1UIrv1VjjrPifmnI7HP7NYCGGKLN+fKo=; b=umBsWC8pCiI/nv74bOtEHbl3x
	lsXW/8l+zVSdCYGF77f71jVScheSpHYGekvg8jCJyWhw+wtHIwkoUnpJkeMc60xeal0MfrhRFcMuH
	idzRbCH3bW9U9Q6AjK3R6rMg9rsr285usuTJTVoVmhelHkzbwCBJixV6btdEjOfb0i52+POot/KCD
	6DhwImADGepoVzCa58abxCTRSaKf0reiXc1b8gINHlKwYVbYpuxdhDu1qODo8Jmo2kFQcvNsVGH76
	jD26hhsiakztcvEahgO61Xd82VtJbwMLT3DJbAbUNfwVhj22I/DrHT1CHNa+9HZySeJyzwRJ04rn/
	QYTiV3toQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkp4M-0006vf-UB; Mon, 15 Jun 2020 13:22:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkp4B-0006uj-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:22:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52D24207DA;
 Mon, 15 Jun 2020 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592227342;
 bh=uy4ahmE9ucum8lJbLe9wqzS3k/FOFR4SdCtLdG3Gq0I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CuiJ8IZe30mcAP9RdYGckkauU+SBTZGV7fC5FPDiJq+tGsEDbRMQL7rvSkd5ArOww
 pPN+rmqegIMnx9RrOmwVAGu1H1PSl6bEY6Bj27lqFHlcZA0IWmy9tmDUik6+EGl1lp
 0SnhAKmINch4ZJTNpeFW3P/3R7GaCD6LN1FU1xP4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkp47-0036qq-TS; Mon, 15 Jun 2020 14:22:20 +0100
MIME-Version: 1.0
Date: Mon, 15 Jun 2020 14:22:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 0/4] KVM/arm64: Enable PtrAuth on non-VHE KVM
In-Reply-To: <20200615125920.GJ25945@arm.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615125920.GJ25945@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <dd0e5196a4e7baf4d0f8fba2b00e9ef5@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Dave.Martin@arm.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_062223_683575_A7B0DC14 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 2020-06-15 13:59, Dave Martin wrote:
> On Mon, Jun 15, 2020 at 09:19:50AM +0100, Marc Zyngier wrote:
>> Not having PtrAuth on non-VHE KVM (for whatever reason VHE is not
>> enabled on a v8.3 system) has always looked like an oddity. This
>> trivial series remedies it, and allows a non-VHE KVM to offer PtrAuth
>> to its guests.
> 
> How likely do you think it is that people will use such a 
> configuration?

Depending on the use case, very. See below.

> The only reason I can see for people to build a kernel with 
> CONFIG_VHE=n
> is as a workaround for broken hardware, or because the kernel is too 
> old
> to support VHE (in which case it doesn't understand ptrauth either, so
> it is irrelevant whether ptrauth depends on VHE).

Part of the work happening around running protected VMs (which cannot
be tampered with from EL1/0 host) makes it mandatory to disable VHE,
so that we can wrap the host EL1 in its own Stage-2 page tables.
We (the Android kernel team) are actively working on enabling this
feature.

> I wonder whether it's therefore better to "encourage" people to turn
> VHE on by making subsequent features depend on it where appropriate.
> We do want multiplatform kernels to be configured with CONFIG_VHE=y for
> example.

I'm all for having VHE on for platforms that support it. Which is why
CONFIG_VHE=y is present in defconfig. However, we cannot offer the same
level of guarantee as we can hopefully achieve with non-VHE (we can
drop mappings from Stage-1, but can't protect VMs from an evil or
compromised host). This is a very different use case from the usual
"reduced hypervisor overhead" that we want in the general case.

> I ask this, because SVE suffers the same "oddity".  If SVE can be
> enabled for non-VHE kernels straightforwardly then there's no reason 
> not
> to do so, but I worried in the past that this would duplicate complex
> code that would never be tested or used.

It is a concern. I guess that if we manage to get some traction on
Android, then the feature will get some testing! And yes, SVE is
next on my list.

> If supporting ptrauth with !VHE is as simple as this series suggests,
> then it's low-risk.  Perhaps SVE isn't much worse.  I was chasing nasty
> bugs around at the time the SVE KVM support was originally written, and
> didn't want to add more unknowns into the mix...

I think having started with a slightly smaller problem space was the
right thing to do at the time. We are now reasonably confident that
KVM and SVE are working correctly together, and we can now try to enable
it on !VHE.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
