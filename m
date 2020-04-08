Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5541A1E91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 12:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSkzgaP901/Kvb1ZaGnvkqAbI5s6j4NQwwpuLk12KB8=; b=EdH1C+5Zmizro+
	GzfGKvAasWOV0yzgWjs1YIAZc76LjTPNgDvlVTveS83RF88Vf0m33qh1YR7eOzI+b7yofnFONUqAc
	JBHPFjHEbLsK/I4MF31m/CMVJAmw2S3rHfMdRNU76kDFTdiju4ZkUP16QV6Lt8gggdMSEOQ6zvvzD
	MWPFPsps4ZMSk+HBVzMxfmA7/XGf7t5xPZzxq6sa88QVAQh3g6pH10rb/5rmsvDC021u+hp251dvf
	0V7G8Ua8pEi5xGSgfA3ZlgB3pCKqZ85qNvaEUov/Ju/doQyB1OZiEXKD8+Lf1T24BwMN0Nr1CqtMN
	5Fo0oySdZNYgTfeWblJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7ez-0001H8-Bg; Wed, 08 Apr 2020 10:10:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7em-0000VZ-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 10:10:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F20A420747;
 Wed,  8 Apr 2020 10:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586340604;
 bh=SALhRrOgnxlgM3VDuriZSzbFdgJdGnCyvNjc6KlUz70=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z/f66JrxyGnfMIaVOAiCUUwXoNfqiq7cdoscfL9dTICI/B0tWaGwz4DUf7+Hp12Rg
 1BgGWCRi3OGJFybvHZcDfvujMP6LqdBzYAIuSRBUas2/8+n9/TwgBjmsu9m2NgMA4y
 Fui4xB3/lFIsdotuDctEmWkoDnpMfrYH8ta2wkZY=
Date: Wed, 8 Apr 2020 11:09:59 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 0/5] arm64: Add workaround for Cortex-A77 erratum 1542418
Message-ID: <20200408100956.GA32568@willie-the-truck>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
 <20191114163948.GA5158@willie-the-truck>
 <14773d6b-96d5-b894-7fc4-17c54f15ee30@arm.com>
 <20191120191854.GG4799@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120191854.GG4799@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_031004_857258_2FDA8775 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, Nov 20, 2019 at 07:18:55PM +0000, Will Deacon wrote:
> On Fri, Nov 15, 2019 at 01:14:07AM +0000, Suzuki K Poulose wrote:
> > On 11/14/2019 04:39 PM, Will Deacon wrote:
> > > addr:	B	foo
> > > 
> > > and another CPU writes out a new function:
> > > 
> > > bar:
> > > 	insn0
> > > 	...
> > > 	insnN
> > > 
> > > before doing any necessary maintenance and then patches the original
> > > branch to:
> > > 
> > > addr:	B	bar
> > > 
> > > The idea is that a concurrently executing CPU could mispredict the original
> > > branch to point at 'bar', fetch the instructions before they've been written
> > > out and then confirm the prediction by looking at the newly written branch
> > > instruction. Even without the prefetch-speculation-protection, that's
> > > fairly difficult to achieve in practice: you'd need to be doing something
> > > like reusing memory to hold the instructions so that the initial
> > > misprediction occurs.
> > > 
> > > How does A77 stop this from occurring when the ASID is not reallocated (e.g.
> > > the example above)? Is the MOP cache flushed somehow?
> > 
> > IIUC, The MOP cache is flushed on I-cache invalidate, thus it is fine.	
> 
> Hmm, so this is interesting. Does that mean we could do a local I-cache
> invalidation in check_and_switch_context() at the same as doing the local
> TLBI after a rollover?
> 
> I still don't grok the failure case, though, because assuming A77 has IDC=0,
> then won't you see the I-cache maintenance from userspace anyway?

Please could you explain why the userspace I-cache maintenance doesn't
resolve the issue here?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
