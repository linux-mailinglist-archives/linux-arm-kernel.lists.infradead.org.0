Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A258725
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kys8+ar3a2Ptvq7YXGG7TS2qo9STfCggYoxPlxvA07w=; b=WGuBsAULNwkdJE
	MBTkPJ9zxFGu2z1raSOAM3cENE1eamdnOuzdPT6g+kRYYxOgtE04cBN5eGbHJl0QszpC0yWedQTfi
	EQv+cpqQfHAnxLm5CRICF4jfkjOmZ0buacpUGFkLzHPXhK605bFRKnOcgWc3R5dtInbOv9Mm3Bg4M
	Rh4gG7chD+GF94oxumKgaY5cUMtML2NtIgKag8n21JVqLfaEbqzDXoo0gUmtcawMEO9Uh+3JauFED
	fqdfmTjBYp1+sncfglu91QAYuAlTkcqy9msR6OSlSqBqrJ48yjyGhrizBd7Bn9eVaOgXBwTN+sBXj
	JJkSKSrz9eibRNapSrpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXK8-0007QZ-5C; Thu, 27 Jun 2019 16:32:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXJw-0007Q7-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:32:25 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 256742133F;
 Thu, 27 Jun 2019 16:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561653143;
 bh=l+tpA8pTSE7U2Xt092Cu2tDM10p0PpnM8sLMPlQKFsM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lUjg23UCBQQEqIOZnF8gvrMMj8kB7OF23AlJoJG1+1WZMSXu61OilQF2cqiaIDcff
 Gu6WhfcS4pR1m17ItBlI9zulFWiLYv7Pym6PrNQjANgtCjF3SEXBb21iQBj8bIl5gO
 dpyjyl71HNu2mF0UYpdRkLg0suGaUq742fuZz5WA=
Date: Thu, 27 Jun 2019 09:32:21 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v5 5/7] crypto: essiv - add test vector for
 essiv(cbc(aes),aes,sha256)
Message-ID: <20190627163221.GC686@sol.localdomain>
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
 <20190626204047.32131-6-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626204047.32131-6-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_093224_073558_A48FECBC 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, linux-fscrypt@vger.kernel.org,
 Gilad Ben-Yossef <gilad@benyossef.com>, dm-devel@redhat.com,
 linux-crypto@vger.kernel.org, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:40:45PM +0200, Ard Biesheuvel wrote:
> Add a test vector for the ESSIV mode that is the most widely used,
> i.e., using cbc(aes) and sha256.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  crypto/tcrypt.c  |   9 +
>  crypto/testmgr.c |   6 +
>  crypto/testmgr.h | 213 ++++++++++++++++++++
>  3 files changed, 228 insertions(+)

Shouldn't there be an authenc test vector too?  Otherwise there will be no way
to test the AEAD support in essiv.c using the crypto self-tests.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
