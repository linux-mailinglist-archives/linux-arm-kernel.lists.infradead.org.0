Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E38F1FCF89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JWcRpZrT5jzt5EOlUMdPBjMol6TpDLpxTzKmyQ62R2I=; b=YvJRLzhJYoZiYpzkHkRwXRX8C
	akyP3ARcaIIJdrQz9SOHUO8JH+O6iq6GCw1P1YGYl/vs9nW8+KJNbc17odQnzz89jaoCUr4kq9ORa
	FsdvcTbf043ZCQPmK/Le676avbJH5Pls0vi9otcjf0eItYUb1MLqtt6ouyRpGl2FWv6XVQa7ri3kk
	C/5e1mRCFsO24p+PURx2jexJ3vB/G18Lzq3FWNWrWFdB2t8pjPYvSAssFWH2J5GmWx499R87qAeaJ
	5eUNL0VeXlqX/fNEs4H2QdvHSTEU8hOB+x1Nn6MV24F36RhBXSJtexL381YBzaPMZzJ69n6wBgS97
	36zSzXoeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZ4e-00012I-7z; Wed, 17 Jun 2020 14:29:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZ4X-00011p-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:29:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD5622083B;
 Wed, 17 Jun 2020 14:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592404188;
 bh=IvoqMJhrh4PPVTFXv4xU5nnzJ31LhJyRARn0o1+njmo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wW7EbnkMP6dAdfIUHRmnyCToBKwfH96F3LQNi0RTQb6tTJhUMfw3a+TgsTH20PtEt
 qsSXflQGWFVnBzm7SIofJYCagJ51BNKAS4UCjGpZHjrTKHpI3TpCOS5N3CiGy//sR7
 yS80bPjdqYufqx8dNQjUpwYnaoIQuc/o3AiTFHMA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlZ4V-003ntP-0f; Wed, 17 Jun 2020 15:29:47 +0100
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 15:29:46 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: Query regarding ERRATUM_1418040
In-Reply-To: <20200617112542.GB3503@willie-the-truck>
References: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
 <062be27686369d28bd2054a54c307400@misterjones.org>
 <20200617112542.GB3503@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <c3dbc9a990c77abf57de76efd03c6db2@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, neeraju@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_072949_347071_85DD2610 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Neeraj Upadhyay <neeraju@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-17 12:25, Will Deacon wrote:
> On Wed, Jun 17, 2020 at 12:19:16PM +0100, Marc Zyngier wrote:
>> On 2020-06-17 09:55, Neeraj Upadhyay wrote:
>> > I have query regarding the errata 1418040 [1]. Here, on kernel exit to
>> > EL0 64 bit mode, will it always enable ARCH_TIMER_USR_VCT_ACCESS_EN;
>> > and override any other erratas, which might require EL0 direct vct
>> > access to be disabled for 64 bit also?
>> 
>> So far, I am not aware of any erratum that would require traps of 
>> CNTVCT_EL0
>> to EL1 when running AArch64 userspace for CPUs that are affected by
>> ARM-1418040. If such an erratum exists, it would have to be handled
>> separately.
>> 
>> > Also, this errata applies
>> > mitigation for all CPUs (on return to 32 bit EL0), even if, not all
>> > cpus are impacted by the errata?
>> 
>> Indeed. There isn't much we can do to avoid it here, unless you want 
>> to read
>> some per-CPU variable that tells you whether the CPU is affected. This 
>> would
>> add to the cost of the mitigation , and isn't an appealing prospect.
> 
> Hmm, but in conjunction with the previous point, doesn't this mean if
> some CPUs are affected by an erratum which requires CNTVCT trapping for
> AArch64 and others are affected by 1418040, then the former won't 
> actually
> be trapped?

Indeed. Having CPUs that require opposite workarounds is one of the many 
fascinating aspects of BL systems... :-/ Does such a system exist today?

> Maybe we should preserve ARCH_TIMER_USR_VCT_ACCESS_EN for AArch64 tasks
> instead of setting it unconditionally?

We'd still need something when switching from an AArch32 task to an 
AArch64 one. I guess we'd either need to re-enable it on entry from a 
32bit task, or implement some sort of per-CPU, per-ISA state to be 
restored on return to userspace.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
