Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AC019CFEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 07:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/BMoXYFyLA/Vq5djwQP2IJYaor7br2x30hZPDsgyl8=; b=TS1z2f0lnWUtPM
	UPpsE8SsyFW8uCyYyUChNgOBvx2A3ioDfURdDZhhblaq9EQsSRyzLIsdlOUUzWdfuhySNDmz5YVTK
	oY8sDVJBZ1UIzbk0n9jyvdkTzK+BWMZAzbeHVl2+/KnkHyUwmf5G48QB2/ONyckpl8LxGnINaVfIh
	OAHWe22f/lDfrJGiU4BmFUjiuVGwpRVqewXLvAzCfzMirVbA0q2drQUn9bnZA33VznHHwXwb8IYz/
	HBTDixvYipM7/Lvd/pvPm2VN3QrbHHt8RuLeKo7MBxw98j2/On67n1UTTdsElDO75cj71zhLA2Jpt
	G2I/h/NRX33fCl23uoag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKF9g-00084f-Qz; Fri, 03 Apr 2020 05:46:12 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKF9Z-00084J-Go
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 05:46:06 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b5so4252510vsb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 22:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S4XNepmeOooAZ1+s30LlQ+CWVHmuUGaSrMEBEx9YwGo=;
 b=zIZsDrrcJTGyEaY5wJrQpWkaz8MwaasE7La+XUSJtg3/Fei8sHG6TmlNUnjdV7T8wX
 1FIaPRHwHluCkALganU6p5noYpWnVJvyIcTBe/kRZvpNkl0XRMrzCX5rf92cMtef4pqC
 mAnt9li35bOeUdLroCDFuMJGkqRiePNH/be4Pxcwvu/tpzxeR/WQu3iVky+eJ+PODVFi
 FziBzTQuwvkfBRaQbRN1MBwYaHBeLy2LEHuO8dbafMgAdj+9bWofkpNNeErdiyWGXIFE
 HYIHu9XnCX4FetnrNoz53MjaDLTaShXiszb1qIIrvZZWtkXGaHxZg55ongNI0Mv/UmTj
 AYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S4XNepmeOooAZ1+s30LlQ+CWVHmuUGaSrMEBEx9YwGo=;
 b=IfdaLZmAoGeTuQd7LiHX3M6qAyvidC57wm0EmkALA1GBlvUrmbTcX/XY8MuRrGlAh1
 rzhX5gHODAvcCqkW/Fe6UJsq9WlNfB/TVLnyiuyQbHypecDrvTVT41b3xV2nV5podc7o
 7oC8Jh84iqAZLaxPqGiXF38bguqUpJaJVnXmWgx39CbSuo+pD+dMRUN41ZCl+QqV+WQD
 7LrN+ApvNEbsj+/Kw0HgcT426MN0qqY1q7fS2jUEnKSr7kWRlKBQIJMZwdAS53X+coWg
 Jaetssu01ceieYWKnrDIEnEomdD2Qq9cz9OJeNMEtMM1nHU5Pd7ToNyNmM5dv/my+h3N
 +F5g==
X-Gm-Message-State: AGi0PuanI4czMAC+p5Xt9c9CdzQXLZiBydAM2KwOP3Z7z4gq33WtpR0K
 aqeJRLR2TzvZl6PtQox8GSEbGU+rq5jLVrqFm49f5w==
X-Google-Smtp-Source: APiQypKwPJ3eQAj3UmcqOc18/vQnRNsFvQw3FTV9eUmQpOy4PLfT3A7xYCqvCkwaapvUhQCilHz1KbZizZs8pohCCcQ=
X-Received: by 2002:a05:6102:104b:: with SMTP id
 h11mr5288832vsq.182.1585892764055; 
 Thu, 02 Apr 2020 22:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
 <DB3PR0402MB3916AF241DE20AB9CCE1A4C2F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916AF241DE20AB9CCE1A4C2F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 3 Apr 2020 11:15:53 +0530
Message-ID: <CAHLCerMEn7g3a-MG9xiiLKMUCLXjKRiuZ_wMjRjPJCXvDMzDdA@mail.gmail.com>
Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_224605_582637_8C1AB44B 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Horia Geanta <horia.geanta@nxp.com>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 9:04 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Amit
>
> > Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
> >
> > On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com>
> > wrote:
> > >
> > > i.MX8MP has a TMU inside which supports two thermal zones, add support
> > > for them.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> >
> > [snip]
> >
> > >
> > > +       thermal-zones {
> > > +               cpu-thermal {
> > > +                       polling-delay-passive = <250>;
> > > +                       polling-delay = <2000>;
> > > +                       thermal-sensors = <&tmu 0x0>;
> >
> > No need for 0x0, just use 0
>
> OK.
>
> >
> > > +                       trips {
> > > +                               cpu_alert0: trip0 {
> > > +                                       temperature = <85000>;
> > > +                                       hysteresis = <2000>;
> > > +                                       type = "passive";
> > > +                               };
> > > +
> > > +                               cpu_crit0: trip1 {
> > > +                                       temperature = <95000>;
> > > +                                       hysteresis = <2000>;
> > > +                                       type = "critical";
> > > +                               };
> > > +                       };
> > > +
> > > +                       cooling-maps {
> > > +                               map0 {
> > > +                                       trip = <&cpu_alert0>;
> > > +                                       cooling-device =
> > > +                                               <&A53_0
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                               <&A53_1
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                               <&A53_2
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                               <&A53_3
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > > +                               };
> > > +                       };
> > > +               };
> > > +
> > > +               soc-thermal {
> > > +                       polling-delay-passive = <250>;
> > > +                       polling-delay = <2000>;
> > > +                       thermal-sensors = <&tmu 0x1>;
> >
> > No need for 0x1, just use 1
>
> OK.
>
> >
> > > +                       trips {
> > > +                               soc_alert0: trip0 {
> > > +                                       temperature = <85000>;
> > > +                                       hysteresis = <2000>;
> > > +                                       type = "passive";
> > > +                               };
> > > +
> > > +                               soc_crit0: trip1 {
> > > +                                       temperature = <95000>;
> > > +                                       hysteresis = <2000>;
> > > +                                       type = "critical";
> > > +                               };
> > > +                       };
> >
> > You need a cooling-map here since you have a passive trip point.
>
> Currently, there is no cooling map defined for soc thermal zone, the cpufreq cooling
> is mapped to cpu thermal zone already, so do you think it is OK to leave it as no cooling
> map, or it is better to put cpufreq cooling for soc thermal zone as well?
>

If there is no cooling, why do you need a passive trip point? Just
make it a hot trip that will send you a nofication (if .notify
callback registered).

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
