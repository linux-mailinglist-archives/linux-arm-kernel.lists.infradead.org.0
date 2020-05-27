Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89121E35A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sObzudQLlvsv2LSK0E0oyd2dPm8yGarcxfUBKSgDt1E=; b=AaoDOuazTfjhcP
	tlAyt1/MRRvzM8ztE0BpWn7CuvYsS/3ZbDhT2pUeSlrmeenXZls6p2l6KgSG9obyjRhZQgM4v84BK
	E+kBDGM7duuUxaRq0UeQr9BVEGLhB1HARgLFQFjmPh/E0HjXQH+esdhec/crNGq2GtzE9S7xeru9e
	QhegndVgdNxovrWQlONULQCEQ7PjDcd5GuV4rdIHzAKuxFeHMdR72Bu31FDQ4P2J5lnfTdMqnur2O
	/leaLNAKR6dI20u2Vvgr/dQ6LfR5qkTTPIVd+fcrDCylTaaIPl982gyWC9PsoPRP0Aehfrso4m3f/
	rryR6FCapWNE66SMTzeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlmu-0002a6-OL; Wed, 27 May 2020 02:27:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlml-0002Yq-Iw
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:27:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB3BA30E;
 Tue, 26 May 2020 19:27:12 -0700 (PDT)
Received: from [10.163.76.100] (unknown [10.163.76.100])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B36143F52E;
 Tue, 26 May 2020 19:27:10 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
 <20200526150135.GI17051@gaia> <20200526194648.GA2206@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ca38b2c0-533f-9b98-46a2-37ba8bf21d83@arm.com>
Date: Wed, 27 May 2020 07:56:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200526194648.GA2206@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_192715_668591_C857526F 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/27/2020 01:16 AM, Will Deacon wrote:
> On Tue, May 26, 2020 at 04:01:35PM +0100, Catalin Marinas wrote:
>> On Tue, May 26, 2020 at 07:09:13PM +0530, Anshuman Khandual wrote:
>>> @@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
>>>  	const struct arm64_ftr_bits *ftrp;
>>>  	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
>>>  
>>> -	BUG_ON(!reg);
>>> -
>>>  	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
>>>  		u64 ftr_mask = arm64_ftr_mask(ftrp);
>>>  		s64 ftr_new = arm64_ftr_value(ftrp, new);
>>> @@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
>>>  {
>>>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>>>  
>>> -	BUG_ON(!regp);
>>>  	update_cpu_ftr_reg(regp, val);
>>>  	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
>>>  		return 0;
>>> @@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
>>>  	const struct arm64_ftr_bits *ftrp;
>>>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>>>  
>>> -	if (WARN_ON(!regp))
>>> -		return;
>>
>> I think Will wanted an early return in all these functions not just
>> removing the BUG_ON(). I'll let him clarify.
> 
> Yes, the callers need to check the pointer and return early.

Sure, will do. But for check_update_ftr_reg(), a feature register search
failure should be treated as a success (0) or a failure (1). What should
it return ? Seems bit tricky, as there are good reasons to go either way.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
