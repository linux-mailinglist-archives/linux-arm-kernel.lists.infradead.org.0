Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB470A5F5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 04:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4dF7h7cb9SX00Oy/mGqKmkgDV3FGrMX3aLS/6Alcck=; b=m1bWtO7gXR/Amn
	HwZ+ncc0n/XZFKGCjndJWLsDG2cqB2sZp2u4y2hruA6gnPNI0KAEpJ8eVlVED3U5t0kmd+ZFk9vpL
	C9aoyE2xppgHkO+xn5J447dMLGmzsbbLgiHZDi0Nuh6LAfNcsI1WTdJjA4H+v3zMDLPAW8QQ6QbtZ
	aGdZnqrju0c09yQrtbBPcCDOFewwEJiN03GhyUYxtG9RViaRP9KCpc6LX4z10nhmfmWPc2yhpxGi9
	YKHtAlEsj6xnm7SSbek9DiGf4Suym6I4884w/MdV5me0zZS++Vr2uF0S6EZknAQCzLhfBfcrbZT5y
	/SbABQMkQFNVu2cfte6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4yix-0000hx-A3; Tue, 03 Sep 2019 02:39:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4yik-0000Wn-OT
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 02:39:04 +0000
Received: by mail-lf1-x141.google.com with SMTP id u29so11585731lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 19:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bypCdtkGCzTYBLw17U+HKNiJ2TPW1+aSuUx/xJPZIZo=;
 b=Tw2YiN+HIU2vOIqjXQvLB1Aaa7OR8piST1fyAxnRATGJ7xPFti8tvGrk+Q1W2IfFwh
 3is/D+npGDgCVdQZk8KI89Cjs03qBDMuqpAVhR3qD/Be2CZozOGXWYP9/jvB7cG8oMsy
 GbynC5WW+g/omkxFMfkzATGJm9qsXdKbZOQkYg6aQjgrEpCDczgIO+Sb+egz6jrHvtku
 H/cmrwxJ22Flcr0ha+YNU9ZYGDqCRkPIZ90JirjlV7Mkie/dqQePYO3CNN3UkcLszKyS
 JtmmL/T2kErBT9Xi0cimYGOuKfbsuMEWvlf/Icz1yKur63PrmdWLqpXQXShH+bE1P4O+
 4QLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bypCdtkGCzTYBLw17U+HKNiJ2TPW1+aSuUx/xJPZIZo=;
 b=MPfXhOrDIrRCfAh+5qh48EPDNu51cKSSO8lN/2BNh7+XtKjLHzuewucEDFtn/AIdjT
 MvPTyv43cYfl0kFiuYWwpNW4JrN3iGM/ZbbqxeQfl2o/6qj2XLn6Fm7ohm9FN368eSeP
 Pez4oSEmXwv0RdalnKMAkYJ8/bSrMlat8qKYQi46tAkhxDUjGMInvwp8FO0gqQ+3e6Gv
 aWU9u+lWLJc1mcB0W7yHeuFKI6ikEeSSqPrUio2Zhv2xHwBTK4w4Hdng/3M5F27StFHp
 bJI/2mpsgQ2FEi5oysdEvkia/jJzRyYsnZACaxN0yHWzX3YYwxU9OTKsFnLwVuFcTFhk
 Ej2g==
X-Gm-Message-State: APjAAAUQNytW8Dma5zk+2IDJDq2o5XWFqEWsBc7EuS3yn5tLlE4gvo9B
 Rxo+0MUsv6LRyTV42KuiGHln7LqYT2Y5sQ0kZ3o=
X-Google-Smtp-Source: APXvYqwGGeSGkPpuwW5dwm7rAyPowBBe7Ix/KIQ0UDaaZQ+Ir4C6sIN/uDqrUD6hZZwmSAh0xU9ocevalRVs66GAl1c=
X-Received: by 2002:a19:f11c:: with SMTP id p28mr8434160lfh.44.1567478338404; 
 Mon, 02 Sep 2019 19:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Sep 2019 23:38:54 -0300
Message-ID: <CAOMZO5CHmvrbVG_h8hOb7hMjXasV_QwtNoXpEw9kqY=4Jj5HAg@mail.gmail.com>
Subject: Re: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_193902_802963_2DC82488 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Ping Bai <ping.bai@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, will@kernel.org,
 yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-input@vger.kernel.org,
 ronald@innovation.ch, NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, mripard@kernel.org,
 Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, Sep 2, 2019 at 11:05 PM Anson Huang <Anson.Huang@nxp.com> wrote:

> +       ret = input_register_device(input);
> +       if (ret < 0) {
> +               dev_err(&pdev->dev, "failed to register input device\n");
> +               return ret;
> +       }
> +
> +       pdata->input = input;
> +       platform_set_drvdata(pdev, pdata);
> +
> +       ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, true);
> +       if (ret) {
> +               dev_warn(&pdev->dev, "enable scu group irq failed\n");
> +               return ret;

Better do a 'goto input_unregister' here instead and call
input_unregister_device().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
