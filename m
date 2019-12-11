Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14FC11C094
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SObEKPW0KpKmuixgNkBt6CU8DKiAeYzmOOsftAicK+E=; b=loV61TyMyKjMyF
	orMZYanZVSVeUu6nM6aRZujGV7cjsK/O8crMQ8nPJvadRFK9ryr9KuN5XsPoVuOXgTlEOgOyVjBeu
	Xr4Jd1LzTWJn/Way92k0ub0PJJlvVJ0a8WxGONweadkMUUUEkbCuJ31KNb/SG0ySopYEN6A82aP2v
	rFe3TEys7yM3fK+BNwWUoPssChwfuxn0SDoAhbl2t/hidY5lkBgGBlfFQ6S2ZDNCr5XGVEhoRUa8j
	DGsDiev1/9JXAEhV/F4PdcMyH4RYP52L/RdyDbATW0kwKi9qdkvdZRRv2qqhmMnyJ163VdX56JMXA
	EhAFViDqIe6RTiHlSFKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBRG-0001vJ-Cm; Wed, 11 Dec 2019 23:30:38 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBR7-0001tz-6L; Wed, 11 Dec 2019 23:30:30 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so409297otd.9;
 Wed, 11 Dec 2019 15:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wo2DrsPScaqWz/406hvbFYY2i2G774jt9t2caPRqht4=;
 b=WG+kAyWhgZduGDz1I263pCUNhTioDwTPtlcDogpt0fuuEj02mg9GbRaLUG8M4vXrSX
 SKkS3h22vI1lmaWEoLEuyUXFPktrN4xG7YYgD/MmOOGH83jZnr+pjK8jfI8ustPyGiLJ
 y3jVqAjYVrIS+knqYk67SKk3/IaX2uyo6w1QojI8p/fo0AZ7VHuauWc+1WxQeKeg1VUf
 Rzf59N4VMLshrcp1q1Ru4s3tBw10XBtx9tRvJREq7uCaLtLw5F96DHJU3V0+hrIJkRth
 cl2ttp+xaQB0bsPFhZD+ACO8GDU10cFazN/xsB2R7MS6NDaHA30YUdoRAMYHMM5VRSrU
 dXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wo2DrsPScaqWz/406hvbFYY2i2G774jt9t2caPRqht4=;
 b=m+CMB5hyzL/vCW148bfAdpxtDQGQEu31xDtInASvdd3LXj0nkCWU32j9W7nMsv0yxz
 AbYluUTqVjOtHcH/CadQvtq29tSt3y6TC5FdXdIOW5CEUASLSEAJG4TNnldmYKFlJ93D
 UBcwvskXnyM0ZjhaQckJKjI9CMTIgKE5tdr83Uv7mgw4MY091dcXj7iYqUDJueoKo8TJ
 HCq0ZB+OGaE+b4oPObix8baFEv9mGU55AXaabPmo0y9/IzCZmXvb8LNNvNJLH1fae15M
 cxUYV6ecotYWTmUCA1E5DkiqjZad3RsN+DTzsXfYpH5BztBMbOynayE8XWSUYoBUM6fq
 9gzQ==
X-Gm-Message-State: APjAAAXenSJL5byYWTQpZLsFKepgMyFM+/LhN8EzUAvmOEbEQMD50sY1
 zQ2fFpGjEhuJY+HX8Kj3/Kf3ZFeeyt/q8WSZfF4=
X-Google-Smtp-Source: APXvYqySbfqFjtZckmVvrGyt+TLd55uZV4QCvovifobxpRMKv6OFRut/+vfst3rusYBBQhpUVUpr7xggySRPe8lIiLY=
X-Received: by 2002:a05:6830:2087:: with SMTP id
 y7mr4371038otq.96.1576107027197; 
 Wed, 11 Dec 2019 15:30:27 -0800 (PST)
MIME-Version: 1.0
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <a4610efc-844a-2d43-5db1-cf813102e701@baylibre.com>
 <CANAwSgQOTA0mSvFW5otaCzFPHidhY7VFcrXZHjCD-1XkQpcx3w@mail.gmail.com>
 <20191211095043.3kngq7wh77xvadge@gondor.apana.org.au>
 <CANAwSgR-fT21uBSP747MVkXf2GYqm_6kcne059pX-OegftLSZA@mail.gmail.com>
 <CAKv+Gu8HQ7RY9WSYZrLUR7tNjuybF5sp7xe94VLQpJrDSRg4NA@mail.gmail.com>
 <1229236701.11947072.1576070229564@mail.yahoo.com>
In-Reply-To: <1229236701.11947072.1576070229564@mail.yahoo.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 12 Dec 2019 00:30:15 +0100
Message-ID: <CAFBinCAxq-uW+gsmb-8wqxHGXt2W+4w9iD++2fL=FQ7S-RsAkw@mail.gmail.com>
Subject: Re: [PATCHv1 0/3] Enable crypto module on Amlogic GXBB SoC platform
To: Anand Moon <moon.linux@yahoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_153029_264662_C1FE9625 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Wed, Dec 11, 2019 at 2:17 PM Anand Moon <moon.linux@yahoo.com> wrote:
[...]
> Sorry once again I send my logs too early.
> I still having some issue with the Hardware glx cryto module.
I'm surprised to see that you managed to get the GXL crypto driver to
load at all on GXBB
as far as I know GXBB uses an older crypto IP block (BLKMV) than GXL
(and newer SoCs, called "DMA"): [0]

so my understanding is that a new crypto driver is needed for GXBB
(BLKMV registers) support.
the 32-bit SoCs use the same BLKMV IP block as far as I can tell, so
these would also benefit from this other driver.
(I don't know if anyone is working on a BLKMV crypto driver - all I
can tell is that I'm not working on one)


Martin


[0] https://github.com/khadas/linux/blob/195ea69f96d9bddc1386737e89769ff350762aea/drivers/amlogic/crypto/Kconfig

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
