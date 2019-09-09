Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6EFADAF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x80GFrbSLoWdmp3/4YBAjFuBkSvxnIDqMQJtYpw6aE0=; b=TiDL4KFdZrBe5p
	JCWcb9sy3cXFpNd/7XI/2Sd2xyDg7p06OxBmaD0Dar5We2RMr9JfrCd3p4hE2nUffvFz7456SI1H2
	+W5OylW9YEgK9s0xOjmqNh1DRphvzX16kZO5R7DMndqpLUCN/51r5XK6dpQQ4hbkFYwRW5LCXnMau
	OEqVSNbe2zKO/b1re+RBQR0ItwiNIUTw7TcIEeDCW5S7Gf7FTdEv9j+u2/oAVL4arQLCc5tmwCHdI
	/LLPumULD0tor92KUzLp0fip+reW6HPn+TC/3tZi/Jl2bb7tSwfGEAYsItXS8viG90Ly3RDOxNdPX
	m5NmtCdkliYSfvCEAi8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KRs-0001vc-85; Mon, 09 Sep 2019 14:15:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KRY-0001gC-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:15:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id a22so12955127ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 07:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rwPtv2PkHjRWVfHgdMma8hT5zZLqlYAxoe2nwjsXNiM=;
 b=d0hM9Hrtn18AtU+ItYS9C5KbSbAKVPpAtJi/W3hBTlbUSAWkLU0R2Mv3yQSK7Rgwwz
 tcsA+5RnBZdnOqJ5dtNsDjuvjPPLMWHDEE9UwxY7LK2xb/qgGxnAH85F0O4/Dc6vWzkg
 LnofrMxWnuLmgz3aiBmPeBMOcjjc0b3vwQhbhQ6oWa1DSisWWb1l0LCK9BfxIonpZRSt
 lewluv90tzc1TxR7XBO+o4nRYdZgXLVGxJj2vktBoMfD60K+MO1B9gIYVoggs6MNp+5Z
 WTYH0UmlsdBl/E9mryMLNUomGjZw6qwyfjxgRovhf3AJh36tirGbwfm2H3+Vbh4b6/yY
 OHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rwPtv2PkHjRWVfHgdMma8hT5zZLqlYAxoe2nwjsXNiM=;
 b=OmugshrqS597WqvW8718qIDwr73X8ab6U4LHqZJfdSNPRqyRTO8ZBWhrYSPKLma4qU
 ECqzWsTAIw5Sw1IoOepgslmwhwACYK8FbI39syN5UdyQ+mj6ZyeJxrkJdwqCXEao1WdN
 xAKhKM62inc3dlHO17Ph1PncZkIN0XT6KPz83KUKuQUqu8IqmLKZWaazO3ul489jGi4G
 2ZEVO3o0j2Bnxok1agfP8jl3TAycTWHjPAu9ZKW/ZXC5jG16OBYOTNYouJxYvDC/PBW2
 mMvfVn1M5OXPSOJsaaKXtxOV9NfaZZX5EnErJbiegISWMZD+H+0AsubwCdb4evFuYy88
 8/qg==
X-Gm-Message-State: APjAAAX6pjoIThMg12waQlrSOd8OQ0IU8RJHmxFV3Fh+rnMeh0SAL+WY
 hIMO13TEEflNd5236NjmgEiXd4YCjdKySOz1oUU=
X-Google-Smtp-Source: APXvYqzW8UtXCJLn1NiAEYBOEdyxkVEvLirKRufFFnCXOBna7CwH0djt8OgcYo082H7aaYsJDDuPbJx6pF2cN9g+nO4=
X-Received: by 2002:a2e:9b43:: with SMTP id o3mr5058959ljj.214.1568038495704; 
 Mon, 09 Sep 2019 07:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190909021214.25646-1-hui.song_1@nxp.com>
In-Reply-To: <20190909021214.25646-1-hui.song_1@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 9 Sep 2019 11:14:45 -0300
Message-ID: <CAOMZO5AG2xmnDbjmysTbiHpF1W0yERFFwYAa98+YFH7cGSPE6w@mail.gmail.com>
Subject: Re: [PATCH v3] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_071500_105288_A84E8EF6 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Song,

On Mon, Sep 9, 2019 at 11:12 AM Hui Song <hui.song_1@nxp.com> wrote:

>  static void mpc8xxx_irq_unmask(struct irq_data *d)
> @@ -409,8 +409,14 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>         if (devtype->gpio_dir_in_init)
>                 devtype->gpio_dir_in_init(gc);
>
> -       irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
> -                                        mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
> +       ret = request_irq(mpc8xxx_gc->irqn, mpc8xxx_gpio_irq_cascade,
> +               IRQF_NO_THREAD | IRQF_SHARED, "gpio-cascade", mpc8xxx_gc);
> +       if (ret) {
> +               pr_err("%s: failed to request_irq(%d), ret = %d\n",

In drivers, it is preferred to use dev_err() instead of pr_err().

Please swicth for dev_err().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
