Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB991ACEA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JH4OysEG3sSnZ7XlkZVj6U8PtPUkB3b13fInk6rEgS8=; b=KsJOd2YUhz178q+jKh3ejRZ3n
	pcf/jeuU8uGPeN6lv1CiSJg6V571uhcKd/C3eEnvnOiStEbPy9We+K9ziwW4a+BBoxV+/YJzaMy4/
	BgLpl2UnUX/zw2L5Ryxwd9EIAt44Uj7JJuRMUfjB+EXZxr1wxNtia3rFeWgxAVmO+M7w+0knxTIAB
	mg9oIuZg0uzrqHjWLoEUCWcbb2/TkFW/4e2A1sR2y3Wii5cY0qmp7e2MNt6/bclmSsMaJhFl6MtDj
	O1m/gYX33FIomdvYQDN1OfjE9UijKNRIMZR8w7xDLAPH2PxtmKZnvL6PLS0v3jK1RJW2TDoUzGuFR
	KQdGwi7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8Fk-0006OA-In; Thu, 16 Apr 2020 17:24:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Fb-0006Nq-RV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:24:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FC712076D;
 Thu, 16 Apr 2020 17:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587057871;
 bh=UxgHHt2NeWIhftpv8xNENijT4Gukwwyzyg1IRpvLXzs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=g1SBH/S1xjhAVDsIoJ0zw1ZDNL0B3F+hLnuVxkY0fnxebNuSDImVx3u6mOare9YCA
 4B8XIu+02w2z06xNZ3ECpop9c9DrFCr6MsrodIv2FEw++3Tiw2obZ+NiGHxKOlH1C8
 IixQNKpOrpGBopT59Ex7iKaDWHehGvM/AxMQqaoY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jP8FZ-003x8f-Od; Thu, 16 Apr 2020 18:24:29 +0100
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 18:24:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Drop PTE_S2_MEMATTR_MASK
In-Reply-To: <20200416170539.GC32685@willie-the-truck>
References: <20200415105746.314-1-yuzenghui@huawei.com>
 <20200416163605.091fa6eb@why> <20200416170539.GC32685@willie-the-truck>
Message-ID: <1248b9b0922a2c2886650f5bacadf1af@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, yuzenghui@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_102431_904998_A88D9640 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-16 18:05, Will Deacon wrote:
> On Thu, Apr 16, 2020 at 04:36:05PM +0100, Marc Zyngier wrote:
>> On Wed, 15 Apr 2020 18:57:46 +0800
>> Zenghui Yu <yuzenghui@huawei.com> wrote:
>> 
>> > The only user of PTE_S2_MEMATTR_MASK macro had been removed since
>> > commit a501e32430d4 ("arm64: Clean up the default pgprot setting").
>> > It has been about six years and no one has used it again.
>> >
>> > Let's drop it.
>> >
>> > Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> > ---
>> >  arch/arm64/include/asm/pgtable-hwdef.h | 1 -
>> >  1 file changed, 1 deletion(-)
>> >
>> > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
>> > index 6bf5e650da78..99315bdca0e6 100644
>> > --- a/arch/arm64/include/asm/pgtable-hwdef.h
>> > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
>> > @@ -190,7 +190,6 @@
>> >   * Memory Attribute override for Stage-2 (MemAttr[3:0])
>> >   */
>> >  #define PTE_S2_MEMATTR(t)	(_AT(pteval_t, (t)) << 2)
>> > -#define PTE_S2_MEMATTR_MASK	(_AT(pteval_t, 0xf) << 2)
>> >
>> >  /*
>> >   * EL2/HYP PTE/PMD definitions
>> 
>> Looks good to me. Catalin, Will: do you want to take this directly? If
>> so please add my:
>> 
>> Acked-by: Marc Zyngier <maz@kernel.org>
>> 
>> Otherwise, I'll route it via the KVM tree.
> 
> I can take it for 5.8 if it's not urgent.

It has been there 6 years, I think we can cope with another few 
months... ;-)

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
