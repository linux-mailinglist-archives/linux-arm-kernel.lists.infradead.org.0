Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5A1DC9DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTmV9Npht/NwG2aweWnMYi84K2YoeVsfNssh0Qj2IlI=; b=HkXEtyy/MxkViV
	EO1eKCVxSbmF/3cfSNJgV3j1qZ+FWSWpvYKmkGTxwuQQ/I5rx3Og50R1Tq62wIQhQwDYYTCrGCYDT
	3EAb1KtypgW17EQAZFdvbl2vRwUXos0o1cRXDaBTWhim/jiGQdhileOGzu5UhDXDtDGK1ehFy1/fZ
	PXPN1aAkv7mLv0hqupY3WkahNKrjZITOcNoubir9plcg6OW0Ez2vcYV3vLhB4gpakTKGinW+6efSZ
	AFYmgFzcN3s4wR9EyOL630Iqm7vLXe/4hDLFBczMFkNgTRN/uCfxK5KOipGoAKMZNvIXc8yxebVgb
	gRdYSUtyqSLdbMOEwoBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhNF-0005ud-Nx; Thu, 21 May 2020 09:20:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhKj-00045g-1W
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 09:17:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76A19206BE;
 Thu, 21 May 2020 09:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590052664;
 bh=lrCsi5PPelpIf3uelRQPGB1wFFjJDgGZhs/G1Te3fZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DIlBfpyARv0vGa3tJkUPcxfnPdKc50TPwojk12d275MhOI1sRQ9w98/1yEf93mcvb
 fGzQMuJ4Yp96h/zonve+e907nxQne9iJCritIncVwG1NiNbA1b2Esh/dQWRpsOXRVg
 jffBqfWUGRvQ/Fh2FpTfyCE3CYN/FfRqGeJ2pHgM=
Date: Thu, 21 May 2020 10:17:39 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521091736.GA5091@willie-the-truck>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck>
 <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_021745_159342_EEE9EC5D 
X-CRM114-Status: GOOD (  22.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:06:23AM +0200, Arnd Bergmann wrote:
> On Thu, May 21, 2020 at 10:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > Indeed, it is also last patch in the series. However if Arnd is happy
> > with the sysfs names, we can move to generic code later without breaking
> > anything.
> >
> > We need not revert or drop it now. I will leave that to you or Arnd to
> > decide. Just that it may be too late to get acks for all the soc sysfs
> > drivers in time for v5.8
> >
> > I am fine if you want to drop the last patch.
> 
> Ok, let's drop that patch then and make sure we do something that
> everyone is happy with later on. I'm already in favor of adding
> a more reliable soc_device instance based on this, but we need to
> be sure we don't screw up the contents of the attributes when we
> can't change them later.
> 
> > > > >> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for function 'arm_smccc_version_init' [-Wmissing-prototypes]
> > > > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> > > > ^
> > > > drivers/firmware/smccc/smccc.c:14:1: note: declare 'static' if the
> > > > function is not intended to be used outside of this translation unit
> > > > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> > >
> > > I saw that when I applied the patches, but since the function is called from
> > > another compilation unit (psci/psci.o), I just ignored it as we have loads
> > > of these already and it only screams if you build with W=1.
> > >
> >
> > /me confused. Do you need the fix for this warning or you are happy to ignore?
> 
> I want a fix for that, as I hope we can eventually turn this warning on by
> default and stop playing whack-a-mole when they come up. Most of these
> warnings are harmless, but occasionally the prototypes don't match exactly
> and cause real bugs depending on the configuration, and ensuring both
> sides include a common header file is an easy way to make it work
> more reliably.
> 
> Note that the warning should come up for either W=1 or C=1, and I also
> think that
> new code should generally be written sparse-clean and have no warnings with
> 'make C=1' as a rule.

Fair enough. Is anybody working on a tree-wide sweep for this, like we've
done for other things such as zero-length arrays? If so, I can start
enforcing this in the arch code as well (I haven't been so far, even though
I do run sparse on every commit).

Anyway, I've dropped the last patch from the branch, and we can put a fix
for the missing prototype on top.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
