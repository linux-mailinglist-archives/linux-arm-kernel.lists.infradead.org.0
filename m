Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B0646F30
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqidSDKPDb1iNb5rysdXJE3SZh15MrLbTqh7ofABUII=; b=BLfUMo1d8HoSRq
	t1dvHKxpnn9doq+S1ZY028N+0weS/ffZRZa5TVDnvOkA5EQDgpOtYZRy6ex9Zsz9KX9W+Xqo5ueWY
	hh3jmANqh5sYJxV33zWSlhkdBVP/r2tlOo195/f9dLdgK//DV389H9JBV/6KP6eq4eHdyTpVSJn1+
	7NNDzCktV0/xOKhNfh+CE0/ULL4+4niDlHGI10+G4+Dap4sih5tM5Hzb8XzB4SkjACKbagyqxXjWs
	ze6cHX3cb1CviiQUl8nfg7+Ic4YCqY4rBJKlW2b7E6TYySCjfIZ3Anb4sdLPJYz4Bn1nRPwAzd6d5
	IwBvaArwz70SvXJyp3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4fj-0005ul-Dw; Sat, 15 Jun 2019 09:08:27 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4fQ-0005uQ-AI
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:08:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so4670092lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 02:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vayDdK/vaesz7L05p0dkZXM5UoCyNlQN49Uoqkipvlw=;
 b=fWTGzFthId9hzVyOtgiaLMjIvqa6ZwEXSRdzOHrCr7pRT60A9Xw6me5yQuXvKPy3sH
 04iSCrBPln324GOkoEuntvOOuj1CjuSsnnjxMhKKkxAJvpr8sfvP5Zm4nEc/foZqa1hG
 WPU68e3+OWeh7rqmvIGT9YS6xT0SbBLqb6MemZsAj6cH2LuQWirffy0CMPTDjRL0s0t3
 iDgo3D/6jkqIGtfPnvmA5szG9SgxGczSRHnibNBEwSzGF947YLRKY5v92sqixTz/blf9
 ozamKszRE1ID1EnYxgHbp9RxFHJDwPCV4/tY95DXj/Bkr7NecURtcTyhKtmVstUQ67p3
 OVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vayDdK/vaesz7L05p0dkZXM5UoCyNlQN49Uoqkipvlw=;
 b=N4jR+ENoW893PMt66frqP9R6b0nHjIoOonvzRkpH0jKHlw+FdHwNKw7bKQ3VObpDZ1
 vFgxtusyDf3jtZQK9nsFDGUC2YJNYs/kvIoWQNDUJgBXQ5tjnRF2vmHdjbpIdSC2NhyH
 zzQRF4OKj/hYkS3KtdyKk4jfd+t6XHyJxbaCCUeDj4ocnybQ5GTDqvW7K4QwxFHdU2P2
 ffvbVE7vy9qAolHALyWzsqFXlwcn5lz38xaP26ye8A24jlotWJYXKuW9L15HMBN2HTEO
 DnFOo8U379j0OrgmEG3Nj38a5DtnCurR0+NESI2s2/CwALwRhtg8gVGrXtsjdVnELJWR
 xyGg==
X-Gm-Message-State: APjAAAUTXiEong8JM7hXPfSSP+Obt3hyuEFOpgHunMUU3fc4J8gex2bB
 xCpiFBF/tHLwkFi8o9vDzGQ8eekfm2rXCJyLBLGvUg==
X-Google-Smtp-Source: APXvYqxxpPX0MFg86Ybf9Btur1w6L41hbpJT1a9eqVSP6PVSeEyKabLCfrQuRI9zJM1kbI+LqUsQ9tji85rSyc7toy0=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr31572361ljg.62.1560589686938; 
 Sat, 15 Jun 2019 02:08:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
 <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 11:07:53 +0200
Message-ID: <CACRpkdajXRXRFz=XpbEzwUb-crhBxNQ4f-m9rfdY6+HcG0+_gA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/1] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_020808_363705_CBAEC5AD 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin!

Thanks for fixing this up!

A hint for a follow-up:

On Wed, Jun 12, 2019 at 9:31 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
> index 4335bd771ce5..816edb545592 100644
> --- a/include/linux/stmmac.h
> +++ b/include/linux/stmmac.h
> @@ -97,7 +97,7 @@ struct stmmac_mdio_bus_data {
>         int *irqs;
>         int probed_phy_irq;
>  #ifdef CONFIG_OF
> -       int reset_gpio, active_low;
> +       int reset_gpio;

Nothing in the kernel seems to be using this reset_gpio either.

I think it can be deleted with associated code, any new users
should use machine descriptors if they insist on board files.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
