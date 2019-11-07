Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF68F2A29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5T54qUnBc3DhqukXh4q+usIrEtD7+NOLapYyp/GIaE=; b=S9c9zGJmVS5g21
	Ti9f6UeJCRSGZcUaogd/hE8z5xlmdrmr3sFivp46JUCbYLD8CuQdn0lUsYaPGfnr/S2NtM0BtXJ3G
	199Zr+fMf+9NmWbW7CTRGliNhu9rPrV93zwnw5915C2WwS/Z/oFGPEVv9t/jkJmFPUJ7Vip+xUlG+
	fpHV1SPR4AZp1Wi7zEnOWhCwtZpsaxnWy5LE2OEZTCSxrRLLcEopg/s8kj/+wZkDUw8RnyLpI8KoZ
	vHZJJHjkjiyzW2q7CIlZJittvJjMKC2eRnEbao2TiBOxv8/iT+3weZZGTVXqwcJf0BZGFIRFIcIA6
	82Z07B+zg+hSP5SLiW9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdlQ-0005c0-Oo; Thu, 07 Nov 2019 09:07:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdlD-0005Z0-Nx
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:07:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id m9so1360832ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 01:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4r2I4GWCi4/JcKwrvsl/b6YhN/4C3j/fmn4xKNtK0ZQ=;
 b=ux2FovIcG1zE1vslYMh2o/uYdWYD97faEpyQnorZ9gkQPiRWvlS2RTooMZAxvF3su+
 OqoHPDmvTUAi47XsDElIJWqgC3LO7i9KEuHpeu7FdNJRgfNfkzqPuAqSyPGzHXjMB3B6
 q9wjlHMeQgdsM7gIdR9S7L9ABnXjRR3GhZaPvwnscJwgO+QS/Eipa1O756bS8o8tMYgR
 uPt/rdMsJw77oSkg6k4BQQLd2cS3JqRU6ZzLbEl1CJ0K0AT0BeYhuoBj1UyAfOdehm9A
 YKs0s1JZ16Km5J4MR2gu5hILMegt1bUWBpQOx3xf72iFOTqNaIeQ7vGXgdOpXJ5gKTRF
 /4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4r2I4GWCi4/JcKwrvsl/b6YhN/4C3j/fmn4xKNtK0ZQ=;
 b=q81Of51tZXg56teBKuYdR7ksfw9lcq+cQ7hG5CZ5g7nQs+3PQcx6nRuBzPkRQk7TzJ
 gcU2wYg8hVPHZur07LKY31IygeQO8CTDwNcVohH66BJ8MS39biAbaXlMlY8a5f6IL8/L
 1HKGsQkPulEo+IWj6qJCal5X0PygVXKdKjncY6zOLsM93aJ6sEAYPvQq49GDnjhdjNIo
 aalEeNDcJk0GXvydtP+ApfBP5+2yRzlHp/fMTk6qCtwqHitXX6hAMFTlOkBuHf3895vt
 h1RLmoxU3Oiz2QsBtbi6MdClcVLvnYtrj/yIODphfUhfHhhBPEPLi40IEn44OPzGZGry
 FetA==
X-Gm-Message-State: APjAAAVv4lvlh/VtwWPB5Bq5AT8Fyb2n5a59jJ2+hDB4t+3TvbeyUAPc
 dQteJXRjiFTG4t/xF1mRqDXSatqT+OF9ksJmCVcV+A==
X-Google-Smtp-Source: APXvYqwocIIrCbyry8zer+NUwVaV5Dx7e3lBotAXLq/eYxTJbRgLBTjLohnii7mCSBObKiM3W3u/8TT7mvEO2yLrxeg=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr1583378lja.218.1573117642202; 
 Thu, 07 Nov 2019 01:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20191104100908.10880-1-amelie.delaunay@st.com>
In-Reply-To: <20191104100908.10880-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 10:07:10 +0100
Message-ID: <CACRpkdbFyTV_8aJko8r1+2vXohHfwoJy8ujTofUC0ruG1PeviA@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010723_842580_454827FD 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 11:09 AM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> With stmfx_pinctrl_gpio_init_valid_mask callback, gpio_valid_mask was used
> to initialize gpiochip valid_mask for gpiolib. But gpio_valid_mask was not
> yet initialized. gpio_valid_mask required gpio-ranges to be registered,
> this is the case after gpiochip_add_data call. But init_valid_mask
> callback is also called under gpiochip_add_data. gpio_valid_mask
> initialization cannot be moved before gpiochip_add_data because
> gpio-ranges are not registered.
> So, it is not possible to use init_valid_mask callback.
> To avoid this issue, get rid of valid_mask and rely on ranges.
>
> Fixes: da9b142ab2c5 ("pinctrl: stmfx: Use the callback to populate valid_mask")
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
