Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19B31B4EEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 23:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsxP6maxrX7Jo12ULE29ch7YD8ZFrIQGNPkNuugXiJc=; b=X2Izy3j16SZBmM
	1/AVUFznjuj/NlgL4B+joOOjJYYcfmeolGUbjQWnbknDugPSYbM5OtcZafj8BnV8hidxAZNUk5Hhw
	dn4B11BJOAOBrRwaNik15H5+nSYdZXdeHDVBrQ7Wq9ShrxQyKfNc5asywyMiUVBfDDt7KcX8hT5fp
	6v5e5WJYHH5NrSmXkrNVwMPv9WyNhKZ6SYSrsAqhOltTuhKSjLatHy/w9rNC4tiyDBLbUILr6FEUt
	Mzl+Y22S9aIKAiNBbrHoZMpv7KScIKIrrzk09nl5rwTQyILXD1KsQHVpvUzjYns+TZKu1qbnvj3W+
	2Gnj4ws1Rdn+rxbwegxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRMgF-0005G0-3y; Wed, 22 Apr 2020 21:13:15 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRMg3-0005CM-2E; Wed, 22 Apr 2020 21:13:04 +0000
Received: by mail-ej1-x643.google.com with SMTP id nv1so3039452ejb.0;
 Wed, 22 Apr 2020 14:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X1ihfPfQEm2aQwNzlV21Qu7y5TOw2uGbX6A635/ijcM=;
 b=a0cqNtVTTV+nhgMWLbfLbZJ1KDdwX/sQv0li7sAMa4YncTjRvmpf42R5qaJyoSk7xZ
 4fjblaEI1rkZU5E11tn1LivEd4rKY+iP0xqgwcoj0sWC79s6mY+p/Wvg8DMbuKUojeTk
 MKvLPlLE6a4MGwQsxRn1mzMVhI0UyQVxYWDBcIZ3BdQSMJNEk4GkWdo7ixo7B+9pTKz8
 nIvQM2yHiwbKRGcLES7cQFiaBaxGH+dI2un2gH0az0StWT7pBtvNwrPqdLF9J7wspqE2
 /Yj6lBV3bIcU57XdmeaokjOO+H7H9cVnl7HnZ0rrrD6/ox6h0Oh+VCg+zp2ZPVeBLn8m
 od5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X1ihfPfQEm2aQwNzlV21Qu7y5TOw2uGbX6A635/ijcM=;
 b=Vp9jERUZJfDh4Gqg3ZQulptf5qOZ9WbXWF389AETGrjm8bB26WzGMFQri6Uiwusv4k
 K1r7pH50pJXz/PiGLmGbtBDoY7DHeJzs+0o5LnqpkJ1kIII9xJeqFxsLA+qEoijpeBuL
 efJqz9YnPmgKLn11bo65iCOcfnGX+OW796Hqn03YNUEyOTFVB+Q9PKM3d1XwHQmZLehB
 K/2MK36bGb8zVvtJ9QNIJWco8tWGoupeKXeXnssiibNps258gf7SFV6/N0oDZlUz8vML
 b0xB5pQCG9k1wcWoy/yOF1REnprKAjDdejeuIX5gs2iOWXq9MBkxHtXWTyaFjASA+2pW
 VfKQ==
X-Gm-Message-State: AGi0PuaJ0I3wRs4REfRb8wEvKWv7S4pcytD9qSZWwtgZKHbo0IBH5NXw
 MYcMyfwHXb+OlYRWv21arlwXlt9Aai6AqKPBTOGJnqlkkyw=
X-Google-Smtp-Source: APiQypJFSh3bXWuJ7x6+DbhV4xicuxImfcUvi6SvtUeplKK7p+MxUJ6HoV3iLTo8/qjdhHIAUdqX4A3BxnHAJhLGxbQ=
X-Received: by 2002:a17:906:1199:: with SMTP id
 n25mr287851eja.30.1587589981187; 
 Wed, 22 Apr 2020 14:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200421134410.30603-1-narmstrong@baylibre.com>
In-Reply-To: <20200421134410.30603-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 22 Apr 2020 23:12:50 +0200
Message-ID: <CAFBinCAGP7ZE-OksaE=6E54r2e0VJk2wMTEwKU65qAoR4dQvxw@mail.gmail.com>
Subject: Re: [PATCH] drm/meson: add mode selection limits against specific SoC
 revisions
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_141303_103473_B7E1D0DF 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Apr 21, 2020 at 3:44 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index e8c94915a4fc..dc3d5122475a 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -695,6 +695,13 @@ dw_hdmi_mode_valid(struct drm_connector *connector,
>         dev_dbg(connector->dev->dev, "%s: vclk:%d phy=%d venc=%d hdmi=%d\n",
>                 __func__, phy_freq, vclk_freq, venc_freq, hdmi_freq);
>
> +       /* Check against soc revision/package limits */
> +       if (priv->limits) {
> +               if (priv->limits->max_hdmi_phy_freq &&
> +                   phy_freq > priv->limits->max_hdmi_phy_freq)
> +                       return MODE_CLOCK_HIGH;
> +       }
I think that this will also be useful for the 32-bit SoCs as well.
is there a chance you can move it to meson_vclk_vic_supported_freq
(called right below), where all the existing frequency limit checks
are already?


Thank you!
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
