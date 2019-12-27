Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C9C12B5F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 17:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkDEwyo4ee+E56s6vUsvgHwdDWxpSEvnKTk1jPVoOuU=; b=fj753CjD5DrnKV
	rhE8/B1Qi+Z3Uc3E+/98JOuCB5ErdI4ZdfZ16XlNdUDWkUMC51VWscUL1MoTi51btlxMSGplKITTD
	5O5x93F4+5LL0PILlAZqN6U0FsJlAQKFqMQiEePsFcxtVWZNsky6Y7nj/LiY7lsDg3zC0SvsaQbm3
	oUer8AVZKG31j6ovDQd2yOKR3b1lY7gBH8SC3lJgjeamB5n4AT9HbJQBtOTGYKWucxx/JPM6slnnF
	ckrWuxL+82Wdx+WPffCwPR7ePzOkV57SLXJgF9cC7qg0Hg+msanXG7x5adD9wbQKViW6DS1T42BVh
	68OedwsWfy9RvV4/kNpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iksfb-0004YV-Ui; Fri, 27 Dec 2019 16:40:59 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iksfM-0004X1-Ui; Fri, 27 Dec 2019 16:40:46 +0000
Received: by mail-ed1-x544.google.com with SMTP id c26so25707909eds.8;
 Fri, 27 Dec 2019 08:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgrOcm9k9IAQcFI+FWINNDCQ0Z4VaYkcjqiXu7nzoSs=;
 b=Yf6Cu8DGYWlCJdHGMC0bCW0kyLJBuSPvgcu9lEwGombWcvTkBDMvNqz5BXObWo3yok
 p5el38LSnq5WwV5xPaxH2kD1uC1zQLDc90NKaHzo5pMnK5IM3t5+g7M6Dy89kSbkesBD
 PKuPfIb9Ne2DPhT2T1AyR9N4f1vZHB8G2afcutDR21ntb4f5EV1WNUttItuiRsGW8lO3
 oagm92RwvJIfhFK20d9NRpGz+rCQDCS24AeDaFlUwM9TI5mAPRcuwVkhqJOw521B+iVu
 Fw2LLTkI4p8vCWe4nn2jFEx3hCfknLrdce2dS+tW5Z5HpnuhBts1ssj/AkZzzy4Yc5KX
 T1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgrOcm9k9IAQcFI+FWINNDCQ0Z4VaYkcjqiXu7nzoSs=;
 b=K6IOJI3NDBJNZ3P5Dh8q8pS+Fpkvk1GGVqLTISv8ibXSDTrWd8XqCm6SorEcgD+NtP
 kjRZ7Yd9RrAJgS2WEEv1Dxd3uW9X4b4lu78eN85wo+e+7E/Xsh370alAfPyppt422n38
 nmKTlxRbLO13GxwkvGgSRYZJJ3jdFycaMw5UBw6u1ne7ZpMrEZC4sLGB8Esh29op0Rqs
 EKJCOvbw40Nzv77ginCNOXhoYJETqgw3FJUc059B2xsmcDTdSPJCRDeINO6lkviLLdgS
 SrFEWkGOYvy+U5eGbFVv71z+GVia5f5gFC9QTfs1G5IQmx999aarzi7T1B/uiD+AqsyG
 9zbA==
X-Gm-Message-State: APjAAAU7k7QVE2Ubgh+/4Rqo3/HE6lHg+b0sDw22eAA9CiUXSLZi9U+j
 3/RqciKOdQRUahlJvj7KsnbQuFzKMK2wrE7EIBw=
X-Google-Smtp-Source: APXvYqxkHYAyndioq3rkIDvgR0cbdviWKBnIZcDlDoZQCfu0BNG7PYKVTKcaxVPiAWtYOYRzgvoWo7ltBXVq83a0o5o=
X-Received: by 2002:a50:bae1:: with SMTP id x88mr38955946ede.10.1577464842282; 
 Fri, 27 Dec 2019 08:40:42 -0800 (PST)
MIME-Version: 1.0
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
 <1577428606-69855-4-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1577428606-69855-4-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 27 Dec 2019 17:40:31 +0100
Message-ID: <CAFBinCCEz-xezKatuHDPRURRWa3YNmgMObbr85GSvaT_bLFcNQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] phy: amlogic: Add Amlogic A1 USB2 PHY Driver
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_084045_072651_16781EE7 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

overall this looks good to me and I have one question

On Fri, Dec 27, 2019 at 7:37 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
[...]
> +       if (priv->soc_id == MESON_SOC_A1)
> +               value |= PHY_CTRL_R18_MPLL_DCO_CLK_SEL;
...here we have some CLK_SEL bit

[...]
> -       priv->clk = devm_clk_get(dev, "xtal");
> -       if (IS_ERR(priv->clk))
> -               return PTR_ERR(priv->clk);
> +       if (priv->soc_id == MESON_SOC_G12A) {
> +               priv->clk = devm_clk_get(dev, "xtal");
> +               if (IS_ERR(priv->clk))
> +                       return PTR_ERR(priv->clk);
> +       }
but here we don't need any parent/input clock?
does this mean that the USB2 PHY on the A1 SoC doesn't have any clock
inputs? how does it generate the correct clock for itself then?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
