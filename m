Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C81F2927C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOH7dU8qOpMRSmKBcnfpFyezEYk9CsrOowug6oHQ3jg=; b=T5leKEnsFAGhe4
	bpycTLnr5hkGHqyFSYBZtcm66xFGJXpIWIhS3pXUhJU0XY0rO2quk1uB4JyQUjfKEBjdGCyNOqSwf
	xlui0DK6WASHoBmhbuKSiLLA4HK4CDeZmj7Nhbj6jyW/0sGTUS6dQIqwy68tLn+EccZ2XauxZCdyG
	NRrU2qMn7iN0JmEBe7kMDXFHmwWRRy1cXl6w7/CGwzLMzKH2rPE7Qsk8NZEddWrG/35dEhYCSNBlT
	bE/p0x5i5DtKagYnNybJWNit8SpKjWGA2UoamHw1yI93mj7PGbfgniJVfHbv7a85qKOFZ12hsR+ti
	t1pIqjGHy+xHUBci+94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Hc-0007jH-0S; Fri, 24 May 2019 08:10:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5HV-0007iZ-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:10:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so7887498ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 01:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RcI5nX0zsFocv6c9Dh5dsyELmuugz9pu4xszs0C7sEQ=;
 b=TuplLlJStenwIfjMi0SPcifzNyONWCjOAlzsqNaVJLUf0JuryBZSSfqTfFouJIuKzD
 0YC70wD3x8HwBrd+c6N7bKprIw/j7WEBdykVkNvZ5kfd1Q1dAik3xDID7CXPN47G5nKV
 2aBSa3fo6+2pNul3KMaZQtmWsojWbkfJ3TU7f/MQ26mY1/WEdKrxO0X3tLBuaN0kuqw1
 +YegxUN9DJ/Twi84rwuicS92wlXlg2Ir6jLEZ5BElnExtPPOot/MYLcJ94OvTDN/UACH
 l3GMGETArM3mdVdYN3y3YkrYU4j8JovLoxeuYk9/NgH+4yLCITdjm01+eKqcIJUoU543
 lETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RcI5nX0zsFocv6c9Dh5dsyELmuugz9pu4xszs0C7sEQ=;
 b=liVXmbn3uX6KJP6TchBjMaN1ZkRGbaOWxt5mp/ViTC+d1cE5bIL7xUynzwz9hJTo48
 WwMTNrf78y6vaW3tkc5786Ubk8IGIZhAhfW6VaPRKYDQPZGBaZzTjr38prErX2HDRmrH
 xdfiTyviib2zhj1B1/0tiGsYyCBbsRRqi0RZVpFpgEM0TPV8EACq/+JzwSL6OGuEnCYI
 MeOCe6vQPzqf1MTL2J+sxzP7Kb324InhnBoaJGZBsHdkEzmyQQRGZROuE2Uc1JvtZq1s
 fniq4Li/UvZNiZ+f7gCRCY/cXaw+f8KYw4MvwqGt3ix7UtUNMCwavUV0i0eXaVaj7pby
 Hn1g==
X-Gm-Message-State: APjAAAXT/sGe9kKu4oQ8XWxlX9u4IuWjWonHrSIgidiTZwdlq4kHgysa
 2RusaTcmWxRcuKfSZ4m1jZVMdkUHYpPs/mpp7jTYoQ==
X-Google-Smtp-Source: APXvYqwVNWAVXwkUBL7c8AEmHQLOpoFiD7Z4FJzo1VkNZyw8J0vlNLuTHQZ22OQHfGXFRXfI0eoS6GlJNewBVqn8NeY=
X-Received: by 2002:a2e:9cd1:: with SMTP id g17mr11514251ljj.191.1558685422051; 
 Fri, 24 May 2019 01:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <1558683125-31882-1-git-send-email-amelie.delaunay@st.com>
In-Reply-To: <1558683125-31882-1-git-send-email-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 10:10:10 +0200
Message-ID: <CACRpkdbRuveWT8huqpvo6vrSqyF2_g=xcHF+YjAs6AH4xcA65w@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO
 is not defined
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011025_433552_FCF9B872 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, kbuild-all@01.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 9:32 AM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> When CONFIG_GPIO_OF is not defined, struct gpio_chip 'of_node' member does
> not exist:
> drivers/pinctrl/pinctrl-stmfx.c: In function 'stmfx_pinctrl_probe':
> drivers/pinctrl/pinctrl-stmfx.c:652:17: error: 'struct gpio_chip' has no member named 'of_node'
>      pctl->gpio_chip.of_node = np;
>
> Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
