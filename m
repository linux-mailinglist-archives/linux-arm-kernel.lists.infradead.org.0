Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C7C58036
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmIWnKS/jv3gabhtgCej72CTK6o7a0rwRWKUAcM9c54=; b=r4QKxP70pky3zP
	dWjqSa3y3qcqsW8Bz2WO/jqbo7MsD+hgo6L2hjxvHuX7viL/zQvTbzJe+o1/OYUSSEgGFU6i55BCC
	FOwrrAHJl2vMTQCRUb/J3VFOq8FSqw5+t3x7vhqFWOaJgZq5/2ae7IsvIi+55SjFdOSdyRSCsFEZ1
	E5bfW1xT6fL0IrfU6CdOMxynssbbh/XGQBrjatn2sfD5O44GInfYpH6+briC0lccgPPjdhhmc41PE
	+iI4MkfVOdJh88/M8hhrsMJsleBDrh2hFx+C2ufVhzzSIGc3zaX4bWAxJYw61vx+lJZmxpHEKG4wI
	uSMS36iRtvXY6ZUEfI3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRcK-0003NS-Jy; Thu, 27 Jun 2019 10:27:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRc5-0003N7-CY
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 10:26:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D84FF20828;
 Thu, 27 Jun 2019 10:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561631204;
 bh=duq8+LW7es72204ZoqN96Ryi5mw764476S+0yU+5ibI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T+z/BgKwg7CijwoyhhZA9zdAZTYH3sSWEKfgIU6hN9UKLJ8Actppb7KJefaD7xuMw
 6dbq6lIpsEhv/d924CBw8OyZJebni75vCWCIJxLtJuvJ/E4TT+cSoNDsdmOlEUpwq7
 fRKoIOuNUZ4XVhvgqnyzpqKMn/zAXUO2cVOFejAc=
Date: Thu, 27 Jun 2019 11:26:40 +0100
From: Will Deacon <will@kernel.org>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: Why doesn't arm-smmu (v2) driver take VA_BITS into consideration?
Message-ID: <20190627102640.2pzgiro3gq3ont5s@willie-the-truck>
References: <20190627001932.GA27343@Asurada-Nvidia.nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627001932.GA27343@Asurada-Nvidia.nvidia.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_032645_448288_61C63A35 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: will.deacon@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:19:33PM -0700, Nicolin Chen wrote:
> I am using an Soc that contains arm-smmu v2 engines. I found that
> the arm-smmu driver reads GR_ID2 register and defines ias and oas
> of each domain based on the corresponding fields of that GR_ID2.
> 
> Using my platform for example, it gets 48-bit for all ias and oas,
> being translated from those fields so I got these 2 stages:
>         Stage-1: 48-bit VA -> 48-bit IPA
>         Stage-2: 48-bit IPA -> 48-bit PA
> 
> Then the code does below to configure aperture_end to 48-bit:
>  914         domain->geometry.aperture_end = (1UL << ias) - 1;
> 
> However, my system configures VA_BITS to 39. So aperture_end==48
> is a mismatch comparing to VA_BITS_39. Although the aperture_end
> is supposed to cap IOVA allocation, this 48-bit cap won't really
> do the job at all.

What actually goes wrong, though? IOVAs should only be handed over to
devices, so VA_BITS doesn't strictly matter. It's the DMA masks that are
important.

> I saw that arm-smmu-v3 driver takes VA_BITS into consideration:
>  1765         switch (smmu_domain->stage) {
>  1766         case ARM_SMMU_DOMAIN_S1:
>  1767                 ias = (smmu->features & ARM_SMMU_FEAT_VAX) ?
>  1768                 ias = min_t(unsigned long, ias, VA_BITS);
> 
> So I am wondering if it is intentionally designed so by ignoring
> VA_BITS? Would you please help me understand this a bit?

I think it's simply that SMMUv3 doesn't provide an ID field to tell you
what to use, so we chose to go with VA_BITS since it's what we're using
on the CPU.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
