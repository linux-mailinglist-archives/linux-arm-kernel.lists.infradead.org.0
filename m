Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9A51FEC5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhcGRMFPrYtyQqJVpH1F67FB4vi68ImTCdrTX3qF6EM=; b=TRJieJDB8M7C8m
	CGsH5mBrgPYzAioYj5F41UpVtBew4v9G02KkO9lxRX6blgswjeylYR8bu53oqdfRE+VCzQ/vRoPWe
	MeQdub21T7k1HAo+Cnr8mnZSAb8tRC0cXclfmYJsxTElC/USI/1j8rVWn7wTzdqYDE+J+1CcZU4Yj
	I98WDULJ+HCnAtU+d+24DdzrhFGgY9KI7LyJedBMAQZCU/mcOd9ikoKkKbD0/QLMNzexo4OyAbUkl
	aiTPKPv9gCcnt0jxtGMaUkdbBRQwDeetEBS9iQNagyQecNTIDQHVCvo2p9Bb1mDZgro0NLzkr1USp
	mdu2aYHyxIIu5c00Vixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlorU-000264-Mv; Thu, 18 Jun 2020 07:21:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlorL-000254-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:21:17 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MVMqF-1jLnNa1i7D-00SLZv for <linux-arm-kernel@lists.infradead.org>; Thu,
 18 Jun 2020 09:21:09 +0200
Received: by mail-qt1-f172.google.com with SMTP id w90so3669377qtd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 00:21:09 -0700 (PDT)
X-Gm-Message-State: AOAM530fGPy9GDzbZ+TEZdrHieYYWGnA1z/uPXhj+t5eGGwrSeJVWUet
 OlVa5bjTiOdUCx7PBm7KoJYi5j5Xs/ROdS5uo6I=
X-Google-Smtp-Source: ABdhPJyZwB+YzjDh0fJqM1eWf1KZdD5m3whVUi2LGOR5Rq66DfLtWAExIzP5DMOjDRUJoSdl6RPuwHagBzsvGAhJDHc=
X-Received: by 2002:ac8:7417:: with SMTP id p23mr3048812qtq.204.1592464868127; 
 Thu, 18 Jun 2020 00:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jun 2020 09:20:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
Message-ID: <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
Subject: Re: [PATCH] soc: imx-scu: Support module build
To: Anson Huang <anson.huang@nxp.com>
X-Provags-ID: V03:K1:6L1F5AZFWOoIOaX8dNBOYKz4Qafo75/HFXhu5CVAzjrhzZ3aNoS
 LY3Fngw4qAoMZCV8cK/11Qn8ETKHl0Df8nGqXoe06/oZSXTHwEi8EGkMfFMI7rOIuj9f4/p
 l1pFDQhFftelQ7rPBK5wVNWe4bvOWllVeQMuz78Fud+J14rTYoglU5SGAFtDBWLQ8iJ7soh
 yoAIRJbKxPxhuDHP3atgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gW9iAvLApb8=:A8ljaTwh/aZKFzpEW6b0+P
 LZBT21hyKrJobfWXKcX2751ONZHVe2tgsVdj2gADIdBcXHjv56EGDvzSGcPcile23ibo8wE9s
 +Rkn+p2iWWNPzOgH0n+9mKlqwhax91Br2q07F8gJPBxd7/XZrjfbhHpnH/FvHZ8K1ZzjZF6Xm
 VrAWRkviEuXuaYvuDgDPpNyO1B/phh/fQCtojcG33mAwD5bUtBJ76E+N6fnoR4j/owlkK0XL7
 pxGqo6h7tm5roIFJW2EkF5amFLPVGMUbwd5IR5m4HEo/BjPZC6KZOd4nD000YnoBqW2ulgC7J
 +zGkpLEwBCZlp6cR3jepDNpxm2n1YG3/NB+fqPYYnL6+YUPsHPuC1KYhGnLvspnCtGnGPxl/y
 LwTBV4F6BHWCdCBA2uizijs1virzD5BBp0MWJUGpED8e/J6a2AMzoS5r70EWCL37rRABPcFJr
 60khhxyQ9ai63BxGpT0qNAhP1cPwhpj1eUJ0us18Zg3xJM58dTar4UgQCQtziY1cwgw8oyC3B
 +57AOUlO/RrFQhxciroRLq2Q5GH76okjExVQa/yFq7JKcbaTPOqx7yme2sHmxDJcUMZ5pPmTU
 QeZQm92AVPlFeWN52EM3c7hsowaHRlqOo5ltuBli/W28qYWDv+DppGYx8JshNsK1+t3FSShNX
 K9Eu11+kWsKXir9MazjAMSSJrLxWYxnP7RsxJp10pm3NlFRckZbOcHMMF9UI8RPqDEMV1E6Mv
 iruYuMBNSXoajxDc4dUs2g3vHEpjgCZ4LMFuLMiFO2jHN3jVL+aALaZV1spn+BJIUV/gmnxI+
 SVi/qE3eOAx9FZuivy+Lgl50LpSxOklQTAOc3qyOWn6s7oXPZE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_002116_122930_472C3058 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 11:41 AM Anson Huang <anson.huang@nxp.com> wrote:

> > >
> > > I'm ok with the change. But I'm curious how can this module be
> > > autoloaded without MODULE_DEVICE_TABLE.
> > > Have you tested if it can work?
> > >
> >
> > I ONLY tested the manual insmod, if want to support auto load, may need
> > some more change, will try it later and send out a V2 if needed.
>
> The further check shows that, if want to support auto load, the platform device
> register needs to be done in somewhere else which is built-in (in my test, I move it
> to clk-imx8qxp.c's probe), and also need to add below module alias in this driver,
> because it has no device node in DT and no device table in driver.
>
> +MODULE_ALIAS("platform:imx-scu-soc");
>
> Since this driver has no device node in DT, and the target is to build all SoC specific
> drivers as module, so the best way is to add a virtual device node in DT in order to support
> auto load?

I see that there is indeed a driver for the device node in
drivers/firmware/imx/imx-scu.c,
the only reason for this module using device_initcall() with a manual
platform_device_register_simple() seems to be that we cannot have two
platform drivers bind to the same device node.

I think a cleaner way to handle this would be to just move the entire soc
driver into the firmware driver and then remove the duplication.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
