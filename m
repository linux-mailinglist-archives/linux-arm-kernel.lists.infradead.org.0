Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E45B15BB9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rxw0bwqrPviVi8vnoeNosbRKongGhaRJZIzGBNxP00Q=; b=CIhZjKjDCgbAtw
	Q9IBEPMloUaYZ/dxJXBvUfGnz8r3KZzkriWoTPHVf6ReH53laqJixAqAPeLgjKNcR5XvDr3hRkhtm
	zxasZIIaZFhA6l7RzaS8c77/6ol4scdUs1mk/AdNlkH2RMA9h0iGcSDUMdAGkZraGI//YkTTlVWB1
	AnP6fvurbHqIC56oxZZmyZqZc7aGTGB7LCa3mOwKh28bPMgq8EGJWXyDNAhdaHJZi48DncBw+Tm1q
	FjYSVsCFnzF8qKixCFnCWONTLzvhzPxaEzIgdub1sOAjRFiFmCz69xHtZh5pKtXZ/Pj8jlbimxpzB
	em3w8/VN2238WuS6tJ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ajs-0006tD-K5; Thu, 13 Feb 2020 09:24:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ajj-0006sg-OV
 for linux-arm-kernel@bombadil.infradead.org; Thu, 13 Feb 2020 09:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wpQVY3cDxZDuQC2ng2EfR7cb0mP7AP/acPQBYtKIvyg=; b=JEfrgm5HyFw4r1AkMnm7yZjJF9
 rDwhgQytPQ1OWeDrujS8IMw9UMdUsdb9NK9CT7u7DKC00oXuHBLZrUe4B88or+4tRRWazQDN4wzSf
 1kTJ9F/RUPpk3Gc+o0ob0a4h4whPxyPdx8CDGgEbsuyzhyIHPHIHKjxHyEs/hlSwla69/8cGYGut5
 z6ggY/fARyq4YZd5IWmNOscIixLBspY+AxRKVB9cJ6mjRaGvliTke5Q+5plx6O9iNlr2uMHhRQjfj
 gMfSBTFaxw5ItvQAsE1Ty6wplJheGEyZSMicx/smPLbFbcvwC5Ql0lJXrgzW1gI4tGqBO45JFW0n8
 4aArKXRw==;
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ajd-0006qj-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:24:41 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1j2Aj0-0004B6-PF; Thu, 13 Feb 2020 17:23:58 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1j2Aix-0006q4-5e; Thu, 13 Feb 2020 17:23:55 +0800
Date: Thu, 13 Feb 2020 17:23:55 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [PATCH] crypto: arm64/poly1305: ignore build files
Message-ID: <20200213092355.i77luefms23jkud2@gondor.apana.org.au>
References: <20200203233933.19577-1-mcroce@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203233933.19577-1-mcroce@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_092438_347234_740670BB 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 12:39:33AM +0100, Matteo Croce wrote:
> Add arch/arm64/crypto/poly1305-core.S to .gitignore
> as it's built from poly1305-core.S_shipped
> 
> Fixes: f569ca164751 ("crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON implementation")
> Signed-off-by: Matteo Croce <mcroce@redhat.com>
> ---
>  arch/arm64/crypto/.gitignore | 1 +
>  1 file changed, 1 insertion(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
