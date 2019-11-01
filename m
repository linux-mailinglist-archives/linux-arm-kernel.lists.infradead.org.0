Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F066EBDA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+buM03XI146X9tCxXcIaan/Yg9HuPqz7VoYD+LnrEc=; b=uBJu5ZVUrvfNeG
	jtzjOlvGVUbjobyUUL27Q46B4XjjdzKCIXoQH5d0KWD+xF0t2U4sdPNKXwhcWdhfMGpTe9zAx1Q+1
	8KIlv4A4nWzcDfgFHGksYUuHUFRNBUWvNb10fA6J9ZE/Ps9PR9i2HKyAQU7rOD/mo6jaqP7tqP0ZV
	0S3rBCmBAlSwhetML8MV1GuEanOAeHtfhBrlKgsCdNkKYbVbeoMZFoScjrJcBiqU/K4h3KKI7BCFA
	F7ff9ozVgit4S4cxESSafj1pVGFdv5ihXSfwf+jn8rCckPkpi+cspLn8ZstPFjPYlSY0AU3DoR8bh
	bdXqwsR95qBMLCZe6uDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ7k-0004JV-MY; Fri, 01 Nov 2019 06:09:28 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ5b-0002dP-KH
 for linux-arm-kernel@lists.infradead.orG; Fri, 01 Nov 2019 06:07:18 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iQQ5O-0001qg-VP; Fri, 01 Nov 2019 14:07:03 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iQQ5G-0004oZ-Jx; Fri, 01 Nov 2019 14:06:54 +0800
Date: Fri, 1 Nov 2019 14:06:54 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v3] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
Message-ID: <20191101060654.w3jigumlcjep26mu@gondor.apana.org.au>
References: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230715_830592_90B1548A 
X-CRM114-Status: UNSURE (   9.00  )
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
Cc: ard.biesheuvel@linaro.org, hushiyuan@huawei.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, "linfeilong@huawei.com" <linfeilong@huawei.com>,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 04:11:18PM +0800, Yunfeng Ye wrote:
> A warning is found by the static code analysis tool:
>   "Identical condition 'err', second condition is always false"
> 
> Fix this by adding return value of skcipher_walk_done().
> 
> Fixes: 67cfa5d3b721 ("crypto: arm64/aes-neonbs - implement ciphertext stealing for XTS")
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
> v2 -> v3:
>  - add "Acked-by:"
> 
> v1 -> v2:
>  - update the subject and comment
>  - add return value of skcipher_walk_done()
> 
>  arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
