Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02912C5DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWtmpfnwN71Nh1/TxO8Du5cQIZ1iMJbGUchaOaOJ3wE=; b=HXZ0KLUdJ8Vx0n
	4g40OMOWK0Yqo2V/E7BQJRHT9oLJujuO/EQOLWQmreOfJGOEUOE7hjDsACDIJLJswrZaukJtUPYOX
	sWp993y2nEeIldDxI8c03n6+bfBfkuloLqN5p4Ll0hMs9kISwz1oh65NlT/Ha32xu78MJJ9gmS5WP
	4RaHRYjIUsRUm+DWayNueGlOrN/dJyOsVVpPX8SPIWhE1MfduqOMKdJpS8JyVuR0wwudFAZe72pdr
	GtHaaljI5ajJ6upzzefqhU1901ryenjIWW1BLsMx36aHYpA1XQNxNCABhhRTyKMGzgCIUkChm+r9b
	YvzXBuTgjp2RJTyWmBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVag3-0005LA-9S; Tue, 28 May 2019 11:53:59 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVafv-0005KR-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:53:52 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hVafq-0003mE-N3; Tue, 28 May 2019 13:53:46 +0200
Date: Tue, 28 May 2019 13:53:46 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: LZ4 decompressor broken on ARM due to missing strchrnul() string
 traverse in cpumask_parse"
Message-ID: <20190528115346.f5a7kn3hdnuf5rts@linutronix.de>
References: <20190528110412.gg66fl67yahtwb6i@linutronix.de>
 <ffc779fe-3735-9665-8ee2-6a3ff1a7dd83@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffc779fe-3735-9665-8ee2-6a3ff1a7dd83@rasmusvillemoes.dk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_045351_554551_EE287F3E 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Morton <akpm@linux-foundation.org>, tglx@linutronix.de,
 Yury Norov <ynorov@marvell.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-28 13:33:12 [+0200], Rasmus Villemoes wrote:
> > How do we deal with this one?
> 
> Urgh. The problem is really in arch/arm/boot/compressed/decompress.c
> which does
> 
> #define _LINUX_STRING_H_
> 
> preventing linux/string.h from providing strchrnul. It also #includes
> asm/string.h, which for arm has a declaration of strchr(), explaining
> why this didn't use to fail.
> 
> However, the solution is also in the same file, it already has a section
> 
> /* Not needed, but used in some headers pulled in by decompressors */
> extern char * strstr(const char * s1, const char *s2);
> extern size_t strlen(const char *s);
> extern int memcmp(const void *cs, const void *ct, size_t count);
> 
> so just add another declaration to that list - I strongly assume we
> won't get a link failure since I find it hard to believe the
> decompressor would actually call cpumask_parse...

The hunk at the bottom of this mail compiles. Care to send to formal
patch?

> I'm wondering why this wasn't caught by 0day and/or while in -next?

must be related to lz4 usage in the configs tested :) A few set
XZ/LZO/LZMA. Majority falls back to GZIP.

> Rasmus

diff --git a/arch/arm/boot/compressed/decompress.c b/arch/arm/boot/compressed/decompress.c
index c16c1829a5e4f..05814c2b382a3 100644
--- a/arch/arm/boot/compressed/decompress.c
+++ b/arch/arm/boot/compressed/decompress.c
@@ -32,6 +32,7 @@
 extern char * strstr(const char * s1, const char *s2);
 extern size_t strlen(const char *s);
 extern int memcmp(const void *cs, const void *ct, size_t count);
+extern char * strchrnul(const char *,int);
 
 #ifdef CONFIG_KERNEL_GZIP
 #include "../../../../lib/decompress_inflate.c"

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
