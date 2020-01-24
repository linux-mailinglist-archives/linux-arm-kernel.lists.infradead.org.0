Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8695814863C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4EMPs+5TZVWugRKwUEypmZLRj4lEy5C7/hEcGCCjdSk=; b=LqNHuSmfMALaVR1sSaJxuecEP
	GjxwmoaLuZnKesL+f0qAaxAOcQ5HGF6sORBR2vGVXF82Zs9JLhkUQjjFraPS1piFymSe/1rE/k80v
	U1PU64GLP3S4G6krrEfqoCPHCIrGkUTiuzS+ZaJYQvGLnL5RqzHWWxuuyOtbNMYseadK72510P+YN
	JlMNvvG+1lBUr5N60cqNypjylaqtqbUjM8geVMUytHKkfcBpX1bwlzK7ynKuKp2YGraTOK2R6+cLR
	K1FNZrkiDk/Bq2ThfFZgR3pcQQ9tYNVsRKeRNU2FFxmKLg6fCmZkT2v6TuTKfSF58sOr2iTI1fQch
	ryGlDGL4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuz6s-0000gz-Fq; Fri, 24 Jan 2020 13:34:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuz6c-0000gR-FB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:34:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45D6A2087E;
 Fri, 24 Jan 2020 13:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579872877;
 bh=7L3LQxwcMn0sL99Kg9Iw/6y7YYRrD0myNYQr201fsnk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0C+Q1CJKCYngonwYHsFw0cvUJaGwCYR31GdsPpHgLdcp/LB8OLUFNNDmAHxHHGpIS
 SWhInojOa2FB8a+OAO/a+YkLO9er7YMVTdy13fyo6MxGzveKs+gGtIqazSMn7xXyHh
 jGcMTIIkXJyvx5FXhwLAP8xmJPXwPSNy6dpASKT4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iuz6Z-001Bnc-HH; Fri, 24 Jan 2020 13:34:35 +0000
MIME-Version: 1.0
Date: Fri, 24 Jan 2020 13:34:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: Quentin Perret <qperret@google.com>
Subject: Re: [PATCH v2 0/1] arm/arm64: add support for folded p4d page tables
In-Reply-To: <20200124122053.GA150292@google.com>
References: <20200113111323.10463-1-rppt@kernel.org>
 <20200122185017.GA17321@willie-the-truck>
 <cb6357040bd5d9fa061a8d3bd96fb571@kernel.org>
 <20200124122053.GA150292@google.com>
Message-ID: <af9e7292f723f808406510f437d5b0eb@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: qperret@google.com, will@kernel.org, rppt@kernel.org,
 anshuman.khandual@arm.com, catalin.marinas@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, rppt@linux.ibm.com,
 kvmarm@lists.cs.columbia.edu, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_053438_551098_FC2E7A4F 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Quentin,

On 2020-01-24 12:20, Quentin Perret wrote:
> Hi Marc,
> 
> On Wednesday 22 Jan 2020 at 18:56:38 (+0000), Marc Zyngier wrote:
>> But maybe this is the reason we've all been waiting for, for which we
>> sacrifice 32bit KVM host on the altar of progress, and finally move 
>> along.
>> 
>> Will and I are the only known users, and that'd be a good incentive to
>> experience some if this 64bit goodness... ;-)

[future work for which 32bit support gets in the way]

> This would a be perfectly reasonable and acceptable overhead if this 
> had
> to be done to keep 32bit KVM host support for a real user community, 
> but
> since it doesn't seem to exist (?), fighting with the above options
> feels like a lot of wasted efforts. (Note: I am not implying that Will
> and you are not real persons, but well, you see what I mean ;-)).

I don't disagree at all. To be honest, I've been on the cusp of getting
rid of it for a while, for multiple reasons:

- It has no users (as you noticed)
- It is hardly tested (a consequence of the above)
- It isn't feature complete (no debug, no PMU)
- It doesn't follow any of the evolution of the architecture (a more
   generic feature of the 32bit port, probably because people run their
   64bit-capable cores in 64bit mode)
- It is becoming a mess of empty stubs

The maintenance aspect hasn't been a real problem so far. Even the NV
support is only about 200 lines of stubs. But what you have in mind is
going to be much more invasive, and I wouldn't want an unused feature to
get in the way.

What I may end-up doing is to send a RFC series to remove the 32bit host
support from the tree during in the 5.6 cycle, targeting 5.7. If someone
shouts loudly during that time frame, we keep it and you'll have to work
around it. If nobody cares, then dropping it is the right thing to do.

Would that be OK with you?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
