Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C016606C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d6Y7fMZ4vD1p9Ysecf2mDUSQX5TS2osz5yovousL6DQ=; b=I31dE5NlemQT0MPWJs3F0BmSq
	DJTQYNimEZJoB2vJI6uUXjv2IlYO+owjbqSLJaTEpo9Ffnyu5HVcsJBXkZQuQUNoULAdE+CDZYLlz
	zsdZfQlw7tluyKAdOPh7qf7On/HqYRT0YYhr2olfkI3dPxg4oq3kl804kgQcPKtnLgl2BpM+mvAJZ
	81+x+Jwid0tNqmEBvj82a2mbQJmZsyUx8xkrCOIUs+QhRQoo3Y4a0zqlEoYH97rbkMnB7ncuMYXJl
	klNiH6mfTbNdu427UwpPN4hdgDgN26MvlamShO94K4JHkR6ME1VCRDQuyWgBhgv6h/O/tHVCUnuyp
	Urt1DM4gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nP0-0005W4-Eg; Thu, 20 Feb 2020 15:06:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nOt-0005Vi-1J
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 15:06:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F14FA2071E;
 Thu, 20 Feb 2020 15:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582211162;
 bh=qZGMqmf13kGIaYi/07SmSX1RGyMwOKwiwho8FB8lkTs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NryJuAResREVCHM8mQNQCcamlRvxhjbRJxG0YuRw7rtC44JpxQ5ZDgw9dU/I10TDI
 DvepeERBJ3zq76TvxDDwTS+DVnXwkyVH0SAF6bhnilPh4OQrZKvVTIYw4ROgIOmOHk
 rNIQ1sC5bmZKTPVzN1InK+HWplCsUgImxfL5KERE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4nOq-006km6-8n; Thu, 20 Feb 2020 15:06:00 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 15:06:00 +0000
From: Marc Zyngier <maz@kernel.org>
To: minyard@acm.org
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
In-Reply-To: <20200220145048.GH3704@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <1416dca51b52dff349923184f41d48e8@kernel.org>
 <20200220145048.GH3704@minyard.net>
Message-ID: <375815af3c711b94dd2ee56326c2dd3b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: minyard@acm.org, will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, cminyard@mvista.com,
 linux-kernel@vger.kernel.org, tcminyard@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_070603_107947_5FFEAC85 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Corey Minyard <tcminyard@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-20 14:50, Corey Minyard wrote:
> On Thu, Feb 20, 2020 at 02:21:36PM +0000, Marc Zyngier wrote:
>> On 2020-02-19 15:24, minyard@acm.org wrote:
>> > From: Corey Minyard <cminyard@mvista.com>
>> 
>> [...]
>> 
>> > After studying the EL0 handling for this, I realized an issue with using
>> > MDSCR to check if single step is enabled: it can be expensive on a VM.
>> > So check the task flag first to see if single step is enabled.  Then
>> > check MDSCR if the task flag is set.
>> 
>> Very tangential remark: I'd really like people *not* to try and 
>> optimize
>> Linux based on the behaviour of a hypervisor. In general, reading a
>> system register is fast, and the fact that it traps on a given 
>> hypervisor
>> at some point may not be true in the future, nor be a valid assumption
>> across hypervisors.
> 
> Normally I would agree, but I based this upon git commit
> https://github.com/torvalds/linux/commit/2a2830703a2371b47f7b50b1d35cb15dc0e2b717
> which seemed to say that it was a significant enough factor to do in 
> the
> EL0 case.

And that's a blast from a distant past. Hypervisors have changed 
drastically
over these 6 years, and I'm still sitting on a bunch of patches that 
*could*
change the way MDSCR_EL1 is handled.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
