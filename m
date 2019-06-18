Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBBC4A330
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQh4txEPv3chImoTxkAV9hFQLE5HHTMTzA55yijtOIw=; b=DEhyPVwZ6099mh
	m/B2G+Iz86yyh672QibzfUCKZE4PB8z4oipwltoMx9ITeYYI9KMC5urMqZl2EMPuZ8kO3snNmhUWp
	iiel17+grbjdXevIyvn30TdWF8eVyo+430wwmJYXz/invR8+DyP5N9vB2JZhgs0AB93pBYIbgdbE7
	u7u7SqjRdxPfBnK1iTjMCHDCbmWdrj0yXD+gBEJziuqMBjeDboyse9UihsN2NzmAXc5bw2Pis6Hzl
	ndvbY0/r5tZ0ksdruxDaC7XuRO61KusagZMNxJ9TWrWYgZ7eyOQTMrS6GXvdm++5jMywxgvaYIblf
	cVw5bPzTmQSscmXU6qgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEfd-0005Xr-DA; Tue, 18 Jun 2019 14:01:09 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEfN-0005QH-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:00:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id y13so9359567lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HdUV7CzfBMqln17zR8zkIO3XNGBpw5OXNtAwnyi4zUU=;
 b=YKASZiZLPnCBby55M8HxvQ3P6hVicwek4YaqtAI8cITJMo4iBFAWa3Yij9dIdVNJQH
 DG1Y36EZ8g1RlQ36fuSZZlWJEos08p8a8NGCJ4ePwoJ/iuXCxhpGJk/5ImxWt9stwQa3
 yzSilSFRMmJXjChN9LX5EyZvKJu7NVi+g7+QVmSVxVxmE9hUq/fjv8eT20WOZ2CX6Gy1
 k+gKh2jDh1GJYeEQ804FDN2kPBVAKd0Ajibuja7XLyFwf9lbnePWZmNBToWcISiz5mD+
 aKQGxa3de+sSqrZXCcZkixnJCx3Go6nC+1fUrTBqDcbfKELH20imaBLJDuj2IuYSDZwJ
 9DLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HdUV7CzfBMqln17zR8zkIO3XNGBpw5OXNtAwnyi4zUU=;
 b=KcQND5Xi0EruvyUxj2RQEDSBXkVabNyQef6hqeBJAx/YogpoBfK1d+dm7RgFE3/sok
 KTOFhKY3W8hf6pT++dFCwmTGJpE274jLmxxlx9MI446B3n0Y9GSuuRu85HZUwM45wS5l
 Nltp0qX8uJO8rhoOSiI8sHJfYDC1eyaw4bfSfGB800iQhP8a0icDsHjXTFJglSXSPckb
 DPaW7+Jn5OFu55KU5VLy1GmjVy+ELv51yUrtpZKSRhLWA1i0tgX1yBaAcL5wWUY2hGa8
 qa6aGBy7mQySN3nylX5V+4Yddc1Bahz3dSv5psO0+iR+DQZbuGtXAE7/LF87obeOV3em
 kw+w==
X-Gm-Message-State: APjAAAXNRTn0poeRJGYJuWFxbykxW5PJRv40Krz5nXl1ncwCcKiHIAwK
 06ti6AAcGXhaK2g7KSBeAU/xwi9cOcmoYMaa8mKovQ==
X-Google-Smtp-Source: APXvYqxZtj/5LSylMWRwAm5XoxiotJGXmZeOzoZYzvkHtOk3c+tM2Kf0qCRtTO0+6PRAgESjaawSeSGiHoL4zjd1R1U=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr2936130lfh.92.1560866450515;
 Tue, 18 Jun 2019 07:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
 <20190615100932.27101-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190615100932.27101-4-martin.blumenstingl@googlemail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Jun 2019 16:00:39 +0200
Message-ID: <CACRpkdZ8vY918mzaJyX38gENJtoA_KJq3RLGxVObdQjLKXULSQ@mail.gmail.com>
Subject: Re: [PATCH net-next v1 3/5] net: stmmac: drop the reset GPIO from
 struct stmmac_mdio_bus_data
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_070053_276323_A71FCB72 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 12:09 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> No platform uses the "reset_gpio" field from stmmac_mdio_bus_data
> anymore. Drop it so we don't get any new consumers either.
>
> Plain GPIO numbers are being deprecated in favor of GPIO descriptors. If
> needed any new non-OF platform can add a GPIO descriptor lookup table.
> devm_gpiod_get_optional() will find the GPIO in that case.
>
> Suggested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
