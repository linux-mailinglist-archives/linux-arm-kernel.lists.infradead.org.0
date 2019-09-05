Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010C5A99DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 06:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLrdOQyrhhz4QY4TRo1/4qLd1/sKDG51QpW22huGaJM=; b=tIfuA6hHeV6Dit
	WbMRzfBLztLSOfiRqREH5I++hmKGased2zK8qosK1a1N1e2YE0gjEkPzj17XJ5yTvzN6EaD4Khdku
	fubt94g8p8spSxV6+Gyhxy1o2jIWDcdBj81UEZjQ0fWAk4j3sEBjx/c2+UN6maiBQCsbAYrlTVDSy
	oje51bu1rzqXhk/BkoZ56ll6jPbXZ3lhOSF8IT90evFDvZ/JrL3+gYUQiTOhIedVsLZzg4XjXaPX5
	PP4E2e7qlnoAGpkC6D1Xr2Mpd8dSiLKOnB38D5OxdSMZYiZ7iOJowwijM9m9AY8VWhpdsaqaz5oZo
	PXk8XkewoDQIN3vpOUVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jow-0000UZ-98; Thu, 05 Sep 2019 04:56:34 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jod-0000U8-BX
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 04:56:16 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1i5jnx-0006IZ-4w; Thu, 05 Sep 2019 14:55:34 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 14:55:24 +1000
Date: Thu, 5 Sep 2019 14:55:24 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCH 0/9] crypto: sha256 - Merge crypto/sha256.h into
 crypto/sha.h
Message-ID: <20190905045524.GC32038@gondor.apana.org.au>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_215615_666754_7649FCA2 
X-CRM114-Status: GOOD (  13.81  )
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
Cc: linux-efi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Atul Gupta <atul.gupta@chelsio.com>,
 linux-s390@vger.kernel.org, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Eric Biggers <ebiggers@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 10:35:23PM +0200, Hans de Goede wrote:
> Hi All,
> 
> As promised here is a follow-up series to my earlier sha256 series.
> 
> Note I have only compiled and tested this series on x86_64 !! 
> 
> All changes to architecture specific code on other archs have not even
> been tested to compile! With that said most of these changes were done
> using my editors search - replace function so things should be fine...
> (and FWIW I did do a Kconfig hack to compile test the ccree change).
> 
> The first patch in this series rename various file local functions /
> arrays to avoid conflicts with the new include/crypto/sha256.h, followed
> by a patch merging include/crypto/sha256.h into include/crypto/sha.h.
> 
> The last patch makes use of this merging to remove a bit more code
> duplication, making sha256_generic use sha256_init and sha224_init from
> lib/crypto/sha256.c. An added advantage of this, is that this gives these
> 2 functions coverage by the crypto selftests.

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
