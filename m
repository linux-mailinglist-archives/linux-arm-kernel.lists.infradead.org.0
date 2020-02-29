Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7A417491E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 21:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NenqvAyaq78TJE+0wlR+vxv9j1Res1Ur4o/oKLCeypU=; b=q9N6NWiMWw4OZf
	nORvQLdyZvXgjrl7JuvfTlIUR8kPwNXUomTvF+eNxv8txQLOFfKhS0bjkrQcATuezwrxqdDuMW6wd
	2rzhPz7+V7tnC+AVwkDmd568ifEnBqhE5VGCWQAHaNisDlekNkBoLYVrVkxUKqfQHUlrOc8a+WWG5
	O7IanyCFXQ/HLC8KATG83MyConLaBSXlPYVQNm6q/xwIq7twYQN8yLM4Z95tX+iU33vI20UrBttOy
	Zg7V7IeSIcI3a/dRVM2az50pxDHC6PVQytF1Jyey1LMNRSqIA++mI+muEGSoh1nkevzqcZqM77tnF
	mh07ZG1JTZnPozjXdirw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j88W1-00081B-7y; Sat, 29 Feb 2020 20:15:13 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j88Vi-00080i-WA
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 20:14:56 +0000
Received: by mail-qk1-x741.google.com with SMTP id m9so6455819qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 12:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=uIPKlVGsJhNNHi8p9/fEX9N67i5rB91sCnJJI1pWp9c=;
 b=GhwOcOiulOFV4Cr8+jF40BU+cXp+164hlsmhfCo6UcBEUaOcWd7hvcd52rceMl1ZuS
 0OL2qyC/SgcRHjVyht9Yu0nHIPy51jaAIEKNMbBXn5mDbn/V0LrSZJLBMxJVAPVN1w8R
 6jq7YJgzhd1ZibHXhFd613HQabG/9JABs+bmZmrxvkfaxVfxbCZH6HoRJDkFivVZebTW
 nnxDV9WaKQB/xAOF9uJqUO79FVtb/nAMqKTifRLaVk5gJmFXa1WAxfizABU/59RWwUKe
 O8f6RWgwA1rvF9allhwJhhRiqDqSwYiCRZ3SC+3i0UCMS36tKtuZLeqpsobqE702wzQc
 3PLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=uIPKlVGsJhNNHi8p9/fEX9N67i5rB91sCnJJI1pWp9c=;
 b=uYydOuDcvv1+Ysc34IdTtYwwIqzshMWuWQN2aEbEBqec4H+KBxC4IxSv1sW5pg+Lnq
 yWOw7wgQGzIQ7kleMPWs+7MfLNgtY6PE4U33EzTCFTenRqChhD2ePL12qwVWR+LWiMWN
 zsf9tblVaYd2TgDa6wlPkrJXgrcfVAp//T8wv6r6BbRuXlWtyq9eFoPhbHRB1ImyQddn
 /WWT5eGRtlLtbdfLJ/c5778uTKajej22D7AM/jDxM7M3OZGpYdGgy3kHzVvwyoCdTaYu
 DEfcQHWJsuEK8bBw4Ls2paMfmQci6dMZunS/wLmjvFPb9+AcmJlUCHO8A92tiIM2VQMP
 Qg5w==
X-Gm-Message-State: ANhLgQ13WcMbAzBwF4BouEU4Ewx96w6uecI6eNEiiId6Ar2MW3vj1ZAg
 8t2CvEtQkwl+k0Xy8cTgzOxRcg==
X-Google-Smtp-Source: ADFU+vuGtuRAhAbHNNImS6M/w8fACa5jQQX+t1JVIfR+V0j+FrQjiOha6TUU5l0BnBVJE4/5DLiARw==
X-Received: by 2002:a05:620a:a0d:: with SMTP id
 i13mr2639940qka.333.1583007293819; 
 Sat, 29 Feb 2020 12:14:53 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id i4sm7516740qkf.111.2020.02.29.12.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 12:14:52 -0800 (PST)
Message-ID: <1988d5fa72d50485d953948f6148602824ee9548.camel@massaru.org>
Subject: Re: [PATCH] arm64: dts: freescale: add gpio-fan/thermal support for
 Google i.MX 8MQ Phanbell
From: Vitor Massaru Iha <vitor@massaru.org>
To: Fabio Estevam <festevam@gmail.com>
Date: Sat, 29 Feb 2020 17:14:49 -0300
In-Reply-To: <CAOMZO5Ddg2VhXkrWTn6xAX0N8fDLCNFmccE+xrcvKeRmmRmotQ@mail.gmail.com>
References: <20200229104347.11126-1-vitor@massaru.org>
 <CAOMZO5Ddg2VhXkrWTn6xAX0N8fDLCNFmccE+xrcvKeRmmRmotQ@mail.gmail.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_121455_088624_9EEC984C 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Sat, 2020-02-29 at 10:07 -0300, Fabio Estevam wrote:
> > +       fan: gpio_fan {
> 
> Underscores are not recommended in property names. Please use
> "gpio-fan" instead.

Sure. I'll fix it.

> > +               compatible = "gpio-fan";
> > +               gpio-fan,speed-map = <0 0 8600 1>;
> > +               gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
> 
> Please add an entry for the pinctrl description of this GPIO.
> It worked because GPIO is the default functionality of the pin after
> POR, but we should better not rely on it (bootloaders may change it)
> and explicitly it in the device tree.

Thanks. I'll do that.

> > +
> > +&tmu {
> 
> Please keep the nodes in alphabetical order.
> 
> 
> > +       throttle-cfgs {
> > +               throttle_devfreq: devfreq {
> > +                       throttle,max_state = <2>;
> 
> I don't see this property documented anywhere. Should it be removed?

Yes, I'll remove it.

BR,
Vitor


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
