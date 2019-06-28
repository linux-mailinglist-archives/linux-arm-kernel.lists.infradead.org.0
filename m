Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6902059341
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBtv2TDl4mruh8arKG/qAT4vZb5MMws0buQNd5XJlwo=; b=Tly2k4dce9IWdU
	p01CgPP9kINKkbvthhT/tXTPEuoSEBPVK2DYKCQnBqcaKZ3o4W6fv7dhHJiSChaIeqwZ4JiFGyOvP
	5IErQ8SBqQ9guyOE4gl9TZp9JTu5EnbRaNT3kRgsuotF2Ql6uf6RZBMRscf27IUd29v3BI7ILHJG6
	LzDXHWD1rywOLkaU6vFBZO8Ip2J7RpMWKxaq2dXvQZt7tdc7uQI88vLCTwmi5sNc1BfbEfdyaS3P+
	ul5MfAYxVE56ep9aKDVCYta/HPk5cXS+sakYfCZof49VCWNtCUnMwejG89yuaTURpGPs1DU2DkpAE
	r4OgFhQm4PBtrsXosjGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjBU-000668-2A; Fri, 28 Jun 2019 05:12:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjBF-00065W-TS
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:12:15 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41DAA206E0;
 Fri, 28 Jun 2019 05:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561698733;
 bh=IRQGF8vAku7wB0SAw6ssV5177l87E59zx30lN1xJdPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zfm+2ze2ffcgNtvKC4TDK1/DIgMftGdqZnopkhvBrlbGxgLjqfU4oMBgvg9kihoZy
 G6NVPWVjnswQFT9vHeCEibGN2qyDccdua7kxlBKp1wXQy3RhuGw958WxwFutCsl/sK
 bQWBSK8Keb8nZZRdNv6Nvcg255T7iJXgHJFBaFKk=
Date: Thu, 27 Jun 2019 22:12:11 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 06/10] crypto: sa2ul: Add hmac(sha256)cbc(aes)
 AEAD Algo support
Message-ID: <20190628051211.GF673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-7-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-7-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_221213_971878_BDBE9EC7 
X-CRM114-Status: GOOD (  15.72  )
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 09:57:41AM +0530, Keerthy wrote:
> Add aead support for hmac(sha256)cbc(aes) algorithm. Authenticated
> encryption (AE) and authenticated encryption with associated data
> (AEAD) is a form of encryption which simultaneously provides
> confidentiality, integrity, and authenticity assurances on the data.
> 
> hmac(sha256) has a digest size of 32 bytes is used for authetication
> and AES in CBC mode is used in conjunction for encryption/decryption.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  drivers/crypto/sa2ul.c | 92 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
> 
> diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
> index 1a1bd882e0d2..9c9008e21867 100644
> --- a/drivers/crypto/sa2ul.c
> +++ b/drivers/crypto/sa2ul.c
> @@ -271,6 +271,42 @@ void sa_hmac_sha1_get_pad(const u8 *key, u16 key_sz, u32 *ipad, u32 *opad)
>  		opad[i] = cpu_to_be32(opad[i]);
>  }
>  
> +void sha256_init(u32 *buf)

This needs to be static.

> +static int sa_aead_cbc_sha256_setkey(struct crypto_aead *authenc,
> +				     const u8 *key, unsigned int keylen)
> +{
> +	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
> +	struct crypto_authenc_keys keys;
> +	int ret = 0, key_idx;
> +
> +	ret = crypto_authenc_extractkeys(&keys, key, keylen);
> +	if (ret)
> +		return ret;
> +
> +	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
> +	key_idx = (keys.enckeylen >> 3) - 2;

Where do you validate the key length?

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
