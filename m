Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558309A6C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 06:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZ6bzW04QJUCeK9x0Ccx1rl1jzwppIXjmb33WPAXPiQ=; b=FcO5+GD7Q+QiFn
	Z2tNXx7O8VcPWEtArR1si7zqPNbfz5kNfTGOCynWhtjGBySrFxrhVtcHPxrMZc0My1aUdtX3r5cUU
	jYN3vVpxthrmMaLUre3rXk+DW4m9Zrjod+NyWZmJpwv5REUIhbElSuWLNRxhdJM0t6jB9RaKhj96N
	e/dA8zvT0cAMS5vhsX77+eJ0Z/2pQko59n8htSYx0rapKDw/uZ141q9m9c1KAwZzXUZgVqdso/Ogd
	SYLegNuBGHWz0fqfy6d6MkmILNc0D8r09BsxmoxzieUkLeBp6ql/Zx+r+QZQwKRMFDH0+jiLWAk9r
	MDx/MUKoip7pPzJcfEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i11CP-0001na-Rw; Fri, 23 Aug 2019 04:29:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i11C6-0001cg-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 04:29:02 +0000
Received: from gondolin.me.apana.org.au ([192.168.0.6]
 helo=gondolin.hengli.com.au)
 by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1i11At-0006rg-Aj; Fri, 23 Aug 2019 14:27:43 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1i11AE-0004RC-MF; Fri, 23 Aug 2019 14:27:02 +1000
Date: Fri, 23 Aug 2019 14:27:02 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "boojin.kim" <boojin.kim@samsung.com>
Subject: Re: [PATCH 6/9] dm crypt: support diskcipher
Message-ID: <20190823042702.GA17034@gondor.apana.org.au>
References: <CGME20190823042038epcas2p2000738f3ca7f5f3d92ea1c32de2bcf99@epcas2p2.samsung.com>
 <017901d5596a$1df3a590$59daf0b0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <017901d5596a$1df3a590$59daf0b0$@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_212900_397255_0B383182 
X-CRM114-Status: UNSURE (   9.35  )
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
Cc: 'Ulf Hansson' <ulf.hansson@linaro.org>, 'Mike Snitzer' <snitzer@redhat.com>,
 dm-devel@redhat.com, 'Andreas Dilger' <adilger.kernel@dilger.ca>,
 'Alasdair Kergon' <agk@redhat.com>, 'Eric Biggers' <ebiggers@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Krzysztof Kozlowski' <krzk@kernel.org>,
 'Jaehoon Chung' <jh80.chung@samsung.com>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, 'Chao Yu' <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 'Jaegeuk Kim' <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 'Jens Axboe' <axboe@kernel.dk>, "'Theodore Y. Ts'o'" <tytso@mit.edu>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "'David S. Miller'" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 01:20:37PM +0900, boojin.kim wrote:
>
> If yes, I think the following API needs to be added to skcipher:  
> - _set(): BIO submitter (dm-crypt, f2fs, ext4) sets cipher to BIO.
> - _mergeable(): Block layer checks if two BIOs have the same cipher.
> - _get(): Storage driver gets cipher from BIO.
> - _set_crypt(): Storage driver gets crypto information from cipher and 
> writes it on the descriptor of Storage controller.
> Is it acceptable to skcipher ?

No.  If you're after total offload then the crypto API is not for
you.  What we can support is the offloading of encryption/decryption
over many sectors.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
