Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2DD12B5FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 17:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAPNb7lAI7v5eHdeQ0pW3Jmiy1iBgSCpBwdU2/QqtmE=; b=YdGt92MC5JH1Lp
	YkeaSL7UdX90jLZ2r4S2hJdSqGqeoMZ5cYo/243KxBHQaaz7ZX/JEtgSNgRcjhZ6KB9pkUMpMasbp
	L7M2rvYNJDau5wXuQS6mB32KOhKHQSYAshvJuww9qVyn9lrYG1bVI043OMifLBroFv+tyxE4Fu0Fq
	qtG0mIpagAG8LJIH8m9pQf6+vsr7Muvlf97lOEH5hRLDCNqKcHdA8OyhaeH0XnGHnqwnTr8BG/Zd8
	z+gbNnFXO23k0EAKrCoNPedFuV3eL+aTv/g41QkUS2Zw2S9WJJ/Zik1RdBBA1oQhKRB/Pw7C1RtKl
	V8+8O89KQsA2tpc4pHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikssI-0007n5-7a; Fri, 27 Dec 2019 16:54:06 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikss5-0007lr-Nt; Fri, 27 Dec 2019 16:53:55 +0000
Received: by mail-ed1-x543.google.com with SMTP id m8so25740840edi.13;
 Fri, 27 Dec 2019 08:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PutLJWPd2cEOhbmgZKTEhd5XEP7OpzpWifMhut4DmqA=;
 b=DwiKlg3avHIENCyNavhob2AMpVyTS9QSLl42Sq+4wmPxA2eGoEaW0dNQJSDgR9qVI/
 gVpTH5X0CHsaaBqUQSIqqYyJvt9ANz4oUcUiF1HgEuaNFJ4f5fSTRM+ZdOaxipbQ+37l
 e52TCpfVMWTs/4gfu4RQu63sv+6g+UJdbWRp+TidXrL8tOQ5ctn3zFDhXQl7NGKZtaEy
 ejJ3rs1FslamWH8noA5P8dlPPpBQmf7bK+8qfHBl8yjGCGtAJYq7knGY0d37A9JguVRB
 6wK1qjeq7+pJfp7csnP5t+//L8L+/RTNsK49f9NZAKBd2xrob+rD8KIBexvwXOkcSiRD
 3zRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PutLJWPd2cEOhbmgZKTEhd5XEP7OpzpWifMhut4DmqA=;
 b=A5yBJ+3PqSAhtN4vYGLoZlDcVwsJFMk54sg+66MAVpgGz93AbdnNfskWGAkQ8y4l5y
 heboZEMz79KKe5QJ+tqssmb42ZryldOlbicHwT9chSmo6frkQJYHvP5EKUxwCtwI0H+v
 q1YTD1INPpNrC9OQJ5dzfITlRYJsd8XJgD/RllM+l6x6JE8VcOIinunU+p6byegMxGNW
 JGZfdfs6oDt6itf/9BzGyRWFaDex7fTqTIRtmmGEM7QEZV5aNEEB+KWL4LeAgb7T7TCs
 iaU1CZNKZtLKnu52GU5DDDhDRbqfuzcVZPgvhjQb/WAYz38p7EGKwighH8YAUYhYEglM
 61Rg==
X-Gm-Message-State: APjAAAV2wKfkSj/zQgMCRedADmtaSsKF/nztqzZRqUHBAeuJspNMx/cm
 TAnfpeFvqOI7RGU9k1910xj9iSbo6W76l6SoVPQR4sCm
X-Google-Smtp-Source: APXvYqygkSSfnw8HoIDr9icAV5YXJN/IAat2JIa4d06E0rVnVK5uFaStiuAG+Sxv/pJ2HevsAWvvqJm4znilTktaA3I=
X-Received: by 2002:aa7:c80b:: with SMTP id a11mr57661239edt.240.1577465632157; 
 Fri, 27 Dec 2019 08:53:52 -0800 (PST)
