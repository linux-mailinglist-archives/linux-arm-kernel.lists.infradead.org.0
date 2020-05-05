Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E171C5CA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7n4JUr+PBXpSyFCveefcWemYS52K2NNZNtwwK1QH+Q=; b=GqsuWiGmILnE1w
	FFe3f/iTUb5Co8Y7Ps+O6PRg6mHLIzPWCMjqpSuVQGactb2KzZvrRTffGclFzdyZ4lT+F3R0Vb+q5
	2KS+BqSshzTQBRTAp+W7cqHqviDQgNykxTSE709r7WVREbVVGV2R2bcFaH5pcK77NoaZNaQKVi8d9
	Oi+wk+30A906xMXaYLcyoZARbWmlKJe7thPRyQwtRjX0gCFg+vJ6RCXhQfUAAPjMJcBEhvf6tivYT
	tIbyhBHpoBEVWWmbfs9jyl/x7GW3oM7mFxdLYPIkN1mfouOzP2GgC2DBkQEAHkwoJGExPlongLvcv
	jxmmy2ekBD8R2zQ4/IHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzt5-0004fm-Qf; Tue, 05 May 2020 15:53:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzso-0004aL-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:53:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA3551FB;
 Tue,  5 May 2020 08:53:20 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C52E53F68F;
 Tue,  5 May 2020 08:53:19 -0700 (PDT)
Date: Tue, 5 May 2020 16:53:17 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Message-ID: <20200505155317.GO30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
 <20200505152658.GL1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505152658.GL1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_085322_464427_8C137157 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-man@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:26:58PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, May 05, 2020 at 04:24:39PM +0100, Dave Martin wrote:
> > The arm OABI syscall interface is currently documented in terms of
> > register name aliases defined by the ARM Procedure Call Standard
> > (APCS).  However, these don't make sense in the context of a binary
> > interface that doesn't comply (or need to comply) with APCS.
> > 
> > Use the real architectural register names instead.
> > 
> > The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> > the interface is just the same regardless of which set of names is
> > used.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Thanks Dave,
> 
> Acked-by: Russell King <rmk+kernel@armlinux.org.uk>

Thanks!
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
