Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9903F184482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxQZMnZh5gYnyV+OV/lkq7A7fcRzXmdPoiKWSznbUI8=; b=cTusP3Siei5tRh
	8PnDwj/aEELyLNzFTTQDRwrGP1RORrK1WvqBb7B7DDT1rYBcpxDPUW1EsKR4pdecpKSI9xR9rUwu4
	o4jhujoA/KoUeJ+FKBcjRcj1Jr9yGqoCYBX6BABEhwUbgZayIdyJwdc9d3kxwPvIqBhxs4s/Pp+Ux
	lOF2m+pnlRvWL6iXVGhgfYlu30xsDYj314/LcZcZVDA3bycApyQ0bXN/pj7LZvwoPtG4rKVMrPSyA
	bkuxyBzel5b/Kc6FbeYjwRVul642+OIW7goezI//C9iHrfBYrHV/jCjOzUizxbnOGYj1N069YEMcr
	NffbLCf6ugFzNXlEoKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChI9-00023v-94; Fri, 13 Mar 2020 10:11:45 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChHw-00023T-7D
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:11:33 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCsLo-1j3vrW18ng-008neY for <linux-arm-kernel@lists.infradead.org>; Fri,
 13 Mar 2020 11:11:30 +0100
Received: by mail-qk1-f178.google.com with SMTP id x1so6636566qkx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 03:11:29 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3J2nssiSxPy2WxB/DGJCes/RanKt3APkPiDZEo7b7CFYm06NG1
 cKh4ulUdKQo5JVtoSwVUWZWVe3aF0uh9PCSmbtU=
X-Google-Smtp-Source: ADFU+vsCydklHK+9Ar4RDwAxNiVrZxoUVNmbFhA0K7Jp1usDjMuTKVKyrnX8uuq78mby8lyq2MddiuHVgl4hQ5+4glA=
X-Received: by 2002:a37:8707:: with SMTP id j7mr9621233qkd.394.1584094289099; 
 Fri, 13 Mar 2020 03:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 13 Mar 2020 11:11:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
Message-ID: <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:tJBcZshzbD4S4uVLlVZuG8mxLR13DYD+UlDL88U/0y1g7ckYBzS
 4ciziw6A+WXUemlFeMkbDdWSIkVY9UztOZXacoFM4R/BHVFFl4Ly7axDy9fh2mN2uAefqkC
 gjFUHb3c/CsT3R6XsdVQV9PMLaEtb69BPfAsrhlndc8vm+WgtvIGnkR/j3qX02i1hcLwDdC
 jYYsQHhoaDhFbbwcZb5rA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GjGJ+D5+UTA=:nMG70Ed8FxxVcJhbgFr5jj
 J8nvNYJ1nDx7Y8dBjwHsTMRZmwdJNqMqZPzFahz6dGw0rmD8f5OqeIIpwH+Kc5LJFqQY/x5Gy
 bvdKxjdS8all58VGqyeo53qEw9zUFCfAkiLdm/9Q6zx3RxLoYNY5ws7+fduiFyLLrmuGljknb
 ZsWrHn0gSkdPLeMf6R/mIKcAwhE/fbX5VRP/PLAk1LvPOTPIPBaaQnctNYJI9G3lBtkHH4auo
 uF/LOkwHwqVOxstdUgNIBubWYS5U4PyhKyAbKbX76YMr4+c/M/LWgVgLsIeV99aW+Ydg9LWAv
 xxw95ysncv1FyzqyNi0UUXTaIFDdRK4p4fWfEvcpUiqgjp9kDCqSSuRcyMCOBVheoK1QzDIbq
 pLgDclwaxj3fmGpprYYPs8pORvQKxg2YECLHzK9zb8Adu8UHgqQFVqLxuUuisKgNYjhj9CBVN
 ofKgfCkP+UlCfj+k9t7j2PJDBSA9ng5hr38kmjsMQ6zdHNA1+xXxedyrsOADXEJkoYs71Fn3T
 VGflBpJSM2zDR8trxux/42qn/Pu/gPlsO9PofcRIz758zITKJ8FxQarvVnMvFckqT4wmD5GnX
 qlRiW5Iq7FJSWjan3xjFdtbbxV+nsNHeuuBhCs9Fo/JoIR0TX5mORWhiuMx0rZ8VdespMGeMU
 iXuAfBIH7oZ9hh9l4ZQuMHys3miiaURoIEJtg9zkQx1jeeJWm4C6mQoy1Wle+cO7GamasvXc/
 FFaN0waKfZHgiGvvz01LO16b+E0lfX1QkbW4Xuw4y1hxNV45LlvEuRZPvY6NpsJCFUQm0SzKY
 BddDUxiaWaj+qNVTawN6Ktu9M1wpQ/M151b3B7PfnqaiVVnHuc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_031132_553966_4D8B1F07 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
> mode linux on aarch64 hardware. For aarch64 mode, it not hurts
> to select ARM_GIC_V3.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Acked-by: Arnd Bergmann <arnd@arndb.de>

> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index 70019cefa617..0b69024296d5 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -21,6 +21,7 @@ config SOC_IMX8M
>         bool "i.MX8M SoC family support"
>         depends on ARCH_MXC || COMPILE_TEST
>         default ARCH_MXC && ARM64
> +       select ARM_GIC_V3

It would seem sensible to also drop the dependency on the 'default'

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
