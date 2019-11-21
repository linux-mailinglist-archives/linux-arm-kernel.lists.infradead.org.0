Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98C10546E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/foqE/HJ9VPPbFsTqOgbDvw/Rt+G7XZU6t8fJtVCQ0g=; b=M1U8sU+Ddk4Ffr
	qhgti+WPUmq+sWJ603hSo5LaClTO5u8tXNCAKMYuBaNQGolFesjBbwXvg2VSurqREbZ48rwBY8end
	yWnMT461Cewz1x1bO8Cu6HpU76Ra1xk2o3AT5WF2bCf+F9EAqTEe8tLn+BIeEeWm31kg8ah0Dcjtq
	j0x3KyUoqP4dIzTwspi7sKC133dxeYk8z3Vho5BYxNMq8LGaR5fpCggjeHdE2Pq5A26OyQ6dTRqTJ
	CR6CLFkl+25mSjgqEtN2kcnUE3zzIhGWDMxB+Vsytq/NL0Z0E7d03wfFPN90RXsuAEKJRIM40U4wQ
	e0FWSDydeTCCc/6+Fr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnTC-0007OS-LA; Thu, 21 Nov 2019 14:30:06 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnSx-0007Nu-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:29:53 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so2365490vss.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=advO9e9Vq8oX5pUg5eqAZ8hMHDIBv+K1uEoGcfdp6Pg=;
 b=Q/BiBo5hxPoRt7be6VMJbLczAnhSIy2lPWLssuK4UBRdiypufvszol2d35aiqoLm5B
 SnKaYGix1iSdFR4Z0iQBRcoWRRlWgS/LX1T6OfxQc3J0zhILkVpifvNiTb+y+rfbDm0w
 ftICNsoRSXB+p/53aKCBsZkAQSeFLuZGwKG7uzTDMnpCiIguML0XbtgPDbEfn2KTgui9
 mJJTt8oyI2BtuJmRycEYuvd+Hz+5Dxb4VKgYRsIZip1h8tBA1E3la98IQ4r4pfkT961c
 kPFz98ibRpZdmkkrQD717+Xw7H+1b3wOmfc3GyB3eIe907cuW8Umfblwh4MtaukzCmZe
 r4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=advO9e9Vq8oX5pUg5eqAZ8hMHDIBv+K1uEoGcfdp6Pg=;
 b=udnfO74IY62Yu+fnoOGBGgJjBb+RHjEy8ol0raZLIXBjDVxMViOe0faw9IbLZSpP9N
 17TBiMHTfqn9j7cTkqWbOyoyYB4ohVzQYONUd2S+drUk5XHnzgz5qBIpMJfPn4ZWVHGp
 3+0pywGIxs4xS5DtXWPHGYpEeXvYSOe+buTLo4fx7IjRlIZ6XR13WJJlAUWMTBI2/uA5
 FsmZBeyAcJP4WsDhNsbtwgo5Q8ltEW6jP7GIe3ummv6h1DuyhOkTiXI3Sxx65D97rKzE
 +bO6i3aWTOBAYArf+zZ5XS/cFj8UTI8xcdSi+W/rJlZhOQq/GxXxufhOGb3IFHi9B/Fd
 tYpQ==
X-Gm-Message-State: APjAAAVNcvx7Syc413izTO99WlBFyb7b+2qyAPlIHOGB9lkLKjarD3t3
 F9WaMRLnRlsst9c663km+K9CIniJ
X-Google-Smtp-Source: APXvYqxJTWh2kG8FI80v+Upz1ZQtluio58NfbwFL3EB19Ri9bUOi5lj878945BYaiTM4NAZUFidO8g==
X-Received: by 2002:a17:902:9043:: with SMTP id
 w3mr9308463plz.30.1574346088100; 
 Thu, 21 Nov 2019 06:21:28 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m34sm3321136pgb.26.2019.11.21.06.21.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 06:21:27 -0800 (PST)
Date: Thu, 21 Nov 2019 06:21:26 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Christophe ROULLIER <christophe.roullier@st.com>
Subject: Re: [PATCH 1/1] drivers: watchdog: stm32_iwdg: set WDOG_HW_RUNNING
 at probe
