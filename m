Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6805519C0F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 14:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njM89rusRylSCL6CclJQuebmZ871qGk/5au+0GlllWU=; b=PQRSUYpB8OSprv
	7TavavOezimjos4FwZD6dGpYxVPxbHaiRVTEsSmg20SkLiIiZNX5dAGcxPlnb5FswirqJSWSPSYeH
	VR0G0uXh6Iyk/ysGcnRx0RTtrOsQ21SXPaBf4PUqHzFKaLIBNyS2ho0rQPxrNzXQmmZz8dSm66MvH
	74GDsJZ8hpytzo7lOmSBANdkKvywSCNyluEHYmpTAR2oNdd01Gx663/15dOin0Cv0AbvhuxRpDzoL
	oBCtMtKbyLQwrSPd/AJyzvOk49FLE2RUSQq6V1gclBUq0kh0tNrdoIQV/LMF6x5/wsWva5iqAyS9j
	G8Gw3PgcIKwaxs0Bb4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJynL-0000VR-JP; Thu, 02 Apr 2020 12:18:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJynF-0000Uk-3b
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 12:17:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B4151045;
 Thu,  2 Apr 2020 05:17:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.31.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D5E53F68F;
 Thu,  2 Apr 2020 05:17:52 -0700 (PDT)
Date: Thu, 2 Apr 2020 13:17:45 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200402121745.GA29906@C02TD0UTHF1T.local>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
 <20200402113033.GD21087@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402113033.GD21087@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_051757_191002_5DA9A462 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 12:30:33PM +0100, Catalin Marinas wrote:
> On Mon, Mar 30, 2020 at 04:32:31PM +0200, Ard Biesheuvel wrote:
> > Could we make this a runtime thing? E.g., remap the entire linear
> > region down to pages under stop_machine() the first time we probe a
> > device that uses non-coherent DMA?
> 
> That could be pretty expensive at run-time. With the ARMv8.4-TTRem
> feature, I wonder whether we could do this lazily when allocating
> non-coherent DMA buffers.

It's worth noting that ARMv8.4-TTRem is optional and the "level 1" and
"level 2" behaviours still allows non-fatal faults to be taken while nT
is set (or until you perform the TLB invalidation). We can only safely
use it where we could use a full BBM sequence today.

Effectively TTRem is an optimized, where the CPU *might* be able to use
entries during the break stage, but is not guaranteed to do so.

Thanksm
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
