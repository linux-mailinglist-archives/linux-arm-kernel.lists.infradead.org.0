Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D9DCDD0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+eiXmgXs5cYPYPSRuvCvb/Tb3KEV3Rpvg+tCPosmFw=; b=cTddlr13hDFrex
	rtGNb5YhLM4Ev+JwpB7c3MHxGFGlfTc1DkhE3yjlGOeRTiIhCE0U56xxZLGdcBKHVTenmYfMdbz2n
	nTlMp9+J2QHpGK5qspv4/pujl9k3jYlh1WTdKNE/Nt13N44Crtkl7mQdXxcyeeMGUn65mMMsRz9B5
	lc8bvvHZgcCHz+FWuZKFO+IiJP7PC3/3+s408gaqBTNFS+7EHYoq8FriHsBSmi37xNE4BObnl9aTB
	23Mhb/5KCLs9k2wL0fqKmjK3/7p0E81fEFWKzchysMFyKA695/YzoYzCCH5J/7MYxD05GP0UWRF0U
	603VUjEquHe43yd3RRBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOER-0003tP-Un; Mon, 07 Oct 2019 08:19:03 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOEH-0003sc-TT; Mon, 07 Oct 2019 08:18:55 +0000
Received: by mail-ed1-f41.google.com with SMTP id r9so11529367edl.10;
 Mon, 07 Oct 2019 01:18:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Snb3N5jBGTny2lV0Bq/REXN2i4LAg5y7Btj+sL3kJn0=;
 b=rEqcqv0ksdvjemILtmgSxT2bVoW66JKdP8KBYORTBsxoH3CgoDQFoQFNhSi+uE7R39
 ZrQzRaeDl6z5gqGWYhlr0XF85r1DCkBbdpoSSgbqNYSGK+ak94sh9nfTp7O617tR0czq
 T5MKansMFHBEaacSzOzcNpCfYkAjxJ4XUSu8VJcoevSsRIFzxDnpPIzIi60qw+qC8Bcv
 VVVddU1Y8EuvcVdXFURvpc6qSUJ8HvtRbh4NH1x5mB279nzlkeviAXP7plDE4JG71n52
 ZJLV/KUZbQ/uVS2CS2D5rV2uOEew830+3IQcp7BNOlOX0VWyQ+nfOaoFODJMo9SSQo6U
 UBHw==
X-Gm-Message-State: APjAAAUeUK+hcgPYDzVl4z6y1U4qqLPx5dPPzXxOkY4Hcdsh+JAPXCUC
 4QhEKrdTdt1DTN1VYLR+lhQ/Cee7/cI=
X-Google-Smtp-Source: APXvYqw1CV0woisCxSDFd49QJz/X95NXB+nJA85mJyjiVl0DzzoVW/Tm2WoIhGRoOsuFs+TjBs0ZrQ==
X-Received: by 2002:a17:906:5fc4:: with SMTP id
 k4mr6911093ejv.300.1570436331523; 
 Mon, 07 Oct 2019 01:18:51 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id y18sm1768402ejw.87.2019.10.07.01.18.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 01:18:51 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id w12so14086407wro.5;
 Mon, 07 Oct 2019 01:18:51 -0700 (PDT)
X-Received: by 2002:adf:fe8b:: with SMTP id l11mr16979718wrr.23.1570435909394; 
 Mon, 07 Oct 2019 01:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191006102953.57536-1-yuehaibing@huawei.com>
 <20191006102953.57536-30-yuehaibing@huawei.com>
In-Reply-To: <20191006102953.57536-30-yuehaibing@huawei.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 7 Oct 2019 16:11:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64hUaddO-29=ZP53HDrrOUKqfa52Qk9Q2dGf_RkfwZfyA@mail.gmail.com>
Message-ID: <CAGb2v64hUaddO-29=ZP53HDrrOUKqfa52Qk9Q2dGf_RkfwZfyA@mail.gmail.com>
Subject: Re: [PATCH -next 29/34] rtc: sunxi: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_011853_947511_1C84E562 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Baruch Siach <baruch@tkos.co.il>, Patrice Chotard <patrice.chotard@st.com>,
 paul@crapouillou.net, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rtc@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, jonathanh@nvidia.com,
 ludovic.desroches@microchip.com,
 "open list:BROADCOM BCM281XX..." <bcm-kernel-feedback-list@broadcom.com>,
 joel@jms.id.au, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Sean Wang <sean.wang@mediatek.com>,
 Maxime Ripard <mripard@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 gregory.0xf0@gmail.com, Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 eddie.huang@mediatek.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>, andrew@aj.id.au,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 6:39 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
