Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC286521
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9C1iow9E11Vk5RGre5VM9WlkosZvkWWKOiyiKFKmf4=; b=aHgeh75ibOlnvK
	iA0fqZXQjHxd1pTrFn3PY0934JlOTHPA6UiZNEEQQsWv7ZIE5rzcZXZcEpIEyELUyauEN2SVSzo2W
	xFRogcRtJs7mbTpRJIP73MDJde/LGwRz80W2mFX4GhsZShhqAYOulb6rcnYqjpud2qCB2Hm/fUscT
	eX1kZ2LUmvBC83Ay+Eh4w9VaE0f7MK2EBcC4YxUXy+3nZchDaFSwpL8+ML/FUYWRPPTUsDqopqZud
	RfQ3wQvBm4sFyqTkbf6Rl7N+XLBvA+5WdQA8yMljg/tI0P9UqUsW9WZRmEs/P/8KH9GI69cFEcT4H
	ne0bbWJxzRl4Aj519iCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjzw-0004Td-6C; Thu, 08 Aug 2019 15:06:36 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjzl-0004TK-Oe
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:06:27 +0000
Received: by mail-lf1-f65.google.com with SMTP id j17so13098102lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 08:06:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7jijMVgtP1CJ0ZhpP3m2a9RPmMPbSxHM/zAdcY7BdW8=;
 b=dTdnQXUEqKD9yf+/ADuBLWPoTzoJNdMifcpCingeQXsPv2ml/DJmhFkZxjPCDPhloe
 644X0soHRqvVKPNYyyS8C5feS5kcX57kQgvLWo9OTrhGAhemPOZQi7kCqTBtZUMvwfCK
 6Bnd+hpbrVoAfQ2whZc7QF0dtE+xUhqo9xphLCN219Ip6Aq7HRo/OGIwvloLzADbJDDS
 La2KXdVVT4QaSYB0MMAAtiqrv9xotSASmpzOumJgHXM4ZQmWlpJ0TI8YenZPwb6Vzsh3
 FGImjX3fojbx0IObyCl7GkA2DI3+6sv/e/SRlJe8Axymi0o7HRNFs2P55osJId9wnNFV
 QFbw==
X-Gm-Message-State: APjAAAW/f63o+XLbOClkDf4XB5Dgos0jQjKn+QdZ/660IOQLiw00lHfA
 boG8ODXE+/Wn2z1telssutlisX8eiEc6wAAJjT8=
X-Google-Smtp-Source: APXvYqym9ClgsuUIW9BkJu/w9Oo7M4iydpPWbNcwuiS69N1LYspYgDhht7QzHtiJyNJLKFnFsaCZClfzc8bXpt3jvr8=
X-Received: by 2002:a19:c711:: with SMTP id x17mr9565794lff.147.1565276783671; 
 Thu, 08 Aug 2019 08:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <1565186675-1856-1-git-send-email-slemieux.tyco@gmail.com>
In-Reply-To: <1565186675-1856-1-git-send-email-slemieux.tyco@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 8 Aug 2019 17:06:06 +0200
Message-ID: <CAK8P3a0BiOoCg4y-buu=vpPGp56w7HKUVu8gA2jyeOph11U-Kg@mail.gmail.com>
Subject: Re: [PATCH] ARM: defconfig: lpc32xx: enable lpc32xx GPIO driver
To: Sylvain Lemieux <slemieux.tyco@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_080625_804039_2DA9C0BD 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Sylvain Lemieux <slemieux@tycoint.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vladimir Zapolskiy <vz@mleia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 4:06 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:
>
> From: Sylvain Lemieux <slemieux@tycoint.com>
>
> The change that allow the multiplatform build for the lpc32xx
> platform add a new kernel config for the LPC32XX GPIO driver.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Sylvain Lemieux <slemieux@tycoint.com>
> ---
> Note:
> * This patch depend on the following patchset:
>   ARM: move lpc32xx and dove to multiplatform
>   https://www.spinics.net/lists/linux-usb/msg183095.html

I did not think this was needed, as I added

config GPIO_LPC32XX
        tristate "NXP LPC32XX GPIO support"
        default ARCH_LPC32XX
        depends on OF_GPIO && (ARCH_LPC32XX || COMPILE_TEST)

so when running 'make lpc32xx_defconfig', I expected the
driver to already be enabled. Did I miss something?

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
