Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C21B294F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWvSZ4VUYybrQQlaUuBhr+5aGtY9eSsFjEN0ZUK499U=; b=tAE2dNbhFJFVyj
	C8g2ws3Psbf/YF94okXCNpmURAaKlfhEkLQiS0+X+VhJbnTcVJjA2LnAwTlzsQocjMd6vzd10nUEG
	hHPi+yRx4g2KgA6IvS1amJ17qtAMNrFFv61M8GLB0K11IUp/ySCq0RguTs3eyvBbbSRhRqERuQPZl
	GhTtbmWXavtMulWbXFWTEbAzWaRQr3I2vVQ0Q9MQ2GYgPgOyc/zUd17unAwoIMeJEHK8ynuphu+85
	0X7UwQaF4LAdKXUPB52yyRIR1tyaE9N7lYPdTjjrHW8VQ0PTMurBUxn521IWRY3DZP3bcoX5rLilf
	YbXBsHGw8FMpwh6xNjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtk2-0001Hu-1y; Tue, 21 Apr 2020 14:19:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtjn-0001FS-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:19:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id j1so11237897wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 07:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XZzndPnYtYbbEF/KUZVNIJz+EcXy0p75DzfqczwlSe8=;
 b=kgLmPLwxUl5/Ma+EDAS7OwNd58zyhTcO0jxcdmbufGrysR7FvlZ9M7c2Vqs4uYk//I
 NtCsPb+nsu2eUmQfKxg/RNmFIlU8jpRgqkqImtzJnDsA4j1bIJaxTVEnJDJcfRdrNS+b
 QcY172YKngn+A8fR6B4Rw1TUti4r0pKIcRjzANa3rOsg/9O1hNm3hzTsu0mxBGaFAlnu
 HreuzgMaUwKocNly5bo3jhPzAU7Ax2qiBcJh3EoAi3de3PVLgISOxVGSoFvxo9v5giVM
 +9LIeVtljWhNV3LEbQ0Tb06ND/qEGg6kIH3Y0Bp8SeWeHcMs74C30d9mjAZDmxmzAjQd
 KpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XZzndPnYtYbbEF/KUZVNIJz+EcXy0p75DzfqczwlSe8=;
 b=RI0b3XF4iKztQneIoZwlxJEOkS02JJ9PxZEW9FF34lkLfti0DXaSLY3XdM+f30V81m
 tng4KD7wfGWAX/jFn4EWrZcDaM5ScR9MZHIlEf7kN65/0E3noPCpp1dBbwKJW4y3lEcT
 56RljDEV9mXUTEju43RKhlMakQx6fWOD1pTiZdxpYONOHcKSLVFAJUqSNA9ulhaetdGB
 3wKDdLvZBr7Ad1g/cffCB+zgkYsBLZ8rOirt0xznAuE6M5gEA4aKRglPygaKgWO3cHX0
 nCuer/2OFDGaO/veuyfKnM32Ssp0MIL+ARwJKZ5wSKiG/9/aLm0/XuwekaYByXgxyM8l
 ASLA==
X-Gm-Message-State: AGi0PuautIST9Vk2uPH9OVU/ILWfFmI12P2sT6UnFnze5vrnWYcOAGEa
 fiaDEjQ4UVE90WDtmJU1ZXHdahVcKwmi/UK26bk=
X-Google-Smtp-Source: APiQypJ4ai2ZaRvEMbuZeelgSbTJL39HJnQ583AlT1gQuWTbnZsztUo86fQBN9mjsQkbukzDpzbexYNN1zF/4xAZ5dY=
X-Received: by 2002:a5d:45cf:: with SMTP id b15mr23682887wrs.78.1587478736843; 
 Tue, 21 Apr 2020 07:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
 <20200304121943.28989-2-daniel.baluta@oss.nxp.com>
 <CAPDyKFp6KLuuuVFcEWGxn5NkuDSkhM-MjRiiYj_zC4mFxhOBag@mail.gmail.com>
In-Reply-To: <CAPDyKFp6KLuuuVFcEWGxn5NkuDSkhM-MjRiiYj_zC4mFxhOBag@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 21 Apr 2020 17:18:45 +0300
Message-ID: <CAEnQRZDX8PZ7V+c8zfoxK-+oGp2pt8N3oTAC6=Ps1W33LGY7WA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 1/2] PM / domains: Introduce multi PM domains
 helpers
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071859_667703_CC474E48 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Len Brown <len.brown@intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Baluta <daniel.baluta@oss.nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Kevin Hilman <khilman@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 5:01 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 4 Mar 2020 at 13:20, Daniel Baluta <daniel.baluta@oss.nxp.com> wrote:
> >
> > From: Daniel Baluta <daniel.baluta@nxp.com>
> >
> > This patch introduces helpers support for multi PM domains.
> >
> > API consists of:
> >
> > 1) dev_multi_pm_attach - powers up all PM domains associated with a given
> > device. Because we can attach one PM domain per device, we create
> > virtual devices (children of initial device) and associate PM domains
> > one per virtual device.
> >
> > 2) dev_multi_pm_detach - detaches all virtual devices from PM domains
> > attached with.
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>
> First, apologize for the delay.
>
> In general I don't mind adding helpers that can be used to decrease
> open coding. However, in this case, I wonder how useful the helpers
> would really be.
>
> More precisely, according to the information I have, a device may not
> always need all of its PM domains to be turned on together, but
> perhaps only a subset of them. Depending on the current use case that
> is running.
>
> Of course, some cases follow your expectations, but as stated, some
> others do not.
>
> Do you have an idea how many users that would be able to switch to
> these new APIs as of today?

IMX Sound Open Firmware driver will immediately be available
to use this new API.

https://elixir.bootlin.com/linux/latest/source/sound/soc/sof/imx/imx8.c#L221

Aside, from that there are the ACM clock modules for i.MX8QXP / i.MX8QM. Also,
looking at our internal tree there are XUVI, VPU, DPU drivers that need multi
power domain support.

Anson, Aisheng do you have a number of users on your side for
multi power domain?

thanks,
daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
