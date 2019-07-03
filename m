Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385065E6B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/fjsknhppKCOqOBk4cSb9YL6TVl4usYuvWpBEZy+7E=; b=oxc8WTSROeL8VI
	2A5pfGU0JgH5y8Vm3bdUXdR1H9NqDuE29wz/fpJprXlyaCObxzRYSa+FsqHm24m0ohUnOThx9iB1q
	VESn7CpFFd4+DK22Lm3nQhXeoUSPFY+ziRcqR1shqVWiY/dFTsd9HOS+4IY4F02wIa8tmqRIGVm8c
	MmiX+9gYZ2YDS7NbHAHjnbG7Up5+bTyTQl+vsZkN9Dmdw+hjNf5/LhM+oIUNeGN0uRsjkhm/E32Im
	kU6+p1DDBiVPcPbeQYu6gVUM6ZYe2Qwcr7bhD7V2M7ZZ3WbLoxkqh0UUo8Cx2hVKb30TTLOT+qcT+
	UakXUGj6TStfnVFdbNFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higGp-00025Z-BL; Wed, 03 Jul 2019 14:30:03 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1higGJ-0001rh-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:29:33 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1higGH-0000jP-W1; Wed, 03 Jul 2019 22:29:30 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1higGH-0000Xy-Rv; Wed, 03 Jul 2019 22:29:29 +0800
Date: Wed, 3 Jul 2019 22:29:29 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lionel Debieve <lionel.debieve@st.com>
Subject: Re: [PATCH 0/2] crypto: stm32/hash: Fix bug in hmac mode
Message-ID: <20190703142929.one55xcdpoce2wdw@gondor.apana.org.au>
References: <20190628112655.9341-1-lionel.debieve@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628112655.9341-1-lionel.debieve@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_072931_682196_3654C7DD 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Ludovic Barre <ludovic.barre@st.com>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 01:26:53PM +0200, Lionel Debieve wrote:
> This series fixes issues discovered while using libkcapi library. Some
> more tests show wrong key management in hmac mode. It is fixes by these 
> patches and prevent a potential issue in case of interrupt while processing
> in dma mode.
> 
> Lionel Debieve (2):
>   crypto: stm32/hash: Fix hmac issue more than 256 bytes
>   crypto: stm32/hash: remove interruptible condition for dma
> 
>  drivers/crypto/stm32/stm32-hash.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
