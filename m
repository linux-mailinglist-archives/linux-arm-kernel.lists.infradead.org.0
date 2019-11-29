Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2AB10D7E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 16:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CTS2pmGXc4+y7SKhSDxrx0RKO/t1qzNDpadqL3PjXUM=; b=YTP7aocq3rRXln6EJbiSJOAFH9
	3Nzh36AgiFKN0xaBK3SczhMyQJ6NXU5NEfqvolELzBmGP2ZqbfcuecHpPivwosFatpySUi/Vt7IxT
	DZ/siA2/MxfVfamOCy7pDs0YD5loLQHqBkTP83pRazydeLBQUXCcp809n7igG1M+IpaAMlTofuPTX
	g6hGH4h7Bn5RPISEjBpue0Mb6IxYpHnJaBSXwTRV7G8xoLMS1fT4fPEWJpqCarxbFIwzqF7KsysqQ
	190ULYHIW88Q3UAA2d1S1o6XTw9Clutm/2u8YCYv7fLL7MD68HF4fH97NxULE6d+MVJ7o1N/wkzHn
	GlOqB7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaiCL-0006J7-Bj; Fri, 29 Nov 2019 15:28:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaiCA-0006IF-OQ
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 15:28:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so35646039wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 07:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=QBYK1E+SFEUtR4nuF0Hq1/Zl0vxT8rcgdq12kebEYCw=;
 b=fybemh1fl5FELIMmoJZnWKoGU6gkjl55CTvBtsMkTjKBe9+9q5azX3vK7CrnWlD4+m
 ATTa/+yYn808n2UnMe0zSU27V/ALJzcfyewxcwoGDLMpE+3nRgHaRQI6DA94AukXUiJB
 hjsqV4+jtcmEmj/BDh8dLZ/DRjse6sDrT0bCl7ecTrNNyYBw6BwzfFzs7Ti5p0v23MnE
 +fDRYLnLSJ559SpDXDxTsKfDHmPdDwfAe4/MCFncI1Wzvl2k8yyzbCe3Y5158WP0Gpt4
 xntmd2a+Rl7Oonw3WrC2tR2S9zGYEskSnvLdMeDrEhklUgWbep0gTuvPx0qYaX4l87Lz
 Gxwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=QBYK1E+SFEUtR4nuF0Hq1/Zl0vxT8rcgdq12kebEYCw=;
 b=mRII4bhGLgNw0GKESVwfhpLewFXAAF7e+gZgeUadEUwBsNr4Yu1UihMJzba584XQjI
 GSEt31TLxOXtOjsZi98GU3pjQkaZ5HPdJLozQnMnWh/ZhPj1sfijVa0XmAv9UTWmpJ3S
 W/qrHlkXMydQOzhkRvBLJebwveElhy/1n0nzUQDHjiwwkXOKE0+CflgsE2h76iHEVcmK
 6wUUOLqqabClgF/Tho9Yn4gJ6pePJwgLdjoM3lpUUpsDdHAgoqTCsq8L+6lDjJL5JF65
 rnFwud9GrZApLG+cNJ3KbpmXhPVn+bpg2+A1P5h7oWdqkEFBqz2363l+lzWPXe9bZza9
 oBpA==
X-Gm-Message-State: APjAAAXJviGh4JzlZs7mkVaPetQNgEl8p+K/T1amDq49QtCooIJ50QYd
 Ia4VTj8LHHuBBb9kRItf8iFjQQ==
X-Google-Smtp-Source: APXvYqwp522ZQItIPDw0UZZeNpADWsIPr6wHnrqJzszsiD5Ngr1SfU1KzHkCvXFfBFKhk2oWIkEzYw==
X-Received: by 2002:a5d:4d8d:: with SMTP id b13mr10405744wru.6.1575041310867; 
 Fri, 29 Nov 2019 07:28:30 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m3sm27328570wrw.20.2019.11.29.07.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 07:28:30 -0800 (PST)
References: <20191129144605.182774-1-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 0/7] add Amlogic A1 clock controller driver
In-reply-to: <20191129144605.182774-1-jian.hu@amlogic.com>
Date: Fri, 29 Nov 2019 16:28:29 +0100
Message-ID: <1jwobi7lcy.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_072834_824252_CE84C6D0 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 29 Nov 2019 at 15:45, Jian Hu <jian.hu@amlogic.com> wrote:

> add support for Amlogic A1 clock driver, the clock includes 
> three parts: peripheral clocks, pll clocks, CPU clocks.
> sys pll and CPU clocks will be sent in next patch.
>
> Changes since v1 at [2]:

v2 or v1 ??

> -add probe function for A1
> -seperate the clock driver into two patch
> -change some clock flags and ops
> -add support for a1 PLL ops
> -add A1 clock node
>
> Changes since v1 at [1]:
> -place A1 config alphabetically
> -add actual reason for RO ops, CLK_IS_CRITICAL, CLK_IGNORE_UNUSED
> -separate the driver into two driver: peripheral and pll driver
> -delete CLK_IGNORE_UNUSED flag for pwm b/c/d/e/f clock, dsp clock
> -delete the change in Kconfig.platforms, address to Kevin alone
> -remove the useless comments
> -modify the meson pll driver to support A1 PLLs
>
> [1] https://lkml.kernel.org/r/1569411888-98116-1-git-send-email-jian.hu@amlogic.com
> [2] https://lkml.kernel.org/r/1571382865-41978-1-git-send-email-jian.hu@amlogic.com
>
> Jian Hu (7):
>   dt-bindings: clock: meson: add A1 PLL clock controller bindings
>   clk: meson: add support for A1 PLL clock ops
>   clk: meson: eeclk: refactor eeclk common driver to support A1
>   clk: meson: a1: add support for Amlogic A1 PLL clock driver
>   dt-bindings: clock: meson: add A1 peripheral clock controller bindings
>   clk: meson: a1: add support for Amlogic A1 Peripheral clock driver
>   arm64: dts: meson: add A1 PLL and periphs clock controller

The arm64 is for the DT maintainer. Please send it separately after this
series is applied (if it gets applied)

> Please fix the underlying issue, then you can post your series again.

This was a comment on your v2. Did you fix the orphan/ordering issue ?
If you did, you probably should mention it here.
If you did not, I'm probably not going to review this further until you do.

>
>  .../bindings/clock/amlogic,a1-clkc.yaml       |   70 +
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   |   56 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi     |   26 +
>  drivers/clk/meson/Kconfig                     |   20 +
>  drivers/clk/meson/Makefile                    |    2 +
>  drivers/clk/meson/a1-pll.c                    |  334 +++
>  drivers/clk/meson/a1-pll.h                    |   56 +
>  drivers/clk/meson/a1.c                        | 2309 +++++++++++++++++
>  drivers/clk/meson/a1.h                        |  120 +
>  drivers/clk/meson/clk-pll.c                   |   21 +
>  drivers/clk/meson/clk-pll.h                   |    1 +
>  drivers/clk/meson/meson-eeclk.c               |   59 +-
>  drivers/clk/meson/meson-eeclk.h               |    2 +
>  drivers/clk/meson/parm.h                      |    1 +
>  include/dt-bindings/clock/a1-clkc.h           |   98 +
>  include/dt-bindings/clock/a1-pll-clkc.h       |   16 +
>  16 files changed, 3181 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 drivers/clk/meson/a1-pll.c
>  create mode 100644 drivers/clk/meson/a1-pll.h
>  create mode 100644 drivers/clk/meson/a1.c
>  create mode 100644 drivers/clk/meson/a1.h
>  create mode 100644 include/dt-bindings/clock/a1-clkc.h
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
