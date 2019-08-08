Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FFB862C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=403ei/bXwax61dHvnqPewMgNVrnMMvNRxK76OXla5Xg=; b=U61yrbM+A1Ang0
	1OR+1zB5C8RW7sp7DOF6aCEOdyEQusWtJmKTp2t94cp7b64qzq4gtUsKGz/pD+f1q6JUeADExePX9
	htW09fy+l5Xn74NPlgvg7gIWDLYNaKjFJ3ib81v3Uw51E6QULY1pB4ATS+PATL2DaZFJLoM+d1yWv
	ZhkHf/tU9NUuNNEUHXuCbuC3i11pCeDbkRGLnLAKV4dFplmKWHUkviEdph3lHD2CxRtA5UHMLAkAy
	QoZ/iHce3ocZEAW+E86LQqIVXe8S5ht6VgleYOwFWTBHIkfrrkXXzmeQWuZu6TwcLxoh+4cyfC0CY
	9N7VPoYCTQ4cL87ysO+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviGG-0004RS-3O; Thu, 08 Aug 2019 13:15:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviG5-0004R1-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:15:10 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31D5521883
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565270108;
 bh=5yPzM5yGGSNATY9kmjyrKwemZkcgY7dISuXee3TjHbA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=r8LLjQSFOD5ZA2mugoq5PfbhvrYb2QgV1WP0LufxAR2YpULVjpPB2DqsCJ99YgWf3
 ybC/lYyEiNBMdDlf4f24jeP2nXzUoU26pgn6E0S9/W+NjWNk0YpL1aSWS6bCRgtYxg
 3y+rWBmCPDgsAGJrTYBT8OmYFX4iQf7MlbbLmBFE=
Received: by mail-lj1-f171.google.com with SMTP id y17so64300158ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 06:15:08 -0700 (PDT)
X-Gm-Message-State: APjAAAUFVw1pwNI3XDo7P3TQBub4hfu5jzqgSvCwlSPa31BNNnAhi1JO
 lOLFvrkfW8YElUvKzYrsaBtAeEvcvQLrTgP3Ask=
X-Google-Smtp-Source: APXvYqzWTwcs6TPkPrDTz+qUFZmx5IMdHV6tLMEdfb5Dbo2QpS6RlvnpGcLKMZOf3TR4vCBEsNVuYYrMDmmz/hVY2Qw=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr8417296ljw.13.1565270106316;
 Thu, 08 Aug 2019 06:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-4-s.nawrocki@samsung.com>
 <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
 <a56fe2d8-1f26-b462-1564-f23902f7dbb5@samsung.com>
 <CAJKOXPc8iFo=2JAGEZSC46N3sZae4+JcZYBCjpKysb6PFPzyaQ@mail.gmail.com>
 <669c6b25-eb7e-ed3a-72a2-ee155a568363@arm.com>
In-Reply-To: <669c6b25-eb7e-ed3a-72a2-ee155a568363@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 8 Aug 2019 15:14:54 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc01ViCcwpasJ4o+yxvz5r8v0D1h5F5dc4=s0R0Jn4uNw@mail.gmail.com>
Message-ID: <CAJKOXPc01ViCcwpasJ4o+yxvz5r8v0D1h5F5dc4=s0R0Jn4uNw@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_061509_322026_5005EBA0 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, pankaj.dubey@samsung.com, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 at 14:48, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 08/08/2019 13:31, Krzysztof Kozlowski wrote:
> > On Thu, 8 Aug 2019 at 14:07, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
> >>>> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
> >>>> +                                     unsigned int pkg_id)
> >>>> +{
> >>>> +       return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
> >>>> +}
> >>>> +
> >>>> +static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
> >>>> +                                    unsigned int pkg_id)
> >>>> +{
> >>>> +       return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;
> >>>
> >>> return !!() for converting to boolean.
> >>
> >> I'm not convinced it is needed, the return type of the function is bool
> >> and value of the expression will be implicitly converted to that type.
> >> Is there any compiler warning related to that?
> >
> > Yeah, but bool is int so there will be no implicit conversion... I
> > guess it is a convention. In theory !! is the proper conversion to
> > bool but if bool==int then it's essentially conversion to 1. I am not
> > sure what's the benefit, maybe for some wrong code which would do
> > comparisons on result like if (exynos5422_asv_parse_bin2() == TRUE)...
>
> Not so - since we use "-std=gnu89", we have C99-like _Bool, which our
> bool is a typedef of. Conversions, either implicit or explicit, are
> well-defined:
>
> "6.3.1.2 Boolean type
>
> When any scalar value is converted to _Bool, the result is 0 if the
> value compares equal
> to 0; otherwise, the result is 1."
>
> This is even called out in Documentation/process/coding-style.rst:
>
> "When using bool types the !! construction is not needed, which
> eliminates a class of bugs."

Good point, thanks!

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
