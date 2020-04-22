Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABED21B4BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BDAvCw8Y+ypEQd/Sc/DY5gOSidk1qIA3BOhyvHylDE=; b=r0MSLrH3P/SP/n
	rbUfsop5ulGnPSmzn8duIB0/kavPPkoYYRuV9ljDLbVBSY4yTg57+BQiwazJgn1ORvp/wuXcobPWn
	l5D+z13QHeZh7CyCLwO85MnQzZy+NrZ22SCkynRVGiYkk49YogbGZnBnOfriiHatCDKB9tWEaNtOb
	H4nbW5k1+beXf0lSYFyXDHM7/U+c9B2pu8CB6aEtfsSuOtE4VNcQsl74uJ7bg2GG1pDeSXxqItX4b
	hC+QZ2XVW4rT1d+/DeM1DC0Fyqhg/u+3BVydpzjipkAGVfAAR833JuDmU4wKVcKobKX8U5eA0EHAL
	mN6ctPaEDuTndkOkfdWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJAE-0007fo-Me; Wed, 22 Apr 2020 17:27:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJA4-0007f8-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:27:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5E701FB;
 Wed, 22 Apr 2020 10:27:47 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AEBA3F6CF;
 Wed, 22 Apr 2020 10:27:46 -0700 (PDT)
Date: Wed, 22 Apr 2020 18:27:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Make NOP handling a whitelist
Message-ID: <20200422172743.GG3585@gaia>
References: <20200324194822.15682-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324194822.15682-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_102748_784714_1515DE2E 
X-CRM114-Status: GOOD (  11.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:48:19PM +0000, Mark Brown wrote:
> Currently we default to assuming any unrecognized instruction in the
> hint space can be safely handled as a NOP.  This is not robust and any
> code that really wants a NOP should be using the explicitly defined NOP
> so let's instead invert this and whitelist those instructions which it
> is safe to handle as NOPs.
> 
> Mark Brown (3):
>   arm64: insn: Don't assume unrecognized HINTs are NOPs
>   arm64: insn: Add constants for PAC and BTI instruction decode
>   arm64: insn: Report PAC and BTI instructions as NOPs
> 
>  arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
>  arch/arm64/kernel/insn.c      | 32 ++++++++++++++++++++++++--------
>  2 files changed, 44 insertions(+), 10 deletions(-)

IIRC, we concluded [1] there is no problem for PAC and BTI instruction
in the NOP space. For this series:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

[1] https://lore.kernel.org/linux-arm-kernel/20200312184211.GA3849205@arrakis.emea.arm.com/

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
