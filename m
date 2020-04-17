Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F741AE071
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Aw/t8ZI7KDEg7plcFkS0sEMxHj2bdkWwS2FN9oiXtU=; b=XIDKjlCcM9Ttbn
	cEGAMWFiOVs8tWbNXhE6SmJrDZplmRFthkLOnTQTkaa2bKAn6zT2MgX2TUgb9QF9aDNP8WrkITmdG
	Tn6QIm+IFc92GHehZO6fjzcJjm0agp3NLt/Ih9kMv4pDPLywd9ehKbYgIH7Azmiv0WAJvSPWKR+Pw
	tsWTGKLGlZD3Guczm4trFdZhg9Tgw+Pm+MZP94tajsWrywn0aI3TqxTsKJutlxc4EWB56ohdAHqJG
	JpCCRKgVdNlVaEQVTkO7Z4TKiliivKufZNP+EFAioDqCpjStz7a0Uj04S4eIDIhkmv5saxS5XqK9h
	LJOdVQzkenEVoJ375Wkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSZL-0008FJ-35; Fri, 17 Apr 2020 15:06:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSZC-0008Dt-Mx
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:06:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6BA320857;
 Fri, 17 Apr 2020 15:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587135966;
 bh=VD3NiQgcjY0DUGZAjRsEC+ytO3vlZSGq4k2zQEHZ9AA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O49ELBs/WQwrUBMUrrWH4KUCznZ97VVDgy2iJ4DWXor8xO8MHIdT4DU86vRFhhNR6
 N2JtD2m1ZBMRnc4vrajOj2f438b4/hQbXGP+fXuoconP7Ok+MOgGQKWCHg72xCfulK
 kBvzxccuHjPTkz0ZqdO/vA4B7W0w2Grr+LCLnD2w=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPSZA-004DB1-9N; Fri, 17 Apr 2020 16:06:04 +0100
Date: Fri, 17 Apr 2020 16:06:02 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Zengtao (B)" <prime.zeng@hisilicon.com>
Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
Message-ID: <20200417160602.26706917@why>
In-Reply-To: <3e84aaf8b757bc5a7685a291e54c232b@kernel.org>
References: <MN2PR18MB26869A6CA4E67558324F655CC5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
 <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED342E29B9@dggemm526-mbx.china.huawei.com>
 <86r1wus7df.wl-maz@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED3A535FCF@DGGEMM506-MBX.china.huawei.com>
 <3e84aaf8b757bc5a7685a291e54c232b@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: prime.zeng@hisilicon.com, gcherian@marvell.com,
 Dave.Martin@arm.com, alexandru.elisei@arm.com, andre.przywara@arm.com,
 christoffer.dall@arm.com, james.morse@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com, areddy3@marvell.com, gkulkarni@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_080606_787433_BDC2A146 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvmarm@lists.cs.columbia.edu, Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, andre.przywara@arm.com,
 christoffer.dall@arm.com, jintack@cs.columbia.edu,
 George Cherian <gcherian@marvell.com>, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, Anil Kumar Reddy H <areddy3@marvell.com>,
 alexandru.elisei@arm.com, Dave.Martin@arm.com, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 19:22:21 +0100
Marc Zyngier <maz@kernel.org> wrote:

> Hi Zengtao,
> 
> On 2020-04-16 02:38, Zengtao (B) wrote:
> > Hi Marc:
> > 
> > Got it.
> > Really a bit patch set :)  
> 
> Well, yeah... ;-)
> 
> > 
> > BTW, I have done a basic kvm unit test
> > git://git.kernel.org/pub/scm/virt/kvm/kvm-unit-tests.git
> > And I find that after apply the patch KVM: arm64: VNCR-ize ELR_EL1,
> > The psci test failed for some reason, I can't understand why, this
> > is only the test result.(find the patch by git bisect + kvm test)  
> 
> That it is that mechanical, we should be able to quickly nail that one.
> 
> > My platform: Hisilicon D06 board.
> > Linux kernel: Linux 5.6-rc6 + nv patches(some rebases)
> > Could you help to take a look?  
> 
> I'll have a look tomorrow. I'm in the middle of refactoring the series
> for 5.7, and things have changed quite a bit. Hopefully this isn't a VHE
> vs non-VHE issue.

So I've repeatedly tried with the current state of the NV patches[1],
on both an ARMv8.0 system (Seattle) and an ARMv8.2 pile of putrid junk
(vim3l). PSCI is pretty happy, although I can only test with at most 8
vcpus (GICv2 gets in the way).

Can you please:

- post the detailed error by running the PSCI unit test on its own
- test with the current state of the patches

Thanks,

	M.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=kvm-arm64/nv-5.7-rc1-WIP
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
