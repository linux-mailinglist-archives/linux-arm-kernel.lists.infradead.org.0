Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD568E979
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WUF9lbK64WPTmUSx02TY3wYNuZ3ZDE2mEUL/+AbpRQ=; b=TvsJ0FG8vlkaao
	E5fZIpFe0xRfxOhTMYStAklUglaicOdGxdNExCkpsP11R79IcUGKMOoCiVp2N3VeTalu+P4ZxiHy4
	IyeN3ZLL3fDvIuTEuuozWHm/shyIsbOQj85Me8bduFRiRZpcGzuGMz9RXvgd4D2W1gB3ZDI18iD81
	vdshiiD/rmGYgvwx/omjtL3hrzYEw2g0hiLiy05IrHhHOKL96cMdemv89QzkI353Fqv/HL85rfQEq
	tjg80yBfdwiNifO/2rogbvO/LmUhZTn6lkkXPDCmDeblGiRr153jJ6GoWUATEyITzX/4xcK5CNu5F
	6uTVQ7qCNLXWqlWoi6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDXU-0001AT-Np; Thu, 15 Aug 2019 11:03:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDXK-0001AA-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:03:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00E0328;
 Thu, 15 Aug 2019 04:03:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E66D3F694;
 Thu, 15 Aug 2019 04:03:16 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:03:09 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: skodde <skodde@gmail.com>
Subject: Re: arm64/efistub boot error with CONFIG_GCC_PLUGIN_STACKLEAK
Message-ID: <20190815110308.GA22153@lakrids.cambridge.arm.com>
References: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_040318_182350_A9942B51 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 05:56:27AM -0400, skodde wrote:
> Hi,
> 
> I've enabled CONFIG_GCC_PLUGIN_STACKLEAK on 5.2.8 for an arm64
> macchiatobin board and I get the following error when loading the
> kernel (using grub-efi on top of edk ii):
> 
> EFI stub: Booting Linux Kernel...
> EFI stub: ERROR: efi_get_random_bytes() failed
> EFI stub: ERROR: Failed to relocate kernel
> 
> The kernel boots fine with that option disabled, but strangely
> presents the same error when disabling only CONFIG_RANDOMIZE_BASE.

That shouldn't be possible, given the IS_ENABLED(CONFIG_RANDOMIZE_BASE)
guard around the efi_get_random_bytes() call, so something sounds wrong.

Are you certain that you're running the same kernel Image that you
rebuilt?

Ard, do you reckon it would be worth adding the UTS_RELEASE and
UTS_VERSION to the " Booting Linux Kernel..." string? It would make
debugging that potential issue easier.

> Let me know if I can provide more info or do some tests.

Maybe there's a problem with stale objects. If you're not doing so
already, could you try a clean build with CONFIG_RANDOMIZE_BASE
deselected?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
