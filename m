Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4586B8BB29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sW1dwQ80CzF0O03vD3eLlioq1z1AXEFoG18XGsvK9Ac=; b=FVk40gCVnFAOG9
	4aZrWTDTyMEV0a+WnIEu3VY3wgY2WseanYwVyxPXdRPAdlCGxBXuE1ivyIIhbzXUKOkfr6JEkyNUC
	AnZWJz68SDMTCsD0iyoHUk6+76GP5bM2l6SAG6hnvBVuSnjDiwy7C0tazdGJeVVCs6anst6k5u+ou
	zR1FYTYLDBJ4khTOCjtanrX+wMiZ7Ie+E6Ijb+vz3YMI7H3539RwfFOUU9wuid3RWHvw6whrR9nR2
	67C3zIBUB9I00h1bcNy3rf01m0Z70rkZtrYYQW9ZgV27jqo0CgxN9lJiNAaAOnwzzZiB1f3gWWcvm
	ccQnO8vtts3llOHbixJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXRV-0001po-Cr; Tue, 13 Aug 2019 14:06:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXRE-0001pM-Nt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:06:14 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 314B52084D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565705172;
 bh=O/fCUAPwaNaOOD9s9pkmueTj8itaAZFGU/uvEuU6kgc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HpR0kTzh0L+1HCy1Trd3qsQrbjZn52IPfyQt3g5Y8VCr7jeQ4xAJGXgARJUR1xzUP
 klqdwHVZdgDWaLEyuO5irst9vm8D+yBfjbDxpDfpaPy5IwtXu8xDHljvjkBzTYqGfd
 9qbk3phoAnuJjqVtWEPfHlqqv0nRh2ShRjc21dNs=
Received: by mail-qt1-f181.google.com with SMTP id d17so27472139qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 07:06:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWPDQaEE0vrYJogpf+QDyMgoxMwPuDv8DfIZc/wndAmaOQGHbaI
 fkslFhM/pQpumSNuG5/yBTc4bPkaE7Okk10vqg==
X-Google-Smtp-Source: APXvYqx3FMdHhwFr0AVbpQ+Lxot0AwypTnxtWq13JJOC5ylQw8YnX1DEfhh/V+OPrUwvGuTcbKUoILzXiL4zskKDN5g=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr6124643qtc.110.1565705171397; 
 Tue, 13 Aug 2019 07:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565633880.git.leonard.crestez@nxp.com>
 <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
 <CAL_JsqJWpQN2oTm8Q2_Gzd0GJ+YZoc9j-zh-U1s4eGhMxDEmEA@mail.gmail.com>
 <VI1PR04MB702300C8C78BC033D16EDB85EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702300C8C78BC033D16EDB85EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 08:06:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+BDO-J12BddWw-KbhjTx95p58qqpUhhKzUHED6vFK2TA@mail.gmail.com>
Message-ID: <CAL_Jsq+BDO-J12BddWw-KbhjTx95p58qqpUhhKzUHED6vFK2TA@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_070612_823636_AB90F5AD 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 7:32 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 8/12/2019 10:47 PM, Rob Herring wrote:
> > On Mon, Aug 12, 2019 at 12:49 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> >> Add initial dt bindings for the interconnects inside i.MX chips.
> >> Multiple external IPs are involved but SOC integration means the
> >> software controllable interfaces are very similar.
> >>
> >> +description: |
> >> +  The i.MX SoC family has multiple buses for which clock frequency (and sometimes
> >> +  voltage) can be adjusted.
> >> +
> >> +  Some of those buses expose register areas mentioned in the memory maps as GPV
> >> +  ("Global Programmers View") but not all. Access to this area might be denied for
> >> +  normal world.
> >> +
> >> +  The buses are based on externally licensed IPs such as ARM NIC-301 and Arteris
> >> +  FlexNOC but DT bindings are specific to the integration of these bus
> >> +  interconnect IPs into imx SOCs.
> >
> > No need to use the interconnect binding?
>
> Separate RFC: https://patchwork.kernel.org/patch/11078673/
>
> The interconnect is represented by a separate "virtual" node which might
> not be OK. There was also a recent RFC from samsung which turns devfreq
> nodes into interconnect providers:
>      https://patchwork.kernel.org/cover/11054417/
>
> Is that preferable?

Virtual nodes are not OK.

>
> >> +required:
> >> +  - compatible
> >> +  - clocks
> >
> > reg?
>
> This is deliberately optional: for some NICs the GPV register area is
> not exposed in the memory map. This is unusual but an accurate
> description of the hardware.

Different h/w blocks should have different compatibles. GPV is an Arm
thing and I'd expect FlexNOC to be different.

> The current driver doesn't even attempt to map registers, it only
> adjusts the clock.

Irrelevant to the binding...

>
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/clock/imx8mm-clock.h>
> >> +    noc: noc@32700000 {
> >> +            compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
> >
> > Doesn't match the schema. (Well, it does with 'contains', but
> > fsl,imx8mm-noc is not documented.)
>
> I'm confused about how per-SOC compatible strings works with validation.
> There is a rule that every SOC dtsi needs to add soc prefix to all
> device nodes but of_device_id in driver code doesn't need to be updated.
>
> Without using "contains" on the "compatible" property then all
> SOC-specific compatible strings would need to be mentioned in every yaml
> files. Unless I'm missing something this means updating update every
> binding file for each new SOC?

Yes. The main exception is if various SoCs are just packaging,
binning, or fuse differences.

>
> I guess it can be useful because it also validates the compatible
> sequence itself.

Right. Order matters.

>
> For this current example something like this seems to work:
>
>    compatible:
>      oneOf:
>        - items:
>          - enum:
>            - fsl,imx8mm-nic
>            - fsl,imx8mq-nic
>          - const: fsl,imx8m-nic
>        - items:
>          - enum:
>            - fsl,imx8mm-noc
>            - fsl,imx8mq-noc
>          - const: fsl,imx8m-noc

Looks correct.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
