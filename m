Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E31BB0DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lani1MsJNB24N/CjC/YiVPhuWiKkq4UnrkKz/S2UMB0=; b=pyLJw1hZcEWBxC
	hJNcKhcPbamunns0LSAl4MeU/UmGmRJKT878P8uqMQ2xxbRnyXGz8kkFFtu2UXM5J7RURUXp4GwOq
	rOCkQdjM8qmdEpyz5Q+waWNmLbcvASuYu16xr4tdQRR63whUvLA8ggJpMpYBR06LdT3zThE4TNLUo
	mRcLiyqdfNxgSOLrmgl1J1JPUOf74NFivfdqtr0qP9kt9pkvYX91DZifKThSx9jHw0jzuy3/J+tbt
	sA8mq8poSEMMFQbvajvy0Oxfg0Xp6T9+qPYwQY5SL0jKWSRTGCQk1zq3r1e+gmIfTeOAAcBbUkz7m
	VzWBMMiFluCOpXoJFlrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKHF-0003YC-Eq; Mon, 23 Sep 2019 09:05:01 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKGw-0003Wx-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:04:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id x80so9500316lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0JN1h+SdmbTH3kP7+d/LSAM256ls91/0oIY0PsAnI9c=;
 b=aHR6ZebyZ8DZpvzN5FPwizkSeWcTkugKWZ3zU5/wa6l5Q54ddMLdKKjzClEkVBcAIr
 R9Q0bAQBeD134Z05K7waWJ3GB31hRmYeoFBRNl9zeHVJguBN1TqCMfcnOhtE6FKLfkxC
 CB14f/dGMHvj7B3B1ElGiiHTXvRW9zUSm2oWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0JN1h+SdmbTH3kP7+d/LSAM256ls91/0oIY0PsAnI9c=;
 b=doL/NUQUz3iTjPocdjARmFt2ZSOnoaaRv71k0DN7FPxIhaOVKxWNu0C53p090E/Oiv
 TgpEWCaqlzXvnVzM8PSuZ1AKVWKFxxrPGWj3MWuEZSisQviIO1yLKrbRT+j0md/XJ5Lg
 Iy5b2ymHoC9y9gTHFuftA0Aj8Zy2LjIXQmb96MNDVxMeILVJ7pj5volGll794fGjRrG0
 W8DR30v6XoecnyjLeI5X5qV2PQn3pky77lnaBN5Ldcij3D6DA0mn9g3eMDWVTJJwrXKQ
 tYF0FsS1i1Na5LBDpvfVBRhPg5Eu/xMenu9w1BBPuIzNHjb5ZVxcddJ4Q5tslOzhYnWM
 mB1A==
X-Gm-Message-State: APjAAAVVgL7x9qglhMiBDB1D0cElAcJ5wB+XexPWvDznQBblKt0oUcUH
 CllaCJrRyqGQw/FOvnCA6lsEqjue3BS4FcU2
X-Google-Smtp-Source: APXvYqxE0UImPNGet4+HJgvkP3IVnXfnoznq6mWvl/4K5U7NnkgngpqSc4uPgwZPAR8lLmN00SF+gg==
X-Received: by 2002:ac2:5091:: with SMTP id f17mr16518413lfm.107.1569229480930; 
 Mon, 23 Sep 2019 02:04:40 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id g26sm2174673lje.80.2019.09.23.02.04.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 02:04:40 -0700 (PDT)
Subject: Re: [PATCH 1/4] pwm: mxs: implement ->apply
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-2-linux@rasmusvillemoes.dk>
 <20190923082459.huqpbz5eseonkscv@pengutronix.de>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <a6407644-0b5b-ba46-9435-0d14be9066a5@rasmusvillemoes.dk>
Date: Mon, 23 Sep 2019 11:04:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923082459.huqpbz5eseonkscv@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020442_959401_2D4DB2DF 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/09/2019 10.24, Uwe Kleine-K=F6nig wrote:
> Hello Rasmus,
> =

> On Mon, Sep 23, 2019 at 10:13:45AM +0200, Rasmus Villemoes wrote:
>> In preparation for supporting setting the polarity, switch the driver
>> to support the ->apply method.
>>
> =

> Maybe it would be easier to review when converting from .config +
> .enable + .disable to .apply in a single step. (Note this "maybe" is
> honest, I'm not entirely sure.)

I tried to make .apply do exactly what the old sequence of calls from
the core to the individual methods would do, and for that it seemed a
little easier to keep the old methods around - but yes, I do need to be
more careful than that to provide the atomicity guarantee that the
legacy methods did not. It's also much easier to squash than to split,
so for now I'll leave them separate - if somebody prefers them squashed,
I'll do that.

> There is a bug: If the PWM is running at (say) period=3D100ms, duty=3D0ms
> and we call
> pwm_apply_state(pwm, { .enabled =3D false, duty=3D100000, period=3D100000=
0 });
> the output might get high which it should not.

Ah, yes. So I suppose that if we're changing from enabled to disabled,
we should simply disable it in the CTRL register before changing the
duty/period.

> Also there is a bug already in .config: You are not supposed to call
> clk_get_rate if the clk might be off.

Interesting, I didn't know that. So the prepare_enable logic needs to be
moved before we start computing the period/duty cycles. Do you know why
it has apparently worked so far? I would have thought such a rule would
be enforced by the clock framework, or at least produced a warning.

Thanks for the fast review. I'll wait a day or two to see if there are
other comments before sending out a v2.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
