Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D698168E66
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4bjd/W2JZDeYW+bGXUksVov820SHOqQXxUZ8RM/9tA=; b=RrhjZ/4qHXnNrp
	aTW4fe+LlI0h6gBYcKe7Ku2qKLX/ZAQL3cdPnpbqX5V1BJzraq+r7yYdRdvv0S243PD+Fk4Ny4j0R
	Iqvi7ufTGOC+2toWC8ZEVCmR7by/B2WUNEKIt8ZcINeXiOgP50KHOj1K5yLjO3Sq0WslDgMvgIVzj
	GdcKqaCf/bQGyOpI+CqRydidh8VeCOllFC1rvTW28hGqHncg3k3zGrDrIOrIumyoBz8ZG+ghOMev7
	GnAebfZq5sTPe461eiUSGv1rBHDH1YC1cUQ7qvI5K4uEdP1bINWphh51uA0PfiN8pNRqQvjwJ1+O6
	nLv76gkhjK1mjK+shZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ss3-0008Sd-0N; Sat, 22 Feb 2020 11:22:55 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Srr-0008SG-G4
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:22:45 +0000
Received: by mail-lf1-x143.google.com with SMTP id l18so3432784lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 03:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ROzac2uLC7kqowxE+PDOREiBLkFFQM2vDr6O0hYhD9w=;
 b=KIwfoweWr/ifwgofjrdkqltpUNUZq2GNDeSDGFKuhqsdvHJNxmdIxPEpmCMmgi/7Mq
 aMNKFsPFkoFR5pSysGd/DtosSaTDyNSQwX32AvZz47DqFgj2J3Pu3PTt8ehOQWDMIj7z
 YguRXfiiCPKKDVLkQPE15O6mibJ3joOzalY+zwbwEyW6QBrNqbP/UPX6dQxgQjcGg9uG
 uG+DSdYsOSKa7fmNjuDqUqftgkjNvFclBcaIgv0HckE0dX8kDuJJAjZOOQr/yerUveRt
 MTaTskaDiRciaXesfQanOGD6eGT2vwIw/nsWgXKLpCAH17zZvIGn9QThhQIVOqQ8ybcL
 YZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ROzac2uLC7kqowxE+PDOREiBLkFFQM2vDr6O0hYhD9w=;
 b=pfX3vXyKKXyhYHNY7jygSe+XX4ZQeF3ishzwrFwOoABc4cQ6HXebWYlY+hlTysPjq4
 YoRvK9XzjxISHsy508qW45rDawCsIQRy0bwpnv8a0Zsi4Mhq2vppuRdD0K69NqepBmOr
 +QRMKEF/9VH3e8ugDRqd/uaO0Z2z7pGsE5eVdoH2HYuYaG7VWppYjF9+8s4vF900FiHZ
 mf2wfKL1+YtDYadU1qwLHs9UtH1t9gE5/Z/3DM+S/Rs/rr4wUX9NSjaF3ZkluD0UkPFF
 UBjfA9HV7EbSzjVNfPUQbp3fjrd4hRGZ9pgQVlbVKdS+lJpST+/XU4xNAEk6wUGlLIC2
 7khg==
X-Gm-Message-State: APjAAAVF0oAkEybt2cCm0oNtCMKTt4qyksW69ZW6qViemG/Gd2av2xVI
 BokJm53UXoR4QtHuYLrgE9gCphrw6++RlgQVOhngHA==
X-Google-Smtp-Source: APXvYqyTywaJiSpbnWFC1W2YkgVQEnrOsf/OK0dEWuaZYFukmvPYTaNDVbNpAJK2yXNZtbzIrXL2ZU197DHrl6cNTek=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr22063257lfg.47.1582370561607; 
 Sat, 22 Feb 2020 03:22:41 -0800 (PST)
MIME-Version: 1.0
References: <20200203140425.26579-1-erwan.leray@st.com>
 <609b5744-cc1e-8ada-fe14-6cc199c0a91d@st.com>
In-Reply-To: <609b5744-cc1e-8ada-fe14-6cc199c0a91d@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 22 Feb 2020 12:22:30 +0100
Message-ID: <CACRpkdbZDaX71gLvmLTB5XxeE+6R9pGzhUiFEWjhFQUjS2yP8Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] STM32 early console
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_032243_600476_9A10E8B8 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Clement Peron <peron.clem@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Gerald Baeza <gerald.baeza@st.com>, Olof Johansson <olof@lixom.net>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 4:58 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> > Erwan Le Ray (4):
> >    ARM: debug: stm32: add UART early console configuration for STM32F4
> >    ARM: debug: stm32: add UART early console configuration for STM32F7
> >    ARM: debug: stm32: add UART early console support for STM32H7
> >    ARM: debug: stm32: add UART early console support for STM32MP1
(...)
> Do I have to take this series in my next PR ? or you'll ?

Sign it off and send a PR to ARM SoC.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
