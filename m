Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF106DD80B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 12:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqnFo5PvKwaxbElKpU9glcdyrwicc0GxqBg2LeTTABQ=; b=a/L5J88oVnlxqu
	0DV9Sw/AWv4XfHvXoAa63vlYvWw0Axs4C9JjvBFW+CZaLlOW4PCfPVmWtq47SLh1ebSZ/jTxBOI7x
	0e2R6nXoOcBCeIAGSP6Z102sI85KERDuhugrsNRUOZrosY5zUnpQo7d58qfTajUJer3kf9MaobNL5
	TaY3nBk0jhUr3olQ/mmj+C/GHzE9bdDlg0RAiaQkWLoyjHyccSv8zTw0Hyxw4nZXQN6qt5FwK/pt1
	8Ec23huxDOCvqzGG1nm43xtKQFpNg7aobfkf/QXCXC/vvi13gchXkzz38fUe85Kqa+P/Ko8fxsJXa
	oNLTLCjXi6ZPFbjf9Bpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlgr-0007ei-TF; Sat, 19 Oct 2019 10:10:29 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlgK-0007FG-DU; Sat, 19 Oct 2019 10:09:58 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MoOty-1hfp9K3KQq-00omYK; Sat, 19 Oct 2019 12:09:51 +0200
Received: by mail-qk1-f175.google.com with SMTP id 4so7714282qki.6;
 Sat, 19 Oct 2019 03:09:50 -0700 (PDT)
X-Gm-Message-State: APjAAAVyakMMrIXS9vRGNVyEzO6aHSoL8KLEXVMPGRmiES8VBy3nuA8f
 0uxxFxn/MY1US86KwkBqVnZMG/ohWK6aYDoRz9I=
X-Google-Smtp-Source: APXvYqxDnkD1LGxVOqOKBA1bv73+2FIM7aUPofN3DdgTjR6MZneEs/uqd6EIDns9KMja9p9yGzmHvgB/h9FVcJa5zrw=
X-Received: by 2002:a37:a614:: with SMTP id p20mr4599817qke.352.1571479789607; 
 Sat, 19 Oct 2019 03:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <803f6fa5-b929-007c-5302-4a2d5042241c@roeck-us.net>
In-Reply-To: <803f6fa5-b929-007c-5302-4a2d5042241c@roeck-us.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 19 Oct 2019 12:09:33 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0t-P_w705z0BSXxzj8MmmKVCagLtidiP+NX51zGce0ag@mail.gmail.com>
Message-ID: <CAK8P3a0t-P_w705z0BSXxzj8MmmKVCagLtidiP+NX51zGce0ag@mail.gmail.com>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
To: Guenter Roeck <linux@roeck-us.net>
X-Provags-ID: V03:K1:yfgHOo+8G0Ki8NwMnGgzmAjHN/HHoMRrOfQy7/KvtmWxoDegj/x
 DRE7P6Rl4v2JghjwOTgdAsMS3OCWXgern8h9OSmJWKtzC5Iz4vsny/coBcEaBRv+Q9FkB7j
 OWBUROJtfCOlTdZde04XQ5JwSrc4maeeE8C7rPFqGmIndYK11rgQMY2UadXiuOvlzCtBuxq
 NCXdUPvBprY0l8NS57lqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6AADhFQXDqY=:YoMN9Qs8ek+qTbU/KOLn1M
 Wbojx2PtEfdkpvwO6pWIxYgaMD0qLYJN/c79dZltOaN7jnFgDIkmlOmOhSRm5A92wY8i6HM1y
 hxgynq09WpwDkdGMCiI5AME+zUMb4xNO343hwWYgZkI7OEgjpq861BmbdIoyysKnOmz4daXWT
 MSbmgk0CQqBg6mxTGwIVa/yoM2uBLdkp7QHqDmXRx8LA5OJcoWuo7CB0WrZwh2nelVXVc5URP
 zHdW+0VRro25kWoYd3yt5w29DYcruV9MpuHB9Vx97w0BSoTRdO849NbG2uMKXhMtyCFEvFdQc
 br/5OVjDKLsJWG/Js9h1qZ3jYIGvSB5sRBIhbfDY/fTrV1UJQZQVEd+dDstwAL2zTRx6zKYvW
 YWYG7MTn4JqtjjUPXxqaBvTC2wcRAOu6X3Ezv8n2qomWTIBq05hgO/ZQDTaiQlx0UwRqDUewX
 r6YO2c1ZPHbwXHtj+hi7PpZLbKQAQCDghXdNzac7qpjeWdFdGOtV5tI5pTLSVEoXTYVV5UzoK
 Gtz447e8cbT6aprkE03APqSnrAGv/LO1DHNmL7Zj3qVV5LSfCUt1+//LFe5mVdhNLI0MEu1vO
 6SCb3urX6HSWA/PrTPuVLXCOKG9U9eFPNTcXvmqiUTrvg+76D6HGdBYtEKvLKjcQxM4Lma0UC
 7YyMJEX+mvc0F+XSqVvXTWk3jiEuxT1S7d0PnAkBlYBspKKy6veOBEcWRBSe+IpQHtf941LQW
 aTVQSIgMVmS4DxEbyHzK4THCRhOAwGEHSXnjZB7poazkGY3vlPYSCpwu7itfIZqqmlpQ3oukM
 9pwN/BYSctqq9oPF7306YdQ4O+XjkSiita3QjRUNkA9g6Zxj1nlq0VPdp3qvSpS99zcitXSp1
 imVPnU9+JEMNava+EHNg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_030956_747685_010FDBE5 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-rtc@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, IDE-ML <linux-ide@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 3:03 AM Guenter Roeck <linux@roeck-us.net> wrote:
> On 10/18/19 8:40 AM, Arnd Bergmann wrote:
>
> I don't get very far.
>
> $ make-arm pxa_defconfig
> arch/arm/Kconfig:677: can't open file "arch/arm/plat-pxa/Kconfig"
> scripts/kconfig/Makefile:90: recipe for target 'pxa_defconfig' failed

>
> Did I pick the wrong tree ?

It seems that one line got lost in a rebase and ended up in a different patch
that was not part of the series. I updated the git tree now.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
