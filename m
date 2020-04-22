Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC98C1B4846
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKp5zSQKPnJuKTblD385VkWTUezTVhyoYH9BYs3tYE8=; b=OYH5KGpOn2h0LQ
	uCgtlRfxhESEOx9BXB7gmFVs4z1nYR0a7a72Lk5We7sZhCsVo4VzfhCEJLmxl6YLfErzsBqh0lWze
	5eJp1cgcpS2QNP+r8ys1f6FcMw+WkeCX3APcTAMkjH3ig2t+q/dgrfQqyChLOR1JEjiMFhQGJMY5Z
	ia1NFw4YG08x5OwKGombbTGECn72SVtHTOnASNrGwag6ob5+1qTTuZsCuiRxcsyzanXDd386vqNjX
	EgiWTbGkoCOtjzVPC+HmeU+X6IkDG4cADrIjUR9hHHTVfB6KJn2BttnlB9+LEQjRm8aQ9CzR79vD0
	5FORhs0wnJzDfhtC5NDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRH0y-0007cL-1M; Wed, 22 Apr 2020 15:10:16 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRH0g-0007bT-HO
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:10:00 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 03MF9ZRI022441
 for <linux-arm-kernel@lists.infradead.org>; Thu, 23 Apr 2020 00:09:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 03MF9ZRI022441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587568176;
 bh=RCn7w3WgC5BMCa/+cr1sEac2jwfwrjh2RW9Mm+Q693Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mA6fXO78ilSmK97Vz+SxBCz+LlTi7qyS0iGBittuHhqnZYylhNKhbA5EqUsxs/UJT
 Vj3nZVX7n+wUT6gwK7NAJjEx0ynYp/aFtWNNF4qqx9CkXatjM/ldzVYVYIGmj72e3v
 XwvQcFZB7yFZg3WEPOkVesDAS4P4MepzJ13GQbYtjVxeJR+iuhqv6SkrLE0eF/BwJ/
 r+Ge/00iBCkCVcrbbYQNF/UcHqIUKEkNyIbevgEtPyRpQtVK9mOf5rl0ACgsXpZoe1
 vKwERWTv8tJrJ/QQvwMPVP7o82JE87RI1DFDDczSL4W8OJKr3iKnUPgPtmAw8260m+
 EVVT0cOyjZkJw==
X-Nifty-SrcIP: [209.85.222.173]
Received: by mail-qk1-f173.google.com with SMTP id s188so1910070qkf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:09:36 -0700 (PDT)
X-Gm-Message-State: AGi0PuYHXyiLBE1mviCCoy9M1DY8Y4bBNCs8KNqp4T7YdkJ947DE5vO4
 jd3wfdRciufn6nMJrZLe3ZXC22aNTau9w8WbVqU=
X-Google-Smtp-Source: APiQypKNE3J/ixPyBgoZQOom5KHmUxkSBQ2XEBwHpoVjaxblJiU39sy7AZcuyhpAMZpdTnF1iWiw69Rc48UVtPfQ8qo=
X-Received: by 2002:a37:9105:: with SMTP id t5mr27150650qkd.202.1587568174946; 
 Wed, 22 Apr 2020 08:09:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
 <20200422115035.2f8d48843793d0d6f6724522@linaro.org>
In-Reply-To: <20200422115035.2f8d48843793d0d6f6724522@linaro.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 23 Apr 2020 00:08:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQL1ZkHKwODW2VYnpRw+y5Eg4abg+xCDa=PfQktHLnW_w@mail.gmail.com>
Message-ID: <CAK7LNAQL1ZkHKwODW2VYnpRw+y5Eg4abg+xCDa=PfQktHLnW_w@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_080958_814514_A0BD3AD9 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hiramatsu-san

On Wed, Apr 22, 2020 at 11:50 AM Masami Hiramatsu
<masami.hiramatsu@linaro.org> wrote:

> +
> +&eth {
> +       status = "okay";
> +       phy-mode = "rgmii";
> +       pinctrl-0 = <&pinctrl_ether_rgmii>;

These two lines are actually redundant because RGMII
is the default in uniphier-ld20.dtsi
(and uniphier-ld20-ref.dts skips them.)

Did you intentionally make it verbose?




> +       phy-handle = <&ethphy>;
> +};
> +
> +&mdio {
> +       ethphy: ethphy@0 {
> +               reg = <0>;
> +       };
> +};
> +
> +&usb {
> +       status = "okay";
> +};
> +
> +&pcie {
> +       status = "okay";
> +};
> +
> +&i2c0 {
> +       /* LS connector I2C0 */
> +       status = "okay";
> +};
> +
> +&i2c1 {
> +       /* LS connector I2C1 */
> +       status = "okay";
> +};
> +
> +&spi3 {
> +       status = "okay";
> +       #address-cells = <1>;
> +       #size-cells = <0>;

Adding #address-cells and #size-sizes to a board DTS
is strange.

I will apply this:
https://lore.kernel.org/patchwork/patch/1229497/
then delete the lines above.




--
Best Regards


Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
