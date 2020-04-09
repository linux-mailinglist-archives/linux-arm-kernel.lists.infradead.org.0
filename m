Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614171A3614
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U53ZJgs7iLoX2myWooizeQ+r6wVcglycVwwM6TZWxUg=; b=JQ+lQ0q5DGmz+v
	35GubY8pX93QHTiGXWCNcTfc09KKgrhCoqLte8HQYDicZ9SNThodBbmdsXXFTC3L6jB1oBJ+lnIkW
	osR9k67RonRPWZqKFac/e7pxGoRD6JlBhszlgvRLbFaHyoMSMjZZ6B+QQiN71qDpEo4RuniwfnufH
	WGhChJLuDq5OsyjrK1MWHuf1zwr3usBh18CzFfJLzEWEi1czlW4AIYoyqptP9/u3tHE+ZjFQ17k6U
	7leJoRHHfUmTC0JzDjIOkUjs9h6Qx3xa6DdC6yxRLygBwr5p8a9vPF85uPLW2Hi+G1uhnouafX4aB
	a6/j1x55uhqUgVkwdwVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYLP-000458-69; Thu, 09 Apr 2020 14:39:51 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYLH-00044l-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:39:45 +0000
Received: by mail-vk1-xa42.google.com with SMTP id p123so22319vkg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xEkP9tsPmG6xIpP1vzjRU5PHmw91Ij8x4EQYq0ffIRY=;
 b=gRRRZ1sMj922xak2A74EFoOiHADrJzQm7/rJaeK5pfAuVSHS3gB2+2r+tsPF5OS3eU
 d6WCreqRsPuEuBmb7GUYzdYOWcj35hAhSyknSdX72vRTG8MWdz56Xa0CxZ3wF6m+lNY+
 LTFdC2ag6KmzAX+wWZkumO7x9+kjKJCrPw4XheX1XI6vClZR6jJ3v9g8n+UDk6Y5h+94
 DCmS5TZheYWqU1IJ9febMYwkGVw3Spycnc9wl32T284wdq1MJvmrwQuP6SJyi2M0qycW
 JoLTjabvZkTA6YKrrBRs8HZv8gpzqbcKC+Km/0ddJSh+SHoNn/WtjQiXGv+2ykhEopSO
 4W4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xEkP9tsPmG6xIpP1vzjRU5PHmw91Ij8x4EQYq0ffIRY=;
 b=labJQlUgwN1B+1Tne6QDWeDY94FAl2BCMnwPNPQdEquqzrNYl5FZHoWsJlwplmy9aL
 L4T2T4py+PER3eFSbLhZQBxUg5wnPw2bI7O0AOlGT8WsqO/RLtFdcnxNuUq97+PJCyio
 miHeUH6h0bvlEnGfNXPDKzv3nqV2oSqRlRAN0HduVP9UoMyGkHao8Qpy4esqea7nNPam
 7HmhYmDIgI5ja+oA4JzmQWsxHY0+KhrEWLtN3/gBbhrrfmOH1gsHje7ZxLg+M2M1+jx7
 m9XtBQ5j+aJPYO4hFO4yPx3tfREpyHdt9svfSkniBQXyY/fHEKL9oAO7uqRxhccRPQQz
 YePw==
X-Gm-Message-State: AGi0PuaO/co4FIaeDKpSk292rA0CfPOHMRv+LR+bPqAcyLOxgmSjq2hn
 FBeUsAvMwGU2s44Su77AxAmz/ytWEiyzryHa+uMvrw==
X-Google-Smtp-Source: APiQypLrVG6KjexVOrXdXNiyGWmOu+0dTmnud+29Y24Oy2Dagz3JnegvbbcroVkVqLcf1po17uWnVbKTKKTfeO305Zg=
X-Received: by 2002:a05:6122:446:: with SMTP id
 f6mr1083497vkk.79.1586443182560; 
 Thu, 09 Apr 2020 07:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <1586402293-30579-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerNonZ7qJi8Qihmj87QteEnxTF0PRS6vw5GPemMurOfS9Q@mail.gmail.com>
 <DB3PR0402MB39160A94CD5E97AA79E2DB5AF5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39160A94CD5E97AA79E2DB5AF5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 9 Apr 2020 20:09:31 +0530
