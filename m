Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2685C8EA25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqkVz7FRR0sYYAK+CwFmQkmTote3Tgzx59WLNcnmt9I=; b=fmyZO0marlsMhe
	HDmwgh2V7Mj/8Cp0eESwDRfXoUN+2Ux1Lh53JGcYrlH3nlYRl/koVqPucg4j/k/B5fFvAELtad04G
	OoBDr0Ue5ukrIMQZ9q7uWfR8elE/5tcSTkfDctahIpsatId4nUq0sego3szJ9OV/DTo2Ryytoq4uO
	4ADSoDWeS/nK9DeVb4NYqO+7EUG/dNtmB1JV0vq15EOwPsdQpQ5/BwQQch5a9lWCJyHZw0w1gTNrr
	PH4q6imqofadILNC77+4omM8pe0PEnCF+IsP6jQzrJgqKcNPXQW3cmuW5p3Kd62LO+ZL3UOtM5PmN
	yOMB/ahfDh2bFWvXbv4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDrP-0004HB-AX; Thu, 15 Aug 2019 11:24:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDrB-0004Gm-Bx
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:23:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD9FB28;
 Thu, 15 Aug 2019 04:23:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27F313F694;
 Thu, 15 Aug 2019 04:23:48 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:23:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: arm64/efistub boot error with CONFIG_GCC_PLUGIN_STACKLEAK
Message-ID: <20190815112345.GB22153@lakrids.cambridge.arm.com>
References: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
 <20190815110308.GA22153@lakrids.cambridge.arm.com>
 <CAKv+Gu-OoFZRy_fv1z3GmTH3rp=TKviO7rEeFXwqqiWzbgJf3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-OoFZRy_fv1z3GmTH3rp=TKviO7rEeFXwqqiWzbgJf3A@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_042349_447248_4E19AB9D 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi <linux-efi@vger.kernel.org>, skodde <skodde@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 02:21:26PM +0300, Ard Biesheuvel wrote:
> On Thu, 15 Aug 2019 at 14:03, Mark Rutland <mark.rutland@arm.com> wrote:
> > On Thu, Aug 15, 2019 at 05:56:27AM -0400, skodde wrote:
> > > Hi,
> > >
> > > I've enabled CONFIG_GCC_PLUGIN_STACKLEAK on 5.2.8 for an arm64
> > > macchiatobin board and I get the following error when loading the
> > > kernel (using grub-efi on top of edk ii):
> > >
> > > EFI stub: Booting Linux Kernel...
> > > EFI stub: ERROR: efi_get_random_bytes() failed
> > > EFI stub: ERROR: Failed to relocate kernel
> > >
> > > The kernel boots fine with that option disabled, but strangely
> > > presents the same error when disabling only CONFIG_RANDOMIZE_BASE.
> >
> > That shouldn't be possible, given the IS_ENABLED(CONFIG_RANDOMIZE_BASE)
> > guard around the efi_get_random_bytes() call, so something sounds wrong.
> >
> > Are you certain that you're running the same kernel Image that you
> > rebuilt?
> >
> > Ard, do you reckon it would be worth adding the UTS_RELEASE and
> > UTS_VERSION to the " Booting Linux Kernel..." string? It would make
> > debugging that potential issue easier.
> 
> Use of the UTS_xxx macros already triggers an annoying number of
> object rebuilds every time you change anything entirely unrelated in
> your kernel sources, so I'd prefer to avoid this tbh.

Fair enough; saves me writing a patch! :)

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
