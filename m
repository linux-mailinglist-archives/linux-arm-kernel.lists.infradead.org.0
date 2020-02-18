Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902AC1626F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZcMSe1sYhKB5BVaR3rArxe4EXj8Zbq42cXgyRhPTqQ=; b=PWVVJxabDNX9Ft
	m6Jcm53NbHsaledN0yD1wuSR4M+Cj4op94H5H/zu0G8MJVwJIABgW/9qXoCAigiptBIf79uIgKUfs
	NytufTZl7mq5XX7wmDSiBc6kboN+vNmf2m5JAq9GASPWf4Ss9CP1+4ESJ5UcG46ggXigDcuZqlj8W
	LCyjMASd6ztLgwlRUFVEFTWHyvxHWkMsTp1jpEwW9iuXBP5LzZg7khRDoT4FPZgoFKk7BtlO0Gyru
	BHHAOqotAvpbx+dmXrGxPsu+Yxz4XedbxRsMUO9qwCzkrd2D59p0hY84GjymOOSrdcQzsViSc2j9C
	s6uo5ct4YWKxsFmIV4Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42i9-0006GB-Fu; Tue, 18 Feb 2020 13:14:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42i1-0006Ff-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:14:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C40F206F4;
 Tue, 18 Feb 2020 13:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582031681;
 bh=PufLgnMmtc95imMPo617VKEAXQH6WY7d+vE4cAOx5oM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ttpQuFgdkJjTk50ik+oXJzo+09NEl1TGu/xzBDYtq21IRMRkM7NZMfb2+HryLxxvD
 YhTlZfETXpKUnljeFFBcPgNMjQA37WMySRYCOdOKKssEzxlEHGCVOnH1h49usUQ6bR
 lnqFxVwPNbwGhKRqgwLlRiSaqPKLUDvR+NKrnJ34=
Date: Tue, 18 Feb 2020 13:14:37 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Message-ID: <20200218131436.GE20212@willie-the-truck>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
 <20200218130619.GE4232@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218130619.GE4232@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_051441_997846_6EDB0981 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 01:06:19PM +0000, Mark Brown wrote:
> On Tue, Feb 18, 2020 at 12:56:52PM +0000, Marc Zyngier wrote:
> 
> > I'd really appreciate it if you could send these as a series, instead of
> > an isolated patch every other day.
> 
> OK, I can do that for the KVM stuff - I've been actively trying to keep
> the patches separate where there's no dependencies between them as it
> avoids things getting caught up in review for more complicated stuff or
> cases where someone decides they want extra cleanup while we're at it
> which is especially useful when only some of the series is needed for
> building on top of as is the case here.

I get what you're saying, but I still it find it much easier to get a
series of independent but functionally-related patches with a cover letter.
I usually end up cherry-picking the ones that are ready to go, so then
there's no need to respin those.

Obviously, individual patches are still fine, I'm just worried I'll end
up missing something because they're harder to keep track of.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
