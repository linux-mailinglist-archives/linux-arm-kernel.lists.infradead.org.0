Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73AB1E3CF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VIh9q5kI3jGHrAV8Ue99C2aMZnF4XJtjHdfXWQlfHAE=; b=Ef4L0MqLx9KZYD56PhtMw6FE3
	etxbyq6P7ZieEmGKD5wgVP0Oc5B224aiJYybkQMELVfq8CE8UN7LdgPeYL4TNbcJDgBY2nlfuHLIk
	Fqcrt09+0TxqHVKNf1Sllb99Vi952RrfLeuuB1Hd6Go4myStXYLG01SYwGTx+ZncNYeIVs/wfQxA1
	Zf+sqrErVPj5KKa6cv9yMv4V8p5i57uERSIHLDN2PUGE1qbgzvcmfRSeYMkBqKciRCwyAw4gBgasx
	KnlJcB5N5DpP8hyW5fEdsmTl7VKyLOBeXyaFTQxnKbGUp5h6XT5azI4V6SwAVOmbMjQuAGEfReexI
	ABwx5Y1bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrv9-0003Ls-2Z; Wed, 27 May 2020 09:00:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrug-0003L4-47
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:59:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A4A920723;
 Wed, 27 May 2020 08:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590569989;
 bh=rPHAc5eimetXVqweeSipTURrEuy4V6ve5PkutgmKEtA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tvrGcnXkSNJG9A+/gWnqyD9xa0wya4IQJK0PY/BHByHP6dRgqxXsEdBNg2uTPoBQo
 JY/4zMhBU/iygu/eMKo4uXCxEP6Az72mtKngAC968FsAm2meKbE6qBtYtiFyZ/DzLK
 5mqMTqrzs/Knxjpm6gR83sMhQZAcAg/K8J2q4/No=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdrue-00FeLV-31; Wed, 27 May 2020 09:59:48 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 09:59:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH 08/26] KVM: arm64: Use TTL hint in when invalidating
 stage-2 translations
In-Reply-To: <20200513090648.GA193035@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-9-maz@kernel.org>
 <20200507151321.GH237572@google.com>
 <63e16fdd-fe1b-07d3-23b7-cd99170fdd59@arm.com>
 <20200513090648.GA193035@google.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7a2a533088ecc77f2c5a473e2c1c3004@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, james.morse@arm.com, kvm@vger.kernel.org,
 andre.przywara@arm.com, kvmarm@lists.cs.columbia.edu, gcherian@marvell.com,
 prime.zeng@hisilicon.com, catalin.marinas@arm.com, will@kernel.org,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_015950_200549_7B2B996B 
X-CRM114-Status: GOOD (  17.88  )
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, George Cherian <gcherian@marvell.com>,
 James Morse <james.morse@arm.com>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 10:06, Andrew Scull wrote:
> On Tue, May 12, 2020 at 01:04:31PM +0100, James Morse wrote:
>> Hi Andrew,
>> 
>> On 07/05/2020 16:13, Andrew Scull wrote:
>> >> @@ -176,7 +177,7 @@ static void clear_stage2_pud_entry(struct kvm_s2_mmu *mmu, pud_t *pud, phys_addr
>> >>  	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
>> >>  	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
>> >>  	stage2_pud_clear(kvm, pud);
>> >> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
>> >> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>> >>  	stage2_pmd_free(kvm, pmd_table);
>> >>  	put_page(virt_to_page(pud));
>> >>  }
>> >> @@ -186,7 +187,7 @@ static void clear_stage2_pmd_entry(struct kvm_s2_mmu *mmu, pmd_t *pmd, phys_addr
>> >>  	pte_t *pte_table = pte_offset_kernel(pmd, 0);
>> >>  	VM_BUG_ON(pmd_thp_or_huge(*pmd));
>> >>  	pmd_clear(pmd);
>> >> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
>> >> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>> >>  	free_page((unsigned long)pte_table);
>> >>  	put_page(virt_to_page(pmd));
>> >>  }
>> >
>> > Going by the names, is it possible to give a better level hint for these
>> > cases?
>> 
>> There is no leaf entry being invalidated here. After clearing the 
>> range, we found we'd
>> emptied (and invalidated) a whole page of mappings:
>> |	if (stage2_pmd_table_empty(kvm, start_pmd))
>> |		clear_stage2_pud_entry(mmu, pud, start_addr);
>> 
>> Now we want to remove the link to the empty page so we can free it. We 
>> are changing the
>> structure of the tables, not what gets mapped.
>> 
>> I think this is why we need the un-hinted behaviour, to invalidate 
>> "any level of the
>> translation table walk required to translate the specified IPA". 
>> Otherwise the hardware
>> can look for a leaf at the indicated level, find none, and do nothing.
>> 
>> 
>> This is sufficiently horrible, its possible I've got it completely 
>> wrong! (does it make
>> sense?)
> 
> Ok. `addr` is an IPA, that IPA is now omitted from the map so doesn't
> appear in any entry of the table, least of all a leaf entry. That makes
> sense.
> 
> Is there a convention to distinguish IPA and PA similar to the
> distinction for VA or does kvmarm just use phys_addr_t all round?
> 
> It seems like the TTL patches are failry self contained if it would be
> easier to serparate them out from these larger series?

They are. This whole series is a mix of unrelated patches anyway.
Their only goal is to make my life a bit easier in the distant
future.

I'll repost that anyway, as I have made some cosmetic changes.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
