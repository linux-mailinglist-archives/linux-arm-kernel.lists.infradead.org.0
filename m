Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2297B1E24E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+8+fiRedzW1xC5olBDCiYuf9I+cz6WdifW0OqrTC+4=; b=EGbMnETcrnQ5/4
	QS3RT8Sc21a03ptmcleIefLYS2dudM36Xdkn6Qoa1e6LCF4jtjXxoEaCdeavIL1fTuMXpk4lUnpTG
	79wOu8Hlv/WOrkr0vPf97VBv6M58gG/IkzUDjBmyN0HsImNif1zHz89MTWTFEA50gm1yDOyKel8ME
	dBZ/BQJGMmOH2afMMe3iKEagu1+vIJaqTDGm47GKw4tl8H4V5BS4tHp8jqVMZYKLRjJeqq5kNZOMh
	EEWtD5bYaqxAdKByNIP6bzI2z6G3h9Ww5NPPHR7C3g2tH4Le8Ig/SBt74aac4pHJhuAT2a0EI3Ccw
	VsQHy2PL+FIanCzY99Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdb5U-0007vF-TL; Tue, 26 May 2020 15:01:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdb5H-0007uK-F8
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:01:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8C8A30E;
 Tue, 26 May 2020 08:01:38 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B893B3F52E;
 Tue, 26 May 2020 08:01:37 -0700 (PDT)
Date: Tue, 26 May 2020 16:01:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Message-ID: <20200526150135.GI17051@gaia>
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_080139_550563_98C3F6C5 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.2 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:09:13PM +0530, Anshuman Khandual wrote:
> @@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
>  	const struct arm64_ftr_bits *ftrp;
>  	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
>  
> -	BUG_ON(!reg);
> -
>  	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
>  		u64 ftr_mask = arm64_ftr_mask(ftrp);
>  		s64 ftr_new = arm64_ftr_value(ftrp, new);
> @@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
>  {
>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>  
> -	BUG_ON(!regp);
>  	update_cpu_ftr_reg(regp, val);
>  	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
>  		return 0;
> @@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
>  	const struct arm64_ftr_bits *ftrp;
>  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>  
> -	if (WARN_ON(!regp))
> -		return;

I think Will wanted an early return in all these functions not just
removing the BUG_ON(). I'll let him clarify.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
