Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BFD6E10A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 08:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYfz1sAgZi60eoPUUcAWl6oPf6BQu+USdfYLNstCGEs=; b=OyqxJina7dYJ60
	r9zTmFehNxDAVOZoymasqReU9karZoTK9LdURdn7QEWTQyBrtqs1pibbMqbfkWFIyoN53/yQVxPpc
	yzv418xTLeqUOMnafkMR8WqcnRW4/QPcVqvKTnFsbKM4ka4zdLlDQsJD5eJUZm3/vBsw4iKBav/k9
	XOQL0pa7wpTb6o3PATgTY55O3t2y5wdQTIhDY01gEXgd/WqjKB3z5FYEXpiUpGZe+sZndFaBvX1C0
	s6dVPcjN/ydvKHDyY5jNQOp1Cm0JnDbQK71N5qcXSlhj4kmmYly26JLJWfIHKTPSY38RAR2NXBDJl
	IMnkbyCI/GnncdAkyuqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMTz-0002r8-Bz; Fri, 19 Jul 2019 06:35:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMTj-0002qI-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 06:34:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so31097806wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 23:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMcKTsEVyji+n2fYLtlne8FEnWZcMA2/ktkd0SxT+VI=;
 b=QSOwOufE4zhKaOthPkDk7gWdX3qwYegZikq56s0mkeTwW5vSbnTSAff0lcnACu34zb
 vdRjrjSoxzugWQ5xieksmi9CByUQ5AnlvJvPceiVK6Sma4J2CcItR6GSqE/+xv2rjim9
 hszdEfhJIQs0Cvwusfs52LSo1AccmTUPJozjSty8KUF6cjhaQHqgQxUAgI0dd8a4xTnH
 BZ8cKAEWJkxNC2IOVZ6nJ+kTlghlY5buBFzyqooQ2Jiy3cOwUPAYOLNzB/9wFrTNfb72
 p9dkMyMTd4O6yToPz/j1GJ9UScDq+CL+Hi80pQVbp5CH5uBdZp0mNnDg/VSEYBXXVgOE
 ehYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMcKTsEVyji+n2fYLtlne8FEnWZcMA2/ktkd0SxT+VI=;
 b=A6gpMgUSPaJVJsmoPvOr5idBvMN20K80ivhskoe3XRPb7ry6WW8lXT5yQez6ZIFTfh
 LwrUvg7BBekRyb1UuOA5Gy14H3fOlPeJsJl6LGurZFwWBnuC3Y0SfpjToKiRUH0DyaF8
 Qqc2tVgIGx1+9nQK8Y8h+OdBj8OgmyHklXmHD3BmqzBdT7frNgjqo+8kTxgidoS0Ew0O
 Oo8om54K0zsCyckNzt8zIFBYu1lT9PIsLfme+XdEHFOwkdLrfqVgwBiGmobPCp6FZPPo
 Xz6Hdh0ImI/rgwIe1R6ZNMDOhArS4DKvhMXSkOjDvaRvgmw5UIg10XhsXQs1wqLTSiBT
 9orQ==
X-Gm-Message-State: APjAAAV63y/7l4o1Yqp03g1QKP6jwvfPEsek0ZbJXF3MBlcSK/6Iv7zW
 w3QotGjbXxzsh/EZUSrBtf2A7AUR1KgSf2Hnk8k=
X-Google-Smtp-Source: APXvYqzkF6gS1MNZBLZ1Ty1LQtpQfLnkNKW7cn72gR9MP8uHzDu7PJQxe2xQB/GaBTVdYHWPDS52KzZOIEH2mFQtBgM=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr54574650wrx.196.1563518086309; 
 Thu, 18 Jul 2019 23:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
 <20190718151346.3523-4-daniel.baluta@nxp.com>
 <CAL_JsqJ6o9mTjLYjnfcYgfSFKb95W8FseZBBb8RLosB__GNBcw@mail.gmail.com>
 <CAEnQRZBubFz90Xf8irDwc=erTXmByXX4rkzZy9r8ymfAuQEsZA@mail.gmail.com>
 <VI1PR04MB5055597B7C3AC114FEB7E3E5EEC80@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5055597B7C3AC114FEB7E3E5EEC80@VI1PR04MB5055.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 19 Jul 2019 09:34:34 +0300
Message-ID: <CAEnQRZC+LyoZ_C3_0RVgRpBFVMuMT26KPVZunqqNKC=OJcERog@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: dsp: fsl: Add DSP core binding support
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_233451_394549_D6B61685 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Frank Li <frank.li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "sound-open-firmware@alsa-project.org" <sound-open-firmware@alsa-project.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 9:40 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 18.07.2019 21:24, Daniel Baluta wrote:
> > On Thu, Jul 18, 2019 at 7:41 PM Rob Herring <robh+dt@kernel.org> wrote:
> >>
> >> On Thu, Jul 18, 2019 at 9:13 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> >>>
> >>> This describes the DSP device tree node.
> >>>
> >>> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>
> >>> +  power-domains:
> >>> +    description:
> >>> +      List of phandle and PM domain specifier as documented in
> >>> +      Documentation/devicetree/bindings/power/power_domain.txt
> >>
> >> How many? 4?
> >
> > Yes, 4 for i.MX8QXP. Also, the same number is for i.MX8QM. Anyhow, I didn't
> > added added a limit here because I really don't know how many will be
> > in upcoming i.MX platforms.
>
> Which 4? It might help to use power-domain-names explicitly just like
> it's done for clocks and mboxes.
>
> This is very common for phandle lists.

4 like in the example at the bottom of the patch:

+   power-domains = <&pd IMX_SC_R_MU_13A>,
+                        <&pd IMX_SC_R_MU_13B>,
+                        <&pd IMX_SC_R_DSP>,
+                        <&pd IMX_SC_R_DSP_RAM>;

Not sure if it makes sense to use power-domain-names as the driver parses
directly the "power-domains" property.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
