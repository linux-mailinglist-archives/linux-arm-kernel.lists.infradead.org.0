Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7692216DBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8g5exp3yTJ8l8+1dCKj9BuGbDGP9EIicwUTC00LWQY=; b=jsx5M+CU56cjuL
	00y4PT1fDmwk6nnylWigkuHHwIHd128+rC+oDtX9pnaunXEK3ZWHe4pyIA18GOuthLyyJuM7cfqFp
	jW5X5jnRBf8d2ZkqUUN910nookAjBYkFD8ImpYOKObSVFKwHuzpusRLLw3xfUX+t8ApkYL6l2KAUS
	CZE6jVB2qiyAYKSbwgW+xFr9dzzVhxPyQh9q/JkfG07UBGLLzal3ZNZevD4//1ZUQD4q0nDSDvNBQ
	U8TYMs8B7P9caHCkF35DBqQUdUWlhYvNA2lz1MPccQGwP0zEsiVcXO1VgUKOIZ/FdiDFvuHCAVeVH
	+9OfTouMcDPj7UfC/KZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9Do-0005Ls-7g; Tue, 07 May 2019 23:10:04 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9Df-0005L1-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:09:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id m20so6588509lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vk0G5/KAtP9NDw7LHnLsf8NsNY0KwtVtgkW1AKkGjKQ=;
 b=u1CPd+tbyoZQI1gzBERndNqWsMbS3AKZU4SiYvB3NKDoyr+iQDI+S7eYiCP3LUFwUN
 XHoIDcHXOLM2p9b9VoxLLfj9KtmvX9Y8iXkTG8GPZ4xyT59sad5tFTgF6RmJJwzA3Sm8
 cIr+cOinLVxbBpm8dJaLh1dAoM8O6nKC3JmRnuuYaR5zKccd2VJqIP5r14JG5dHM5K7E
 0Z6dLmXI0hDpyRpqGgjVeUvall8r5Bw1h03TqjklRbxHrtAh/XkikWBRQ41rm6v7ClIL
 NpGVVOEkF3iFy2pgOdrTlehEih+Oy+/+KePA8fFJs7xwS3jeYPPsofP6gVgF+AhvYjiC
 iu7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vk0G5/KAtP9NDw7LHnLsf8NsNY0KwtVtgkW1AKkGjKQ=;
 b=Zu8E0SFtp5FV364UIaoXd/sgjIHpm8ssn8SDdvJJ6SZjam+HBRSlKdMB3A6IsskmUZ
 wxnEMY3EURpOw7pJxsfgrj56Fp7LQQl8MBqhy3aVqxGdSGXEwgbFyQnrmw65rb5oXFFo
 Qq6W9YnMNGlGM8oY+MhKcQ3gO+PRTl1+v3RsJkhyRdMJOpR93CNu8xEMD0d1lj7ffqTb
 X8lc8CbW686J1Xw1D6exxyAw44PTw8b6u7Jn8qsDv4Z8/SlR4eEveaFOyF6nJglb5zUz
 tpbdsqB4iMijZhqs2YFz6yk3LmXRAZuZPI9jnwMrKg2iizNlHfbChMa1M/PIXqyXyPwe
 jvWw==
X-Gm-Message-State: APjAAAVfLvOx0HAbWcwgVYmojglsoPB7W6w5fZhUxUJ9uV8Df1NBBjwW
 b0fuE6zhGFZbFneMphKsdb8K0mZs21A1WeGjSx0=
X-Google-Smtp-Source: APXvYqxikcAzHK+93rRK0elQZX4vQRe2yPPmD/LRGFuhwj1hmj5kgDPmGBPnPCDqLM2nPxVZ6JJ0t10IsEa4a59y/kI=
X-Received: by 2002:a2e:2b81:: with SMTP id r1mr4146671ljr.138.1557270592446; 
 Tue, 07 May 2019 16:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <1556190530-19541-1-git-send-email-liuk@cetca.net.cn>
 <CAOMZO5BbA6oq8okTR-r800k4XY76XxxEdufd1mjcV6HdTpVotA@mail.gmail.com>
 <AM0PR04MB421133A3F3C6B534B6ECEA7880370@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <VI1PR0402MB360058CE70AD60C116EE0634FF370@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB360058CE70AD60C116EE0634FF370@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 20:09:58 -0300
Message-ID: <CAOMZO5CSaRZEiaqxBTcBhaYjRLxMjb6Boyy0eO6OAEFBPv3_Kw@mail.gmail.com>
Subject: Re: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for fec 'ahb'
 clock
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_160955_572946_747BFAEE 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Kay-Liu <liuk@cetca.net.cn>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Sun, May 5, 2019 at 5:15 AM Andy Duan <fugang.duan@nxp.com> wrote:

> Nack the patch !
>
> Firstly, i.MX6SX has ENET AHB bus clock for MAC, and currently it is set 200Mhz like clock tree:
>         IMX6SX_CLK_ENET_PODF 200Mhz -> IMX6SX_CLK_ENET_SEL -> IMX6SX_CLK_ENET_AHB
>
> IMX6SX_CLK_ENET the clock is IPG clock for ENET IP ipg_clk_mac0_s/ipg_clk_s.
> (Please check RM Table 18-3. System Clocks, Gating, and Override)

Ok, but could you please show us where in the Reference Manual the
IMX6SX_CLK_ENET_AHB is mentioned?

I don't see ENET_AHB in imx6qdl Reference Manual either and we don't
have a ENET_AHB the clk-imx6q driver and nor in the devicetree,

> Secondly,  for your issue you caught, which was fixed by patch:
> commit d7c3a206e6338e4ccdf030719dec028e26a521d5
> Author: Andy Duan <fugang.duan@nxp.com>
> Date:   Tue Apr 9 03:40:56 2019 +0000
>
>     net: fec: manage ahb clock in runtime pm

Would this also fix the case where power management support is disabled?

If I understand correctly the explanation from Kay-Liu he would still
see a hang in the case when PM is disabled.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
