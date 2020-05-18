Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A518F1D71D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HceleXkb7aKm9FbN27OazYCmEmzZXDLOlfE4cTgx6U8=; b=sbfoBwEZEov1ZN
	C3Ivs9ecSXDTod+eMpNbJvpcJ8fNasv48+GbS2w7AZaywmRjXhStKa9ML6T96JB7B+6HC5IhwNokE
	1Sc++ZE4aV5y/oan7s2TKC9TP6G2ET3L+vEj8gGxNsQKgPXptjoBvFY/y08G/FKRNXY6H9SA8qGtN
	XNar9b7YlsvqQgJQkBdDbt//i+efJP3ymF+Jok5fgnJy4qJOxBLb4C0rJ61js4C8GApD9i9EBjKNE
	HCJxevuVwmwscrmQ5yS6gkFpIOxdX0uXN+0LiZInyGanvSZVSJmQ2kNrMFscx7D84lVrrcA4B1IBD
	89XFbHDAWEOQkZBtwztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaDu-0007aA-9n; Mon, 18 May 2020 07:30:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaDh-0007Zg-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:29:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id 82so7137578lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QQj8C5JeEmDZ6ZApGtOW1NT9hev78BCGty9WyW8HQU=;
 b=KdzqRAP43Jx15JsBd7CMIo/2/+5tguTprPLSwNIyfoZQ0+ufPuN6S/BANnhJsjrhDD
 DtP3v+cVRz1H4W7gZemFOLYygUe9Nnqc8CiVseZ1qH7MkopzW0uYIM/6QDifbVQUaEzY
 I9Io5hrtK55gyaPukpP3UulY28GmqBr7704IEqyzsek9z5cWKXKh+nj6/8N35gBEzKLB
 z7UbsMop5bQJkCqzM/P6qv2TYsuzenpxX9AvppK/Ewkg0FlUbL6cOIGLnAWxK13GtB1K
 pL1FPAWkCnhD9H5FlvEDJp4hPMXkM7uAmjEi0J/HlDU7NpDvA7JOV3+ynsGeu4wzmRsg
 XxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QQj8C5JeEmDZ6ZApGtOW1NT9hev78BCGty9WyW8HQU=;
 b=lfy+079XgP2BDmHvIEf0GjCbQms4t/trbqQFgfIJI9s3lAR650mboS8QHl7U5Z59cs
 IqKf2nQ0rN93ACI5wF5G4WZhoFiRRXbDxaMUh34zCf14UgN2v4TnM0VKqtnXLou1XB8r
 6hKQojQZRSkjyhrZ/0OyoJkz+A9UuwZ5m83qsD5sAYHGKLHWx6BMohc6cHo/sk2iwZyD
 NHxtZ0M9mzKMz/CWb26xQ25OnNEsO6ZuKPwwM6Y3Q7k1ZN45NJkYtd9Oth91m9dF2XF4
 wBRSuat/qGULoG2L/FUYDxf0u/MOMTUxWr+Ut8cLFG/XeZEPmy7ZqKwPDqEme4lpEhww
 LHMw==
X-Gm-Message-State: AOAM5333wqzYzPPGbYZWFsp3Z4DnrxnChcOuDE+iv9IxIuOF8qgcL7eM
 N2188Q5fw8EVeqWATu13GICc9So/lbN1d7gATHk7ag==
X-Google-Smtp-Source: ABdhPJx6fCXx6eAlYEP7owDMWFfg7cz4sOJv/yQfCTAhywTwMqJW95DyJ7NsllwioD8AhEiAVzPb9dcty/D6ToHML3U=
X-Received: by 2002:a19:c8cb:: with SMTP id y194mr7741076lff.89.1589786992310; 
 Mon, 18 May 2020 00:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-2-lars.povlsen@microchip.com>
In-Reply-To: <20200513125532.24585-2-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:29:41 +0200
Message-ID: <CACRpkdZF++0AExBvDHNT+whKP2sNKnbczV4w9SXksG2Dyctecw@mail.gmail.com>
Subject: Re: [PATCH 01/14] pinctrl: ocelot: Should register GPIO's even if not
 irq controller
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002953_711339_5D78D3B5 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

> This fixes the situation where the GPIO controller is not used as an
> interrupt controller as well.
>
> Previously, the driver would silently fail to register even the
> GPIO's. With this change, the driver will only register as an
> interrupt controller if a parent interrupt is provided.
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
