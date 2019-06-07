Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FEC38F76
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8rR9x3PwFjB6j4KPGwTq4bnoQwWt3a+Pgbwa++BMVw=; b=kBR4soyZNkhigJ
	Kf5Ae8boyhyBS7W3dm4xPoN1aZkJBBDL/w+25bKp1d6AGhPTauuI7O+yND1C+mCtNd+4zOidrBKFw
	dRZQRymb+RGepIrB1GluiAH5PXMQThmtsFNBnd3YDCw+HyY9WFR3GUgBvTEVYm7wL54UCkvfiHYRp
	jJodcdko4ItndxkVon13I7OmntmJgiV0kzexNmIIglVvK6N/y5jqOKvCa94Y98tf185PV3qM/Lrz6
	8uEXL51LZWGPeDDQYjw0/9PSNTYxTPACDPiJaLgYz6B1vmh6Y3TuIIup3BxREdMHswDfvKHtDBkdq
	QeUB8v2SNdY422CE0NIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZH0D-0005F9-TD; Fri, 07 Jun 2019 15:42:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZH04-0005EH-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:41:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D456C337;
 Fri,  7 Jun 2019 08:41:50 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98B363F718;
 Fri,  7 Jun 2019 08:41:49 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:41:47 +0100
From: Will Deacon <will.deacon@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: "arm64: Silence gcc warnings about arch ABI drift" breaks clang
Message-ID: <20190607154147.GD19862@fuggles.cambridge.arm.com>
References: <1559920965.6132.56.camel@lca.pw>
 <20190607152517.GC19862@fuggles.cambridge.arm.com>
 <1559921171.6132.57.camel@lca.pw>
 <20190607154010.GA41392@archlinux-epyc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607154010.GA41392@archlinux-epyc>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_084152_090189_80E05914 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 08:40:10AM -0700, Nathan Chancellor wrote:
> On Fri, Jun 07, 2019 at 11:26:11AM -0400, Qian Cai wrote:
> > On Fri, 2019-06-07 at 16:25 +0100, Will Deacon wrote:
> > > On Fri, Jun 07, 2019 at 11:22:45AM -0400, Qian Cai wrote:
> > > > The linux-next commit "arm64: Silence gcc warnings about arch ABI drift" [1]
> > > > breaks clang build where it screams that unknown option "-Wno-psabi" and
> > > > generates errors below,
> > > 
> > > So that can be easily fixed with cc-option...
> > > 
> > > > [1] https://lore.kernel.org/linux-arm-kernel/1559817223-32585-1-git-send-ema
> > > > il-D
> > > > ave.Martin@arm.com/
> > > > 
> > > > ./drivers/firmware/efi/libstub/arm-stub.stub.o: In function
> > > > `install_memreserve_table':
> > > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > > > `__efistub___stack_chk_guard'
> > > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > > > `__efistub___stack_chk_guard'
> > > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > > > `__efistub___stack_chk_guard'
> > > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > > > `__efistub___stack_chk_guard'
> > > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:94: undefined reference to
> > > > `__efistub___stack_chk_fail
> > > 
> > > ... but this looks unrelated. Are you saying you don't see these errors if
> > > you revert Dave's patch?
> > 
> > Yes.
> 
> I suspect the reason for this is -Wunknown-warning-option causes
> cc-option to fail. I see some disabled warnings like
> -Waddress-of-packed-member and -Wunused-const-variable when -Wno-psabi
> is unconditionally added.
> 
> I'll do some further triage but I think the obvious fix as Will
> suggested is to use cc-disable-warning. I'll send a patch.

Cheers, Nathan. I've already sent the pull for -rc4, but I can send your
fix for -rc5 next week.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
