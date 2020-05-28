Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5281E58B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rxTX3u8QB7Xy3OojbKf28j7oUUdiyOwtwYY4fUQMThg=; b=BR6sP4jravxK4X
	6uimnNxW6NXhAG0YB0ri7Es7RCf6JTKxpUXUeNYzctaCKKOA+QN2vSVKLNrPcm48tcai0fXqHpg2O
	Pyx5tXwcVM0Daz6GmWARKK+zQtn7v9l9U6hKCPvTJizz/yDSCQiqQregYBIFoXyc9ih7pUQ4IlSrC
	NhIpgiFT62cKUTXUgIpIWsDuJ2iU6gzo27wUT70f2BIB4ksIBlC4mQgz3nBYIulEXqme9SE08vjTq
	TPWmeMOOsJoGmE9f9JECnZJhzJtJ7weEsCikNSrZDARCbQzT6qO+KuRUqehr02jJaUdbzpiSCfYPa
	IYgtsIKCScFIwpwI+yqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD3g-00006v-UT; Thu, 28 May 2020 07:34:32 +0000
Received: from [216.24.177.18] (helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD3O-0008NJ-An
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:34:16 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1jeD2z-0000me-Rz; Thu, 28 May 2020 17:33:50 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 28 May 2020 17:33:49 +1000
Date: Thu, 28 May 2020 17:33:49 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Message-ID: <20200528073349.GA32566@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519190211.76855-1-ardb@kernel.org>
X-Newsgroups: apana.lists.os.linux.cryptoapi
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003414_368660_CDB1F23D 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FAKE_REPLY_C           No description available.
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
Cc: ebiggers@kernel.org, smueller@chronox.de, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ardb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ard Biesheuvel <ardb@kernel.org> wrote:
> Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> from the generic implementation in what it returns as the output IV. So
> fix this, and add some test vectors to catch other non-compliant
> implementations.
> 
> Stephan, could you provide a reference for the NIST validation tool and
> how it flags this behaviour as non-compliant? Thanks.

I think our CTS and XTS are both broken with respect to af_alg.

The reason we use output IVs in general is to support chaining
which is required by algif_skcipher to break up large requests
into smaller ones.

For CTS and XTS that simply doesn't work.  So we should fix this
by changing algif_skcipher to not do chaining (and hence drop
support for large requests like algif_aead) for algorithms like
CTS/XTS.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
