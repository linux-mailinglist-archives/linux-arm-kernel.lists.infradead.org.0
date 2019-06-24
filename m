Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF32050EB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VQWXWWz2MsckhoPDzZ1kY/+zAXYVs0M3W7qMuWNQ9A=; b=A4C5ZKan4ms5eo
	eHkVHkYciPs82/n2eiLnBnkBUaxD5vUKHZ9UjBgMf+ACxtCjFCqcR+Sw4uWklM3jKDuglGFkJ45qR
	Slvj5QqlAj/r26E1U06OrNxKMDRjVB+jV8VHJHPB6u9zQb/CHsTlxB2Oesr7spPKs/MyqW1P3wL5Q
	uIXGpsaw1e1vN93hYAia0zU+trGSWJeYoByG+NhLWb5O8h+BMIN/SbRCaOmofz65TDp4cXIv98LFN
	utB2QScDxd+fNuQ5loe3j0y8HxeCo6opKCkArWfINuVkSE9JHRUTbTWWRjZrxJzDegbaq+ul7CBfk
	hZz4EQ9GI5nUhbwD3Tqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ7b-0001iQ-CQ; Mon, 24 Jun 2019 14:39:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ6D-0000f4-F9
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:37:42 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so1261829iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8t2dI3qcQHJ03st0n/Xa4z9xUhlY5mkfwBdJ9AK0hb4=;
 b=GT0ywkN6dZdrUPXDLfalysL0wv0r19AWbL4Zby7v/a5CZKA5R9z2PZbMfLiDlgtLlo
 Xj+PWHGAoNCCdI+/VCBkivmZN7ruZQyVsS/PUtG6FqEAhVYc6HDHR0xvQUf7nLcw2Uc/
 wXvBqaH1Mt8CufOobp7I2xaUtGM0iog2CqoX5oqgHRkDKJ7cNGGNtyqIgV8lpS1iVXvF
 f+5Y7/uOsvB6w0+8oP3k9clyKULFn2PUD2w933FBZNhEVC9cASUrqHGhAsJBpoaL1Noe
 g3MqJPHHVMOCetv0mEFzpj5nwGqPtWn6/+eMsTjSDe9H8Cz7PM6HvBWPqzdmjn6d4jN4
 0wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8t2dI3qcQHJ03st0n/Xa4z9xUhlY5mkfwBdJ9AK0hb4=;
 b=kPFntQNNTK04m3vIbEGFnejsT8w84hfxzuCGGDOSiFkEkWYQMw2U8+90jfpeWOofSY
 V/UzMI+xRV46n2IKyy9HbpiO/y8OUk4ItrDVrKBFoYC0Qb6G1Wf2yCkAKmToWJ/auTmM
 jsn615zuYcgOLpN62mmk8eOEqU4bJE2xyVMVECcd2g9VKrG1PtPut+ag6JTDYYnrD/sL
 p7i8jaoLy4FqdMuEtfp43CumqOxOKWq8IbcHcjErZ3X4YzxgSoBueKv9hCu3oc3sRI+A
 p53NULqrj/ddcRGEk8Aet1Tzs5GZz8h4ShZWxkbT938mOGcTYWR+leXKoAYSp56CuYwk
 rAlw==
X-Gm-Message-State: APjAAAWx5f54yEBX+I/2zFM43njiA+hiW2pCVvwmIdem+P2ln4oB1RM0
 ZOZ6II2PQuo23WQL41UDqLNT0H3bvjoaJYBTuDGLeQ==
X-Google-Smtp-Source: APXvYqzThl3l6ewnU4Zyr8pwLRNTMEXCKxpGLr3u+l8OupJIXWgOokRIzTky0FyGc6ws5GFPfPEEV7wS59Cxfl4Lw6A=
X-Received: by 2002:a02:1a86:: with SMTP id 128mr26144285jai.95.1561387056479; 
 Mon, 24 Jun 2019 07:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624073818.29296-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190624073818.29296-6-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Jun 2019 16:37:25 +0200
Message-ID: <CAKv+Gu-6KX-=N9=GykoPQgppAZTZ=2a4RNcCZyQwuE9YPKV=Eg@mail.gmail.com>
Subject: Re: [PATCH 5/6] crypto: aegis128 - provide a SIMD implementation
 based on NEON intrinsics
To: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073737_637879_A43969BC 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 09:38, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> Provide an accelerated implementation of aegis128 by wiring up the
> SIMD hooks in the generic driver to an implementation based on NEON
> intrinsics, which can be compiled to both ARM and arm64 code.
>
> This results in a performance of 2.2 cycles per byte on Cortex-A53,
> which is a performance increase of ~11x compared to the generic
> code.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  crypto/Kconfig               |   5 +
>  crypto/Makefile              |  12 ++
>  crypto/aegis128-neon-inner.c | 142 ++++++++++++++++++++
>  crypto/aegis128-neon.c       |  43 ++++++
>  4 files changed, 202 insertions(+)
>
...
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 266a4cdbb9e2..f4a55cfb7f17 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -92,6 +92,18 @@ obj-$(CONFIG_CRYPTO_GCM) += gcm.o
>  obj-$(CONFIG_CRYPTO_CCM) += ccm.o
>  obj-$(CONFIG_CRYPTO_CHACHA20POLY1305) += chacha20poly1305.o
>  obj-$(CONFIG_CRYPTO_AEGIS128) += aegis128.o
> +aegis128-y := aegis128.o
> +

This doesn't actually work when building a module. I'll have to rename
the .c file so that the module that combines the objects can retain
its name

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
