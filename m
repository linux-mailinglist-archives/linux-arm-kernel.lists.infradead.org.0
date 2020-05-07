Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFBB1C8CC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDQZu4HSK8B+UWPSpbYYWHXUnaUeu4WZBtfsQSoBR6M=; b=lDaxFR4kb80Bxk
	JTYip65uhioYzYqDqhkov7MBfyjgthPAye45Y7klpNDxRBpFpF9etE/V9HAnJeCYMeGCKSx8Phi2D
	T4mvhTh5qaUPRNKlrCSmBKLE6/g88DFKz7QS9GIidDuwcssoO6PVbKz2dfaDhlI3zrcd/pP7i1Yx+
	+nIAHX1Do6FmFzupIU/W+wAcJZSH9+V28FsLkwJ+KYUErI98ezvxt+TvGrHg6oontNZETRpxYCRUp
	wNjOMYy54u0V3rQC1vinj+zPNriQJbkVDWxjCk20C1Alp26bzMdy7nhP1StPLvJ36VG/UskYW0nRF
	xtYR1oVQG4SPzb+L4ZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgnx-0006oS-D9; Thu, 07 May 2020 13:43:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgnq-0006nj-UT
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:43:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84614D6E;
 Thu,  7 May 2020 06:43:03 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5E993F68F;
 Thu,  7 May 2020 06:43:02 -0700 (PDT)
Date: Thu, 7 May 2020 14:43:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200507134259.GA3180@gaia>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
 <20200402113033.GD21087@mbp>
 <CAMj1kXGLMWqTHbWftoAq=WdVqyf+i=6SvsMogzWHh6SL3b=4sQ@mail.gmail.com>
 <20200505104404.GB19710@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505104404.GB19710@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_064307_025695_59B58124 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:44:06AM +0100, Will Deacon wrote:
> Catalin -- did you get anything back from the architects about the cache
> hit behaviour?

Any read from a non-cacheable alias would be coherent with writes using
the same non-cacheable attributes, irrespective of other cacheable
aliases (of course, subject to the cache lines having been previously
cleaned/invalidated to avoid dirty lines evictions).

So as long as the hardware works as per the ARM ARM (B2.8), we don't
need to unmap the non-cacheable DMA buffers from the linear map.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
