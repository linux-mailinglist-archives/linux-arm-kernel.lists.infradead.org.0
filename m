Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BDF3699E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPLXN8EqGXV/JJmODL2Vk8AHw2yma+V/TyxF+0zW7ws=; b=fZtmxDbXpKpfcD
	Qg7lftrMCooh+IEnkbNIxta4nPmeco4wbkSnifFgZDeD1JFhE+Chu5HgC8562OnJl/IfKqo5CICbN
	RbwPDBu1qT4QFqPKqlFqFnI0Ui/0+eldI/Lx+mQnqz+xMBFcK7dpBwv+M6lfNEd+u2NepWI94S4LH
	+wMCZKR+ffKiSVmBc+wOyNi2R6/pXmsyTaj7F2XFRux6xwbW60X/8wAZKib8wrCX3YkUsilzWRl1x
	hAWsXfw317uB/O70DdrPhoDXywZnRgpjYKOWUWDK5yZoMz2X07N0gvQSGcWz6MrvMczLdDqWmwgj3
	J4mdRB375/6X2jUrtC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhfR-0003z7-Q6; Thu, 06 Jun 2019 01:58:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhfJ-0003yf-U5
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:58:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so295919lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 18:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f/c9HURjmrazenKg9O5m0NfjoZtwZCDV3VcMuGAsATs=;
 b=iFWAU1IPIfynhzU11Bj9QKixdoek/LH+yt2x5FMLJwZY1pfAfill6QqdsxvlaFOzog
 vVQN2gbEdfQn2E9yWKkn6u0+B4NdtM/GMVYmNBtDOoYTmQkeHWOe6APUvNF+HcSlZcey
 R+zZvuEJT5TbWX2vs6Ea0/2ukjVaKyKQgH9GhlqQOkzdxg5TkqrbbvUWWTxWjjqyZqX4
 jSYdbnb6fbYOKvromZQzEhf1rRBG0GsJ0uZrTzms8hWkOLMEWQ7gBfFML7/EWUF6YHjv
 vXplKJ5GJC2jDzcNo0OTUv3gKUxW/wWiTXt+8F8BmeFE5x3s9cnV4t5dhR60gfy6SAMN
 qsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f/c9HURjmrazenKg9O5m0NfjoZtwZCDV3VcMuGAsATs=;
 b=BlzxB2rXx45/wwjXg5bbj8QSa/VxlRDVwKPBWpzL3p+BTybcCCEHi1vLRRQmxIU76v
 OWtNrIFsB+LoaNPuqOU1gK1OPL0oUraJiXUm/UjCahY+rf8UenGjpmv77F41usG/3BKL
 3vWNhWvlR6lLON9lkMQyzwzZjeoc9omMHvP/o0abEOgx92UBNBxulEaUuPm1XcGv6IlP
 gm3FOxpUul3EHpK6fELRyNF5va0AG6mPciiGhI3BWqYFV7o2R4A3FZMLPaOO5xd8KLco
 eam0Ae7Xt31zAMosKup36CobbsgzNfwzMDD7heg1g7w0WQmfOBdLCD4TFpcSOckNrtnR
 p/Pg==
X-Gm-Message-State: APjAAAU/K2DNl54NYAa3MZTjTe5tbQh5u1kDK42bZ8J3K7rcss83UzCi
 ZDMSLZkQBa4s9MEtKYaeutxESeHBb/6ydrKsqpk=
X-Google-Smtp-Source: APXvYqw/IoypienD3hwJa0oMT26oAZCVkPOZsMqesEzAETidM/BeW14p/V+KAkGMTJZPb/A4a0JL9Uh6EV1YhFd+Se8=
X-Received: by 2002:a19:f243:: with SMTP id d3mr1059111lfk.90.1559786283579;
 Wed, 05 Jun 2019 18:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190601223050.27410-1-marex@denx.de>
 <20190606015451.GS29853@dragon>
In-Reply-To: <20190606015451.GS29853@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 22:57:54 -0300
Message-ID: <CAOMZO5D7Y8rmROYd0cEnLTSi2bGhx2KDfCQ9iDP94bXeUui4ow@mail.gmail.com>
Subject: Re: [PATCH V2] ARM: dts: imx53: Bind CPLD on M53Menlo
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_185806_016939_5E93858D 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Wed, Jun 5, 2019 at 10:55 PM Shawn Guo <shawnguo@kernel.org> wrote:

> Don't you get the following warning from kernel?
>
>   OF: buggy DT: spidev listed directly in DT

I originally thought about that too, but then I saw this patch from
Marek, which avoids the warning:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/spi/spidev.c?h=next-20190605&id=c6e2d2c7ca4e6d09bc07ab5ced2e687cc842a860

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
