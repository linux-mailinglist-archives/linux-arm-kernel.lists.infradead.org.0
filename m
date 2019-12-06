Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39BE114FFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jVjUYTIK2pCHdNn/FZ8oMxgFHF49EszjBg/HYrKXUE=; b=O2poDRC44Cc48r
	mBcWMOG/LKvFYiXWiI6hTH3CzPzdn8nyiSFvBHALPIg6DHwzaMxzF2L0biYAg+7/gSk3BqNeEu1QH
	hFH//e7HbOQb7FRKX0LE3E5IcIMTrRZ5d53fwMXhgbKFTeWbF5yugMowyVPdI6QAZ8I416+O7cJ+g
	mZiBQyU6QpG/0D0qsJUWfo870n8ZZzhWdxKLIa7oR3XoTgPhAYEnYQW+gqrEID0e3XRP4vmtbZVMR
	IKTA/Dfl0HzFWlnHO1L2jGmHJpsUrMjD8ktK9W4+K7gKae0IPVcaKi1wSbptiAfZWLHl7HaPrh9v0
	RPKQ2zNAWQVvRWNLlm0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC4s-0005LA-Mm; Fri, 06 Dec 2019 11:47:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC4S-0005AZ-DN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:46:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B23831B;
 Fri,  6 Dec 2019 03:46:51 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4565B3F52E; Fri,  6 Dec 2019 03:46:50 -0800 (PST)
Date: Fri, 6 Dec 2019 11:46:48 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] arm64: KVM: Invoke compute_layout() before
 alternatives are applied
Message-ID: <20191206114647.GB32767@arrakis.emea.arm.com>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
 <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
 <5aae0e8248df45c3f4c08a8bb5aabe06@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5aae0e8248df45c3f4c08a8bb5aabe06@www.loen.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034652_521097_0F7775BB 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 11:22:02AM +0000, Marc Zyngier wrote:
> On 2019-11-28 19:58, Sebastian Andrzej Siewior wrote:
> > compute_layout() is invoked as part of an alternative fixup under
> > stop_machine(). This function invokes get_random_long() which acquires a
> > sleeping lock on -RT which can not be acquired in this context.
> > 
> > Rename compute_layout() to kvm_compute_layout() and invoke it before
> > stop_machine() applies the alternatives. Add a __init prefix to
> > kvm_compute_layout() because the caller has it, too (and so the code can
> > be
> > discarded after boot).
> > 
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> Acked-by: Marc Zyngier <maz@kernel.org>
> 
> I think this should go via the arm64 tree, so I'll let Catalin
> and Will pick this up (unless they think otherwise).

I can pick this up. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
