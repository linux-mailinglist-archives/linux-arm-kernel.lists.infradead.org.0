Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCDD1FCC21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E3vfZRFp8ON01x4G0G+l3dINcIcuFAp9RsVkza2GJaQ=; b=q9VF2Yq8AmBxJo9mMmD2X63XS
	KWD16oo3MyfBeMWa/tbqqniyEighKtE1ekTKY586RH4mO5hl9SKRZ9PC5s1vy+tivO8lqlQpf/zlC
	gtcNaychPl+NyYvxRNJlc60euHwggkUgojYLAE9jo21/Pf5eOcyMAEyZMUK0r+hn6FsIROn+TM9KV
	0hdUVlsb2qU0ccR39I8pTO5qYcjfA5wORuBiwnex3fs5A5YPdSD8EjOVfVQmemrFWZAE5X+Wbr+R1
	bF1MjFKNqIgJaUUVURtHTrxBJ+bQ8YUtvEbjLE9rgtH7O+tt4Idf4fgKR8gWPoBxXv5e5ypjQcNNk
	MzKnC6FXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW6I-0005hp-5d; Wed, 17 Jun 2020 11:19:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW6A-0005hH-Vq
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:19:20 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 374B820734;
 Wed, 17 Jun 2020 11:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592392758;
 bh=0vlsaIbPCoSgisoap8p2ZMimxwVUprfB/3q0TGaMWMk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1MKZoIx8WHOzkygBkUrQiNNssLoxt1Xar4dqJBstwPmejkOM3KHOXNz3N9OXmxzr/
 HqCVkKORSZGFiZ7ZFh4rZyXRWe7OD+XO+YZ4uWilHOXBQ8l1uY1f8jumD+KkiKGAu5
 MjJKdD1GhB6EJZhO0MRQ6ugMxNnw1yW1j40p5UGc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlW68-003lXZ-LG; Wed, 17 Jun 2020 12:19:16 +0100
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 12:19:16 +0100
From: Marc Zyngier <maz@kernel.org>
To: Neeraj Upadhyay <neeraju@codeaurora.org>
Subject: Re: Query regarding ERRATUM_1418040
In-Reply-To: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
References: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <062be27686369d28bd2054a54c307400@misterjones.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: neeraju@codeaurora.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_041919_040961_09C65BBD 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Thanks Will for pointing me to this email]

Hi Neeraj,

In the future, please use my kernel.org address, as I no longer work for 
ARM.

On 2020-06-17 09:55, Neeraj Upadhyay wrote:
> Hi,
> 
> I have query regarding the errata 1418040 [1]. Here, on kernel exit to
> EL0 64 bit mode, will it always enable ARCH_TIMER_USR_VCT_ACCESS_EN;
> and override any other erratas, which might require EL0 direct vct
> access to be disabled for 64 bit also?

So far, I am not aware of any erratum that would require traps of 
CNTVCT_EL0 to EL1 when running AArch64 userspace for CPUs that are 
affected by ARM-1418040. If such an erratum exists, it would have to be 
handled separately.

> Also, this errata applies
> mitigation for all CPUs (on return to 32 bit EL0), even if, not all
> cpus are impacted by the errata?

Indeed. There isn't much we can do to avoid it here, unless you want to 
read some per-CPU variable that tells you whether the CPU is affected. 
This would add to the cost of the mitigation , and isn't an appealing 
prospect.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