MIME-Version: 1.0
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-3-jian.hu@amlogic.com>
In-Reply-To: <20191227094606.143637-3-jian.hu@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 27 Dec 2019 17:53:41 +0100
Message-ID: <CAFBinCC4Fgn3QQ6H-TWO_Xx+USonzMDZDyvJBfYp-_6=pmKdLQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] clk: meson: add support for A1 PLL clock ops
To: Jian Hu <jian.hu@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_085353_802985_AF637246 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jian,

On Fri, Dec 27, 2019 at 10:46 AM Jian Hu <jian.hu@amlogic.com> wrote:
[...]
> @@ -294,9 +298,12 @@ static int meson_clk_pll_is_enabled(struct clk_hw *hw)
>  {
>         struct clk_regmap *clk = to_clk_regmap(hw);
>         struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
> +       int ret = 0;
>
> -       if (meson_parm_read(clk->map, &pll->rst) ||
> -           !meson_parm_read(clk->map, &pll->en) ||
> +       if (MESON_PARM_APPLICABLE(&pll->rst))
> +               ret = meson_parm_read(clk->map, &pll->rst);
> +
> +       if (ret || !meson_parm_read(clk->map, &pll->en) ||
>             !meson_parm_read(clk->map, &pll->l))
>                 return 0;
I had to read this part twice to understand what it's doing because I
misunderstood what "ret" is used for (I thought that some "return ret"
is missing)
my proposal to make it easier to read:
...
if (MESON_PARM_APPLICABLE(&pll->rst) &&
    meson_parm_read(clk->map, &pll->rst))
  return 0;

if (!meson_parm_read(clk->map, &pll->en) ||
    !meson_parm_read(clk->map, &pll->l))
                 return 0;
...

please let me know what you think about this

> @@ -321,6 +328,23 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>         /* do nothing if the PLL is already enabled */
>         if (clk_hw_is_enabled(hw))
>                 return 0;
> +       /*
> +        * Compared with the previous SoCs, self-adaption module current
> +        * is newly added for A1, keep the new power-on sequence to enable the
> +        * PLL.
> +        */
> +       if (MESON_PARM_APPLICABLE(&pll->current_en)) {
> +               /* Enable the pll */
> +               meson_parm_write(clk->map, &pll->en, 1);
> +               udelay(10);
> +               /* Enable the pll self-adaption module current */
> +               meson_parm_write(clk->map, &pll->current_en, 1);
> +               udelay(40);
> +               /* Enable lock detect module */
> +               meson_parm_write(clk->map, &pll->l_detect, 1);
> +               meson_parm_write(clk->map, &pll->l_detect, 0);
> +               goto out;
> +       }
in all other functions you are skipping the pll->rst register by
checking for MESON_PARM_APPLICABLE(&pll->rst)
I like that because it's a pattern which is easy to follow

do you think we can make this part consistent with that?
I'm thinking of something like this (not compile-tested and I dropped
all comments, just so you get the idea):
...
if (MESON_PARM_APPLICABLE(&pll->rst)
  meson_parm_write(clk->map, &pll->rst, 1);

meson_parm_write(clk->map, &pll->en, 1);

if (MESON_PARM_APPLICABLE(&pll->rst))
  meson_parm_write(clk->map, &pll->rst, 0);

if (MESON_PARM_APPLICABLE(&pll->current_en))
  meson_parm_write(clk->map, &pll->current_en, 1);

if (MESON_PARM_APPLICABLE(&pll->l_detect)) {
  meson_parm_write(clk->map, &pll->l_detect, 1);
  meson_parm_write(clk->map, &pll->l_detect, 0);
}

if (meson_clk_pll_wait_lock(hw))
...

I see two (and a half) benefits here:
- if there's a PLL with neither the pll->current_en nor the pll->rst
registers then you get support for this implementation for free
- the if (MESON_PARM_APPLICABLE(...)) pattern is already used in the
driver, but only for one register (in your example when
MESON_PARM_APPLICABLE(&pll->current_en) exists you also modify the
pll->l_detect register, which I did not expect)
- only counts half: no use of "goto", which in my opinion makes it
very easy to read (just read from top to bottom, checking each "if")


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
