Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E0B802BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPG/jnvzM5bYrvjWtFq8zpyE/pPgKkRz+MQ8ctby8KI=; b=QX8mcxC4JQoSZJ
	L66GmtLhyTFGq7/Oa1dfuvExCvBOMosDI2JMENKhHJoFKgrUXIWI3FViiInPOT1rzAgi6zVt1hMe3
	KjNMzwWunqJwZH7jAuuWaSEb2GES7MOKncu9VGg9B02YGFLFRGyiBX//L7n9Zpjiri+t5EokrV4M+
	0Qpw3/bBbTKld13flG2CODRFz3kQkDliAPsayuzhNXMaZI7OIPJ/K5Y8hbKrUAcGswAFHn1TuVHk8
	BzFwimFIF8aOQtC1umlkggzvssEE8g9KrYW77RtuneM1T4v1YCjriTNdkBW7J/0G9KbMLoQzhZzcA
	Ekp2qP2+FXEsvab3G+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htg5L-0004We-4s; Fri, 02 Aug 2019 22:31:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htg5B-0004WK-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:31:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so49698710lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8tQh191xW5z/uqwcXTQaR6iRlPu4dlS4JjUPIzXI1i0=;
 b=L0evPFMisUlfcr0ejK8sxz3FR7curgkYcXNQl3aE8Ndyo6Zm2gmWpA/JzsTVoihGhw
 5EWCzMH8dJbIdO1VXDSeK4S7EczFoV0sHOraDsX4ap9t9qaaHuD0ePuJc1eAHsLsr1YQ
 93BJ8OPQo7AMtWpR1+drmfGGbZarfaW6MBebCodaismcPLqwfsmajV/wb30d7Gf9czUp
 I+H4GL3RuxEU3PZjX2tgCZWhqug0csI/AbnfHt23mFD2x/rk8o2RROuPF/BesU+faH3L
 UBBl/diHpYUBcbJvSpH6gin/E/MeAvwEW3Sp9OZoqR+PXIHTtSL7SpfS63Aehyic2Bu2
 9gUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8tQh191xW5z/uqwcXTQaR6iRlPu4dlS4JjUPIzXI1i0=;
 b=puFpCe3LwX/2ZpXbAv68NyswP80+D77qEQSfC3r9cVcGCqJGd+avtppOkxBlmLizja
 Si1Z2kaS6wmrzqptBqquZ9LfMpQVR4QJk63KhqupH92JnnjOFA8H/OwgdKGkUm+aMB5L
 dlB4LYjFzSsX90W3HfAToC04p2IefUWRr/8C3eQ2DVdCu8boQR+lTqNZnBjsOaDgC0WN
 qsIwkYS/0lX/oxJDAp5hxaZmTcX5VT8Vv4gnF25Jg8x3cJjDGFT8q0ndRfKUYFzWtclU
 nPiptDdaPCUHbuwWv+T7j6Z/5xHxufDBoQEfnKVuqiY4yRFdxouDyYmf/mvqROQs2+qJ
 xykQ==
X-Gm-Message-State: APjAAAVWF3W1MEpSRcAc53vKFBP8DPmEdTNKsRwQ+gi6wyh7TJ8VNYLJ
 qx6YmmGW7GlTY0dy3wvyOBH67NBKXolpp/oNj+3mVg==
X-Google-Smtp-Source: APXvYqwDIwDheD+gFq+O5TZV6dJSFLuMVgoQGjhj+lZ8eLAYET/6IhmSX9+fvFrFVscVAgKHzz0hjQPV7iYVurKwj74=
X-Received: by 2002:a19:7616:: with SMTP id c22mr1677508lff.115.1564785087648; 
 Fri, 02 Aug 2019 15:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190716215618.29757-1-robh@kernel.org>
In-Reply-To: <20190716215618.29757-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:31:16 +0200
Message-ID: <CACRpkdYsYH_z55+OeHzAp9bjj+0WrnH8LoXcEahVcX=in6TTEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: Fix missing 'clocks'
 property in examples
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_153129_626031_69B08479 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 11:56 PM Rob Herring <robh@kernel.org> wrote:

> Now that examples are validated against the DT schema, an error with
> required 'clocks' property missing is exposed:
>
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@40020000: gpio@0: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@1000: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@2000: 'clocks' is a required property
>
> Add the missing 'clocks' properties to the examples to fix the errors.
>
> Fixes: 2c9239c125f0 ("dt-bindings: pinctrl: Convert stm32 pinctrl bindings to json-schema")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Signed-off-by: Rob Herring <robh@kernel.org>

This seems to already be upstream, but I have no memory of applying it.
Less work for me :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
