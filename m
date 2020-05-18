Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009231D7715
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TiqsQaca9sHJfvqE3KUXNXIOfodwvQMOJaKy0cBZEc=; b=iC+a+AshunlebO
	3rz8d8/Y6sBwoTMJQybf6wiO152rwK+p8H6EIqHUxBF7bs5wfaODNfm/vWObRL6xVkfo082mhYvV5
	VB71b4n/1z7kut7zByYP/wuhXbsnN28mPMucqXk1MuYSgCIbtnGD4Gm6h/3521jaLx2FCzmmi3QhC
	1m3zB2GA5NU+YwevRFq+L8fxDcqps4voMif2Mqhb9+ZVfnPxaOd+JHtdRvT/h4SvsRiuIpmUOiEPx
	ChhGMCFtTTZryQoMRAFxQrRQukXvP22DHZ+lCNcrIR93aTprKTOM+Keq5xlh7Hsv6DWxWWqG9IdI3
	66729vVRFfExH3s9Z5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadzM-0000qJ-8H; Mon, 18 May 2020 11:31:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadzB-0000pt-B7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:31:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8B0920756;
 Mon, 18 May 2020 11:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589801468;
 bh=mA5LuL+NZ4U22EpIeu1yY/QuHzmG+4ZlK35nDxAZ3lY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XF7NkBh2RpP7Djhlw6gtpIkyVTqRimk+VriVrbaCTcWm/aslkIwjKrKCrs5T2jQ4v
 B9xYMQiqzJR3hkd0a/BLad5a4SW3AkDSXqzrObZQ4NfAO9jrtvsYsOiJ/lEIeuhY3z
 c01YbNXnW0VfZBr3F1izfcNFuOr49q89HEZl1o5I=
Date: Mon, 18 May 2020 12:31:03 +0100
From: Will Deacon <will@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200518113103.GA32394@willie-the-truck>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_043109_407280_63228DDB 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > For performance analysis it may be desirable to disable MTE altogether
> > via an early param. Introduce arm64.mte_disable and, if true, filter out
> > the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
> > user.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> > 
> > Notes:
> >     New in v4.
> > 
> >  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
> >  arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
> >  2 files changed, 15 insertions(+)
> > 
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index f2a93c8679e8..7436e7462b85 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -373,6 +373,10 @@
> >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> >  			Format: <io>,<irq>,<nodeID>
> >  
> > +	arm64.mte_disable=
> > +			[ARM64] Disable Linux support for the Memory
> > +			Tagging Extension (both user and in-kernel).
> > +
> 
> Should it really to take parameter (on/off/true/false)? It may lead to expectation
> that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?

I don't think "performance analysis" is a good justification for this
parameter tbh. We don't tend to add these options for other architectural
features, and I don't see why MTE is any different in this regard.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
