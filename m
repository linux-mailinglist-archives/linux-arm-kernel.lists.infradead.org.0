Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6E415BBA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaanhhyK/wcBAGwQTQZhu8fm23OjSoEORpHgTdnm/kQ=; b=ZhZ+WJEWArx8le
	b30VjtWa4LMVhjI8bhYoBlhvIRzbYltlYEFqsqnEUv6yk9UK/iCjF8vi4crWir+iIq9iRkcYPLnV6
	NOtrWKrNefHAgmMGhKffdL0E/+3H6MugnFjfQeXvuMf4h4b4MGAAN6NouXpx8XjJoytYmFYI17AAW
	tGI/uwX5C0j/X87ZST5r9CpjNH06e9q5zwGz9zfpbVzDTZ5O41S99zVOffiG6i0VQoz+pvyxDPHr8
	if72QI2de/1qToGjx/Y/Z2ruSy47/Zp856M9tIxKGmGSV4vaVKanMn7PT/kBJU/VnaaptO5DwxjJO
	BNrXjHMQt8FyXTwVatqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Al0-0000A9-Jt; Thu, 13 Feb 2020 09:26:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Akr-000091-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:25:54 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1j2Aka-0004Bp-Lc; Thu, 13 Feb 2020 17:25:36 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1j2AkZ-0006rf-OP; Thu, 13 Feb 2020 17:25:35 +0800
Date: Thu, 13 Feb 2020 17:25:35 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH -next] crypto: allwinner - remove redundant
 platform_get_irq error message
Message-ID: <20200213092535.buas6vaiusonkhrw@gondor.apana.org.au>
References: <20200205140130.164805-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205140130.164805-1-chenzhou10@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012553_215135_13D44429 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 clabbe.montjoie@gmail.com, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 10:01:30PM +0800, Chen Zhou wrote:
> Function dev_err() after platform_get_irq() is redundant because
> platform_get_irq() already prints an error.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
