Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8901954AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iO/lBHdSmy3o72QkOmcMbqEC3LU+PQPEShNIB+Q+6nc=; b=CnA/m4qhRWGlv6
	wCcTJcBrehJoYEJPfFHWTiqMg+w2QkMcee1Hs33sbLUZ5HlnLhPbGCok/lPBTxrJRk3+0E2EBc2nw
	dr+Bhqhzplmp2MWclUB7juylGOwJQjbCp8x0H2+xE9XOwCZwsQLyKJ0o3sqXn0tKi4Y/C7vND8yCb
	nZUAPn46ZtzjCbCCH+JNktd78MjTNRXAcjtdWuGUcL9yaM4eWNOLb8J20Hg8Az3CGBoXCfnvaEEZH
	IGlWxcb60kcKBfB3kAvEd/kTMRaUcDOQvV3hRgkzNaB1i1s2vStwNOno5TP5GoMfk1aZEpsiLPnZm
	duSnueNSzPkMp4GZt5mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlmR-0007Jl-9A; Fri, 27 Mar 2020 09:59:59 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlmG-0007Iv-3R
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 09:59:49 +0000
Received: by mail-lj1-x244.google.com with SMTP id n17so9537115lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 02:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iT9ew65Ai4POSw9apePAlYbX2sb+iJXvkgJnQxpRw0g=;
 b=cWW3YcpEyyYutTrNo9KR9HBH3E1bK+HR2Lj5S1ufOBfKm/JNDbVKgSTehtTbK/piG7
 AKjHnGwyvO2icmwsa3kFw6Zy9abidGdYmBJm7RwikCnCpiGoaqgq5m3bGu0GFONHPovH
 s0c/WvnYnPEvbNXNyKweaiea++yeq0zcHNyQfUxojaI3SyGLY4+iyWjDQ0x68SaY8Drf
 JMetNVWiEP6KTRh7NjcfaAuyl0sKbJRnuDYUHwbVm3S17ouQgtixys00HdZ8IS96Ovz4
 pek6sQ78KGlTRqT5w9MPDkgc2TCFzKlFMmuVNKZoTHdy8naS5UOmiEGTokrk8DVStpkg
 Jd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iT9ew65Ai4POSw9apePAlYbX2sb+iJXvkgJnQxpRw0g=;
 b=WYJ4D0y+V/U5N/MalSyvnoFbQhkgJ1WPE8zIKQD1SbvKYEIp1RSU0w3gUbeYLV0IeV
 IL6THKstjhFovcr0Qwv0w9f5HaN5jFgcyvgWaVGpDb9moo3udlUD072nVPAWX2Mz7Xwa
 G5oCCY+O/C75f4uj2+yAdNikr+LoX2DmG0SJpXKJE20zljrfzigF8WPVxeOycA2KRBEI
 MeDr5TtG4GD1EmRpZ28f6vqjbRgUlMcohDn4hGj21/L7c5aPSBlMd8Wd3WNAEBHiYVIL
 KTZdaNZ68fVevYiL1865Qj5y53yBMOosEk5eTXoHMsca1k2kAVewnzYl+chXlkhAZWWQ
 diEw==
X-Gm-Message-State: AGi0PuaxefniDNuNpyhMqYanaPccg98iKHV8/Clj8Y4f5UoI81J2oy0e
 OeAzP9wEfsKQDTkmhQAzDUD1LcJncaiXtpuZDOiBzg==
X-Google-Smtp-Source: ADFU+vsFTyW5diEMQrZ6oc8ojCeBX7BYjVmipZYNTS3SNNq4tTiZwvSWUqKgPn07Ht2NDQ7OLG9B8uptAVDDcyFhwxQ=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr7685010ljh.258.1585303186378; 
 Fri, 27 Mar 2020 02:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-4-robh@kernel.org>
In-Reply-To: <20200325220542.19189-4-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 10:59:35 +0100
Message-ID: <CACRpkdbWeKjd6B2mLz3+7LOxSGP9FqSz6YRp_YHx+2qHkJVFCQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: Clean-up schema errors due to missing
 'addtionalProperties: false'
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_025948_159284_065599AA 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 linux-iio <linux-iio@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM list <linux-pm@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, netdev <netdev@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-media@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:05 PM Rob Herring <robh@kernel.org> wrote:

> Numerous schemas are missing 'additionalProperties: false' statements which
> ensures a binding doesn't have any extra undocumented properties or child
> nodes. Fixing this reveals various missing properties, so let's fix all
> those occurrences.
>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Hartmut Knaack <knaack.h@gmx.de>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Guillaume La Roque <glaroque@baylibre.com>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-iio@vger.kernel.org.
> Cc: linux-media@vger.kernel.org
> Cc: linux-amlogic@lists.infradead.org
> Cc: netdev@vger.kernel.org
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Sorry for errors caused by me,
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