Message-ID: <CAHLCerM+UpmdvvxV2KpEZuJSKQNjz2ONpXdFPdyUxCOj0PjnGA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_073943_794062_D2D65A05 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
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

On Thu, Apr 9, 2020 at 7:52 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Amit
>
> > Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
> >
> > Hi Anson,
> >
> > On Thu, Apr 9, 2020 at 8:56 AM Anson Huang <Anson.Huang@nxp.com>
> > wrote:
> > >
> > > Convert the i.MX8MM thermal binding to DT schema format using
> > > json-schema
> >
> > Would it be possible to have a single yaml file for all i.MX thermal sensors by
> > playing with required and optional properties ?
>
> i.MX SoCs have many different thermal sensor IP and hence different thermal driver
> is used, and different i.MX thermal drivers have different DT bindings, so is it good to
> put all of them into single yaml file? For example, imx_thermal.c is for i.MX6/7 SoCs which
> do NOT use of_thermal framework, imx8mm_thermal.c is for i.MX8MM/i.MX8MP which
> use of_thermal framework.
>
> If putting all of them into 1 yaml file, it will be almost like just putting 2 files together, I
> Personally don't think it is a good idea.

OK.

> >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
> > >  .../bindings/thermal/imx8mm-thermal.yaml           | 53
> > ++++++++++++++++++++++
> > >  2 files changed, 53 insertions(+), 15 deletions(-)  delete mode
> > > 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > > b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > > deleted file mode 100644
> > > index 3629d3c..0000000
> > > --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > > +++ /dev/null
> > > @@ -1,15 +0,0 @@
> > > -* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
> > > -
> > > -Required properties:
> > > -- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
> > > -- reg : Address range of TMU registers.
> > > -- clocks : TMU's clock source.
> > > -- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
> > > -
> > > -Example:
> > > -tmu: tmu@30260000 {
> > > -       compatible = "fsl,imx8mm-tmu";
> > > -       reg = <0x30260000 0x10000>;
> > > -       clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> > > -       #thermal-sensor-cells = <0>;
> > > -};
> > > diff --git
> > > a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > > b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > > new file mode 100644
> > > index 0000000..53a42b3
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > > @@ -0,0 +1,53 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > >
> > +cetree.org%2Fschemas%2Fthermal%2Fimx8mm-thermal.yaml%23&amp;data
> > =02%7
> > >
> > +C01%7CAnson.Huang%40nxp.com%7Cb190e049130e49e0750d08d7dc8e48
> > a3%7C686e
> > >
> > +a1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637220375963888457&am
> > p;sdata=s
> > >
> > +S8%2FR2j%2BT1UmDqXFIPPzPgWs26lMiwW3saTq4qlZAUs%3D&amp;reserve
> > d=0
> > > +$schema:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > >
> > +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAns
> > on.Hua
> > >
> > +ng%40nxp.com%7Cb190e049130e49e0750d08d7dc8e48a3%7C686ea1d3bc
> > 2b4c6fa92
> > >
> > +cd99c5c301635%7C0%7C0%7C637220375963898454&amp;sdata=tXIh9d%
> > 2BszcExH0
> > > +7ic7s%2BqJyUdbE0aHM3tH%2BwkWgnbhQ%3D&amp;reserved=0
> > > +
> > > +title: NXP i.MX8M Mini Thermal Binding
> > > +
> > > +maintainers:
> > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx8mm-tmu
> > > +              - fsl,imx8mp-tmu
> > > +  reg:
> > > +    description: |
> > > +      Address range of TMU registers.
> > > +    maxItems: 1
> > > +  clocks:
> > > +    description: |
> > > +      TMU's clock source.
> > > +    maxItems: 1
> > > +
> > > +  # See ./thermal.txt for details
> >
> > Don't point to thermal.txt anymore. thermal.txt will be replaced by
> > thermal-*.yaml files at some point soon.
>
> OK, will remove it.
>
> >
> > > +  "#thermal-sensor-cells":
> > > +    enum:
> > > +      - 0
> >
> > Don't you have multiple sensors connected to this controller? In that case, 0
> > won't be a valid value.
>
> imx8mm_thermal driver is for i.MX8MM and i.MX8MP, i.MX8MM ONLY has 1 sensor,
> while i.MX8MP has 2 sensors, that is why I put both 0 and 1 here.

Please put this in description after maintainers above.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
