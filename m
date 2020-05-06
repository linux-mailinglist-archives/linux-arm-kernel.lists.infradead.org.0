Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F121C6D26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+dfBX5rQr4ygXHsiJoy3Od8IB7gh6ZnceTTTANdT/Js=; b=fLniHYQ94HgPhrhOhG/y928RJ
	mS36vR7LblEH/hFIhGjJjKoQKcP8RBFp+WjxTr6cspDXi9iCVyUeuC0LiNSXs+ndXC0Gpy6ZowQEK
	WUrRSnagigNzYudmE9xXivy9sFCb/YnVlmE0HvujlBnn4k5ACREU4ZoNfiiudkRiKJSzhnMKZqOtn
	Ti8+wv41AmOY2ucCpiHWmRXZHNf6/hwKLTM+7md0kt3CsYAUFkGNFaDenHot3srolLR8iB8SmRobc
	Gi0mHv9LPNRZSCeJ/Qafi1jTi2D3788byP3mbEqhT9UUnUQm4z3aHwTkXprTI8YCa0lB+e9rDoVwH
	LkGGLvheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGXL-0002Gb-MT; Wed, 06 May 2020 09:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGX3-0001Hm-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:40:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56CAB2075E;
 Wed,  6 May 2020 09:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588758001;
 bh=PnheU1SB759b1ecFKgOFt4WnUTjCjzVdAEES0Im2Xtc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EtcPzrkg+dKsEn/zxiZdqfiIiMAg3jdP8w21mkGZg1GrxW7TqJqSFSW6NUYyq16jD
 jhC9kvc6joqytrdElp4LjrtbTnUjLDtCf6b6UTAGwZDaQULMpC479xmeoZvCDYSlQJ
 VPObgH6EMZ79giLTHPXYGwbJ3OnwgooE3ClKJfdk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWGX1-009uGa-OB; Wed, 06 May 2020 10:39:59 +0100
MIME-Version: 1.0
Date: Wed, 06 May 2020 10:39:59 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH 05/26] arm64: Document SW reserved PTE/PMD bits in Stage-2
 descriptors
In-Reply-To: <20200505155916.GB237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-6-maz@kernel.org>
 <20200505155916.GB237572@google.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <8b399c95ca1393e63cc1077ede8a45f6@kernel.org>
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
X-CRM114-CacheID: sfid-20200506_024002_055034_66E90C81 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 2020-05-05 16:59, Andrew Scull wrote:
> On Wed, Apr 22, 2020 at 01:00:29PM +0100, Marc Zyngier wrote:
>> Advertise bits [58:55] as reserved for SW in the S2 descriptors.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/include/asm/pgtable-hwdef.h | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h 
>> b/arch/arm64/include/asm/pgtable-hwdef.h
>> index 6bf5e650da788..7eab0d23cdb52 100644
>> --- a/arch/arm64/include/asm/pgtable-hwdef.h
>> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
>> @@ -177,10 +177,12 @@
>>  #define PTE_S2_RDONLY		(_AT(pteval_t, 1) << 6)   /* HAP[2:1] */
>>  #define PTE_S2_RDWR		(_AT(pteval_t, 3) << 6)   /* HAP[2:1] */
>>  #define PTE_S2_XN		(_AT(pteval_t, 2) << 53)  /* XN[1:0] */
>> +#define PTE_S2_SW_RESVD		(_AT(pteval_t, 15) << 55) /* Reserved for SW 
>> */
>> 
>>  #define PMD_S2_RDONLY		(_AT(pmdval_t, 1) << 6)   /* HAP[2:1] */
>>  #define PMD_S2_RDWR		(_AT(pmdval_t, 3) << 6)   /* HAP[2:1] */
>>  #define PMD_S2_XN		(_AT(pmdval_t, 2) << 53)  /* XN[1:0] */
>> +#define PMD_S2_SW_RESVD		(_AT(pmdval_t, 15) << 55) /* Reserved for SW 
>> */
>> 
>>  #define PUD_S2_RDONLY		(_AT(pudval_t, 1) << 6)   /* HAP[2:1] */
>>  #define PUD_S2_RDWR		(_AT(pudval_t, 3) << 6)   /* HAP[2:1] */
>> --
>> 2.26.1
>> 
>> _______________________________________________
>> kvmarm mailing list
>> kvmarm@lists.cs.columbia.edu
>> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm
> 
> This is consistent with "Attribute fields in stage 1 VMSAv8-64 Block 
> and
> Page descriptors"

Do you mean "stage 2" instead? The reserved bits are the same, but I 
want
to be sure we have looked at the same thing (ARM DDI 0487F.a, D5-2603).

> Reviewed-by: Andrew Scull <ascull@google.com>

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
