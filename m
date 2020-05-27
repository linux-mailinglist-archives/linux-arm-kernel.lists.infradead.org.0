Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C571E3B00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TLoYn4FH2LgdaP5CqXD0PNnXrr6EJHl5red0kat4Mg=; b=MLCn6yztRWa/av
	0mSyECzKF8Jf4mPaWWDLe6d9R/UFXCSge3QP5LlSNRryHNd8vCnBuAWueur0MRzwA0lpzrdlGYY/E
	OcNRG55giILulMXRI1bDAKT5om8NayL/kLe9G4rYXBHp4IlgkPP2m13ZhqyUAcpXGZovgP5S3BPi3
	lYqgzvr/0B8lPuoXlL/24OXLHx0Mb5f4ydJiOmu/qJlFeC09KKKFw9ZNpf2smXEUINbzSycuJHao+
	6fxysOR0a/K68XDyrC7wTmAYTCX31s0R2YaOj1puhvUQcdv0ITEewrjFiH8VB/zp1ndEK4GTJ15aX
	1/vZu8gGiFJkq0C7vcxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqsK-0006Ki-Pd; Wed, 27 May 2020 07:53:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqs9-0006Jq-3t
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:53:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 894A120FC3;
 Wed, 27 May 2020 07:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590565988;
 bh=Uz9VQ5ssMAnN5D1Zw8oLy/WNGOVCjJrTYN7Wo34QeXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UgSznrbPLEsdZgh8jYyrwAoodAz/I/EFVZy0/azyVkV+fdaIHQitlZQ/IxT5L/XQ4
 XBVOOpb3V2yjhN5922zof+32xjxajhg0/d1vULou0YTHSJe+VWQX214hMELGMqD3fv
 7k0OjwYs6SIZWzHrd5ORT/MDGT37kqMDP5JQnOJo=
Date: Wed, 27 May 2020 08:53:04 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Message-ID: <20200527075303.GC9887@willie-the-truck>
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
 <20200526150135.GI17051@gaia>
 <20200526194648.GA2206@willie-the-truck>
 <ca38b2c0-533f-9b98-46a2-37ba8bf21d83@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca38b2c0-533f-9b98-46a2-37ba8bf21d83@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_005309_177718_54DA2AA0 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 07:56:30AM +0530, Anshuman Khandual wrote:
> 
> 
> On 05/27/2020 01:16 AM, Will Deacon wrote:
> > On Tue, May 26, 2020 at 04:01:35PM +0100, Catalin Marinas wrote:
> >> On Tue, May 26, 2020 at 07:09:13PM +0530, Anshuman Khandual wrote:
> >>> @@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
> >>>  	const struct arm64_ftr_bits *ftrp;
> >>>  	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
> >>>  
> >>> -	BUG_ON(!reg);
> >>> -
> >>>  	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
> >>>  		u64 ftr_mask = arm64_ftr_mask(ftrp);
> >>>  		s64 ftr_new = arm64_ftr_value(ftrp, new);
> >>> @@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
> >>>  {
> >>>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
> >>>  
> >>> -	BUG_ON(!regp);
> >>>  	update_cpu_ftr_reg(regp, val);
> >>>  	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
> >>>  		return 0;
> >>> @@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
> >>>  	const struct arm64_ftr_bits *ftrp;
> >>>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
> >>>  
> >>> -	if (WARN_ON(!regp))
> >>> -		return;
> >>
> >> I think Will wanted an early return in all these functions not just
> >> removing the BUG_ON(). I'll let him clarify.
> > 
> > Yes, the callers need to check the pointer and return early.
> 
> Sure, will do. But for check_update_ftr_reg(), a feature register search
> failure should be treated as a success (0) or a failure (1). What should
> it return ? Seems bit tricky, as there are good reasons to go either way.

We're unable to check it so return 0, otherwise we'll randomly taint the
kernel and print a weird message.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
