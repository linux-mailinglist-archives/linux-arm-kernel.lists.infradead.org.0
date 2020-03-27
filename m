Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F792195D50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 19:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snCetNuqJcpK/MubfkBT3H4LLvGJePDIY0K/iGrPq4c=; b=q7MEB+k9R5Jh27
	NJUj+MT/rS2VZqcP8DCBHir/+0tyomFnTCwhDhQc9O2SzXSfzuSH/9s9GmDRUE3eykDOCkKjeISRF
	OwrV3PaGahdTfg8f2AqnCKbgzbe1fWxq8rsJ788SI4bnARLSF5jrJnpUr/Z6azqdd2cswcQ3Wjb3c
	uKMJK+LB+V3GUpvdfrbSpzHrM5r/kObpcp/PMk9BB6MkP2GluGngEEk+Vh0Z8x6SP2/lfD1QmewPA
	QToBzHqnKL+yAmJyShKqeRsx+TXjHOsqGU+EtBK3srdElzTdwm+cdX6n4UG6gFflADRW/Qm5jXHei
	3dC4tEYcJhibwbEqBpLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtQ8-0008Ht-T5; Fri, 27 Mar 2020 18:09:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtQ0-0008HI-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 18:09:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 035BD2071B;
 Fri, 27 Mar 2020 18:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585332560;
 bh=zhwEDwgqijCCf3Yv/ZISrfo5qqO4vWvdB2ey3n6lsEk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wQOLuOxy5Ad8+KKPsUNDjk0Gb6uM/3sfbIfZrQKmvj3s2f90PnU1B81WnGKSNn45f
 AL4udLBPyCJWoDLrZGzdKVOK0TPQ0wGbBOGtZu3r2VRdMwVekHRFY4YJF5YVnB10gN
 oaZDTLzOvvN+uR4uRET0a/blE6hsiw0ROVR6dF8o=
Date: Fri, 27 Mar 2020 18:09:14 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200327180913.GA10454@willie-the-truck>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200327174838.GD178422@google.com>
 <e280f3f31bd5edc9db55757fcfa4ec62@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e280f3f31bd5edc9db55757fcfa4ec62@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_110920_485240_9B7DEA79 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: qwandor@google.com, qperret@google.com,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, tabba@google.com,
 Steven Price <steven.price@arm.com>, wedsonaf@google.com,
 Andrew Scull <ascull@google.com>, James Morse <James.Morse@arm.com>,
 dbrazdil@google.com, kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 05:52:59PM +0000, Marc Zyngier wrote:
> On 2020-03-27 17:48, Andrew Scull wrote:
> > Thanks, Steven. Could we look into the EPD* caching microarch details
> > Marc was referring to for these A55 and A76 cores?
> 
> Only the folks that have access to the RTL can tell you, unfortunately.
> 
> Thankfully, there is a bunch of people on Cc that should be able to ping
> the relevant teams and report back...

Yup, otherwise I guess we can throw in the TLB invalidation after setting
the EPDx bits until we have clarity from Arm. We wouldn't need to broadcast
it, so it might not be too bad on performance. If it is, I suppose we could
switch to a reserved VMID?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
