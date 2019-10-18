Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDEADBF09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 09:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuiH25Qg3kqw/zV/NPUkPeaGEnmT8IHi7eAdMmeS/B8=; b=Cc364VuXndV8ih
	IONnh6eyLI9nh3OCb120vDYe6V2OF0HCDAwgZNHwU9uW01cZcYg5qep30Y003/5yPjWGs8RLI10Y3
	xrKAFfN/dwOgcNV5Sh/SwhrQJINgG4pgrFLG8m6fmnIhOmlkAxtBJUZqtoAOqASaokUUV8WkPuN9w
	a8aVg76zPwX6WA9iskAAMw43gR+AiOMaFTuK+lIXVlVsl/mGA6jBa9OJpL2yoHQ5Cic7Xam/iU32Z
	4KM/Ae1bVFWnzO+dChBId57yayxJRj6li2qKauTyyS0bt4uI3je4zQtmEzr42tVKr6rzyKuwi6d6w
	c+mVhMsv1KVe3VwjE2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLN63-0001vp-Vv; Fri, 18 Oct 2019 07:54:52 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLN5r-0001u6-O6
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 07:54:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8E843BB;
 Fri, 18 Oct 2019 00:54:25 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 328193F718; Fri, 18 Oct 2019 00:54:25 -0700 (PDT)
Date: Fri, 18 Oct 2019 08:54:23 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/8] arm64: Optimise and update memcpy,	user copy and
 string routines
Message-ID: <20191018075422.GB19734@arrakis.emea.arm.com>
References: <cover.1571073960.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1571073960.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_005439_829129_381FDF49 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: sam.tebbs@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Tue, Oct 15, 2019 at 04:49:55PM +0100, Robin Murphy wrote:
> Robin Murphy (1):
>   arm64: Tidy up _asm_extable_faultaddr usage
> 
> Sam Tebbs (7):
>   arm64: Allow passing fault address to fixup handlers
>   arm64: Import latest Cortex Strings memcpy implementation
>   arm64: Import latest version of Cortex Strings' memcmp
>   arm64: Import latest version of Cortex Strings' memmove
>   arm64: Import latest version of Cortex Strings' strcmp
>   arm64: Import latest version of Cortex Strings' strlen
>   arm64: Import latest version of Cortex Strings' strncmp

Apart from the kprobes build failure (patch available already), I found
two more:

- with CONFIG_KASAN enabled:

arch/arm64/lib/memmove.o: in function `__pi_memmove':
arch/arm64/lib/memmove.S:57:(.text+0xc): relocation truncated to fit: R_AARCH64_CONDBR19 against symbol `memcpy' defined in .text section in mm/kasan/common.o

- big endian (I think kbuild robot also reported this):

arch/arm64/lib/strcmp.S: Assembler messages:
arch/arm64/lib/strcmp.S:118: Error: immediate value out of range 0 to 63 at operand 3 -- `lsr x2,x2,#560'

I'll drop the series for now (already removed it from for-next/core
yesterday) until the above are addressed.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
