Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E17CBFA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HX/TdCOo6aSXfxj4rlGu6KG3wWtfeYkNcB9ynbTewjQ=; b=cGuv1j3v6o+BUU
	vNZ+Zo2DsVdAHJIFlGWogVgIm3wUEZrbqHcr0+SXyRkVGMT1Z9E1wMfAGZhMhA5g8kSf3kpAQ/vY3
	KGUf4FkgWsT/ZjEPGFY0MSAfQ3nn5LFnvIfU8Cg8ROjPRLtv+DtauEkNKy394fRixqa7s/pX8Of8j
	9nhVSdLyXCmTXqlTVa+HdIQweGD7eul4LTtzu1Y+UGjghOeGy2XAZBFUduyykR5+5pi8ws96xIKL5
	sqAknbWBcyPSwpxnpoUVM28/gmImKctC329Zx7MgiVEwsE1tdxWBCZWWnmhw9HdtoeVV7/Y2kWHt+
	EXKcX+KhXG+UA5pt8+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPmM-00050D-1F; Fri, 04 Oct 2019 15:46:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPmE-0004zf-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:45:56 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1iGPlz-0001XF-61; Sat, 05 Oct 2019 01:45:40 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Sat, 05 Oct 2019 01:45:38 +1000
Date: Sat, 5 Oct 2019 01:45:38 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 0/2] crypto: sun4i-ss: Enable power management
Message-ID: <20191004154538.GB5148@gondor.apana.org.au>
References: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_084554_784899_379BA250 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 10:08:30AM +0200, Corentin Labbe wrote:
> Hello
> 
> This serie enables power management in the sun4i-ss driver.
> 
> Regards
> 
> Changes since v2 ( https://lore.kernel.org/linux-arm-kernel/20190919051035.4111-2-clabbe.montjoie@gmail.com/T/ ):
> - depends on PM
> - fusioned suspend/resume functions with sun4i_ssenable/disable
> - fixed style problem
> 
> Changes since v1:
> - Fixed style in patch #1
> - Check more return code of PM functions
> - Add PM support in hash/prng
> - reworked the probe order of PM functions and the PM strategy
> 
> Corentin Labbe (2):
>   crypto: sun4i-ss: simplify enable/disable of the device
>   crypto: sun4i-ss: enable pm_runtime
> 
>  drivers/crypto/Kconfig                    |   1 +
>  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  10 ++
>  drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 139 ++++++++++++++++------
>  drivers/crypto/sunxi-ss/sun4i-ss-hash.c   |  12 ++
>  drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |   9 +-
>  drivers/crypto/sunxi-ss/sun4i-ss.h        |   2 +
>  6 files changed, 133 insertions(+), 40 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
