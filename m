Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6063CC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbp8QRpYvguizW7nRLMusB1yRnHmwnHY8XjZUvYxy5o=; b=qWYbQ/VZiY0d4X
	nETqZwf/MBK5VpwK8SU2of454hfoogLElmH0jN/onFgwoTgX6/90GI76Ky3ZAEsPKNCU7SOHN07v5
	gDsfH64G9gFDz2S2ie/NAE+fFxRIeodf7P5OpeVKMi4o899QAonvXZcfmP/GSS0wvBv0JVwkCCeCG
	1exuHICyt+jzbnxvOq+PmQ8i5NSk1ZTbm71LXu6eBBYKG9Ua5dMUG2efxAZGG9REeMZYCCIN2plT9
	7hpQEUH6KfbVVp3UxR4zfouIZoIKfS/mcLFA0mhefj201SiVp7IdbcJ6SqeHYwMSfJdGiyhN/SM+c
	NhFxIuyYqWuR++8r4BkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwm2-00087X-1A; Tue, 09 Jul 2019 20:31:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwlX-0007yB-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:31:08 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 622262173E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 20:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562704266;
 bh=/tteBi3FwGsHAETT02bIg+e0ZNo7j8DYyhLdl+lJps0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WK6kvH07mh4thZzT1jrFK286npoFsNqcw7HX+SQcPx7Q4WS9QXAS+BLPRbyFafB22
 2CafceWPg+iRvpXpebTOAzEj3GuQHGScoCPpGYUjb7gXPxe6U0Jql0Kya6+uMTtIob
 bznSqIz5RyvDOp8Hx2XBgK4lt0h1F5Y4IuLO7a1Q=
Received: by mail-qt1-f180.google.com with SMTP id a15so22998485qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:31:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVAcOqMpLklGwAIdZmXDqofdazmD4wp0H86/w8RAT0rviZOjtSJ
 RgbDXzD4m9Ai/J3OIfA9r6PAy11I0xXiAnyUDA==
X-Google-Smtp-Source: APXvYqzH8k8Dv1us69V2h3oPdKKrl7k8iPqPdSXKGumU7uUT/sxu6iBZEGR13WtL7FC+49CqCTsHjJ62OGTJqaZLYXE=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr20343076qtb.224.1562704265525; 
 Tue, 09 Jul 2019 13:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190701093826.5472-1-Anson.Huang@nxp.com>
 <20190701093826.5472-2-Anson.Huang@nxp.com>
In-Reply-To: <20190701093826.5472-2-Anson.Huang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 9 Jul 2019 14:30:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKeu-b8mbMJBtnNn1vL=RSvUXbo+g40haZnjXTW11CJ6w@mail.gmail.com>
Message-ID: <CAL_JsqKeu-b8mbMJBtnNn1vL=RSvUXbo+g40haZnjXTW11CJ6w@mail.gmail.com>
Subject: Re: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_133107_184160_BE926331 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, Bai Ping <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 3:47 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>

'dt-bindings: timer: ...' for the subject.

>
> Systems which use platform driver model for clock driver require the
> clock frequency to be supplied via device tree when system counter
> driver is enabled.

This is a DT binding. What's a platform driver?

>
> This is necessary as in the platform driver model the of_clk operations
> do not work correctly because system counter driver is initialized in
> early phase of system boot up, and clock driver using platform driver
> model is NOT ready at that time, it will cause system counter driver
> initialization failed.
>
> Add clock-frequency property to the device tree bindings of the NXP
> system counter, so the driver can tell timer-of driver to get clock
> frequency from DT directly instead of doing of_clk operations via
> clk APIs.

While you've now given a good explanation why you need this, it all
sounds like linux specific issues and a DT change should not be
necessary.

Presumably, 'clocks' points to a fixed-clock node, right? Just parse
the 'clocks' phandle and fetch the frequency from that node if you
need to get the frequency 'early'.

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/timer/nxp,sysctr-timer.txt        | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> index d576599..7088a0e 100644
> --- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> +++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> @@ -11,15 +11,18 @@ Required properties:
>  - reg :             Specifies the base physical address and size of the comapre
>                      frame and the counter control, read & compare.
>  - interrupts :      should be the first compare frames' interrupt
> -- clocks :         Specifies the counter clock.
> -- clock-names:             Specifies the clock's name of this module
> +- clocks :          Specifies the counter clock, mutually exclusive with clock-frequency.
> +- clock-names :     Specifies the clock's name of this module, mutually exclusive with
> +                   clock-frequency.
> +- clock-frequency : Specifies system counter clock frequency, mutually exclusive with
> +                   clocks/clock-names.

It doesn't really work to say one or the other is needed unless you
make the OS support both cases.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
