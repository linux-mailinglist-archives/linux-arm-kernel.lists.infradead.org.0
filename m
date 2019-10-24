Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DBAE3186
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axF2rhNV/GMYlacAOqn+46oTMHdjZVBkfXvvo8L8jys=; b=eOwySBJW3Xo7S4
	8hZu/UIHglWPW0Vvq9ryonwh0Ieu1DnMEMlWVMhAxLhvkGRqteB8a5yHxL6LAgPv2np5gc1sRXg9i
	RbQ+i9Y/Xq/eMtD/z70fmd5KhI5KLqNeR0SQ3VFDboLJ8sy7dHWNz/GhqC+uB/cYAKuf2UV++R785
	1B4S4eKKDEoIz5BZniE9J27+eZq3zgJ/SFE+VlF5V7jk5gSTxNme607SOZ/UfHSmcLx8QN92OnM4/
	n+27ugto7xv6a4b9XCAdyRDv9T/mgVYR3CJIYsOd5SC+AIs7QCtEfbLNU2QZEg1xgm/rzUJ1adVfZ
	I+beZOQXFCBLbpmbyZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbg3-0003SH-VR; Thu, 24 Oct 2019 11:53:15 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbft-0003Rh-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 11:53:06 +0000
Received: by mail-ua1-x944.google.com with SMTP id r19so7040275uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 04:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q1KiAq2b3z/Z+oO2kUL2b8SkIvQVsNiMUo4648osU6s=;
 b=CPG7f8FL9wOLdK9nhKnhAgR/LLHSeGiIsfemayzM3YOM8k9DvqtDznLrnrK5HaZW34
 WuJ1PDvb7d3Atvp9n5QVciTPz2djxe8E5PYkMZFxeBtYzoQxasezhAivF80vRCYjuHDZ
 Oau45TlDXKUS+xiX+T3OVtKal/X3GH/4RwyLNj5iE5M1lvnSC+E/3fz0ofEtGdT5ZGu6
 Ez+BoOyCsGvk4IMmxp4ga/qiVxvLNNl4q4ERovcOQA+hKf6aBIwFxpf8qZ28vRRpUUcx
 5PaAzGBUbmh+gBHzmGOfXNjEUs/4TTi4rIM3bnGsP0DOTkMj3OcheKRC/H7By+liQp7Y
 m8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q1KiAq2b3z/Z+oO2kUL2b8SkIvQVsNiMUo4648osU6s=;
 b=DSV6YSH0+QW7VC3a/XkV/yAA7cL/vEpSR4SeTCZaxeNTwkISU6lAJuObmwt3RAeqly
 ON5Go5Aheuf/hOY0M/ME6x2a4Xs2HNKES5SxeSd/QcMKhKHSBVibhfVD0MiHO6fLmioQ
 ybvZsyxmIGURyaj0GM2p07NZdMl/YA5PZDh3Eo+Shz5bwIzvUUNME4QxyweBv9XdGe7F
 9eus5erYSshdO85OCoFqtTGGsz6TjMQezQZDAJJWnpxP1R1Bmb3EDQ7tK5Vee2zENmIA
 BwKOYFu1kLxPNz6/wQEmSr3Zx2oUIY2nd/H32JHrmZqARLr3d1JsG5X1H137OXFNvj37
 ATvg==
X-Gm-Message-State: APjAAAWKsM04d8QUZ+PJqhkbMVZdxlhTBFY9swjymoxom2m5uNAxi1ai
 +pseBc5yBinNRGW10Oquqph/WC7pYE/8U7lukumtrQ==
X-Google-Smtp-Source: APXvYqyY6iH8uNxzgTDilZDyz8IFIHovN0BIzfSE7mUMD+SKYWqS0pz2SdLZyWU+lC9L/MycjWutzQj5TgAf2o9qcso=
X-Received: by 2002:ab0:7043:: with SMTP id v3mr8383913ual.84.1571917983366;
 Thu, 24 Oct 2019 04:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191023152634.GA3749@nishad>
In-Reply-To: <20191023152634.GA3749@nishad>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Oct 2019 13:52:52 +0200
Message-ID: <CACRpkdYmE9uQOJzxHBjcFa1mwr6t1G5FJ_fE2aSdKJB1fxEhsg@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: Use the correct style for SPDX License
 Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_045305_485822_30322A38 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 5:26 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:

> This patch corrects the SPDX License Identifier style in
> header file related to ethernet driver for Cortina Gemini
> devices. For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used)
>
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
