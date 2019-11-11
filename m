Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8DF77EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xXZ0LVIvNsxCnjwe+nDo34OmzVdhf0asg3yDU4DwGBE=; b=G7314oXD1Tf4aCuu/pMl+brQl
	aPn75gpIaukxqIxFVxo447/SCKaZraNqmxubKiYBACoJtbM3C3QWRB3V+71N7cOUcUK2b2ZjUWANN
	DaC70EpwqOD+M+iRAoEFvaUgV15K28vIPXRmQBNrzY4QTjnl0vl12zgY964u/Cy+2zbPn7lyNTMPE
	MngdlqMF/ZKzsyaI2Y4jsKxgtjJ7bfxfKcZqADIuBKTep0dlr8464Z/zb6YMykvwgaXlWnMGYq/FU
	Evr6D3uMzDe/Tev6DO5JE3oytn5UihtSn85WATVqzKbQ38r5VvRYW6U/tu4/eEumAvX33lpkpQN3G
	NM5tohznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBpr-0001iN-SQ; Mon, 11 Nov 2019 15:42:35 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBph-0001hV-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 15:42:27 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUBpc-0004LY-Pn; Mon, 11 Nov 2019 16:42:20 +0100
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 1/2] arm64: Rename =?UTF-8?Q?WORKAROUND=5F=31=31=36=35?=
 =?UTF-8?Q?=35=32=32=20to=20SPECULATIVE=5FAT?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 16:51:41 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191111141157.55062-2-steven.price@arm.com>
References: <20191111141157.55062-1-steven.price@arm.com>
 <20191111141157.55062-2-steven.price@arm.com>
Message-ID: <160a852027f4481cc63aed72c4f4a409@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: steven.price@arm.com, catalin.marinas@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_074226_130414_5F8B1B78 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On 2019-11-11 15:21, Steven Price wrote:
> Cortex-A55 is affected by a similar erratum, so rename the existing
> workaround for errarum 1165522 so it can be used for both errata.

nit: erratum

>
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/arm64/Kconfig                |  4 ++++
>  arch/arm64/include/asm/cpucaps.h  |  2 +-
>  arch/arm64/include/asm/kvm_host.h |  2 +-
>  arch/arm64/include/asm/kvm_hyp.h  |  3 +--
>  arch/arm64/kernel/cpu_errata.c    | 17 +++++++++++++----
>  arch/arm64/kvm/hyp/switch.c       |  2 +-
>  arch/arm64/kvm/hyp/tlb.c          |  4 ++--
>  7 files changed, 23 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..6cb4eff602c6 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -510,9 +510,13 @@ config ARM64_ERRATUM_1418040
>
>  	  If unsure, say Y.
>
> +config ARM64_WORKAROUND_SPECULATIVE_AT
> +	bool
> +
>  config ARM64_ERRATUM_1165522
>  	bool "Cortex-A76: Speculative AT instruction using out-of-context
> translation regime could cause subsequent request to generate an
> incorrect translation"
>  	default y
> +	select ARM64_WORKAROUND_SPECULATIVE_AT

I'd object that ARM64_ERRATUM_1319367 (and its big brother 1319537)
are also related to speculative AT execution, and yet are not covered
by this configuration symbol.

I can see three solutions to this:

- Either you call it SPECULATIVE_AT_VHE and introduce 
SPECULATIVE_AT_NVHE
   for symmetry

- Or you make SPECULATIVE_AT cover all the speculative AT errata, which
   may or may not work...

- Or even better, you just ammend the documentation to say that 1165522
   also covers the newly found A55 one (just like we have for A57/A72)

What do you think?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
