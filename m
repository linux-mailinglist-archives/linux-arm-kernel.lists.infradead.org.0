Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C161A9B91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P9vrJ2Px0GR8Rv48AL8mrtIFyYQRGefvGSSQNQwgXE=; b=tXwiS6Sib1FXNl
	d4niaJ01xiFNk9P3kfEFXpXpCqoELwk1Rolr785TxXHs1QAG8xcYmZD57kMsRniKj6V5TcdCprkMz
	AecS7i8sqwkft84GiZ+Cx6VS8XEcWPUv7SMS52X8UaVJKgJFvt7UC/K5jESFF00vWiOfIec5Ux67O
	2GQqjFwL0dcAIyOUMX5T/lF3qVKOtabs+ZIiHGC61XhRCUXSSMvEH1GuvQr3y3MbpMBvXlyHXqVq2
	gzmk12MBI+HRfFpvRttel3ovlQPHvRt5jqdzkUGMal1bvF+e5lG81iXRzXmWhLqU9cQH7ymPMhm99
	vgJiubpt0uTvIwSxhgRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfkv-0002pB-CS; Wed, 15 Apr 2020 10:58:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfkn-0002os-Vw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:58:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8202320737;
 Wed, 15 Apr 2020 10:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586948329;
 bh=CREoP6ow54O+9uP6Nr3jiB5GlPGFSrwpvxq54PH6zc0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1HhYnu9MIHu7uBu8iCaGrYgjMczZnXow3gS6bknWEk7L7PWw+q2APHOMia1+mGGLl
 SeoGP0GOp/cUK6gieqe9hrTGnTwDXpsnQ4vKEuUWPGomRvlRUSVx75sQcfMiG5xmdY
 mIKao2F9HAVTn5ug8w4JpxJQ8EpXIeSKzfpfVzLg=
Date: Wed, 15 Apr 2020 11:58:44 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 7/8] arm64: cpufeature: Relax checks for AArch32 support
 at EL[0-2]
Message-ID: <20200415105843.GE12621@willie-the-truck>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-8-will@kernel.org>
 <714f124c-7eb7-b750-e98c-63da64ddae75@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <714f124c-7eb7-b750-e98c-63da64ddae75@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_035850_042859_BA37FFCF 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:50:58AM +0100, Suzuki K Poulose wrote:
> On 04/14/2020 10:31 PM, Will Deacon wrote:
> > We don't need to be quite as strict about mismatched AArch32 support,
> > which is good because the friendly hardware folks have been busy
> > mismatching this to their hearts' content.
> > 
> >    * We don't care about EL2 or EL3 (there are silly comments concerning
> >      the latter, so remove those)
> > 
> >    * EL1 support is gated by the ARM64_HAS_32BIT_EL1 capability and handled
> >      gracefully when a mismatch occurs
> > 
> >    * EL1 support is gated by the ARM64_HAS_32BIT_EL0 capability and handled
> 
> s/EL1/EL0
> 
> >      gracefully when a mismatch occurs
> > 
> > Relax the AArch32 checks to FTR_NONSTRICT.
> 
> Agreed. We should do something similar for the features exposed by the
> ELF_HWCAP, of course in a separate series.

Hmm, I didn't think we needed to touch the HWCAPs, as they're derived from
the sanitised feature register values. What am I missing?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
