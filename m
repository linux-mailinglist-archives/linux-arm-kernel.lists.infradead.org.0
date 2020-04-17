Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23E31AD7A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bRSpjysDwERZ/HVv5WnZz3lGFNIt4KQWHyS099wTwgc=; b=n0u1aADjcuFBkiIVm8F8Piwq/9
	w9McZAnMxTVFHBIFI+Svxy7nMwOggS//sBQkOOuUtWh9+LK9wlnWnl/A38zYZiDBqzvMxQbtCzHWC
	UQmegvZLCyj029MczJPSZqnwf2OPOhNzS2GSh4S+4+e0D/TIqPdg/jWZSvo5+p/AXnJlb7VJML++T
	si9KPwlvkqtH2onp9p1u98+B5qbVs+RGdR+kJDW84jF1NqfFsHosp2qAm+oac3iyFk9vf2BYDRQnE
	7u7DE0LxAJyYErHpDJmMFMtXXfA2Gs/16QsyS6oNuP9PuwoblWxIhWcl/JrtmzSQUGlYWMmTI55kn
	3qB+zFIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLfJ-0001P6-0o; Fri, 17 Apr 2020 07:43:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLf8-0001Nj-9h
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:43:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so1905074wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 00:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=7VxUyCozUFRQ3HWyk/FR84Y855XH8vC8ACtL+uxdHOg=;
 b=eepHxWx0UCQ3bBjYPAxbl27Om6GC70uRgirDesMlw0GcwtwctP16SCiHB+9lipG9Q0
 MgNdJoEZVSmbzmwNbFctN8vwR/E4WL5PrBitcvaR4Mv5RZyqao5nKchsF6SAoVjQw6q8
 1sBR/TQ8qY8RmucdLYRWbxuvwjwkdplwZck/fYRcvy1zb+UVhxu540CJET3ACX9t6WuQ
 IAlO3q/oQ0fiIwt/0iD1Y5oFpSq3BcdbdHfOVxTsU7YR4v7fa0aOShrllZ4IZQDEdY1z
 wcrFjOJJqsSYcm+HvrKBxOn3cHvgNXvN8UbAciWfiS7exv4J4Q6YoZlD4nsCuLB51+ze
 HL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=7VxUyCozUFRQ3HWyk/FR84Y855XH8vC8ACtL+uxdHOg=;
 b=t+qDhsEmoH4YiOJR3SRWCvWzuNB6MNutGNVLHeQBdjak9C+Nx36dS+kmKtW3TNLeCl
 hOu31vZNqGRAE84nOV1flEh18u2WLDEcRNSz5pc3tCj3jlusaI6hRxd7ZbT9ORlqtMWQ
 Bd5anI1x7nzgwi9hZA8Llqn9JROxGHTrytPmr+I3qaNGnEjy7uYoGP5mzkMifP6LMMNa
 5aPO4HDQRYhkwVODsWk9PtgOD5OyRgREXlyYkE9BcfO2pr0xA+ZtawddFyndYmOVU7Cs
 bMznIq3dZwxHytbeQeJjGW9fFxrZUhdHmkCHa2UF3lJUTZWrXzkWqJDRObwdpqDxKg3J
 OIEA==
X-Gm-Message-State: AGi0PuZLglP4F/z4k9GOA7C8unvFXs6+w9iDISYfJXPgzOWY7KZbxt43
 Pd72HyFb+lj+RV4qLRAXj8NY7w==
X-Google-Smtp-Source: APiQypKB/8+cZvXsHO1NRHGVVpm+LapGF68siOZwDYjt2dTxd7u+tUAFWwcTxeJ3csNYW5kgsVQ09w==
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr2124159wml.189.1587109423806; 
 Fri, 17 Apr 2020 00:43:43 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id l185sm6779244wml.44.2020.04.17.00.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 00:43:43 -0700 (PDT)
References: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
 <20200414200017.226136-3-martin.blumenstingl@googlemail.com>
 <1ja73bbtqt.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCAtSPTHfbr5KGNFFg3eo_d2p2q59fQfMXu+XkOb8WVrDQ@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 2/4] clk: meson: meson8b: Fix the polarity of the RESET_N
 lines
In-reply-to: <CAFBinCAtSPTHfbr5KGNFFg3eo_d2p2q59fQfMXu+XkOb8WVrDQ@mail.gmail.com>
Date: Fri, 17 Apr 2020 09:43:42 +0200
Message-ID: <1j8siublqp.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_004346_401053_1F5E08E8 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 16 Apr 2020 at 20:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Jerome,
>
> On Thu, Apr 16, 2020 at 12:38 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
> [...]
>> >
>> >       if (id >= ARRAY_SIZE(meson8b_clk_reset_bits))
>> >               return -EINVAL;
>> >
>> >       reset = &meson8b_clk_reset_bits[id];
>> >
>> > +     if (assert == reset->active_low)
>> > +             value = 0;
>> > +     else
>> > +             value = BIT(reset->bit_idx);
>>
>> if (assert ^ reset->active_low)
>>         value = BIT(reset->bit_idx);
> I can do that, but I prefer "!=" over "^" because the result is
> expected to be a bool (and because I'm not used to reading "^" for
> logical comparisons)
> will this work for you as well?

yes

>
>
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
