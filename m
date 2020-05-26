Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25F1E2F45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QpK/m3POHhbegUoWsiBedbeHVNDhwanfFuSa1EuHsI=; b=Igb888yPB/McwA
	5kK7EmQgScCESTcu4az1l7R4f4kt0j1OfknrQk0ilet6hzNxbnF8XDNIFTIY604xn8kRMjfHyUCaL
	CTt1J2uYtBSrsypvRIEpknu93GcBMvzIfK1ys+m/LRLYVdGg0q0myLv7k03tl8A0ctEdNlSRO3KI3
	DtsDuoc7H7OIpW2XocDKP3pX/6ZadPNUw6v9MiEucSl8ufMUZasdE4DOQ/HmzOOSE9P7Su7m7XupG
	YAHYLeTQIk0P09ikqPBgikM2aFebd0sJuNLtjJ+OmZDh4iNzNk2dmZTrA4upzTkfDjFWHCdNLfwcZ
	c23yPU+TkBW7zwRYSxkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfXT-0000qg-Ag; Tue, 26 May 2020 19:47:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfXJ-0000qM-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:46:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 272E12086A;
 Tue, 26 May 2020 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590522413;
 bh=RaZmosue4ssXAe/hL4EcL9bo7edRNvGkgXFzuwwE8Vs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=koDImTcZ4jx1g4tTY5/IvaZ0wpBkbrCaKpv2YtCnvjMnwpHa04/0PNBu0tGV8Yzzj
 8w7IgjVSHhiaeSLy+jDwtVycS9LmC/eWlDrNnhgIjwIBNPqGfjILccONNfJAPUbuAq
 df+SiPYuJrVHvJ1lN2f5ffzGlwpJpssiepy3kvcI=
Date: Tue, 26 May 2020 20:46:48 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Message-ID: <20200526194648.GA2206@willie-the-truck>
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
 <20200526150135.GI17051@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526150135.GI17051@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_124653_778792_5E39BD9F 
X-CRM114-Status: GOOD (  12.15  )
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 04:01:35PM +0100, Catalin Marinas wrote:
> On Tue, May 26, 2020 at 07:09:13PM +0530, Anshuman Khandual wrote:
> > @@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
> >  	const struct arm64_ftr_bits *ftrp;
> >  	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
> >  
> > -	BUG_ON(!reg);
> > -
> >  	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
> >  		u64 ftr_mask = arm64_ftr_mask(ftrp);
> >  		s64 ftr_new = arm64_ftr_value(ftrp, new);
> > @@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
> >  {
> >  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
> >  
> > -	BUG_ON(!regp);
> >  	update_cpu_ftr_reg(regp, val);
> >  	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
> >  		return 0;
> > @@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
> >  	const struct arm64_ftr_bits *ftrp;
> >  	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
> >  
> > -	if (WARN_ON(!regp))
> > -		return;
> 
> I think Will wanted an early return in all these functions not just
> removing the BUG_ON(). I'll let him clarify.

Yes, the callers need to check the pointer and return early.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
