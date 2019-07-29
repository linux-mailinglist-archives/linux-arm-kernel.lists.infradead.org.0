Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F2A78D2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQGM/54d4fp3h9eZvhPIXeMRxisCTyTiIWwm4y3DUHA=; b=bHbXvQBLo0l7I4
	/rOWuEsyN4O9bdTGD/07jy14V99ilMnC6imS9+4V+4MHjEdFehOPWizIU/YLYOOFLhczFqU3fzfHF
	+Y9br22RQQRfTIH7wlrIk5zomxxcI2OW/KGCXQAm2cBXDw9jc227M9IUlvNsUmwGqwBoZJh4iblV8
	Xe2jvy4kZXtspP8fyyT+MAtQi4IKis0NHffEJL7WR4O24x8W0fNGTsxE5IWw8shGLO+7fatx1C/9b
	vwaEh6F2yTAu/4SN2nlosyMCIwjW2tRAyGjoY0Z4hfhwB71X2jBfOARfnEMLH+b3WBKyqe8sSOKYY
	5KJ6y87uPmepAOH4TttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs601-0007F7-7j; Mon, 29 Jul 2019 13:47:37 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5zQ-0006p6-Oz
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:47:02 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x6TDklMQ004120
 for <linux-arm-kernel@lists.infradead.org>; Mon, 29 Jul 2019 22:46:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6TDklMQ004120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564408008;
 bh=OXAwzcS+yj3HJ7cjotHiQBWSZMqRmd+eaHeK7a8Qodc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WHIlUFj0Fr6+u9VhwFQ3KKety5ZhLznB8tvxe3Hzcj4JJfy2b1HEi37DLdwA3klVC
 38X2hi96W35jsZK4G33P4ZLpOAokwz7SCeUNUlCBtpEErIPQYv0px9sNPlx10GQ4jV
 uBVDUVmbHLkzR1rLuFun9V8YCBDXc3fix8Q1w8PD1qWlSOPPApcx/RXAWut3N8C5Uy
 CfPzI9f4nAKANV2TMCHUYJF1Q327GZcZkRVBC0p9vy1MsfT8OaWkY2BuWELOLWnf3D
 154mhLKpRxAgdc57Ig8izs4OaqvKIBuufZBzo/zV3q3d5PZ1TCq6VRNntlsAAr49OH
 mlkDfCpl1D7cw==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id o19so23952730uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:46:48 -0700 (PDT)
X-Gm-Message-State: APjAAAWrfG3D++saMIr+EwfkSFWci/D27zsIEeIf/PkrwKqfr+5JCYM3
 YPyVQN/H8lQpfHimUJvshIg9zMohHTkZe3+Aqj8=
X-Google-Smtp-Source: APXvYqxBnsoC1Jnb//kCLbSm9sQ83FtOlg02dE5xpIz+U7QjTrOwrYvuAX/wOf6r3jwto/ZIARCGREU1Md5zkDRhxOM=
X-Received: by 2002:a9f:2265:: with SMTP id 92mr53903777uad.121.1564408007070; 
 Mon, 29 Jul 2019 06:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1562668156-12927-6-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-6-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 22:46:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNARok8dbc3pVgj8VunZCVtLiPf6oE_zL7tNLCe3pfG2nSQ@mail.gmail.com>
Message-ID: <CAK7LNARok8dbc3pVgj8VunZCVtLiPf6oE_zL7tNLCe3pfG2nSQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] pinctrl: uniphier: Fix Pro5 SD pin-mux setting
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064701_069485_555101D9 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> SD uses the following pins starting from 247:
>     SDCD, SDWP, SDVOLC, SDCLK, SDCMD, SDDAT{0,1,2,3}
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>


Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>




> ---
>  drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> index 577f12e..22ce0a5 100644
> --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> @@ -807,7 +807,7 @@ static const unsigned nand_pins[] = {19, 20, 21, 22, 23, 24, 25, 28, 29, 30,
>  static const int nand_muxvals[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
>  static const unsigned nand_cs1_pins[] = {26, 27};
>  static const int nand_cs1_muxvals[] = {0, 0};
> -static const unsigned sd_pins[] = {250, 251, 252, 253, 254, 255, 256, 257, 258};
> +static const unsigned sd_pins[] = {247, 248, 249, 250, 251, 252, 253, 254, 255};
>  static const int sd_muxvals[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
>  static const unsigned spi0_pins[] = {120, 121, 122, 123};
>  static const int spi0_muxvals[] = {0, 0, 0, 0};
> --
> 2.7.4
>


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
