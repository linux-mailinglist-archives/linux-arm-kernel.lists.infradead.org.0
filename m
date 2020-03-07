Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E686E17C9E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa2SuuSoocYplPWvWqfdrZzxGYXW9z5EP6jEW4qIziw=; b=jpvPKhvREl15N+
	4OGG1ODQfjFPRzHMXOAU+h0yrYT9eZ1Z31Qof1VPwxLewDGMCPzC0+R0Mlt23dTkYwyuiARVhP5tt
	zdTI23zjQSCWEdDrUci6DBEkf1MWbf0VKNw2ftdXUy++XVxqvAvUxOQccNG3D4bRtG/NWRI70r9Y0
	8YLhuZKwN53kCZqCknXf4Qqh6M+NBhSAZrkl660wdsotGBWypkR+/xlWkdLoCAhEtR3SL3z/6+k1c
	kA5LBHNZ0cELhSJBTx6Lnpu5j5QW9KqCWyFF/voPpVCJY31Pe3CalEfdPSkMg+KUvTA/KkIShQYIt
	knvsBulg9w/SsK14jkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANh9-00024P-8v; Sat, 07 Mar 2020 00:51:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANh1-000245-23
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:51:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id u68so1204867pfb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 16:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=skFcNwjthieJP7sfKB/M5QNBEnIrH81qXi4ZuvR5djg=;
 b=l18WCI1TN3rqxsUOpYhZQ3/fq9phH85TBCpcWGcQS49YSPYIQdrjc692qZ7FzTN+op
 488oR7rShJN3X5O1mO4hc3n9t0Rjo11NlXKlVTCZFS/+nA7pZGzG9nV7GFg9LE+twuwz
 pIC37vtJMVP1EfDiGa0TIaCTxez9k16KJKwv5pykJVVBLvKGByl78TDJKrsDupfHLc17
 TpPPMICQPP2sNqAtzAVJbJtj5f3WZleShFnso9bEYPBRMGZt7Ff1NM7iKj0JUSY+KvBF
 fXTh/d3jvMeBZYp00q9uLDcrlJxcdr/hQhVSTlH34p500BPtTfJQLZZOPW9URYjTeWSI
 2vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=skFcNwjthieJP7sfKB/M5QNBEnIrH81qXi4ZuvR5djg=;
 b=Kc4nml8LShXeVBoiVkW9M2yis5CxXJiwF9J/mR0fQd8JnPvWTX2Wqk5RkOatKYXURY
 FKWmTz4wwA/tgSqGLSRoSt94ko08xReHnFY8+BzrpMK5qJJTIxD6a6pw/mN99f41go/e
 9rafPlvpkr5sZCofcZvuPdEam/J7Rq+lQ+n0SPFEoKh2s5SOt017RWuMDMYWR+PXyHFY
 fFR9j4A2LsJchduObG3epSiLbSlZRxP0XJTrf0f5DUl6BRZUfXZrQQm8hje9ZhJrltVV
 dWdX8SEayM28VWxTVGRw7DGF7b3f+4UwUJGdY0x2UZuIHxzWhnPSC9qfpbjkEJ8swJBf
 X6Hw==
X-Gm-Message-State: ANhLgQ2WGimSFbSUSfNH5SByJzriim4nkw9S4nIctWkRv4+/UQR472Ny
 L/RS2Z46LwQcrQupzA2LZJs=
X-Google-Smtp-Source: ADFU+vtSQp9AWTTxOFlya+y8suvpoKkjEitYDODYKQsTl7ClwUFUeZRpe5JzxUchhAi7ZxyXVM9GJg==
X-Received: by 2002:a63:5401:: with SMTP id i1mr5547231pgb.181.1583542310016; 
 Fri, 06 Mar 2020 16:51:50 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id 9sm32356910pge.65.2020.03.06.16.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 16:51:49 -0800 (PST)
Date: Fri, 6 Mar 2020 16:51:46 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Message-ID: <20200307005146.GM217608@dtor-ws>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
 <DB3PR0402MB3916EA7BAACBBE64F2609DB6F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916EA7BAACBBE64F2609DB6F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_165151_127201_C6C53091 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
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
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Ronald =?iso-8859-1?Q?Tschal=E4r?= <ronald@innovation.ch>,
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

On Sat, Mar 07, 2020 at 12:18:38AM +0000, Anson Huang wrote:
> Hi, Dmitry
> 
> > Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
> > KEYBOARD_IMX_SC_KEY
> > 
> > On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> > <dmitry.torokhov@gmail.com> wrote:
> > >
> > > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > > compile testing coverage.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Applied, thank you.
> > 
> > Actually, not:
> > 
> > ERROR: "imx_scu_irq_register_notifier"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> > undefined!
> > ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> > undefined!
> > ERROR: "imx_scu_irq_unregister_notifier"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > ERROR: "imx_scu_irq_group_enable"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> > make: *** [Makefile:1282: modules] Error 2
> > 
> > If you want to enable compile test coverage you need to provide stubs for
> > the above functions.
> 
> These i.MX SCU drivers depends on IMX_SCU, I already add the COMPILE_TEST
> to IMX_SCU driver as well, that is why I put these patches in a patch series.

Adding "|| COMPILE_TEST" you are removing hard dependency on IMX_SCU,
which as you can see can result in broken build.

> Maybe
> I can add stubs as well to make sure build passed even when IMX_SCU is NOT compiled?
> Will send V2 to add stubs, it makes more sense.

It is up to you whether you make IMX_SCU buildable with COMPILE_TEST
and leave the sub-driver as is, or add the stubs and make sub-drivers
buildable even without IMX_SCU being present.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
