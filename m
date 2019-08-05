Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97943819F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoRplSWulICKjaynrcuhYNirkFUlIDfWZCBBbIkuTMo=; b=Yx999eLzCelJUe
	YvlRS6I88MUbDHzhdxPFJWvU5ssxKeoQxNCstw96K4MXPxNABhJFYAJJ9fnUBbJKAT2SCWutP9fs+
	PHOjxF/4XV48/PvaYYEFf+DEeB0eMTjSO4731OYRIOLlBlLOlR015T066eTyCijyQ/81J3XOMuFn1
	IPSiY+KFiH2zHtBGlzE1QzrLVHekhNrAovd6kOCm0a5BH5ARonwqAnifXTud+lJL4lGOc98MgQ5jf
	JROvr0tJKHUInT7jiYqmcicofmdrWuoTTe5mEsLwJZybEe9onZgPuqhjt40OwHhgY5+19tswUWYrW
	18PRhIVP6JnE5rNjCzng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucOf-0007pz-FN; Mon, 05 Aug 2019 12:47:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucOT-0007pb-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:47:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so47156813ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aNRu8d6P0l9UPeO2XHPUBXtwBghX09sN9CzqbrlIoh0=;
 b=j/bAgWAil3mRiYky6AnRqLeM8V1zdbGU/zoXCwNDELkUqbe57Wb3Rqul+Yp7KZYmnp
 /pXsxz4Ec1Ja6QFaBuqCCTyu4IjNEWuXjoThkG+AEQ3Th8XgyCwagIqsWbWYPl+qLynY
 W81J2gSa/MLIwFXNv3zKXUKIu5+D6qnfW8TKgghA/61gAyF195B5MtLkiuE6PG8N0NnQ
 /jqsrHJ7xyMicdJQmRxfBJG7YG5IsqcncR8/nnzSg6vU/sfnl9j+NaGJwjiVoItP7UVP
 EROiUjX4A8VVYEfbXRhf/BX2VbQyKxkP3acsT18XJ41Jp698vRCg2ZZbbeGLgnFHmK/y
 HpwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aNRu8d6P0l9UPeO2XHPUBXtwBghX09sN9CzqbrlIoh0=;
 b=qCuKCs4fEGAc8Y2N5VjrdaYrq9bbMA1wlg4QiAXAbQ6bRyMA50mB17/ch/I0jeDHAA
 Y4Z7XrzpBzMbQQBK4T8RitRKiBJr99MTjzJ/7S/F/oHjjF2uRHqiafR/yI0/JvNVk0EZ
 BdtL6pPRvq56DtkUWi1FRhyPBD6wL2C6Mqq93MrdR3wbYT332a1dGY/eh9YzPXeR0c3q
 qAqmg7coLeeoLfIG3UwI6M+pvBksmsSHYYb87qTaSNb6i3neBFDYDO6M4TcQpUcr2/hr
 MR0XXJPn4kafPBeennqUR0pkbptOIScRVo14fYO6HGOFsLLxtdcgm2L3x9s2Jr8V6v6y
 yugA==
X-Gm-Message-State: APjAAAU5QXy7BI+ftq66wY6pJ1aplw5igvn8p/06RaTv2qycDZaz5UO9
 YdagpdRdOjCtSl0kgIqQ0YvJebZONMuKA7El+XM=
X-Google-Smtp-Source: APXvYqzXL2hkLoxBzy0mGaLH2PFh9enoPkAIlPHpx/CXR2e8aI0nWFKy0Tu9frhpX5sT1w1c87ndw7D6azKbKOfDYYg=
X-Received: by 2002:a02:cb4b:: with SMTP id
 k11mr152797148jap.109.1565009236799; 
 Mon, 05 Aug 2019 05:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-3-arnd@arndb.de>
 <20190801055821.GB24607@kroah.com>
In-Reply-To: <20190801055821.GB24607@kroah.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Mon, 5 Aug 2019 08:47:05 -0400
Message-ID: <CA+rxa6rJE2R7R_r8nx7HyHu4xc8ujQB1rRG+0Yx2XzwtoiD5CQ@mail.gmail.com>
Subject: Re: [PATCH 02/14] usb: udc: lpc32xx: allow compile-testing
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054717_708775_18FB8851 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Lunn <andrew@lunn.ch>, Networking <netdev@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Thu, Aug 1, 2019 at 1:58 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 31, 2019 at 09:56:44PM +0200, Arnd Bergmann wrote:
> > The only thing that prevents building this driver on other
> > platforms is the mach/hardware.h include, which is not actually
> > used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/usb/gadget/udc/Kconfig       | 3 ++-
> >  drivers/usb/gadget/udc/lpc32xx_udc.c | 2 --
> >  2 files changed, 2 insertions(+), 3 deletions(-)
>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
