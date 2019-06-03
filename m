Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529AF336C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0+luWqjnSAdgif8dYMj6TZ+IMJLVQlZ+TqHN06BPcA=; b=tPbBnnmwh30edS
	v94ao4uHHFuZ45ZWLHO8KCdGA1SgNmQLH1LPM8ljXUiJe1hY8hBNd3oEdrWajGDL9tJRos2AgsE3K
	LAukq/WTLjeiHmR6Ch9FDtwC/RJLNdNEbG12g65n2aBeHnvpdD2smJTyJgAJYxVErK6UU3XIClkYu
	E4IsxInzKiNUr0SwLpv5vQLwH3uQZRgQj5hOPFeXKE8SSILQxCpyD7A9DAZf+47h1dUYXNBhUvle+
	r9/nKaylhGy2+ozK1NEZ7r++BUmprMi+Huvhthw5PbrxGv5msSKBkfrIJUqNLRXOT6obrEPOyoEvN
	OcOhOs0ExAt2M/EZ47+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqoB-0003qI-0I; Mon, 03 Jun 2019 17:31:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqo3-0003pY-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:31:37 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCD0126D87;
 Mon,  3 Jun 2019 17:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559583094;
 bh=ef4z7eIvFCgptVOwhdxrknQEusVHxKBjNcgPZL7xjwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qtp2a/6xnsWe0YzsE1p3a6RJ4UhAkMhH/cvtVt2NYNKzbFDNwYHZApJ84LoiuQVJF
 XgGPJDNd/C89Mug6ldKVOPF2s3rqmXP/inTecxEBqK9SjdZa5hCb0IZVfz/58Tn6mb
 GJ6AbQHaAB0pOVD3d6n+POGFs88MMudq88uWaWZU=
Date: Mon, 3 Jun 2019 10:31:32 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH] crypto: ghash - fix unaligned memory access in
 ghash_setkey()
Message-ID: <20190603173131.GA240519@gmail.com>
References: <20190530175039.195574-1-ebiggers@kernel.org>
 <0f7e6d3d-aa27-30c3-5c82-67d484bf667c@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f7e6d3d-aa27-30c3-5c82-67d484bf667c@c-s.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_103135_491367_98716C2D 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.7 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stable@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 09:27:24AM +0200, Christophe Leroy wrote:
> =

> =

> Le 30/05/2019 =E0 19:50, Eric Biggers a =E9crit=A0:
> > From: Eric Biggers <ebiggers@google.com>
> > =

> > Changing ghash_mod_init() to be subsys_initcall made it start running
> > before the alignment fault handler has been installed on ARM.  In kernel
> > builds where the keys in the ghash test vectors happened to be
> > misaligned in the kernel image, this exposed the longstanding bug that
> > ghash_setkey() is incorrectly casting the key buffer (which can have any
> > alignment) to be128 for passing to gf128mul_init_4k_lle().
> > =

> > Fix this by memcpy()ing the key to a temporary buffer.
> =

> Shouldn't we make it dependent on CONFIG_HAVE_64BIT_ALIGNED_ACCESS

No, because the buffer can have as little as 1-byte alignment.

> or !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS ?

I don't think that's a good idea because two code paths are harder to test =
than
one, and also CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS only means that the CPU
allows "regular" loads and stores to be misaligned.  On some architectures =
the
compiler can still generate load and store instructions that require alignm=
ent,
e.g. 'ldrd' or 'ldm' on ARM.

We could change gf128mul_init_4k_lle() to take a byte array and make it use
get_unaligned_be64().  But since it has to allocate and initialize a 4 KiB
multiplication table anyway, that microoptimization would be lost in the no=
ise.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
