Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB0E4FF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++PeRJlqKRW/FdjsEfMIeKNEYHbYwZLQPQivbFwEiTI=; b=YCv1C1ODr7O8Jw
	oHORKZgpKkINskRJ//Yg5b3KLqvAKMaM+Y2qACUBtLTWFdVkVTCdniN0p3C+2XFu+4ZriUHV6OP7i
	HbDZCzn6+D+NcvrzDXupAlUr2+hZu2/pynEhV/SzM4Wn3IrI5OYqzsyejhMH+k5cua49l2kTdlgU0
	Qt84hVMatp1Qm3XMFYh0RMDKSpAEm+VPKWpIeYDhJknCbQxJTBDNG0+Fi0EwjUYnljhmdtYJLrG35
	drSUEpAVawU2iB2QXaubLKStdfZP9ynZooqC8DupHK7Pup+GNrluDHKvQfgavzrPHKf5ayWY+g5nr
	LrZZFWp816becyYP6rTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1NA-0004JX-Fc; Fri, 25 Oct 2019 15:19:28 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1Ms-0004IN-05
 for linux-arm-kernel@lists.infradead.orG; Fri, 25 Oct 2019 15:19:11 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iO1Mk-0001dg-D8; Fri, 25 Oct 2019 23:19:02 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iO1Mh-0007ng-5d; Fri, 25 Oct 2019 23:18:59 +0800
Date: Fri, 25 Oct 2019 23:18:59 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 0/2] crypto: aegis128 SIMD improvements
Message-ID: <20191025151859.5lof25mpv47s4pfy@gondor.apana.org.au>
References: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_081910_250672_C59C8545 
X-CRM114-Status: UNSURE (   8.94  )
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ondrej Mosnacek <omosnace@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:16:43PM +0200, Ard Biesheuvel wrote:
> Refactor the aegis128 code to get rid of indirect calls, and implement
> SIMD versions of the init() and final() hooks. This results in a ~2x
> speedup on ARM Cortex-A57 for ~1500 byte inputs.
> 
> Changes since v1:
> - fix missing Sbox loads for plain SIMD on GCC
> - fix endianness issue in final_simd() routine
> 
> Cc: Ondrej Mosnacek <omosnace@redhat.com>
> 
> Ard Biesheuvel (2):
>   crypto: aegis128 - avoid function pointers for parameterization
>   crypto: aegis128 - duplicate init() and final() hooks in SIMD code
> 
>  crypto/aegis128-core.c       | 125 ++++++++++----------
>  crypto/aegis128-neon-inner.c |  50 ++++++++
>  crypto/aegis128-neon.c       |  21 ++++
>  3 files changed, 134 insertions(+), 62 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
