Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E931683B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yOMRUPbrLT9ltBO4m9rvzklp2CVFCmntL39Wu5NUQ/M=; b=MqQlqnbVD26RaCkpKxwcCxTjh
	wx2YpkaIE82qQO9OdI2owYSoqEhXbokXn5vtdoS5oVlyOPGFWI6dt+TYw/bKhcGKybD5vqnT4HoYQ
	VGwKG3yAPmsJ1lmWygWay0l0nr0W4gAgZ+Aomk4bx3FCwMbpO23HHGoDn/5r2EWkXLMlpZ56t3dvD
	tlamOKbDYdztpFFDn1PQFmw5CSdRzk4GDhw/74QlAfXTmQ8jBIW2Bu+iulV/8UIko//7GwOj+B97H
	qAUYDQ3Rb7MuBT/L7RbZ1ztOvs0haJIdI7+fneVs+1WN6RENroaDgu1qmOPfVkbs0S8pmdjnZc6j+
	/01Xmb1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BJn-0001JT-2z; Fri, 21 Feb 2020 16:38:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BJe-0001Ix-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:38:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8122D24650;
 Fri, 21 Feb 2020 16:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582303093;
 bh=vx7DYqshiSvtTa72/koYpApCGou0XWnWIMWdMy/RIAc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Jac+jXV/ZV53KVQTPBYVTDEppW4Mq4MV7IEX4C2znk1vl5Xji4vgwggxYqp8VBniq
 MszcHuSTDRzYJ5QykS2QZRKduROKCZ4yS0L5dl6E7HBeXLGDWSZuz0BSlkF1swZOXs
 roIpTwV/NgIxjC58XDtWI6M5pza1jIkDUPLArW6o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j5BJb-007593-PI; Fri, 21 Feb 2020 16:38:11 +0000
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 16:38:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
In-Reply-To: <228ef9d9-1ded-05ee-22e5-0158a0e47d82@arm.com>
References: <20200220165839.256881-1-james.morse@arm.com>
 <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
 <228ef9d9-1ded-05ee-22e5-0158a0e47d82@arm.com>
Message-ID: <6479dd67fbe12c6517551dbd79dc7461@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, ard.biesheuvel@linaro.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 will@kernel.org, samitolvanen@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083814_531263_9C718438 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-02-21 14:57, James Morse wrote:
> Hi Marc,
> 
> On 21/02/2020 12:55, Marc Zyngier wrote:
>> On 2020-02-20 16:58, James Morse wrote:
>>> It turns out KVM relies on the inline hint being honoured by the 
>>> compiler
>>> in quite a few more places than expected. Something about the Shadow 
>>> Call
>>> Stack support[0] causes the compiler to avoid inline-ing and to place
>>> these functions outside the __hyp_text. This ruins KVM's day.
>>> 
>>> Add the simon-says __always_inline annotation to all the static
>>> inlines that KVM calls from HYP code.
>>> 
>>> This series based on v5.6-rc2.
>> 
>> Many thanks for going through all this.
>> 
>> I'm happy to take it if Catalin or Will ack the arm64 patches.
>> It case we decide to go the other way around:
>> 
>> Acked-by: Marc Zyngier <maz@kernel.org>
>> 
>> One thing I'd like to look into though is a compile-time check that
>> nothing in the hyp_text section has a reference to a non-hyp_text
>> symbol.
> 
> Heh, that hypothetical tool would choke on things like 
> arch/arm64/kvm/hyp/tlb.c:
> | static void __hyp_text __tlb_switch_to_guest_vhe(...)
> | {
> 
> [...]
> 
> |	local_irq_save(cxt->flags);
> 
> which calls trace_hardirqs_off() ... which is absolutely fine because
> this only happens on VHE.

Duh, indeed.

> To do it purely with the section information, you'd need to separate
> all the VHE code... (maybe as a debug option that only runs when VHE
> is turned off?)

We may have to to that anyway at some point. If the "KVM compartment"
thing becomes real, we may have to end-up compiling both separately
(and jettison the one we don't need at runtime).

>> We already have checks around non-init symbols pointing to init 
>> symbols,
>> and I was wondering if we could reuse this for fun and profit...
> 
> I think objtool is the tool-of-the-future that can do this. You need
> something that believes everything behind has_vhe() is unreachable...

I need to educate myself about objtool. Seems to be the miracle cure
for a lot of ailments! ;-)

Anyway, I've now queued the series for 5.6.

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
