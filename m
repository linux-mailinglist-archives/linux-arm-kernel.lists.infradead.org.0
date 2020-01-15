Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E7C13BD3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJg+YoOCaieBti8U4OypTiAu61zPylznyAETwQHq5QA=; b=E6jE2k0rJrDQGb
	wXWNQjc6v8iSoeJIC9DKRH9er7w3N6mmaMOEtfhgOnOmMS7KgyjwL2fVQBB/3GbjocqyiZHlG4pHV
	owwqKgUCBu0PnPoPsoR3g/g52JMMbC7TVmZVuMgUS+ls95z4YdfPN4uVUv9jz39aOznljAA+wH6Z2
	5Dudt7/iDCqxP2/He5cQaERfoKyVsswZWhElgaMlZibhJ9fhjBoxKvAWz+Yf7l7lM+hA3XqCUTMQT
	OfQYnrtFa7w0y3gughv9fXysRC0gvUXAX84BSob+vSOzanAJ1t4TbT4iaSKLoB2DV+DR54IPWLUny
	KfAMM25ogUSJwVXyMrKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfkA-0002Dn-PD; Wed, 15 Jan 2020 10:17:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfjx-0002CY-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:17:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC0F031B;
 Wed, 15 Jan 2020 02:17:32 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA53D3F6C4;
 Wed, 15 Jan 2020 02:17:31 -0800 (PST)
Date: Wed, 15 Jan 2020 10:17:29 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: cpufeature: Export matrix and other features
 to userspace
Message-ID: <20200115101729.GB32549@lakrids.cambridge.arm.com>
References: <20191216113337.13882-1-steven.price@arm.com>
 <20200115094916.GC21692@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115094916.GC21692@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_021734_058086_0C2A2F84 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: julien@xen.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 09:49:17AM +0000, Will Deacon wrote:
> On Mon, Dec 16, 2019 at 11:33:37AM +0000, Steven Price wrote:
> > Export the features introduced as part of ARMv8.6 exposed in the
> > ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1 registers. This introduces the
> > Matrix features (ARMv8.2-I8MM, ARMv8.2-F64MM and ARMv8.2-F32MM) along
> > with BFloat16 (Armv8.2-BF16), speculation invalidation (SPECRES) and
> > Data Gathering Hint (ARMv8.0-DGH).
> > 
> > Signed-off-by: Julien Grall <julien.grall@arm.com>
> > [Added other features in those registers]
> > Signed-off-by: Steven Price <steven.price@arm.com>
> > ---
> > This is a v2 of Julien's patch[1] extended to export all the new
> > features contained within the ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1
> > registers.
> > 
> > [1] https://lore.kernel.org/linux-arm-kernel/20191025171056.30641-1-julien.grall@arm.com/
> > 
> >  Documentation/arm64/cpu-feature-registers.rst | 16 ++++++++++
> >  Documentation/arm64/elf_hwcaps.rst            | 31 +++++++++++++++++++
> >  arch/arm64/include/asm/hwcap.h                |  8 +++++
> >  arch/arm64/include/asm/sysreg.h               | 12 +++++++
> >  arch/arm64/include/uapi/asm/hwcap.h           |  8 +++++
> >  arch/arm64/kernel/cpufeature.c                | 20 ++++++++++++
> >  arch/arm64/kernel/cpuinfo.c                   |  8 +++++
> >  7 files changed, 103 insertions(+)
> > 
> > diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> > index b6e44884e3ad..5382981533f8 100644
> > --- a/Documentation/arm64/cpu-feature-registers.rst
> > +++ b/Documentation/arm64/cpu-feature-registers.rst
> > @@ -200,6 +200,14 @@ infrastructure:
> >       +------------------------------+---------+---------+
> >       | Name                         |  bits   | visible |
> >       +------------------------------+---------+---------+
> > +     | I8MM                         | [55-52] |    y    |
> > +     +------------------------------+---------+---------+
> > +     | DGH                          | [51-48] |    y    |
> > +     +------------------------------+---------+---------+
> > +     | BF16                         | [47-44] |    y    |
> > +     +------------------------------+---------+---------+
> > +     | SPECRES                      | [43-40] |    y    |
> > +     +------------------------------+---------+---------+
> 
> I applied this for CI testing last night, but actually I think it's broken.
> AFAICT, the instructions introduced by SPECRES are behind an SCTLR_EL1
> enable (EnRCTX) which defaults to disabled, so we should either be enabling
> them before setting the HWCAP or not exposing them at all.
> 
> Given that the instructions are not broadcast and are likely to be very
> expensive, I don't think that exposing them to EL0 is a good idea.
> 
> In other words, I'll drop the SPECRES parts from this patch. Sound ok?

I completely agree. We deliberately avoided adding SPECRES for those
reasons previously:

  https://lore.kernel.org/r/20191212144633.GE46910@lakrids.cambridge.arm.com

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
