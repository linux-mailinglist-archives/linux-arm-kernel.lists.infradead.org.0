Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6349815E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZRMqwI4+pEYAoqjGJxEs0ac5dr5XPy4i7WXbTDTLbI=; b=pM0Lcsf2dI/Liz
	zwByretsZaA+KT1twjeheTVlGtn9IRLTLtB7k8PzgCHwZG3HmEn+A6LpxOQmcAWEj3Irv0FFT8hyE
	/xNQET3uB6QAK8SOrq19Wy1ylGRTv6qFz4JNHuolmzu+T4HQ+8B/D2rFApVZmJnal6XLYGf0pKYZv
	zZp96Xm418NEoFU1eLHldKluCvYEG/fBePo0VKDMLBGeGyxPBJSCt8EjWd76iGwIZGmvlHswpYp5g
	rsyNinn/H6s+jHhyngzSb+GGpn60XWd5Z8t0e5F5bjIkBynQlXaF9PW/cdaG1wXGIkKW3/ss+vebH
	rgOELvEsRRJTSayVy/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UW1-0003Ek-SC; Wed, 21 Aug 2019 17:35:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UVm-0002xa-W1
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:35:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 809FC22D6D;
 Wed, 21 Aug 2019 17:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566408906;
 bh=oft2b/XAnOccaMbScogNYg5GBmBHqqVhsI2dgxn3frk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FDrCB6hTk4MgsFW5L7cH0WWv1uq0GK+uo0eFZhYt9jal412Ps88auo95YKLoSijfw
 HgXtwtGGfReUWAThdTALJejBZ+lacbpBcnlBxqFlBEMEGabf9izZNNuhKMhIsGOvzd
 P1qQJpo7fn1vTibgT7BoACw5MlbTwJ5/UqLgXc4M=
Date: Wed, 21 Aug 2019 18:35:01 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v9 2/3] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190821173501.brvyn5mm5oh6m2s7@willie-the-truck>
References: <20190821164730.47450-1-catalin.marinas@arm.com>
 <20190821164730.47450-3-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821164730.47450-3-catalin.marinas@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_103507_115197_BA94B7D5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Dave Hansen <dave.hansen@intel.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-doc@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:47:29PM +0100, Catalin Marinas wrote:
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> On AArch64 the TCR_EL1.TBI0 bit is set by default, allowing userspace
> (EL0) to perform memory accesses through 64-bit pointers with a non-zero
> top byte. Introduce the document describing the relaxation of the
> syscall ABI that allows userspace to pass certain tagged pointers to
> kernel syscalls.
> 
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Cc: Kevin Brodsky <kevin.brodsky@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  Documentation/arm64/tagged-address-abi.rst | 156 +++++++++++++++++++++
>  1 file changed, 156 insertions(+)
>  create mode 100644 Documentation/arm64/tagged-address-abi.rst

Thanks, I'll pick this on up.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
