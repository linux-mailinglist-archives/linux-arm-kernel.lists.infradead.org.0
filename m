Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F5F1E0A6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k1+yMVCMKUk28cju7uD3ja7fzEHteEXP5F6DPR3PH9I=; b=ZToR8CK2RGuggPsdHrjGI9duB
	Yl2LDVyvynxB7kS6nK4McYwaDmr9OAMdGioLQJYsyT6tiMeXZDVoafpS3SsAScoyYhK79TcZHT6ho
	1j4X3M2XoekuDvCqpRRX8SrPo/RkmGwGFI0D4p9mmj7aC+chkAJ54SfJMcxki+it14ZeIKUZOlTZz
	KnhyDof+uI7thKg1wYi8BLsrA2gMwSDhK97s2UiE+ZZDkdwGpF247dyvFF+3aVzZ7cgxEdUfdun/s
	m8zsrN9Bl4sfgVyb4GtqFldbvlry+aBDbS9t9rnrT1ohaB3XuLo71oAhT5V7sgnQGBV9U+Am7L6sW
	VE90uHcLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Ok-0003pZ-EF; Mon, 25 May 2020 09:27:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9EZ-0007aG-96
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:17:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01ED020787;
 Mon, 25 May 2020 09:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590398241;
 bh=dvoIblhrB6r6q1w4YgHnKBzB3u8MDjy2EHOsa4SWZok=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tXnRIYphXASv22/CWUBMA4CPRNsDbUMhgCnKjxTTC6dq9DDNazs1+GztuGsokQpEJ
 72QM5aF0JoA15SMnoO0AX6SPOL6GCj0SXNeERYxlYPaPRT7hQ4f+IaxJUF+lIYihOX
 pyq7Ce4X2AFg/w1e44/Sm5YB7VXDDhAc7W7i/lfo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jd9EU-00F730-Ux; Mon, 25 May 2020 10:17:19 +0100
MIME-Version: 1.0
Date: Mon, 25 May 2020 10:17:18 +0100
From: Marc Zyngier <maz@kernel.org>
To: Richard Cochran <richardcochran@gmail.com>, Jianyong Wu
 <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
In-Reply-To: <20200524021106.GC335@localhost>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
 <20200524021106.GC335@localhost>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <306951e4945b9e486dc98818ba24466d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: richardcochran@gmail.com, jianyong.wu@arm.com,
 netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 steven.price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, justin.he@arm.com,
 Wei.Chen@arm.com, nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021723_482809_20520987 
X-CRM114-Status: GOOD (  18.40  )
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, Wei.Chen@arm.com,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, netdev@vger.kernel.org,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, steven.price@arm.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-24 03:11, Richard Cochran wrote:
> On Fri, May 22, 2020 at 04:37:23PM +0800, Jianyong Wu wrote:
>> In general, vm inside will use virtual counter compered with host use
>> phyical counter. But in some special scenarios, like nested
>> virtualization, phyical counter maybe used by vm. A interface added in
>> ptp_kvm driver to offer a mechanism to let user choose which counter
>> should be return from host.
> 
> Sounds like you have two time sources, one for normal guest, and one
> for nested.  Why not simply offer the correct one to user space
> automatically?  If that cannot be done, then just offer two PHC
> devices with descriptive names.

There is no such thing as a distinction between nested or non-nested.
Both counters are available to the guest at all times, and said guest
can choose whichever it wants to use. So the hypervisor (KVM) has to
support both counters as a reference.

For a Linux guest, we always know which reference we're using (the
virtual counter). So it is pointless to expose the choice to userspace
at all.

> 
>> diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
>> index fef72f29f3c8..8b0a7b328bcd 100644
>> --- a/drivers/ptp/ptp_chardev.c
>> +++ b/drivers/ptp/ptp_chardev.c
>> @@ -123,6 +123,9 @@ long ptp_ioctl(struct posix_clock *pc, unsigned 
>> int cmd, unsigned long arg)
>>  	struct timespec64 ts;
>>  	int enable, err = 0;
>> 
>> +#ifdef CONFIG_ARM64
>> +	static long flag;
> 
> static?  This is not going to fly.
> 
>> +		 * In most cases, we just need virtual counter from host and
>> +		 * there is limited scenario using this to get physical counter
>> +		 * in guest.
>> +		 * Be careful to use this as there is no way to set it back
>> +		 * unless you reinstall the module.
> 
> How on earth is the user supposed to know this?
> 
> From your description, this "flag" really should be a module
> parameter.

Not even that. If anything, the driver can obtain full knowledge of 
which
counter is in use without any help. And the hard truth is that it is
*always* the virtual counter as far as Linux is concerned.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
