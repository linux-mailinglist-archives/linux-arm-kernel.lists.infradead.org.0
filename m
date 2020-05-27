Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465951E3A41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ZEmtrdcfQgRXAbrXYznl04mhXhxplkjS024fSMwih4=; b=haWliT9tBEhNYJ2LuLZrVR334
	VQA38pNnQJb4YQtK9cdfZMT4UBqysulHI+57CGnmpGIAL8ZxEhfZQdsBI+XSq8BMgHIj3IeAZiXgS
	Qq40MNMwfsTEAeyzYf15znNCNv+J7SpD4BYBB70AUuuk9IWf6xVDiyY9iofoVterx0UJzyYvnAH8J
	dDHeiGosrGtce4NejtM+KxOeeIcVBuAjrCgEM+ezA2NiAs8foxD2C9om9plvfn09yyCPPsG3Kvi7q
	34E1VNw4LI8PSdVOeMDOq8qahJcZpgCsFLeYU6Ktbc0kjKcIWK0ODfr+Phw0/ZKBSQlvy0BhXFYmq
	0LDBN620A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqN2-00078A-Ch; Wed, 27 May 2020 07:21:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqMp-00077h-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:20:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A6AF20C56;
 Wed, 27 May 2020 07:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590564047;
 bh=xe0XCZfpz88ojVoEgE66/wE6fHWWqAyThRQDs0+/Qqs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WABS5Dro923F6hOOT4JBJX+vEWtTfPyhmyPMpL17+pe7WBLFPyN1uqVWT8Yn2Efr9
 DBxfD2NPeacMwXgyDSaPXEiU3Hu3ZK2XxKea8S1z3IvQOKtyQtZm3BNal+JZ+UjWof
 n4fDU940Js3kYZ7JYZ7CjmuUcxWBu3JqG9D+mJQQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdqMn-00Fcxl-OC; Wed, 27 May 2020 08:20:45 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 08:20:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 3/9] kvm/arm64: Rename kvm_vcpu_get_hsr() to
 kvm_vcpu_get_esr()
In-Reply-To: <2e4dd03f-656a-c32b-5e87-ca28583999ef@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-4-gshan@redhat.com>
 <20200526104249.GB1363@C02TD0UTHF1T.local>
 <2e4dd03f-656a-c32b-5e87-ca28583999ef@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <359dad5546a428ea963781f2728e70bf@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, mark.rutland@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 james.morse@arm.com, suzuki.poulose@arm.com, drjones@redhat.com,
 eric.auger@redhat.com, aarcange@redhat.com, shan.gavin@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002048_033429_A70C67A9 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 03:43, Gavin Shan wrote:
> Hi Mark,
> 
> On 5/26/20 8:42 PM, Mark Rutland wrote:
>> On Fri, May 08, 2020 at 01:29:13PM +1000, Gavin Shan wrote:
>>> Since kvm/arm32 was removed, this renames kvm_vcpu_get_hsr() to
>>> kvm_vcpu_get_esr() to it a bit more self-explaining because the
>>> functions returns ESR instead of HSR on aarch64. This shouldn't
>>> cause any functional changes.
>>> 
>>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> 
>> I think that this would be a nice cleanup on its own, and could be 
>> taken
>> independently of the rest of this series if it were rebased and sent 
>> as
>> a single patch.
>> 
> 
> Yeah, I'll see how PATCH[3,4,5] can be posted independently
> as part of the preparatory work, which is suggested by you
> in another reply.
> 
> By the way, I assume the cleanup patches are good enough to
> target 5.8.rc1/rc2 if you agree.

It's fine to base them on -rc1 or -rc2. They will not be merged
before 5.9 though.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