Message-ID: <20191121142126.GB13249@roeck-us.net>
References: <20191121082813.29267-1-christophe.roullier@st.com>
 <20191121082813.29267-2-christophe.roullier@st.com>
 <ce10681c-8fa3-0fa6-3509-376a2f37aec9@roeck-us.net>
 <550566ff-31bd-1f40-63d1-67b013f8be75@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <550566ff-31bd-1f40-63d1-67b013f8be75@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_062951_874785_93191C24 
X-CRM114-Status: GOOD (  28.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:45:21PM +0000, Christophe ROULLIER wrote:
> Hi Guenter,
> =

> On 11/21/19 10:53 AM, Guenter Roeck wrote:
> > On 11/21/19 12:28 AM, Christophe Roullier wrote:
> >> If the watchdog hardware is already enabled during the boot process,
> >> when the Linux watchdog driver loads, it should reset the watchdog and
> >> tell the watchdog framework. As a result, ping can be generated from
> >> the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
> >> until the userspace watchdog daemon takes over control
> >>
> >
> > This is not what the code is doing. It sets the WDOG_HW_RUNNING flag
> > unconditionally, no matter if the watchdog is already running or not.
> > It also changes the semantic of the rest of the code, as well as
> > functionality. The code in start_timeout no longer waits, and the ping
> > code explicitly (re-)enables the watchdog.
> >
> > If you want an option to start the watchdog at probe time =

> > unconditionally,
> > please add a module parameter to do it. Otherwise you'll need to check =
if
> > it is indeed enabled before setting WDOG_HW_RUNNING, and in that case it
> > should not be necessary to re-enable it. It should also not be necessary
> > to split the start function.
> =

> With our IWDG IP, there is no way to read values from hardware (if it is =

> running or not)
> =

> We are in same case of intel-mid_wdt.c driver, we have Uboot which can
> =

> leaves the watchdog running. So we need to force the kicking of our =

> watchdog.
> =


"can" or "leaves" ? =


Anyway, if that is the case, please follow the guidance from intel-mid_wdt.=
c,
and explain it accordingly. Alternatively, please explain why something like

	ret =3D wdt_start(wdt_dev);
        if (ret)
                return ret;

	/* Make sure the watchdog is serviced */
        set_bit(WDOG_HW_RUNNING, &wdt_dev->status);

would not work in your case, and why all that added complexity
is needed.

Thanks,
Guenter

> Thanks
> =

> Christophe
> =

> >
> > Thanks,
> > Guenter
> >
> >> Fixes:4332d113c66a ("watchdog: Add STM32 IWDG driver")
> >> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> >> ---
> >> =A0 drivers/watchdog/stm32_iwdg.c | 57 ++++++++++++++++++++++++-------=
----
> >> =A0 1 file changed, 40 insertions(+), 17 deletions(-)
> >>
> >> diff --git a/drivers/watchdog/stm32_iwdg.c =

> >> b/drivers/watchdog/stm32_iwdg.c
> >> index a3a329011a06..2b3be3b1c15b 100644
> >> --- a/drivers/watchdog/stm32_iwdg.c
> >> +++ b/drivers/watchdog/stm32_iwdg.c
> >> @@ -87,8 +87,23 @@ static inline void reg_write(void __iomem *base, =

> >> u32 reg, u32 val)
> >> =A0 static int stm32_iwdg_start(struct watchdog_device *wdd)
> >> =A0 {
> >> =A0=A0=A0=A0=A0 struct stm32_iwdg *wdt =3D watchdog_get_drvdata(wdd);
> >> -=A0=A0=A0 u32 tout, presc, iwdg_rlr, iwdg_pr, iwdg_sr;
> >> -=A0=A0=A0 int ret;
> >> +
> >> +=A0=A0=A0 dev_dbg(wdd->parent, "%s\n", __func__);
> >> +
> >> +=A0=A0=A0 /*=A0 Start the watchdog */
> >> +=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> >> +
> >> +=A0=A0=A0 /* reload watchdog */
> >> +=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
> >> +
> >> +=A0=A0=A0 set_bit(WDOG_HW_RUNNING, &wdd->status);
> >> +=A0=A0=A0 return 0;
> >> +}
> >> +
> >> +static int stm32_iwdg_setprescaler(struct watchdog_device *wdd)
> >> +{
> >> +=A0=A0=A0 struct stm32_iwdg *wdt =3D watchdog_get_drvdata(wdd);
> >> +=A0=A0=A0 u32 tout, presc, iwdg_rlr, iwdg_pr;
> >> =A0 =A0=A0=A0=A0=A0 dev_dbg(wdd->parent, "%s\n", __func__);
> >> =A0 @@ -108,19 +123,6 @@ static int stm32_iwdg_start(struct =

> >> watchdog_device *wdd)
> >> =A0=A0=A0=A0=A0 /* set prescaler & reload registers */
> >> =A0=A0=A0=A0=A0 reg_write(wdt->regs, IWDG_PR, iwdg_pr);
> >> =A0=A0=A0=A0=A0 reg_write(wdt->regs, IWDG_RLR, iwdg_rlr);
> >> -=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> >> -
> >> -=A0=A0=A0 /* wait for the registers to be updated (max 100ms) */
> >> -=A0=A0=A0 ret =3D readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, iwd=
g_sr,
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !(iwdg_s=
r & (SR_PVU | SR_RVU)),
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 SLEEP_US=
, TIMEOUT_US);
> >> -=A0=A0=A0 if (ret) {
> >> -=A0=A0=A0=A0=A0=A0=A0 dev_err(wdd->parent, "Fail to set prescaler, re=
load regs\n");
> >> -=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> -=A0=A0=A0 }
> >> -
> >> -=A0=A0=A0 /* reload watchdog */
> >> -=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
> >> =A0 =A0=A0=A0=A0=A0 return 0;
> >> =A0 }
> >> @@ -131,6 +133,9 @@ static int stm32_iwdg_ping(struct watchdog_device =

> >> *wdd)
> >> =A0 =A0=A0=A0=A0=A0 dev_dbg(wdd->parent, "%s\n", __func__);
> >> =A0 +=A0=A0=A0 /*=A0 Start the watchdog */
> >> +=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> >> +
> >> =A0=A0=A0=A0=A0 /* reload watchdog */
> >> =A0=A0=A0=A0=A0 reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
> >> =A0 @@ -140,12 +145,21 @@ static int stm32_iwdg_ping(struct =

> >> watchdog_device *wdd)
> >> =A0 static int stm32_iwdg_set_timeout(struct watchdog_device *wdd,
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsigned int=
 timeout)
> >> =A0 {
> >> +=A0=A0=A0 int ret;
> >> +
> >> =A0=A0=A0=A0=A0 dev_dbg(wdd->parent, "%s timeout: %d sec\n", __func__,=
 timeout);
> >> =A0 =A0=A0=A0=A0=A0 wdd->timeout =3D timeout;
> >> =A0 -=A0=A0=A0 if (watchdog_active(wdd))
> >> -=A0=A0=A0=A0=A0=A0=A0 return stm32_iwdg_start(wdd);
> >> +=A0=A0=A0 if (watchdog_active(wdd)) {
> >> +=A0=A0=A0=A0=A0=A0=A0 ret =3D stm32_iwdg_setprescaler(wdd);
> >> +=A0=A0=A0=A0=A0=A0=A0 if (ret) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_err(wdd->parent, "failed to set=
 prescaler\n");
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> +=A0=A0=A0=A0=A0=A0=A0 } else {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return stm32_iwdg_start(wdd);
> >> +=A0=A0=A0=A0=A0=A0=A0 }
> >> +=A0=A0=A0 }
> >> =A0 =A0=A0=A0=A0=A0 return 0;
> >> =A0 }
> >> @@ -262,12 +276,21 @@ static int stm32_iwdg_probe(struct =

> >> platform_device *pdev)
> >> =A0=A0=A0=A0=A0 watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
> >> =A0=A0=A0=A0=A0 watchdog_init_timeout(wdd, 0, dev);
> >> =A0 +=A0=A0=A0 /* Make sure the watchdog is serviced */
> >> +=A0=A0=A0 set_bit(WDOG_HW_RUNNING, &wdd->status);
> >> +
> >> =A0=A0=A0=A0=A0 ret =3D devm_watchdog_register_device(dev, wdd);
> >> =A0=A0=A0=A0=A0 if (ret)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> =A0 =A0=A0=A0=A0=A0 platform_set_drvdata(pdev, wdt);
> >> =A0 +=A0=A0=A0 ret =3D stm32_iwdg_setprescaler(wdd);
> >> +=A0=A0=A0 if (ret) {
> >> +=A0=A0=A0=A0=A0=A0=A0 dev_err(dev, "failed to set prescaler\n");
> >> +=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> +=A0=A0=A0 }
> >> +
> >> =A0=A0=A0=A0=A0 return 0;
> >> =A0 }
> >>
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
