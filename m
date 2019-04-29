Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A409DC89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/n2GAHoQQrZu/WW+bSpRaSEdXP6Rmf9UKRe/XBssUIw=; b=Nd+warFw2C/RsP
	664mr8vN1tNO5g5/2JNSUpwYiIbHkqezevkJP+j9TpBcvTpuGl7JJKkeUhBuhYGmrHDcGBfEZvkzE
	vraIq2PhKILwEJS/4k7r8mCnYqts2NbsZmBFXRcLbZEJlK55GU3R4aPrCcZIRiQJa3MtU07G1fSUR
	sEh+Ye3JdbD5SnLzsIPVqdZwsfYSIrD0y7TNUNJfDydQq7sUxM86CPnwmZPhscHjJMyvn9jVTjZqx
	p8BfKJyqWnXQJSY8gPxyqabv7t0Icy4stfdXlYoTP1+JyxmClUTgDJopx63TQwz7qIBwcGeajNlR1
	/KT+fK9+DSgiKlpMcaDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Jn-0004Vh-8N; Mon, 29 Apr 2019 07:03:15 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cf-0005Mr-DL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id h5so7112816lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2mNSQUENRd+OO6kAsaQU21E0sDqHovQn3FQJZCp3E+A=;
 b=mEFOogOl2hAZA5U6qZswSy9bfFJpI90PxH1cpXR1UpBJyOp6XbDilE792dohqNmTTR
 mq6Op4CtXDVFlbW1QRQIfScqFRhrm1tyWDgTY07BUo48fAk/Rdv5j1/bV2SUmQGRYYTO
 RN7mhqU9U6vfKr1O8y/yFcDCxbPA5smdXUOx8ggXK2Ws9+TpVfAac/8KO2UCLthXcfTR
 x3LXTDblsWnBsiUXaXMl6obvF3PPRMU8fMO/Tjh9QKwm2pkbzATFO6OeoFuNgogKxZio
 1UptDlDkO5Wy2/fX/tCZ/J0BuijcsImXGEJn0/ZBKXlvZB9smx1N6IvI8yP/UfmBHujT
 yRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2mNSQUENRd+OO6kAsaQU21E0sDqHovQn3FQJZCp3E+A=;
 b=WOgIIHiPcQkda49xV++xK7Sx1fXuO2Ew5eRuiqawfNDjfrtctFIGRXjFWGC1t5g5S2
 FGqKtKVM7U3QOISCSHLnPa1ors9qftapzNlcSsNBg8Onrel5y1MFQktbGFe4yHar5xfK
 uAciHW/bLR6PXMImxSHDj9KCLabMDVqHuFj9wqLNKMQyhxnv1RGXqGALEUY8ZPNMJ284
 z5p/pb+z+f5wN//tyRwf6O0WTNGhrThGtw71WXOoM5f/MJr65d10SWXiLpDRqYsGZDGY
 2DpcGAdoK0VeUQsgCaRzXgg9roqsjeTdlaPXNvNnfzmjCQFDBO1yzhlHkbxryuxMHTns
 xYgw==
X-Gm-Message-State: APjAAAVYORq9ub9EtWQHRxDxILXwL9WxBHEF5PHitHdnYDL2dhXP0gLe
 BpOrgl/JWUUP8mUlCr8EiTfpU5RGqWLAug==
X-Google-Smtp-Source: APXvYqzAsEv+tsNtdhETsmAqFPGgw59ipUzfw+huHzINrHvdFCO5LOLVYXjCq71QDeNmiOoiNAQNVQ==
X-Received: by 2002:ac2:51da:: with SMTP id u26mr31416674lfm.32.1556520951858; 
 Sun, 28 Apr 2019 23:55:51 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b20sm6721906lfi.78.2019.04.28.23.55.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:49 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:21:39 -0700
From: Olof Johansson <olof@lixom.net>
To: Jens Wiklander <jens.wiklander@linaro.org>
Subject: Re: [GIT PULL] tee subsys for v5.2
Message-ID: <20190429062139.6bycwzbes6wk43ea@localhost>
References: <20190417160120.GA19526@jax.urgonet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417160120.GA19526@jax.urgonet>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235553_969024_2857E3AF 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 06:01:20PM +0200, Jens Wiklander wrote:
> Hello arm-soc maintainers,
> 
> Please pull this OP-TEE driver patch. It allows the OP-TEE driver to work
> without a static carved out shared memory area.
> 
> Thanks,
> Jens
> 
> The following changes since commit 1c163f4c7b3f621efff9b28a47abb36f7378d783:
> 
>   Linux 5.0 (2019-03-03 15:21:29 -0800)
> 
> are available in the Git repository at:
> 
>   http://git.linaro.org:/people/jens.wiklander/linux-tee.git tags/tee-optee-for-5.2
> 
> for you to fetch changes up to 9733b072a12a422e2bf17bc7ba8b39769853d4a2:
> 
>   optee: allow to work without static shared memory (2019-04-17 17:26:33 +0200)
> 
> ----------------------------------------------------------------
> Allow OP-TEE driver to work without static shared memory

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
