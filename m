Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E442498DF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XqJFPcj3aYF/QYCS21bMih+qDxXvMEvq11jMLM08qU=; b=t8IphnJRKradBl
	Kw4Cq5nDm23gETxRv1UywLLi1no3M1R/ppvGswYIdFZqHbn5EKIahlhQN/S5ZlXCH5cs35ulsbOnA
	HmdxrSu/c1V2BxyLSCEK233wzWRXv/KIhEG8kDIcJXHJWbXLoVCv6vXST4/mdoBthpdbmBACubNBc
	XJgN+QQa5kpmzJG/FybLOd5TeVNOZEKI/f5VyO/dCv4vp0lD40YAivt1EhMkn0M4MAEuDGOGO3gNg
	DZUF8PPX41qiiwwQ8fWj6ADGRGl41ZRgR3u8F1cOJvTKgIxgeFvqgvcTUavk7KrrvUO/Mac6zRR75
	gFbc8iPoim5V5vIVzF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ibU-0004Du-1s; Thu, 22 Aug 2019 08:37:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ibE-0004Ct-0R
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:37:43 +0000
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 424762342E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566463059;
 bh=XE3xK9iG8Wy7wo/kPx8rxFjUegSzi/UaDRIOdgmeG7Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jhs218aNaLA4Bq8OPujJ/oKGM90+zjHunggojHGSt42VmXqMKgeNTPazw8Mmev1Je
 JwhDX50NdqNblLusEM/+477jQps0EsJvAhuJqHOEuGRyDPBMUO588mLhb49EyqUQu8
 uON7wCWTLLCkC28QdqMP+2McwTT40RKkfLdU2OOE=
Received: by mail-lj1-f177.google.com with SMTP id z17so4785906ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 01:37:39 -0700 (PDT)
X-Gm-Message-State: APjAAAVknxzJT2ReQvzmb5H4hZfu+63Nwsxv5Xrbe1fm5dQul2a2UDkV
 xD8BK7iktgVf/2saMDU4AaB4/TVSSfBiAySvsOs=
X-Google-Smtp-Source: APXvYqxXD3xVQJzrJLwcWiHpcv+TEgK10V+ZrGUMTV7We6eP5yS2aPqV9SO+VlhvYHW+opZdR7L81464kePe1T4gEFc=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr21412900ljm.5.1566463057314; 
 Thu, 22 Aug 2019 01:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190821064211epcas2p43ed73f4fd126bcc5b470c9136db6aabc@epcas2p4.samsung.com>
 <003d01d557eb$8f6ca210$ae45e630$@samsung.com>
In-Reply-To: <003d01d557eb$8f6ca210$ae45e630$@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 22 Aug 2019 10:37:26 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdK3ZzQXjzPZLzu5q0HZsL1vohQ4UxYTONcWdtDbEe2ng@mail.gmail.com>
Message-ID: <CAJKOXPdK3ZzQXjzPZLzu5q0HZsL1vohQ4UxYTONcWdtDbEe2ng@mail.gmail.com>
Subject: Re: [PATCH 1/9] crypt: Add diskcipher
To: "boojin.kim" <boojin.kim@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_013740_091901_990CF61E 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Mike Snitzer <snitzer@redhat.com>,
 dm-devel@redhat.com, Andreas Dilger <adilger.kernel@dilger.ca>,
 Alasdair Kergon <agk@redhat.com>, Eric Biggers <ebiggers@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Jaehoon Chung <jh80.chung@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, Chao Yu <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-mmc@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 08:42, boojin.kim <boojin.kim@samsung.com> wrote:
