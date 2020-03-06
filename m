Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659717C6C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UedG2AHUhtJAczHX9iakT8T9lVdqwk8I4Thu6NweRoY=; b=EkcIOb98DB3v6n
	tfQ65k09gkyzZF4jiV+TCLhqkPKNlqMeqH356LE1Byr4gxF4ujY3XhVztp4fs3if7jXlaubvra3jU
	Iz7iO0A7QARKkiFsyOKamOT2/JwxrEoY98R0QCq3FVyRLObUlt+7/jdcXRb1IHXBrxWQ1LAK7b3Ji
	NCcMDMmlq/qy1zJMf2oj5zPYjB2mUf5+K24FV/KPVO7gxUsDqwSe+LZj1VvtLwgqlV/g2qb1yPM8P
	tPoI4dBIL7/nEqnKHYxZNiR/rtrySQQ2x8JCpFQcsVhmVilrqapudaT09IeDxvgc+x0km3AZiaXwf
	uHz4dMNrIMYzKPjimmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJET-0005Mc-0V; Fri, 06 Mar 2020 20:06:05 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJEM-0005Lr-5t
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:05:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id u17so3273551iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 12:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdHJwrkU78nb5BuTKVZ6D/qa0v1tI9iVbXcfDOAUWuU=;
 b=BVmVik9dEamfXCKxb1sLMxZf1hIIA5pfcOZWjfAX/DioN021Z0EsuQfByfA3W9RI8X
 udxDHDvpvOug6ueLZrkWnFyWB9Keq/z6Q99PFzJxvsrKRnimpJE67CLnoBQqfwrb/v/b
 IzF0H7MmpNEXuPCyqhOpE6eecf9yq31mP+K+Lvpwr46nTPY8kavB9VYVFS0VfwsQdbQi
 5ToS7dkAWfgy6I2w/gPi+DCF/2bNoxx3Mz/EMHxC4Jp4AwWM3JmnleU8JyEiOvxAoENL
 41t2XgsspS8B6Wuvu/RlgYJ0gvo7Y9Zt6i8jw2zBxixJzUD0kMkIl9x8CNv9hencif4m
 lBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdHJwrkU78nb5BuTKVZ6D/qa0v1tI9iVbXcfDOAUWuU=;
 b=UdugnlSCgQHwgs9I5zLuodR/Jb9ZcPKwGbHmfoYRcEVBnqF96+lgQV/DDpmImNvWo5
 rIhmogalo33VcBU/Ke7O1PUe4GbNW6u1v36bO4FEBSG33phgVpNqK3wTIODOC9UAccTw
 6udg+pLNT2/Mbrsd20kgvu+GQNyQtOSkkS8YrQ7FIR+wWq3RXzouVZWAdWCAGr51DHXx
 DdoxOLTdEPmr6bA3S6qmWZJMBcrTqx6mU4b41+uYpOgorn8CL2d73pMmyMgQLnMriAf+
 288b/EezA1SROrqhGOWDH0w7Pp2I7k7RSrfS/JnWwT1r+mNsMmIIOlJ+9WIdOBtWEdyg
 f7CA==
X-Gm-Message-State: ANhLgQ3JmFlz9YwW4g0IPMPYilZBKKhkxXKkl12e8M64F2+ktsusM8uy
 QZFuoKqaksNPDD/uyYtW8TvIuV6CziBplFZp6Yk=
X-Google-Smtp-Source: ADFU+vsGjBjSrVYdatEoW+ATr/qixFBpxQ+PrizOrE4IkcNicUVbWIuaSYnV3CVB0PtynC6ROLYZ1+L0CjdsBSoYE0Y=
X-Received: by 2002:a02:c942:: with SMTP id u2mr4773355jao.49.1583525154366;
 Fri, 06 Mar 2020 12:05:54 -0800 (PST)
MIME-Version: 1.0
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
In-Reply-To: <20200306193310.GI217608@dtor-ws>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Fri, 6 Mar 2020 12:05:42 -0800
Message-ID: <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_120558_247173_FF709846 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-rtc@vger.kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?UTF-8?Q?Ronald_Tschal=C3=A4r?= <ronald@innovation.ch>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > Add COMPILE_TEST support to i.MX SC keyboard driver for better compile
> > testing coverage.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>
> Applied, thank you.

Actually, not:

ERROR: "imx_scu_irq_register_notifier"
[drivers/input/keyboard/imx_sc_key.ko] undefined!
ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko] undefined!
ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko] undefined!
ERROR: "imx_scu_irq_unregister_notifier"
[drivers/input/keyboard/imx_sc_key.ko] undefined!
ERROR: "imx_scu_irq_group_enable"
[drivers/input/keyboard/imx_sc_key.ko] undefined!
make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
make: *** [Makefile:1282: modules] Error 2

If you want to enable compile test coverage you need to provide stubs
for the above functions.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
