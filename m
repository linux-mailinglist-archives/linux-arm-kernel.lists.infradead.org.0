Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E3D127B93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 14:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiRJfUdhOZpNxpeA3XvHVA6/Svw/BByuxa6lnGQKepg=; b=ODPYhY6P3IA56s
	5R3UxB1cUPzojabi6E8gQ4C9jhAJ9FhSZBFtWjU5o2hp4eZpakXWit0W/nQRw/sptDXyEYtkDvMq7
	TyGzPYflcpmZSs5Lk8TK99VHF1NoPRi9ev69IdU0c5C7jXETp+5W9D4m/HDUskc6MLi6Kg6yaLgT1
	dMwyD2Lstx3kA8CVyiOaBxsFMAGo+UvUrClNH7ynj+XthrHXePeTTk2G0z1KCtGszJEHCvl3x83Bn
	7RWxK9NRoz8LMoaL6sX6Wt+/5WnmFHzmDlME7YberbpQQm8n5C1IVwD6AX2uSJZFQTu60HzikjvR/
	oZEhLv/c4wQ03t+Ov4Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiI94-0001B9-U1; Fri, 20 Dec 2019 13:16:42 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiI8u-0001AE-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 13:16:34 +0000
Received: by mail-io1-xd44.google.com with SMTP id n11so2622436iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 05:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uHSX8g5E8trqkmNzyMnHt3mp/c48r8jhgT3X2UgyWzI=;
 b=ioCYWik0WpFyQsofOM8nBzkAXQbvEMoTINnXcGv1H+0nO7/Izv13bfXoV4kddHCXeE
 44jTYoThe1IMQ4RJRuNKc4RL+2LroxWN5iTUvv6yY8Co8H33HGckvVfsN4feWApufJ/n
 tpaf8nQ+EZJ3xNOAuDGPE2en+i1b/+KOx4BfYri0XQUN0pHCAWG958VOFSP+RYdDZR4o
 Bm4HglKZRzZqpzCi0jLr6jJx/mEpvzleHo57Uv5y4aqQsdpD+HS4ivKmxr4Tah5De3pD
 Yf+bUSjQEnmtDccSFz7m2/3vtm9HXvvzOnkkxXa/g1MrloQh8Rjkid3Lj3X8YjTl2M0P
 Zbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uHSX8g5E8trqkmNzyMnHt3mp/c48r8jhgT3X2UgyWzI=;
 b=EiceUJ8cFu1vSAIONUCIYSufDeHm9P7IgHWd5LRERAfLvD0ZF/Hg+5SaXS1zbg0vno
 By5/XyZufJz/uC9B0fJqHxFKKDXDcvnkV+3yUzYNMx8EKgbgar2Rxp5GHp0tRdyeks1r
 e/miqbOMjGwyFdkL0LumSJJ76wx0fWAbpZZ8PwfyVV90rm1rBpGg8tdzsIQB7mYqHBNo
 2sbXvXPgQjD7qt7m4iZ5fH24PaRefkF29v7R0aZJa4vr95m5z87ZlschQGgtWK+oR1v9
 mtr10VLs041IqmOouuA9ZVvWyGquD/hPDeadbvTdgtelPnE5Ftinnu8rIB5T67vy3Lbq
 kcYw==
X-Gm-Message-State: APjAAAVnBljgjNpuZ8/Zh78fPnIQReQeTqhi1+X/YTXSExCzFBR2sEi/
 wC70ywLPITShJ9q5PJ4j3379Hel4/Tqd4AHax5rcPW31
X-Google-Smtp-Source: APXvYqwXKxA5lUxHZ3nZa0stb5w+I89G3O5m7/Ftqj0zT80tIBEUoniCu9OBsllsG/vNnRbcaKrGlNvSnbmvwJWazcI=
X-Received: by 2002:a5e:8505:: with SMTP id i5mr9526629ioj.158.1576847789624; 
 Fri, 20 Dec 2019 05:16:29 -0800 (PST)
MIME-Version: 1.0
References: <20191213160542.15757-1-aford173@gmail.com>
 <20191213160542.15757-3-aford173@gmail.com>
 <20191219234100.GA19269@bogus>
In-Reply-To: <20191219234100.GA19269@bogus>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 20 Dec 2019 07:16:18 -0600
Message-ID: <CAHCN7xJLH__Bx+YQFX6sQerkypTYYdJvUSjqbTUwv14RQj5iag@mail.gmail.com>
Subject: Re: [PATCH V2 2/7] soc: imx: gpcv2: Update imx8m-power.h to include
 iMX8M Mini
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_051632_387842_5949DEA3 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:41 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 10:05:37AM -0600, Adam Ford wrote:
> > In preparation for i.MX8M Mini support in the GPC driver, the
> > include file used by both the device tree and the source needs to
> > have the appropriate references for it.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> > V2:  No Change
> >
> >  include/dt-bindings/power/imx8m-power.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/include/dt-bindings/power/imx8m-power.h b/include/dt-bindings/power/imx8m-power.h
> > index 8a513bd9166e..0054bba744b8 100644
> > --- a/include/dt-bindings/power/imx8m-power.h
> > +++ b/include/dt-bindings/power/imx8m-power.h
> > @@ -18,4 +18,18 @@
> >  #define IMX8M_POWER_DOMAIN_MIPI_CSI2 9
> >  #define IMX8M_POWER_DOMAIN_PCIE2     10
> >
> > +#define IMX8MM_POWER_DOMAIN_MIPI     0
> > +#define IMX8MM_POWER_DOMAIN_PCIE     1
> > +#define IMX8MM_POWER_DOMAIN_USB_OTG1 2
> > +#define IMX8MM_POWER_DOMAIN_USB_OTG2 3
> > +#define IMX8MM_POWER_DOMAIN_DDR1     4
> > +#define IMX8MM_POWER_DOMAIN_GPU2D    5
> > +#define IMX8MM_POWER_DOMAIN_GPU      6
> > +#define IMX8MM_POWER_DOMAIN_VPU      7
> > +#define IMX8MM_POWER_DOMAIN_GPU3D    8
> > +#define IMX8MM_POWER_DOMAIN_DISP     9
> > +#define IMX8MM_POWER_VPU_G1          10
> > +#define IMX8MM_POWER_VPU_G2          11
> > +#define IMX8MM_POWER_VPU_H1          12
>
> Why is _DOMAIN missing from the last 3?

I will go back and review it.

adam
>
> > +
> >  #endif
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
