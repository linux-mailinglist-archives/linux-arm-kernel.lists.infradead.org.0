Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB581CA386
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 08:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0W74/oNPQXXQc8mxogYeK+f+qjN78g9oiyB0KJlhAk=; b=LRf8/jp2FMgWV7
	rJEhShlBX6TkPhm/Ljp1mKTcmIGzuCSqTPqUvg9Gig6bLEifziUdM1SZepDllL/cR2oXZswGdw/Uv
	U1PVV0M6ZEcB8cC4j2B5CkkhoEC2Jcpcn9J8gEOjA5NjmuVMm3fnkCT8g8+9bjWMe6UwK8478dgi9
	9XN7k3ErRiuwmeCR9sEj5c7vaUjEitRdk1UzCtRum+PtU2Xip/oyDF2WonyQGneVyHP8erea4y2QX
	40saTphudsqkh6iKVjIDMnKLx2kG8G+I8TZFmmimi7EinQwe9ZntGLIpXJVNSXzSQsM9DVtJ+nigG
	09GnZ1A7f0l8LLB17BuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWw7t-00009R-EB; Fri, 08 May 2020 06:04:49 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWw7l-00006c-W4
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 06:04:43 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jWw0z-0004u9-0O; Fri, 08 May 2020 15:57:42 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 08 May 2020 16:04:20 +1000
Date: Fri, 8 May 2020 16:04:20 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lionel Debieve <lionel.debieve@st.com>
Subject: Re: [PATCH 0/3] crypto: stm32/hash: Defer probe management
Message-ID: <20200508060420.GA24789@gondor.apana.org.au>
References: <20200427064226.6991-1-lionel.debieve@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427064226.6991-1-lionel.debieve@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_230442_285459_4C37ACA9 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.24.177.18 listed in list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 08:42:23AM +0200, Lionel Debieve wrote:
> These patches manage properly the defer probe for STM32 Hash driver.
> It allows the driver to be probed later if clock, reset or dma return
> a defer error.
> It also removes the error print messages in such cases.
> 
> Etienne Carriere (2):
>   crypto: stm32/hash - defer probe for reset controller
>   crypto: stm32/hash - defer probe for dma device
> 
> Lionel Debieve (1):
>   crypto: stm32/hash - don't print error on probe deferral
> 
>  drivers/crypto/stm32/stm32-hash.c | 38 ++++++++++++++++++++++---------
>  1 file changed, 27 insertions(+), 11 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
