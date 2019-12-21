Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD861128A12
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 16:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJk6PvuqchhUoQ7bq+APL6PQC/TcROZP1htwnGiy2SA=; b=K9NaeedwofPCQe
	RwsFSuwpe3pOq8UfLeNtTA2WeSL7HZGJxtYPZW97fjupsduN3s8bL/Z2WdLrw7FJ8/T+SjBtujPFR
	7FWrKFd+kHv3dCb30n2X3B5jF4ZVUSYsvXIqks1+rNPwn4K7R+nziWNoqu67fLITA2LxE3o+owU+I
	UEPJ0Ohvh9Y9sH36qMlzISn8Xije71CZQhwFcH6nEaHUWAADd7i8fXeQdPIkRBR+5hvAbIjRTSffy
	Sl+iZn49lA50BXBKxNUE9PuddYcwlLxjIS9bQtKP/2BknGpQgJp/jFflB/aq6aWI6S9ZVxeOfK0vJ
	rnZXr4ApPdr5aj69Blwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iigMo-0003xD-8c; Sat, 21 Dec 2019 15:08:30 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iigLZ-0002xT-4D
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 15:07:15 +0000
Received: by mail-il1-x143.google.com with SMTP id p8so10530081iln.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 07:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LkyVqaGL8pSvqNm/GP/crRw2qKqaYhVFS2IL3esjjss=;
 b=YyXABD20DXHsGL/j/uU2X9GW2vWtYA4/REvABc1SKH1P+gDQRaUgyfvrN7RNZLFcCr
 FE3Ac/vjCvKi0GIE4tdWnfyEliulLr1lEucydp2qpyI7uSmil51FTU+YufrF/ol7cPYy
 3jz+O/ZDGl2N1kwK12gqNbDo3O8rHDRgtO5Fe0DrbWNwIkgPjcy/2MowkPNut2ycdeuL
 eqmZrYwjta8g6lG0nudReRNfMSQDnkAFG2qpH0rAbJh0rZcE6EcqVg6K1jJMoiAj3aN8
 a8vlolsXPlaKOLYXNXOiYc3ufw2b1w12tDjhlMw09kGop1Ok33ZFy8Afo/1KDncRMmMH
 bLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LkyVqaGL8pSvqNm/GP/crRw2qKqaYhVFS2IL3esjjss=;
 b=ilbbIUPUieHhmy9bfVoPKKe0DYwt0nnRCDm2/gniCL2BYctLz3bHf7Wh5gbVG26326
 8FJfr+CJ2Qe92JTdpnC/TaYMr4dGEvgwPrOT03Bo7jVQzW48I6fCzZ33bZvhUxrYWm75
 XDjgKZqtaoIp0ZevkIIxSyepYYPU3c3EAjOzlef/rMW+6vzqY1/hQIEjfjmu6RtoNktC
 Ob/R3ndu4kANb1fFZZVPDxdkNs+M+2Fkm0ZT8gbixR0U3wL52dDHYIBygo6t+PjufEyP
 KdKbUGZj8tcxcZxt/8EEu095JgPYq5T4kEbkHLAB4CenhaVxM8GfsnJCEMigF8t5DMPw
 eISw==
X-Gm-Message-State: APjAAAUy5nxqJPwlh7aP5Blma6jBJesNZG67ESTS0OH4gb/c1gHA+R9t
 MtQEptK95Dn/B3iGKQuGzNg6/U2GCjSDdXyFyuP3hg==
X-Google-Smtp-Source: APXvYqwvQf5cIvO4uRO1C7m1YDUP8Y4ctwyyWjl1EAYmu/rnU1BO5cqKngYGLE5EGBXHkD57AG4IlXjPHwoNstd3jeY=
X-Received: by 2002:a92:1547:: with SMTP id v68mr16711743ilk.58.1576940831051; 
 Sat, 21 Dec 2019 07:07:11 -0800 (PST)
MIME-Version: 1.0
References: <20191213160542.15757-1-aford173@gmail.com>
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 21 Dec 2019 09:06:58 -0600
Message-ID: <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
To: arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_070713_217757_E9C0C3FB 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:05 AM Adam Ford <aford173@gmail.com> wrote:
>
> The GPCv2 controller on the i.MX8M Mini is compatible with the driver
> used for the i.MX8MQ except for the register locations and names.
> The GPCv2 controller is used to enable additional periperals currently
> unavailable on the i.MX8M Mini.  In order to make them function,
> the GPCv2 needs to be adapted so the drivers can associate their
> power domain to the GPCv2 to enable them.
>
> This series makes one include file slightly more generic,
> adds the iMX8M Mini entries, updates the bindings, adds them
> to the device tree, then associates the new power domain to
> both the OTG and PCIe controllers.
>
> Some peripherals may need additional power domain drivers in the future
> due to limitations of the GPC driver, but the drivers for VPU and others are
> not available yet.

Before I do a V3 to address Rob's comments, I am thinking I'll drop
the items on the GPC that Jacky suggested would not work, and we don't
have drivers for those other peripherals (GPU, VPU, etc.) anyway.  My
main goal here was to try and get the USB OTG ports working, so I'd
like to enabled enough of the items on the GPC that are similar to the
i.MX8MQ and leave the more challenging items until we have either a
better driver available and/or actual peripheral support coming.  I
haven't seen LCDIF or DSI drivers pushed upstream yet, so I doubt
we'll see GPU or VPU yet until those are done.

Does anyone from the NXP team have any other comments/concerns?

adam
>
> Adam Ford (7):
>   soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
>   soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
>   soc: imx: gpcv2: add support for i.MX8M Mini SoC
>   dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
>   arm64: dts: imx8mm: add GPC power domains
>   ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
>   arm64: dts: imx8mm: Add PCIe support
>
>  .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
>  drivers/soc/imx/gpcv2.c                       | 246 +++++++++++++++++-
>  .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
>  5 files changed, 387 insertions(+), 8 deletions(-)
>  rename include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
