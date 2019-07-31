Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84CC7C798
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gyr/jVODw3jysKi7iVnVhWMLbX6nvedSyDqLR/KqFqY=; b=ZBt+PZ8riMdsJR
	ncMS6/CCb/MoUaAua5VjI9rxuoycXjpIeb/HUC1uDqCEPT+TxUX5Kn6enpHxd7yrFma6FQA7PvhAX
	7+O40RnbN7383nL41+k3pJwDwCwIxTfBHrRoW9vsK7TYLlRtC1VO5Rw/49rW7IfqVpg1OzMTLDr8P
	tHWPdd5dbEB6rqwCAzgDhgoyMme8bmpx2ON/H2SQ3MTxKdvz9SvWj/DFU5qHeReMbffYxas6E+lJS
	jQMzv7ditcei4k9C7mxL/jwvM8YNWoCthtzT34xeRvfW06ej4i8e8tlM1Sa1mvRw2QqyJzibFH6ZG
	13XIQ13X40HQWO7i9bbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsquW-0006ZL-9i; Wed, 31 Jul 2019 15:53:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqsJ-0003oM-8u; Wed, 31 Jul 2019 15:50:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCC8A1570;
 Wed, 31 Jul 2019 08:50:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB15D3F694;
 Wed, 31 Jul 2019 08:50:44 -0700 (PDT)
Date: Wed, 31 Jul 2019 16:50:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [RFC v2 8/8] arm64, kexec: enable MMU during kexec relocation
Message-ID: <20190731155042.GF39768@lakrids.cambridge.arm.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731153857.4045-9-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731153857.4045-9-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_085047_418560_70759A82 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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
Cc: sashal@kernel.org, vladimir.murzin@arm.com, corbet@lwn.net,
 marc.zyngier@arm.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jmorris@namei.org, james.morse@arm.com,
 ebiederm@xmission.com, matthias.bgg@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 11:38:57AM -0400, Pavel Tatashin wrote:
> +/*
> + * The following code is adoped from "Bare-metal Boot Code for ARMv8-A
> + * Processors Version 1.0, 5.3.1 Cleaning and invalidating the caches".
> + * http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dai0527a
> + */
> +.macro dcache_invalidate tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8
> +	mov	\tmp0, #0x0			/* tmp0 = Cache level */
> +	msr	CSSELR_EL1, \tmp0		/* 0x0 for L1, 0x2 for L2 */
> +	mrs	\tmp4, CCSIDR_EL1		/* Read Cache Size ID */
> +	and	\tmp1, \tmp4, #0x7
> +	add	\tmp1, \tmp1, #0x4		/* tmp1 Cache Line Size */
> +	ldr	\tmp3, =0x7fff
> +	and	\tmp2, \tmp3, \tmp4, lsr #13	/* tmp2 Cache Set num - 1 */
> +	ldr	\tmp3, =0x3ff
> +	and	\tmp3, \tmp3, \tmp4, lsr #3	/* tmp3 Cache Assoc. num - 1 */
> +	clz	\tmp4, \tmp3			/* tmp4 way pos. in the CISW */
> +	mov	\tmp5, #0			/* tmp5 way counter way_loop */
> +1: /* way_loop */
> +	mov	\tmp6, #0			/* tmp6 set counter set_loop */
> +2: /* set_loop */
> +	lsl	\tmp7, \tmp5, \tmp4
> +	orr	\tmp7, \tmp0, \tmp7		/* Set way */
> +	lsl	\tmp8, \tmp6, \tmp1
> +	orr	\tmp7, \tmp7, \tmp8		/* Set set */
> +	dc	cisw, \tmp7			/* Clean & Inval. cache line */
> +	add	\tmp6, \tmp6, #1		/* Increment set counter */
> +	cmp	\tmp6, \tmp2			/* Last set reached yet? */
> +	ble	2b				/* If not, iterate set_loop, */
> +	add	\tmp5, \tmp5, #1		/* else, next way. */
> +	cmp	\tmp5, \tmp3			/* Last way reached yet? */
> +	ble	1b				/* If not, iterate way_loop. */
> +.endm
> +

For various reasons, one cannot safely use Set/Way operations in
portable code. They only make sense for low-level platform-specific
firmware performing power management operations.

If you need to perform D-cache maintenance, you must use the VA
operations to do so.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
