Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772AB831C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwfEViG6P+jn7psUbI/EVA1BFZCtVJbmoJWFiTFsVIM=; b=CJukr2GHogHlyj
	Per+UGF7RMl6r+P/UmEEpuc6didBHaxe9+TXnlQog4rxp0+xSFuL8PvSH6Jf/KBas2n/VrPL/oqpE
	6MbvyCdOk5WR01H0XSzFAoxDdAk40a+2+t/ick719aOGb5sKY3Ef18kctV2jeO9quL13bDqSDgCGT
	ghZVBijSsUkNMYLCToi51RPeMLElE+ISZJXSVxznqe4HjgGfjDYP9QsR3bSr5A2TXLdpw/KItLn8T
	zmnruduHZUnhjMt2Mxw4IDpQ3jmNM/+wUlw8wKVUjTut5OZvpcpmKeeb9YLc58U4BGvRCWswIjW+O
	miw7Xr7s50XpSJQAiMyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyu0-0008J6-AS; Tue, 06 Aug 2019 12:49:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyto-0008Ij-37
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:49:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id j17so6982873lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dE5JuDdEA/pQScNByPn3VC+2psga/+uhIp5+6Lpb/IU=;
 b=CfdkpelcPzvwnG1MdqcjcMyI02MUVnNU6luZnIfMDPb2TDvDh/PMhfidkJDiDm5vjw
 TSvW1XIVaisosJn9owSOQNrRfN01cs41uzJMTlM1VsZX0cW6SBzNzVZKo2WGsc7xHA/y
 52dUv8uwgMs+ujW6Xv1T48Zb1XvjfjCWbXCG46cuulJ68eqIsTcpjWkGSqGqJIk/zhKt
 FmDBpMi8Fdr7o1vGrpM/XkRced54b6WwHbfhJBaJgtO7Nxsv4XjRHbsliAGTfPn5nSRH
 4P0r6a4S4hwn0ipXQEhPdnBvxTjgs3aWXnX3Ob+3gbZvc/hC66HkM8kC7oWs5VCWX1de
 wM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dE5JuDdEA/pQScNByPn3VC+2psga/+uhIp5+6Lpb/IU=;
 b=a6/OdRk5AoZN2nSnzVF39DkfG5QzxfCcctJEN1IUPHBfZJavbzOylqmmJeLATXxrYU
 gOvWPNRg2SyJQjlfpEq7MTm9Wy86zA04oF2wQ6A4yreYmK+oXvuazgfMMmv4dJsfmTdI
 QRxzghP8uGA6OWZjjSksnxMb483SabE8PzuYvpj6+DWIIRrjSG8TIm1xSFRUbbQ0cfkM
 UMA94e2cJjHtzft5B0asK/2EtEj2+MKyJKenpYfm8GwKIgqBKxJHTDudsyc6RABJroe2
 +Oww7Ey8S0iakskO4fWixgzBfIZ2AQIUCBNeSaabbAax1/6HwisldLpELOo+KSQCUgP0
 mQZQ==
X-Gm-Message-State: APjAAAXJIJ84wSaG9QDyPOxRo5yKv/fb+4H3KX/pfis3W1X1h6NFGCLp
 nujprd9niPvdsDNrNbQX2CTDcSB6/BE6AULB9LRuEA==
X-Google-Smtp-Source: APXvYqw0Wl1Q08gOWskV45KZ1hlu4YydCL1Uqb2v8Dojvc+PSoMPhvxKIqVPTrhNLCBWwALS8FyzMEW+/49Nw/ggfeM=
X-Received: by 2002:ac2:5dd6:: with SMTP id x22mr2349039lfq.92.1565095745984; 
 Tue, 06 Aug 2019 05:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190806024923.34355-1-hui.song_1@nxp.com>
In-Reply-To: <20190806024923.34355-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 14:48:54 +0200
Message-ID: <CACRpkdZ7hW+hSC41JqjqfLrwWvRY80+_8sXC89OhN7SwVtU7MA@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: mpc8xxx: Add new platforms GPIO DT node
 description
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_054908_144995_6ED07663 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hui,

On Tue, Aug 6, 2019 at 4:59 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> Update the NXP GPIO node dt-binding file for QorIQ and
> Layerscape platforms, and add one more example with
> ls1028a GPIO node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
(...)
> +Example of gpio-controller node for a ls1028a SoC:
> +
> +gpio1: gpio@2300000 {
> +       compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";

What you need to do is to add "fsl,ls1028a-gpio" to the list
of compatible values at the top of the file "Required properties".
Please send a v2 with this fixed.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
