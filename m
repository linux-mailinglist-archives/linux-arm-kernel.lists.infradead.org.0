Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8571B495B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+B6NN1/0c86BAVn1OYRVnGAoO57siqBsAROdCHn+bFM=; b=ueX+c7jGB91vds/iFcCBNis5C
	49eCBW0OX7Gs2reKEsIyUmABUzflpb8/V2RaeD1uMWX4bTyBgsAGrz/roW1CIioAStNNLP+c3hjQX
	dnKs4WOGSDo+zEb/2qH3eXKMyQNVn64tJYpRC4imOovyM3mH3n515kBVJF0N4pozpwa86Hecbscr7
	99sgQZ3p9jkhWz3y4f8OojO0xyxesId3BPyLt9NC3h+gHFWTNjsNGzmDRGC7nDNgDikL38nFpzYYX
	+k+i2H0GX4t4LC0hDrUAzDqPM80CPDi8pQILPWK7H2c0WPxVvmNAWyt+t6jUupyus78iBo6ieuyK5
	0ztTgYVuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHpj-0000ph-2C; Wed, 22 Apr 2020 16:02:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHpZ-0000ot-5T
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:02:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 931AC20774;
 Wed, 22 Apr 2020 16:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587571352;
 bh=c4mJd8byYus85ZsVq6dYD/xxB2BiJlruuIkokhIEKR8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z+QMPPJzNk3+41X0OaGHcAW/KCZhzEDtlfz68Hfe63NKhA0eHmHvKOsKHRwfCgIhn
 gn/N+5nNLRqAEZp/A5UjMr1Og6z/8RGOdAETRurSvjNmLi7kluFG+OVW1K3eq2DMFC
 JRRCuddtCYva7c/zbgj10qJ6winkquJ56MFPFHLo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRHpW-005YSC-Rg; Wed, 22 Apr 2020 17:02:31 +0100
MIME-Version: 1.0
Date: Wed, 22 Apr 2020 17:02:30 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 4/6] KVM: arm: vgic-v2: Only use the virtual state when
 userspace accesses pending bits
In-Reply-To: <5aa2acf8-e775-325c-0340-fa000a4e3513@arm.com>
References: <20200417083319.3066217-1-maz@kernel.org>
 <20200417083319.3066217-5-maz@kernel.org>
 <4133d5f2-ed0e-9c4a-8a66-953fb6bf6e70@arm.com> <20200417134140.0a901749@why>
 <7b001ee4-0a8e-d79c-1be4-563dab4ca452@arm.com> <20200420110350.675a3393@why>
 <5aa2acf8-e775-325c-0340-fa000a4e3513@arm.com>
Message-ID: <299b5f1307cff29944e5f89e307b2015@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, yuzenghui@huawei.com,
 eric.auger@redhat.com, Andre.Przywara@arm.com, julien@xen.org,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_090233_225468_9F861B0B 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-04-22 16:55, James Morse wrote:
> Hi Marc,
> 
> On 20/04/2020 11:03, Marc Zyngier wrote:
>> On Fri, 17 Apr 2020 17:48:34 +0100
>> James Morse <james.morse@arm.com> wrote:

[...]

>>> (but if user-space never actually does this, then we should do the 
>>> simplest thing)
> 
> Adding printk() to this combined patch and using 'loadvm' on the qemu
> console, I see Qemu
> writing '0xffffffff' into cpending to clear all 16 SGIs. I guess it is
> 'resetting' the
> in-kernel state to replace it with the state read from disk.
> 
> 
>> A third way would be to align on what GICv3 does, which is that 
>> ISPENDR
>> is used for both setting and clearing in one go. Given that the 
>> current
>> state it broken (and has been for some time now), I'm tempted to adopt
>> the same behaviour...
> 
>> What do you think?
> 
> I think Qemu is expecting the bank of cpending writes to clear
> whatever the kernel has
> stored, so that it can replay the new state. Ignoring the cpending
> writes means the kernel
> keeps an interrupt pending if nothing else in that 64bit group was
> set. Its not what Qemu
> expects, it looks like we'd get away with it, but I don't think we 
> should do it!
> 
> I think we should let user-space write to those WI registers, and
> clearing the SGIs should clear all sources of SGI...

I'd be happy with that. Let me rework the patch, and I'll post the 
series again
shortly.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
