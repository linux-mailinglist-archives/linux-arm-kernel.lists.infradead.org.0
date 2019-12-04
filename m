Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF83F112D6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5p5Trerb5i+1WkFphPWV3gnQIquULolOLadVdZL7tug=; b=lF8MrxxaLNfNBy
	R7MTnHe4hgtDQ4R4EtBMw+ohH952Is12Arbh2V5LdLok1gwW/cp9itXji7LS8ggJ0e2ctRT/MCkSC
	Gfatr2pLGDi3nJC+qkOd+DbIXyrO58m0NoYgNGzpW9dlXOkwsHGDreozaY/Q0b7dICkUpYggZ3Xeg
	+yK9xTABqCgsR4/mVYcUr489zhxjt21gFPuFOQRSO1KSS7mbJgegKiAuFm0zCu79Zr1Vy1nofjDyR
	3M+7ss2lnyOYcyZJtAopbOd+u4c2ToqRpqJAsBOhoLS/Om6lnMpJ2lFKkKkaFScupn2LdKRCLLUrf
	wRaL0c/sECpOAGVx1KLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVdr-0004r2-PC; Wed, 04 Dec 2019 14:28:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVdk-0004qj-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:28:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 822D41FB;
 Wed,  4 Dec 2019 06:28:27 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D1F343F68E; Wed,  4 Dec 2019 06:28:26 -0800 (PST)
Date: Wed, 4 Dec 2019 14:28:24 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jerome Forissier <jerome@forissier.org>
Subject: Re: Kernel v5.2+ on HiKey960?
Message-ID: <20191204142824.GB26730@arrakis.emea.arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_062828_621998_5FD20661 
X-CRM114-Status: GOOD (  18.36  )
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 02:15:48PM +0100, Jerome Forissier wrote:
> On 12/4/19 11:18 AM, Catalin Marinas wrote:
> > On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
> >> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
> >>
> >> For some reason, anything past v5.1 doesn't work for me and I could not
> >> figure out why. The symptom is it never gets to the login prompt. The
> >> root FS is a Buildroot-generated one, and prior to reaching the kernel
> >> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
> >>
> >> I tried replacing /init with a shell, in which case I can type a command
> >> but whatever it is (even a simple "ls"), the command hangs on exit and I
> >> never get back to the prompt.
> >>
> >> Then I started bisecting, that was quite painful but I found several
> >> problematic commits. I ended up reverting the following (in this order)
> >> to be able to boot v5.4:
[...]
> 75a19a0202db is the first bad commit. Its parent: commit 2f1d4e24d91b
> ("firmware: arm_sdei: Prohibit probing in '_sdei_handler'") boots fine
> [2]. Since reverting 75a19a0202db in v5.2 does not work, I suspect we're
> dealing with multiple problems. As I said, the set of reverts above is
> the best I could figure out, and believe me I spent several days trying
> to troubleshoot this :-/ (that being said, I know nothing about the VDSO
> or the arch timer so I could not try anything meaningful other than
> reverting some commits).

Thanks. There could as well be multiple issues. Since commit
75a19a0202db is cc stable, could you please apply it on top of 5.1 and
see if it fails? I don't have a HiKey960 at hand to try this.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
