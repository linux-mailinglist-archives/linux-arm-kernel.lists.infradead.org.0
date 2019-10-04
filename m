Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52084CBF25
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5KTV5MzefHElN8lP08NUP5diGjjNg48XmDEgTIuNzo=; b=e8GrMUDFQDQDIT
	nlDKxaO/luBtx9PYmac10cOcm9MkuhLOSUKGpwdK4M5E5C+L31ooNvA5Ll21j/krciim0z7n9s/eg
	sxZhdN0/U2WxiyRsLwWbyMMaV7Hx9W+iVU3AqyMYmhLPd6aE9YHrqyDZABei9VXufVkMgmdeBPsmJ
	jne0uFBStnhwPPmRxpwURdVICUoXxK4V2OJNXU8Ewo1G9xAzWWRNbNYLJHbbg5KnZbO4kNvgW+UI+
	y0YgkTY+3aGW1icleVDPvJrON/Ee06yrNkznQXqVlJOt7qQmUWeL5CepM8gDK1a+I+xGj5050/KvL
	rWT77dRzVMAHBCy7ALNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPVb-0005li-Kn; Fri, 04 Oct 2019 15:28:43 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPVU-0005l5-MO
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:28:38 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1iGPVK-0000q3-EO; Sat, 05 Oct 2019 01:28:27 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Sat, 05 Oct 2019 01:28:23 +1000
Date: Sat, 5 Oct 2019 01:28:23 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 0/2] crypto: faster GCM-AES for arm64
Message-ID: <20191004152823.GD5148@gondor.apana.org.au>
References: <20190910231900.25445-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910231900.25445-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_082836_989638_9EB354CE 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: marc.zyngier@arm.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ebiggers@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 12:18:58AM +0100, Ard Biesheuvel wrote:
> This series reimplements gcm(aes) for arm64 systems that support the
> AES and 64x64->128 PMULL/PMULL2 instructions. Patch #1 adds a test
> case and patch #2 updates the driver.
> 
> Ard Biesheuvel (2):
>   crypto: testmgr - add another gcm(aes) testcase
>   crypto: arm64/gcm-ce - implement 4 way interleave
> 
>  arch/arm64/crypto/ghash-ce-core.S | 501 ++++++++++++++------
>  arch/arm64/crypto/ghash-ce-glue.c | 293 +++++-------
>  crypto/testmgr.h                  | 192 ++++++++
>  3 files changed, 659 insertions(+), 327 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
