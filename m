Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC14F79AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zm+jG1Q2iREAQgG0ozhxKl8pZfW+qjBUw/UnIVH2O5w=; b=ctjVlRMxBNXjhb
	pZvfWE3MCdECMFIKPUOfFu78sx/5aXpLKLGyXBdNupbGcoP7JDhuYmc6MRZsjUVGnBT4ikV2GNsCO
	MNt6NchndbPZjYI9UzFmQX19SWlA9MscmcLKnpTsBF55rONB6rPfpgW+HGuTD9gjDynz5yzynrp24
	S8yxlYK8T9gM1RPIRzwfj1sySOWKTzKVbth6NBkSolC69xesY/HKYIJuBjx/vU445PtUyqxRKcIhr
	+fbNANmS/1lqA6gB9pXj9VuUyn8HzdhWb7g/5oQxP4IwmVKOEICLZtvzS4zdVjDvYgfoevcguaEg6
	T7uB05IAIT4xxybKQ39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDMX-00061F-1r; Mon, 11 Nov 2019 17:20:25 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDMO-00060E-Ca
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:20:18 +0000
Received: from zn.tnic (p200300EC2F26BB00D592BD3399DA4BDA.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f26:bb00:d592:bd33:99da:4bda])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1FA4E1EC0C25;
 Mon, 11 Nov 2019 18:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1573492809;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=3tu/7JPN4tV5i1X8iQrVSJW+CCc7eYR1Dlq3I5+LVX8=;
 b=qyuqe1jFxo+K8LpqQlIAKT4knwZJson6Dvyz8Q1EbH8WUy/pnEULfJDRJhknMQgBSqHA7b
 0jAl0vdQ6vQKlNAxpErBdf/04xKzI48cJfK3z2WqrCdCYctQTdfSo3SRTzXCzYebnJ3rlb
 lWXbQPBg6M9I7MtRDGog4//j2Gp6meQ=
Date: Mon, 11 Nov 2019 18:20:06 +0100
From: Borislav Petkov <bp@alien8.de>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v2 00/10] Improvements for random.h/archrandom.h
Message-ID: <20191111172006.GC2799@zn.tnic>
References: <20191106141308.30535-1-rth@twiddle.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_092016_582418_D5ACD04D 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linux-crypto@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:12:58PM +0100, Richard Henderson wrote:
> During patch review for an addition of archrandom.h for arm64, it was
> suggeted that the arch_random_get_* functions should be marked __must_check.
> Which does sound like a good idea, since the by-reference integer output
> may be uninitialized when the boolean result is false.
> 
> In addition, it turns out that arch_has_random() and arch_has_random_seed()
> are not used, and not easy to support for arm64.  Rather than cobble
> something together that would not be testable, remove the interfaces
> against some future accidental use.
> 
> In addition, I noticed a few other minor inconsistencies between the
> different architectures, e.g. powerpc isn't using bool.
> 
> Change since v1:
>   * Remove arch_has_random, arch_has_random_seed.
> 
> 
> r~
> 
> 
> Richard Henderson (10):
>   x86: Remove arch_has_random, arch_has_random_seed
>   powerpc: Remove arch_has_random, arch_has_random_seed
>   s390: Remove arch_has_random, arch_has_random_seed
>   linux/random.h: Remove arch_has_random, arch_has_random_seed
>   linux/random.h: Use false with bool
>   linux/random.h: Mark CONFIG_ARCH_RANDOM functions __must_check
>   x86: Mark archrandom.h functions __must_check
>   powerpc: Use bool in archrandom.h
>   powerpc: Mark archrandom.h functions __must_check
>   s390x: Mark archrandom.h functions __must_check
> 
>  arch/powerpc/include/asm/archrandom.h | 27 +++++++++-----------------
>  arch/s390/include/asm/archrandom.h    | 20 ++++---------------
>  arch/x86/include/asm/archrandom.h     | 28 ++++++++++++---------------
>  include/linux/random.h                | 24 ++++++++---------------
>  4 files changed, 33 insertions(+), 66 deletions(-)
> 
> -- 

They look good to me.

Is anyone going to take them or should I though the tip tree?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
