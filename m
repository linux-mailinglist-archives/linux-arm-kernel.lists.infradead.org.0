Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79931C9447
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cPrHUatvQn+D6dB5iex8cGiB0/a1QGYOCqTqunFVrfg=; b=Nc6XlAaymYIqoDeJ3bpiajfjP
	Y7QLea8vp2jWYv5bY9VAL274XJsEwnSY0aJ1CIsC6OzArZu7bVDXQXrq61jHJ/6FhjYpyRHLimzsB
	6zwAcb5LLRE69Ww9XBrtb0WPC3P7tGT7BaZw/AVlO5aTDP9yThBBBxAcOGxun1YXeHf8tjSZWWbqu
	PWj252IMMii6MFhdtFrv875TqsLSFZ1Pfeu/wzVlOVbyOlcChlP9ju6Qf4htWz0/lTbG7M1G+1a1W
	6WWI+oQSmfrmOrvzd7+/RT4x6NJobeUqo34SV9ltKvcU9EneB4dbVSA6WCf0MtFrJhZJJ5zz1J3+u
	IxzIu8WhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiDm-0001Hy-OT; Thu, 07 May 2020 15:13:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiDL-00014m-4j
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:13:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95836208D6;
 Thu,  7 May 2020 15:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864410;
 bh=k29A0IdfLiHWDqKOzD4CblXmGpqrNA1u5nmT1s31i0o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yyZ6rd0NSWlhpoG9Q0esg6nHGFLl1NvhjNZwMMitnXQY0hBkjr5SL58/FXa5w+2S/
 aCztoEdN/hC5vzhkizpb/ZCOWhDH7YpgoI1B3dtt6Cpkd/aQoaKglYMjAYfeE2wwbk
 SnBEvBxqaKuIc3M+0ZF2Eb+5vROr7m2O8A8pccEQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWiDJ-00AJjI-1O; Thu, 07 May 2020 16:13:29 +0100
MIME-Version: 1.0
Date: Thu, 07 May 2020 16:13:28 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH 07/26] KVM: arm64: Add a level hint to
 __kvm_tlb_flush_vmid_ipa
In-Reply-To: <20200507150843.GG237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-8-maz@kernel.org>
 <20200507150843.GG237572@google.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <6a347ce739ff46f03fc6c6c7bc5b0c4f@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, will@kernel.org,
 andre.przywara@arm.com, Dave.Martin@arm.com, gcherian@marvell.com,
 prime.zeng@hisilicon.com, catalin.marinas@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081331_224172_681EBE04 
X-CRM114-Status: GOOD (  10.83  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-07 16:08, Andrew Scull wrote:
>> -void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, 
>> phys_addr_t ipa)
>> +void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu,
>> +					 phys_addr_t ipa, int level)
> 
> The level feels like a good opportunity for an enum to add some
> documentation from the type.

Sure, why not. I'll give it a go.

> 
>>  static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, 
>> phys_addr_t ipa)
>>  {
>> -	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa);
>> +	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, 0);
> 
> With the constants from the next patch brought forward, the magic 0 can
> be given a name, although it's very temporary so..

Yup. To the point where I've now squashed this patch and the following
one together, and moved the constants to the previous patch.

> Otherwise, looks good.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
