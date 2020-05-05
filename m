Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CF71C5531
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4aQwUB9XZ6N/XRZaCJ2RpERBKjVxgZYrnkTvkvniA24=; b=hzuF47jFejQLF6
	hjmLcQKl9f42mlEbagEMaDpHcSG6IFit/MuZP137pwdLebKgCaw/xCNPPbWISXWNreAKStdmSkvqc
	vjWK/7rcoQoHjnTSLy9jPSs+yMWYC0NXjWOqLXa06KzEBnLoHXBIhetbvQliAcD1KwnASMHXHdO8H
	mdB6Qa9ZPPiidaJB4BvCxVvkmeFdnEXcIxZl/3V2HNggotQPryifHdQQAXL+k75DmPfeKQ1P34Lv7
	lO9QSslJtMPyNPYIFKOmKQNnTgPwP70bsRDtCwt9MSRLwVC8Cz5/TZDrgsAJbmcRrfXvye5a/krG8
	yhPYTEk4iPxrF+TDzLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwRR-0005KA-M5; Tue, 05 May 2020 12:12:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwRJ-0005JJ-By
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:12:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3463E206A4;
 Tue,  5 May 2020 12:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588680764;
 bh=lRSSmIip0z2BoR+RQ+3hQQVFRY5K07HxlK441PUvO4w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vvd6pPIdmUOLnPSSOEbgshPimjHlXn8Jb0pT005eaNVQM/O1gReGl7Hz3fjulp0N9
 2HhwCwhWBvnLs/L1MlRsx2W3CcZZ2qWetwd9To2K5swDT65NzY4tKUWS8kpBYA19l4
 +ZuM12CP6wKprD2xtAJnC4YlWJo3Av3GWnxT/Gmo=
Date: Tue, 5 May 2020 13:12:39 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH V3 04/16] arm64/cpufeature: Introduce ID_PFR2 CPU register
Message-ID: <20200505121239.GI19710@willie-the-truck>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-5-git-send-email-anshuman.khandual@arm.com>
 <20200505111241.GF19710@willie-the-truck>
 <20200505111607.GA82823@C02TD0UTHF1T.local>
 <20200505112718.GH19710@willie-the-truck>
 <20200505115054.GC82823@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505115054.GC82823@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_051245_448172_FCC27FA7 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:50:54PM +0100, Mark Rutland wrote:
> On Tue, May 05, 2020 at 12:27:19PM +0100, Will Deacon wrote:
> > On Tue, May 05, 2020 at 12:16:07PM +0100, Mark Rutland wrote:
> > > On Tue, May 05, 2020 at 12:12:41PM +0100, Will Deacon wrote:
> > > > On Sat, May 02, 2020 at 07:03:53PM +0530, Anshuman Khandual wrote:
> > > > > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > > > > index e5317a6367b6..c977449e02db 100644
> > > > > --- a/arch/arm64/include/asm/sysreg.h
> > > > > +++ b/arch/arm64/include/asm/sysreg.h
> > > > > @@ -153,6 +153,7 @@
> > > > >  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
> > > > >  #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
> > > > >  #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
> > > > > +#define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
> > > > 
> > > > nit: but please group these defines by name rather than encoding.
> > > 
> > > So far we've *always* grouped these by encoding in this file, so can we
> > > keep things that way for now? Otherwise we're inconsistent with both
> > > schemes.
> > 
> > Hmm, but it's really hard to read sorted that way and we'll end up with
> > duplicate definitions like we had for some of the field offsets already.
> 
> I appreciate that, and don't disagree that the current scheme is not
> obvious.
> 
> I just want to ensure that we don't make things less consistent, and if
> we're going to change the scheme in order to make that easier, it should
> be a separate patch. There'll be other changes like MMFR4_EL1, and we
> should probably add a comment as to what the policy is either way (e.g.
> if we're just grouping at the top level, or if that should be sorted
> too).

Ok, I added a comment below.

Will

--->8

commit be7ab6a6cdb0a6d7b10883094c2adf96f5d4e1e8
Author: Will Deacon <will@kernel.org>
Date:   Tue May 5 13:08:02 2020 +0100

    arm64: cpufeature: Group indexed system register definitions by name
    
    Some system registers contain an index in the name (e.g. ID_MMFR<n>_EL1)
    and, while this index often follows the register encoding, newer additions
    to the architecture are necessarily tacked on the end. Sorting these
    registers by encoding therefore becomes a bit of a mess.
    
    Group the indexed system register definitions by name so that it's easier to
    read and will hopefully reduce the chance of us accidentally introducing
    duplicate definitions in the future.
    
    Signed-off-by: Will Deacon <will@kernel.org>

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 2dd3f4ca9780..194684301df0 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -105,6 +105,10 @@
 #define SYS_DC_CSW			sys_insn(1, 0, 7, 10, 2)
 #define SYS_DC_CISW			sys_insn(1, 0, 7, 14, 2)
 
+/*
+ * System registers, organised loosely by encoding but grouped together
+ * where the architected name contains an index. e.g. ID_MMFR<n>_EL1.
+ */
 #define SYS_OSDTRRX_EL1			sys_reg(2, 0, 0, 0, 2)
 #define SYS_MDCCINT_EL1			sys_reg(2, 0, 0, 2, 0)
 #define SYS_MDSCR_EL1			sys_reg(2, 0, 0, 2, 2)
@@ -140,6 +144,7 @@
 #define SYS_ID_MMFR1_EL1		sys_reg(3, 0, 0, 1, 5)
 #define SYS_ID_MMFR2_EL1		sys_reg(3, 0, 0, 1, 6)
 #define SYS_ID_MMFR3_EL1		sys_reg(3, 0, 0, 1, 7)
+#define SYS_ID_MMFR4_EL1		sys_reg(3, 0, 0, 2, 6)
 
 #define SYS_ID_ISAR0_EL1		sys_reg(3, 0, 0, 2, 0)
 #define SYS_ID_ISAR1_EL1		sys_reg(3, 0, 0, 2, 1)
@@ -147,7 +152,6 @@
 #define SYS_ID_ISAR3_EL1		sys_reg(3, 0, 0, 2, 3)
 #define SYS_ID_ISAR4_EL1		sys_reg(3, 0, 0, 2, 4)
 #define SYS_ID_ISAR5_EL1		sys_reg(3, 0, 0, 2, 5)
-#define SYS_ID_MMFR4_EL1		sys_reg(3, 0, 0, 2, 6)
 #define SYS_ID_ISAR6_EL1		sys_reg(3, 0, 0, 2, 7)
 
 #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