>
> Diskcipher supports cryptographic operations of inline crypto engines like
> FMP. Inline crypto engine refers to hardware and solutions implemented
> to encrypt data stored in storage device.
>
> When encrypting using the FMP, Additional control is required
> to carry and maintain the crypto information between
> the encryption user(fscrypt, DM-crypt) and FMP driver.
> Diskcipher provides this control.
>
> Diskcipher is a symmetric key cipher in linux crypto API to support FMP.
> FMP are registered with the cihper algorithm that uses diskcipher.
>
> Diskcipher has three major steps.
> The first step is to assign a cipher and set the key.
> The second step is to pass the cipher through the BIO to the storage
> driver.
> The third step is to get the cipher from BIO and request a crypt
> to FMP algorithm.
>
> In the first step, encryption users such as fscrypt or dm-crypt
> allocate/release a diskcipher and set key into the diskcipher.
> Diskcipher provides allocate(), free(), and setkey() that are similar
> to existing ciphers.
>
> In the second step, BIO is used to pass the diskcipher to the storage
> driver.
> The BIO submitters such as ext4, f2fs and DM-crypt set diskcipher to BIO.
> Diskcipher provides the set () API for this.
>
> In the third step, the storage driver extracts the diskcipher from the BIO
> and requests the actual encryption behavior to inline crypto engine driver.
> Diskcipher provides get() and crypt() APIs for this.
>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: David S. Miller <davem@davemloft.net>
> Signed-off-by: Boojin Kim <boojin.kim@samsung.com>
> ---
>  crypto/Kconfig              |   9 ++
>  crypto/Makefile             |   1 +
>  crypto/diskcipher.c         | 349
> ++++++++++++++++++++++++++++++++++++++++++++
>  crypto/testmgr.c            | 157 ++++++++++++++++++++
>  include/crypto/diskcipher.h | 245 +++++++++++++++++++++++++++++++
>  include/linux/crypto.h      |   1 +
>  6 files changed, 762 insertions(+)
>  create mode 100644 crypto/diskcipher.c
>  create mode 100644 include/crypto/diskcipher.h
>
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 455a335..382d43a 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -1636,6 +1636,15 @@ config CRYPTO_TWOFISH_AVX_X86_64
>           See also:
>           <http://www.schneier.com/twofish.html>
>
> +config CRYPTO_DISKCIPHER
> +       bool "Diskcipher support"
> +       default n
> +       help
> +         Disk cipher algorithm
> +
> +         This cipher supports the crypt operation of the block host device
> +         that has inline crypto engine.
> +
>  comment "Compression"
>
>  config CRYPTO_DEFLATE
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 0d2cdd5..71df76a 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -165,6 +165,7 @@ obj-$(CONFIG_CRYPTO_USER_API_AEAD) += algif_aead.o
>  obj-$(CONFIG_CRYPTO_ZSTD) += zstd.o
>  obj-$(CONFIG_CRYPTO_OFB) += ofb.o
>  obj-$(CONFIG_CRYPTO_ECC) += ecc.o
> +obj-$(CONFIG_CRYPTO_DISKCIPHER) += diskcipher.o
>
>  ecdh_generic-y += ecdh.o
>  ecdh_generic-y += ecdh_helper.o
> diff --git a/crypto/diskcipher.c b/crypto/diskcipher.c
> new file mode 100644
> index 0000000..ffe95a5
> --- /dev/null
> +++ b/crypto/diskcipher.c
> @@ -0,0 +1,349 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2017 Samsung Electronics Co., Ltd.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/blkdev.h>
> +#include <linux/errno.h>
> +#include <linux/module.h>
> +#include <linux/seq_file.h>
> +#include <linux/string.h>
> +#include <linux/crypto.h>
> +#include <crypto/algapi.h>
> +#include <crypto/diskcipher.h>
> +#include <linux/delay.h>
> +#include <linux/mm_types.h>
> +#include <linux/fs.h>
> +#include <linux/fscrypt.h>
> +
> +#include "internal.h"
> +
> +static int crypto_diskcipher_check(struct bio *bio)
> +{
> +       struct crypto_diskcipher *ci = NULL;
> +       struct inode *inode = NULL;
> +       struct page *page = NULL;
> +
> +       if (!bio) {
> +               pr_err("%s: doesn't exist bio\n", __func__);
> +               return 0;
> +       }
> +
> +       /* enc without fscrypt */
> +       ci = bio->bi_aux_private;
> +       if (!ci->inode)
> +               return 0;
> +       if (ci->algo == 0)
> +               return 0;
> +
> +       page = bio->bi_io_vec[0].bv_page;
> +       if (!page || PageAnon(page) || !page->mapping ||
> !page->mapping->host)

Your patch looks corrupted - wrapped by mailer. The easiest way
usually is to use git format-patch and git send-email - then you do
not have to worry about formatting etc.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
