Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94996183649
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zq2O8Z+u6RqN5q2Qh1jYikTQONJxSiSGlQ67dLGEMtY=; b=n+NX9L88XqNZkW
	OIvv0SZBDwVWEIU7S0R6084H0evQJ8t65mL5kM6OPgRCwFJFeo4mptE84y7qfPZyZVYybXEBSccKf
	pIKYtg8d/ghjUImYL2QZLIXMQP7iCZaijpvkMffcjm7jXv0eWSXPqGPHQ1km6FeVSfHl3vrYRtrpR
	VyERWjICbjoEx+krPZlCvfu7X7yhJfP7kcjnvFIc9/Hlo5mY92S2OPc7r0AsF5DlKdNtmuUm3EicC
	cRMy59V9UCSDlrvQsETEzM/+cI6g3y0BNfz1/2FHkJ8Q0s6p+mmMtfd6/IAmZPX5NlN5p28CDK2wW
	oKZhclU20IKoc+o3mTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQqI-0005QX-7w; Thu, 12 Mar 2020 16:37:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQq5-0005PR-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:37:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id x3so5906831wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 09:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KLvR3Pv/VwwdNVMVEz53VHzZpwW5bYvxWCFzM4Vnud4=;
 b=CzukxYm//beRotTxT2Qf+ERZzXI1VAI7lJNakQoHciY8x9FJXbvEdagxVxd72auQHD
 L/CVnNVF/F+15+hV+B5JiAc2sJHtwVDSHuj3QqDU+F0hVyNyVMvMcfA/YJUP1LmIr1PU
 usV2f1cx6hiPfVfeHBAMOM+cCR2A+Qr3TE0wM7PGejfxLm9umejsmE4kSK53w7TzBVNO
 y/3ZhQjL1Svvb13zHh2Vksf/Sjj1CXg9zxX34hpnJU2wrAEOMfd+za6Xzz2q3OIr+xts
 Mz8JSJRhjHi6EjqxYIoEo/YsJRQsrn5zIyPn4XRQS49dyqULZw22d1QGB/u4bghsMK2P
 1vQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KLvR3Pv/VwwdNVMVEz53VHzZpwW5bYvxWCFzM4Vnud4=;
 b=UlkMKwJrmAV9c8LGMayDzX85rui5YwKFS1nXhyon0lY8KZqnCpsW4H6U2E9WblsA4E
 wX2k3LBM9hnm4IRh2Biwj08gLRDgD4dz2aO4CPxRsc7J/1JkJE72GXb/qenU6B67CVqu
 zOII1aIf9Fa4TIPWFKHc1H77dIn0203ByvKR3Pxt7oAq/7kKGtEnOOtJfBjkaHXsqRlY
 MotgWD1bLVXLDDMIsRSEX+sAE9ovUyl+BNm3B4aikWgI9y5Dp0CYQip1e34YCxM59WGZ
 1zWdv0ZgYdO5zcNh1lWOuxZjNZllqWgVDmsnWR3iy8TAdgsSwbyS0UNZaQpXsOGd+TJI
 AvcA==
X-Gm-Message-State: ANhLgQ3H3EQt7bGbZpTXVK3kQUGaPyCvrLVbFpQmPNXM/l+I+QkUSU9w
 v1AiITwkT17ySWcJAuo4ztMHv+6/VMhiTXKmO9M=
X-Google-Smtp-Source: ADFU+vujZJQfx4KphaFkawHaVUhWqSnD+Jc07o1eQPnzLq4j7h7Sllg9lla+v7QtoWS4saFzOjAPrMn40v+CV+K24U8=
X-Received: by 2002:a05:600c:204:: with SMTP id
 4mr5394271wmi.112.1584031057921; 
 Thu, 12 Mar 2020 09:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200306163848.5910-1-mklntf@gmail.com>
 <20200311.230402.1496009558967017193.davem@davemloft.net>
In-Reply-To: <20200311.230402.1496009558967017193.davem@davemloft.net>
From: Markus Fuchs <mklntf@gmail.com>
Date: Thu, 12 Mar 2020 17:37:26 +0100
Message-ID: <CADv+quf+7Uh+-soXrN7kLnkre3dL6JACwRimN_KsuQ=01C84zw@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: platform: Fix misleading interrupt error msg
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_093741_182078_64D4FBDA 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mklntf[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 07:04, David Miller <davem@davemloft.net> wrote:
>
> From: Markus Fuchs <mklntf@gmail.com>
> Date: Fri,  6 Mar 2020 17:38:48 +0100
>
> > Not every stmmac based platform makes use of the eth_wake_irq or eth_lpi
> > interrupts. Use the platform_get_irq_byname_optional variant for these
> > interrupts, so no error message is displayed, if they can't be found.
> > Rather print an information to hint something might be wrong to assist
> > debugging on platforms which use these interrupts.
> >
> > Signed-off-by: Markus Fuchs <mklntf@gmail.com>
>
> What do you mean the error message is misleading right now?
>
> It isn't printing anything out at the moment in this situation.

Hello,

the error messages are
[    1.206363] socfpga-dwmac ff700000.ethernet: IRQ eth_wake_irq not found
[    1.213023] socfpga-dwmac ff700000.ethernet: IRQ eth_lpi not found

I tried to explain this in my original post between the --- lines of the patch.
Maybe this was wrong, so I repost it.


On my cyclone V socfpga platform I get error messages after updating to
Linux Kernel 5.4.24

Starting kernel ...

Deasserting all peripheral resets
[    1.206363] socfpga-dwmac ff700000.ethernet: IRQ eth_wake_irq not found
[    1.213023] socfpga-dwmac ff700000.ethernet: IRQ eth_lpi not found

These interrupts don't matter for my platform and many other stmmac based
ones, as we can see by grepping for 'macirq'.

socfpga.dtsi:                   interrupt-names = "macirq";
socfpga.dtsi:                   interrupt-names = "macirq";
sun7i-a20.dtsi:                 interrupt-names = "macirq";
spear600.dtsi:                  interrupt-names = "macirq", "eth_wake_irq";
artpec6.dtsi:                   interrupt-names = "macirq", "eth_lpi";
rk322x.dtsi:                    interrupt-names = "macirq";
sun9i-a80.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
stih407-family.dtsi:            interrupt-names = "macirq", "eth_wake_irq";
stm32f429.dtsi:                 interrupt-names = "macirq";
sun6i-a31.dtsi:                 interrupt-names = "macirq";
meson.dtsi:                     interrupt-names = "macirq";
rk3288.dtsi:                    interrupt-names = "macirq", "eth_wake_irq";
sun8i-r40.dtsi:                 interrupt-names = "macirq";
sunxi-h3-h5.dtsi:               interrupt-names = "macirq";
spear3xx.dtsi:                  interrupt-names = "macirq", "eth_wake_irq";
lpc18xx.dtsi:                   interrupt-names = "macirq";
stm32h743.dtsi:                 interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
rv1108.dtsi:                    interrupt-names = "macirq", "eth_wake_irq";
spear13xx.dtsi:                 interrupt-names = "macirq", "eth_wake_irq";
stm32mp151.dtsi:                interrupt-names = "macirq";
ox820.dtsi:                     interrupt-names = "macirq", "eth_wake_irq";
sun8i-a83t.dtsi:                interrupt-names = "macirq";

So, in my opinion, the error messages are missleading. I believe
the right way to handle this would require more changes though. Some
kind of configuration information, telling which interrupts are required
by the platform and than conditionally call platform_get_irq_byname().
This would print an error message, if something is wrong, on the right
platforms and nothing at all on the others.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
