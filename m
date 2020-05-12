Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52701CFC98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmWiBX4E6EWanp/9ZP87pvrlITC5JIZgW9FafxyaMic=; b=RJOhWMW2QrceAp
	FCeCcRENNg4Ds9nwxB/DTqmC8z+uvUquN2o8wn2A1vQhLlnA2f2eO+e2ntFUJRik3CERX3JAIORiE
	BNUOAU3SrnoZT9JFJOGNH/aYuTINapryeq7c84xp7b1xPuRrUbBu9kJLk7yTksmC1cnXZ/clknCDS
	E3dGF6ZJDIaKGqcFHcuZtAm2mvtKlsyRIJ0xv8pSRnWU4WyMKpxuTJejDhZTWGeLD++lQvdhySYym
	aZWmLMcpAT186MbDsf4sBCqzRMZ917g63q3Q/HX6rAqoeZF5nhrQEgwGx2xO/o+EXK10efz48dQdb
	FGIkUSV+hwdOkk73UKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZ0g-0007Cu-N1; Tue, 12 May 2020 17:48:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYzb-0006Yx-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:47:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC22E206A5;
 Tue, 12 May 2020 17:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589305619;
 bh=l/XxqPAoEhzWbA2LyI6ZJJhYEnmcwJ8pkgwlB/mSeYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mviMjy2aNq5GQLzAiUiRgnP/4w0nLoxN0NeVIrl0YfqHNpxCMlySkyccud9E4Os5t
 tLadmk572xOw+2lwH7ylM902bbTWyy7umyHVm8o1c3EXV6KWhm9Ciu0bPlM1TU1PZh
 ElBsV7drSqF2d3Zd/mPtG9WatEe7pNc5QCWm907k=
Date: Tue, 12 May 2020 18:46:55 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200512174654.GF3021@willie-the-truck>
References: <20200512113950.29996-1-broonie@kernel.org>
 <158928497101.114591.14091490976224597416.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158928497101.114591.14091490976224597416.b4-ty@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104704_179107_6A3EBB78 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 06:40:36PM +0100, Will Deacon wrote:
> On Tue, 12 May 2020 12:39:50 +0100, Mark Brown wrote:
> > When setting PTE_MAYBE_GP we check system_supports_bti() but this is
> > true for systems where only CONFIG_BTI is set causing us to enable BTI
> > on some kernel text. Add an extra check for the kernel mode option,
> > using an ifdef due to line length.
> 
> Applied to arm64 (for-next/bti), thanks!
> 
> [1/1] arm64: bti: Fix support for userspace only BTI
>       https://git.kernel.org/arm64/c/e70b3b544798

Damn, I just realised the 'Fixes:' tag is missing double-quotes around
the subject. I'll fix that up now to avoid linux-next shouting at me, but
it means the link above won't work any more because the SHA will change.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
