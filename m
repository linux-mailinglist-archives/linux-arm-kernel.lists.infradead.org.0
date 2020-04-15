Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8421AA018
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAm8V6lpZPDJuW/knkQ7VTIxBzVC8epFGe6izo+XBRA=; b=crn1qzyz08HxgE
	ypFa4T8DFy57F09MVxxf/s8OZneKZNDEWrCJ0QVWwMoYWl4SctSRI5ybKZzOZPh5FvI1fIS2DMFdr
	AlgNFFXQ86DnvO0NZZoeoUJbkExkQItVJD0lhuvzd34I3/KVhXmGsyx/UP4K3C5AsNql7ZS2QVrhT
	cfgaocNfQwOkJL/gSp11yTGSUTD82T80K+W6hl3QsMHjSWQPynAUNlwAgXB5jaFZZs4I2iyPFuXlX
	CklzWEKK68bo3iiI4HBMtukUbXbi7oViNqnYycAfYpmJc06tJDZHqHQkPZX8AtkwcizoXQYhbEb2x
	AlDTfNTS248ppU6CnUEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhAj-0004sv-K7; Wed, 15 Apr 2020 12:29:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhAa-0004sS-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:29:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E55AF2074F;
 Wed, 15 Apr 2020 12:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586953771;
 bh=gHxluNrZU2tTOHcwpOtq2n46qQQhnsi8V7TZgKMK1Ec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gq2BveZDD/Gb/fhWrNYUmp9bkKiMRoVR76H1UymoeIJDTW1qzZMFZ4KqJGQiYlRI4
 3LemfZ0UNyfbRFuW4qThg5ia3zMNOvmcfBva2pDMq/CazF1sPRXR9Usvu0d2D0D1Dx
 frs/d28k4Qrk6T3zmCS1b5T9p+dqmMeKPL4aXXJs=
Date: Wed, 15 Apr 2020 13:29:26 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 7/8] arm64: cpufeature: Relax checks for AArch32 support
 at EL[0-2]
Message-ID: <20200415122926.GA17095@willie-the-truck>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-8-will@kernel.org>
 <714f124c-7eb7-b750-e98c-63da64ddae75@arm.com>
 <20200415105843.GE12621@willie-the-truck>
 <d1f538ec-e956-c136-d0f8-54e7351a28a9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1f538ec-e956-c136-d0f8-54e7351a28a9@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_052932_371184_C91F0162 
X-CRM114-Status: GOOD (  17.18  )
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

On Wed, Apr 15, 2020 at 12:37:31PM +0100, Suzuki K Poulose wrote:
> On 04/15/2020 11:58 AM, Will Deacon wrote:
> > On Wed, Apr 15, 2020 at 11:50:58AM +0100, Suzuki K Poulose wrote:
> > > On 04/14/2020 10:31 PM, Will Deacon wrote:
> > > > We don't need to be quite as strict about mismatched AArch32 support,
> > > > which is good because the friendly hardware folks have been busy
> > > > mismatching this to their hearts' content.
> > > > 
> > > >     * We don't care about EL2 or EL3 (there are silly comments concerning
> > > >       the latter, so remove those)
> > > > 
> > > >     * EL1 support is gated by the ARM64_HAS_32BIT_EL1 capability and handled
> > > >       gracefully when a mismatch occurs
> > > > 
> > > >     * EL1 support is gated by the ARM64_HAS_32BIT_EL0 capability and handled
> > > 
> > > s/EL1/EL0
> > > 
> > > >       gracefully when a mismatch occurs
> > > > 
> > > > Relax the AArch32 checks to FTR_NONSTRICT.
> > > 
> > > Agreed. We should do something similar for the features exposed by the
> > > ELF_HWCAP, of course in a separate series.
> > 
> > Hmm, I didn't think we needed to touch the HWCAPs, as they're derived from
> > the sanitised feature register values. What am I missing?
> 
> sorry, that was cryptic. I was suggesting to relax the ftr fields to
> NONSTRICT for the fields covered by ELF HWCAPs (and other CPU hwcaps).

Ah, gotcha. Given that the HWCAPs usually describe EL0 features, I say we
can punt this down the road until people give us hardware with mismatched
AArch32 at EL0.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
