Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F61D71DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IamItZ3GMX7pjXiVP7CON/W8gvKfXaV6QSIoTZEjXSA=; b=VM2MWSWOvFDTMf
	bsZdNxmqugK3ZzP0FJxmmQ449PV27IK04EcPFILSO4GbkopDir5M6bLzbcEp0zdVZ84D40EEDdYYr
	uL2qn2d0eflLduWW+E9g/CZbp1/osNiCjd2uOOvGW+E7fEe+Ys1xHpIX9AkvazaMgiKaNysgiJ86O
	cu5N+5Nwx72YSltlZrrYmoajjuKeZkjTKh8ilJt0ABYTv/75rUlReddIOAvSBW3tUR82sOW6RRoNk
	dRjWVOWX8KBdaGXVvlgYYSJhbtBSb+YTKQhlgB6FBmHY784kVixpD1dsiqxuPxaVz30XkZ9hpdza2
	6TYRznoJy4btfXImy9eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaF9-0001q8-9N; Mon, 18 May 2020 07:31:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaEz-0001pN-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:31:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id h188so7132281lfd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uh6U4dZDkbJvSpWnsBIA2oI3GollY7EReC9a0+QL8ds=;
 b=fn+435nTT2iQwLK5/3IA7H4r47HpNUn5YBHSB+1i2lkrJx9KrtWfql0W22bANgDWw5
 L+MnwKFA0pBFg2ZykU7CHeBPNSJlNsXD4oq9wb64di1dAgA/DLCvWUzMGsZZiHOpJn4w
 sdj7TJpIOJhma0T9ExyDAW9vsJxto9cpcDC2gNsExVzImla6dOG4PThs9V+fZS3puNcm
 IYvoNztUspqoRABag4wKI3CTCltF+XNU7FLKsLq8hWkwpeG3kDeFRarJZf/aYQloYKVX
 k2rwKJHcNK+axSzVLvl1quy/Etht9cPCUxdvWfKXkKbRJVAvkKAcKv4Fo2J4e2g414lq
 39IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uh6U4dZDkbJvSpWnsBIA2oI3GollY7EReC9a0+QL8ds=;
 b=loVVCgfC9JsUSHQZ4TanWElJPt1ZQLvvEcyA/rA0heXCpMFGnksHGKs0dhgArS62o8
 Ch1Dc22Qk6WJPdjzIrXLSFJGjb4/lfwEm2RolsloELZ+T9Rn3KCbwKKhQeWBaYu2Av6k
 h7Te0eroPrVYp27rW6xAPSQ2WbIgdL+xqkJYJpMRpO37urUPEO6VtAuAZAva3/9Lq7K3
 SJJVVZ0rVyT+u9X/8h1Mx2Bh9qGFEfjYwHOmk8z7dXxCnvsDVzxfhwxmKBTHazynmwSG
 QtuPQ9s7vpb1Vz0aJUh59maorwNsnnIkJlJlUaJ8ccba1IGN/r+gAc5zgQcCEc6xkYvh
 7/yA==
X-Gm-Message-State: AOAM533MUEKiyudPnvUdU1eSpY8cOc3kfyjcSm9DnrkdrX6fvTPysRIA
 LMmP69iVpmnsRpkvcynbLKi4EsBFMp+wTj6cm5A/lw==
X-Google-Smtp-Source: ABdhPJznbrsFsG8QKFvYdy2XwjkDX2MMyM6frFix0Prjjj2ufcZwEICHddKXiikVCWz07ysLLhFYASma4iKq36dcOmQ=
X-Received: by 2002:ac2:5588:: with SMTP id v8mr10393421lfg.217.1589787072183; 
 Mon, 18 May 2020 00:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-3-lars.povlsen@microchip.com>
In-Reply-To: <20200513125532.24585-3-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:31:01 +0200
Message-ID: <CACRpkdaZjjxfnRPNxOZghyY=pFMwEsd8GqRYxt1QsU3Qhm79mA@mail.gmail.com>
Subject: Re: [PATCH 02/14] pinctrl: ocelot: Remove instance number from pin
 functions
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_003113_805480_743B508F 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Olof Johansson <olof@lixom.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 2:56 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This patch removes the instance number from the "miim", "reco_clk" and
> "sfp" pin function.
>
> The change needed is to prepare the driver for adding new platforms
> with more of these instances. The instance number is also redundant,
> as this is implicit for each pin.
>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
