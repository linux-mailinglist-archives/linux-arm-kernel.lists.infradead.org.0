Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48F815D948
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9hB7hTHHBQxjf5GM1SuzGbzZJCTm6SHBJUtRRVcqMqc=; b=Qc+oYWRbGUD/ZBg9HQYM15EdH
	MNNA8iSotgrZjOYDetneln1FIGfDEAHTfdmc57vVOzqLxVuYBxDXYAfyUb2WLOrcKvZmNzFMmbphD
	CtpkgkXCBVx6HBg+idRB0IYLHjzUdpOK2fqmOWbKSU8ITkqHAym4N6tTj7RE9oO6upPLIjDIYkbwa
	6jrBlt3hH+Yg/utNPgcR5RPUhIO4Pn8Y0CYT36+s/lzN+8w60r6YEXBzjaV7TpAdFgsfGfxrIwiPJ
	Qr5krM/tq4Y3k3vxHelifR+t649gNPL2LXWo1KLXnXS6fxwS5yNsv4pG+3RIccvwPhUZjkcvQiWoG
	VMhjHXrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bob-00055p-Fg; Fri, 14 Feb 2020 14:19:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2boS-00055J-Di
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:19:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D74DA206B6;
 Fri, 14 Feb 2020 14:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581689961;
 bh=VoFhf4zdTOyDrs9WxiWbFkep8aWMI/NkIQEpLgdHAjA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o/cKO9Kz9b3Kp6vLs8dIkD6hDZk6Nk1UAyhUHiYMLMjNuRAwzomQ88YU8iOzL1PF2
 BN9xazvXxB89FbP08V43JOG1fOOQIGxzL6t4zCacfGcJzeO+qD0tvhZJB1HlsYGXeI
 BfGzCJyIgaGqAUbm4qgMvOlLxp8n64SA7NokBH2I=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2boN-0057Sx-21; Fri, 14 Feb 2020 14:19:19 +0000
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 14:19:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate assembly using modern annoations
In-Reply-To: <20200214114027.GA4827@sirena.org.uk>
References: <20200213153820.32049-1-broonie@kernel.org>
 <b25323d02c76441ee12c206f07907383@kernel.org>
 <20200214114027.GA4827@sirena.org.uk>
Message-ID: <e8e8da7f1e02e9c2f8e67968697bdf85@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: broonie@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_061924_483999_0352DCAB 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-14 11:40, Mark Brown wrote:
> On Thu, Feb 13, 2020 at 09:36:56PM +0000, Marc Zyngier wrote:
>> On 2020-02-13 15:38, Mark Brown wrote:
> 
>> > -ENTRY(__kvm_call_hyp)
>> > +SYM_FUNC_START(__kvm_call_hyp)
> 
>> I'm not convinced by this particular change. _kvm_call_hyp is called
>> directly from
>> C, and behaves almost like a normal function. What's the issue here?
> 
> I'm not sure I understand your comment here - this is annotated as
> SYM_FUNC_ which is the annotation for things that look like normal
> C functions.

You're right, apologies. I got confused between _FUNC_ and _CODE_.

> 
>> >  	.align	11
>> > -ENTRY(__bp_harden_hyp_vecs_start)
>> > +SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
>> > +SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)
> 
>> Why isn't SYM_CODE_START_NOALIGN enough? And what is the rational for
> 
> The _start and _end labels that were there before are explicitly
> referenced by code, removing them would break the build.

But if we're going to clean things up, I'd rather we actually do that.
The only time __bp_harden_hyp_vecs_end is used is when computing the
size of the vectors, and that'd better be BP_HARDEN_EL2_SLOTS * 2kB
(which can be statically asserted at compile time).

> 
>> the _NOALIGN, btw? I'd expect an alignment of 2kB to be more than 
>> enough.
> 
> So that the explicit .align above takes effect rather than anything the
> macro decides to do, I'm trying to err on the side of caution here.

I don't think we need this. The macros should do the right thing, and
be fixed if they don't.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
