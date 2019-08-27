Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CA59EFDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YoWbh73e0juIBUnXPKbK4fRJhCpjNFBU+n8j4e9LeI=; b=ftJZbGooBdufOp
	kFmoX1JuX2tz7aMW2H1kMQOV2yiPNp3lwxF6LFkGTmp0x5So+7SxTKlHdQ0e+E48K5qXMQjAHRofp
	ObhjRs2YE7GXOJ/Q7torXavzMws6Mk6n+589qhTzISBMHid3HlGCa5leKDqA9Tp0Bdb0/sC9AvcCJ
	OwOpC5COr0K5vTzLye/zbJ/3cXbqYj0mK9kaSE7rjdfPs1IjnLmM+NvsleeJ3gjvxG7Yg5OI9B4rE
	4BYucS3stqy7MV8jEI7ybFgIRx4EP/GS6798nfb6159zus+9CEhSlt0KilU0+pEZY4Q1oKEt9Pdad
	bqP4Ly8bt5lQ4EpmG7RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2e5X-0004Jt-5i; Tue, 27 Aug 2019 16:12:55 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2e5O-0004JF-EH
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:12:47 +0000
Received: by mail-qt1-f195.google.com with SMTP id i4so21805984qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eRE+ONyqMbnDAqAAt7DNGwf4rRMmk/Hc31TRfDzpAP4=;
 b=bNgTDdsPBVp+5cxF7vtSCG4I7EnQuljh6MTm1rfzS7DrYO2AtQVeMwCvnI5NxfkW1C
 gRph8gxC5dkyQB5QjVho9AJxGkrfpauF5WUpp7b4VXQm7WW/R93Uis1QlbDTrK1P5pF2
 G7OXq5SQ1ODVlrjfUIUSxVpcNKelr3angou9oND6anjG1LHB3iFfpN7sPg7Ta/SPKzpB
 0gxMZrPqm9exJu/ksTuwlRWHVbDB0JVIJrrkAyA6oAOpUk+X3AlhXqVZnaOpwk7lgO9t
 htsrwy5YW5jHsYOllpHcjnP3/+u4A13psUk2IRxDCgsXXTf4QJJHbe6wxfwJPesrrgUZ
 bdOA==
X-Gm-Message-State: APjAAAU++gLoexLamOTXY7NiWXGh/Ml/SRWLANvcF84P9uqDp4rU/Rx6
 /1DBXf3dAkajHZG8XgkR8te6SpDFVNITSHVwA9g=
X-Google-Smtp-Source: APXvYqzJzXwniWV11iyI5rB1xzenfbGjuNt16WjkWMKnungYxIEtSdoNzRX/9im4O+QtvL8NXUN1aMXrq3HPv0xExpQ=
X-Received: by 2002:aed:3363:: with SMTP id u90mr23512125qtd.7.1566922365105; 
 Tue, 27 Aug 2019 09:12:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190827154851.10486-1-enric.balletbo@collabora.com>
 <20190827161045.GC26807@tuxbook-pro>
In-Reply-To: <20190827161045.GC26807@tuxbook-pro>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 18:12:28 +0200
Message-ID: <CAK8P3a2h2gUhxcVgD5JhR1Uo4qUSuG5yp4RCrAxevNmyD4ZRTA@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: defconfig: Update configs to use the new
 CROS_EC options
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_091246_482974_3634E6C5 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Gwendal Grignou <gwendal@chromium.org>, kernel@collabora.com,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <groeck@chromium.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 SoC Team <soc@kernel.org>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yannick Fertr? <yannick.fertre@st.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 6:08 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Tue 27 Aug 08:48 PDT 2019, Enric Balletbo i Serra wrote:
>
> > Recently we refactored the CrOS EC drivers moving part of the code from
> > the MFD subsystem to the platform chrome subsystem. During this change
> > we needed to rename some config options, so, update the defconfigs
> > accordingly.
> >
> > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Reviewed-by: Gwendal Grignou <gwendal@chromium.org>
> > Tested-by: Gwendal Grignou <gwendal@chromium.org>
>
> Can we make the entries in the generic arm64 defconfig modules?

Good idea.

Actually I would prefer to have all of them as modules for consistency,
if at all possible.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
