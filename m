Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0618E2B9AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 19:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evPQ2GDOLBTSHUECm88aF7Ayq2bQB8wiSc2mU0zznaI=; b=LukDHnZNNCn7C3
	4GkNGbzIfMiKasXjCxNLwamEWDmC7ao7S2Fs2ybweXKLjiXzz2WtP+Y3rRGTwbeF6mLYqFeUG8Opz
	7Ay1FCvZqQVnsfjQ8cUM7m4L9Xwn6z7MR1RLf5ayaxTldvwQg4pmtIBsZ7g3bLY2MZ5hbCZOH2+KF
	oLH/2POGYUShcvrQJ0Obs4ywf1H6oqr/PysXGBkNTmOjHjmDRE65CBte0Fkmw6FSAmJ2692kR/NyL
	9/OTYeKFMoruY/0Lc1t4lRAqE6DDji8rUrGAAUo+V4+EIJXC7z52pyJ7W+yWr/qr2EwXdIfgbRq2z
	InExf6+Ca11Rg8lA0pwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJuL-0006mN-2N; Mon, 27 May 2019 17:59:37 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJuC-0006lL-RD; Mon, 27 May 2019 17:59:30 +0000
Received: by mail-oi1-x242.google.com with SMTP id w9so12406490oic.9;
 Mon, 27 May 2019 10:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EJGfKoNTtpHONAVVUy19xvP3ls9YinFzlhtPvuaaZVE=;
 b=TlKlSZ398+uKs8zrRJn+n5ZCxMASWZOWoRpwb/v1xRubZfj4EfH4TbS1Im4gJ3BxlW
 RS/MfkHzp0Y0zDIu44W/ZwMUbHjuC8TeawiGy6x1dpyNpKF2ltyoxFXHfYZnpTZU9H2z
 EI2jcg7Iifru4vK1s0ED8+JY1Jf5l4rGEy4C82b6A9p/x6iNPchqKyEAKBBKzPxzJaD0
 dxmaZai1MYO5bpF2MznXexA1FneahbyAbk3l07g+TvKj02TnsMkf4kGzJh7R2h0LdS/x
 gK0adkSqtjqbTC08gpj96V+YKrIs7pTOvpKH2ukDKFKcbII7X1bPmNzLp6aQWMFgQk9/
 0GWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EJGfKoNTtpHONAVVUy19xvP3ls9YinFzlhtPvuaaZVE=;
 b=hKNZu+rYAEXnrd35RHgHgHYPoXkYMFKzFA7AWSq0GreC9HReLao2/JkIM7BOI5X4zx
 xpYf4M+W4D4/p1KcrqBDliFeC/xR0vrV/HOPTjd1wbi+naWtudM3mYsr6sxpCy/RnA9M
 YzUh36Dye/TUYNJ5mzUGeNRzk/8j9H+EwYNEmBkGFeW5Ybj2/ltWjZ63+2Y1Zo+JLZlp
 sqNFn0LU70A3bFguR1+u7Vrf4J5c1yhjwPJWsfqAHITBGRcfy3QpzVlTiNyvLUqJ+aPl
 9tyfqVF7pyLTrdlo7jrcw2BEseYb1o8jyp7jAqoLLn7otpbFWxLwFDsG9uVPnjV+h656
 AQrQ==
X-Gm-Message-State: APjAAAW1Y6v1W2eqFz4cplcCtuOKf7Ul8/NZetk74wTFGSQNffj9V6qe
 3CWlb8jC3qro7z8Y+tVmMKL73aoCAsTnzQqgPNY=
X-Google-Smtp-Source: APXvYqyztf2KYxq0XQAdm49QKiZVOTLlyp/9w5kkaygaCobcIDARngGgN8JL9uLHbk6VK7SzwYqlTkjQZchECqhZCkY=
X-Received: by 2002:aca:3545:: with SMTP id c66mr110836oia.129.1558979967712; 
 Mon, 27 May 2019 10:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190527125059.32010-1-narmstrong@baylibre.com>
In-Reply-To: <20190527125059.32010-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 19:59:16 +0200
Message-ID: <CAFBinCBJO3J1wG1wa6X26VT6yGT_c_1XHOPiPpMRZGW8KKxopg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: meson: g12a: Add hwrng node
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105928_901962_90B03DEF 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 2:51 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The Amlogic G12A has the hwrng module at the end of an unknown
> "EFUSE" bus.
>
> The hwrng is not enabled on the vendor G12A DTs, but is enabled on
> next generation SM1 SoC family sharing the exact same memory mapping.
>
> Let's add the "EFUSE" bus and the hwrng node.
>
> This hwrng has been checked with the rng-tools rngtest FIPS tool :
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 1630240032
> rngtest: FIPS 140-2 successes: 81436
> rngtest: FIPS 140-2 failures: 76
> rngtest: FIPS 140-2(2001-10-10) Monobit: 10
> rngtest: FIPS 140-2(2001-10-10) Poker: 6
> rngtest: FIPS 140-2(2001-10-10) Runs: 26
> rngtest: FIPS 140-2(2001-10-10) Long run: 34
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
> rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
> rngtest: Program run time: 30000987 microseconds
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
