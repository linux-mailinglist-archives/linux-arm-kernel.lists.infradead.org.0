Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0C111D7C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 21:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwdwkbF+fkc0B/RiKIPi8jNltOnIGF3X91Ifc1mAPEM=; b=VSPi50f83MbQw1
	MGIn8eSpkQrStExry2U0wPmImVBNvcv6y1H1s+3+JWocQjrpNrM2X6rxZ+TxujkH/CjTDTCgmQVac
	FA//9J9SQF1iU4P3Y7Ba+jPXCAgo0mzHtHfnX8x7PVWfeaZd1no3YmNCAzPdQJ2axf5BFi4tcLBQQ
	jFUsLmg2/c9BxXzhn2RTdqbk16QOewMDPyrGi3zHfrmfDmF8Fv0/O0ywYj1Gt8esoP6ZW2hsgrtJf
	Ep81TfjhdBzmGT2jZasdErQKu2PsTgbVQECqFPErcyC0L4eAjAAeu6rVE+3on4PNf2uQ+9wFu6/FM
	FJgAyMa5H+tOwbYxC0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUxz-0006A1-8D; Thu, 12 Dec 2019 20:21:43 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUxp-00068H-2S; Thu, 12 Dec 2019 20:21:34 +0000
Received: by mail-wr1-f67.google.com with SMTP id c9so4154460wrw.8;
 Thu, 12 Dec 2019 12:21:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CPNUf9ZfNsHV45XZGqiBQJlUTUhc2MVRp6BnooBqqSc=;
 b=PWiCKDDHQTXDBMhA0UqRWD+7jcCKH5cKGxwZxSfLLoDKt74oV/6u1Mw27Tb0Tk/SCS
 THBjIGr1Ddf/jx4GR0DNmki5jRaovivhDWUmDv0HXvC8IvrIJjAkvDvHNOCAm2YTfQEB
 FJXDiS1pHNBS8iOtqR1cUPAHsg/HafsOg+HY3rIV1qHkmMYSy7yEqkZX5GTDK8J4C8cu
 thS6lWPM8wBx3sK9oRQO5IsMnItaytxHTxKuY7Hl5fQObmFe/a7QY/GA9acuszP/Q/mF
 foUUK4f8Sn/KcG9VMQr+d3VRKPBVc4lqb3UjpSUxRzXnbKvpxjejgDlKnuv537SvxBkZ
 9PxQ==
X-Gm-Message-State: APjAAAU7pmzDN4wT8H/8NM7xyNc5QMqIvrVr8U5YEKs1zeCDPoL7uP2D
 qIbEgxlf8l/M47fsnnTL9Rt9wJAi
X-Google-Smtp-Source: APXvYqzzbodyVYL3FNuaGg6Zp/U+21dUGiWWf3SbMNFJoJ0+vWDhCy4pxUgA9VjNMpaXXox/nvLRBw==
X-Received: by 2002:a17:906:3953:: with SMTP id
 g19mr11516560eje.227.1576182089998; 
 Thu, 12 Dec 2019 12:21:29 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id k36sm2772ede.57.2019.12.12.12.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Dec 2019 12:21:29 -0800 (PST)
Date: Thu, 12 Dec 2019 21:21:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 1/4] ARM: dts: exynos: Correct USB3503 GPIOs polarity
Message-ID: <20191212202126.GA3534@kozik-lap>
References: <20191211144638.24676-1-m.szyprowski@samsung.com>
 <CGME20191211144648eucas1p2065aac523ce190a5c0e6e2b5b11bd5ce@eucas1p2.samsung.com>
 <20191211144638.24676-2-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211144638.24676-2-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_122133_113232_3B2CA4A1 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, linux-mediatek@lists.infradead.org,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:46:35PM +0100, Marek Szyprowski wrote:
> Current USB3503 driver ignores GPIO polarity and always operates as if the
> GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
> USB3503 chip applications to match the chip specification and common
> convention for naming the pins. The only pin, which has to be ACTIVE_LOW
> is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
> to fix the USB3503 driver to properly use generic GPIO bindings and read
> polarity from DT.
> 

Thanks, applied (for v5.6).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
