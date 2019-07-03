Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2469D5E4EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84AeS59Dub7wwzWKO1wN7BgExA2EtO4YbK05gAPo8HU=; b=HxkwFNydyqLbWw
	dDa5Lk4A/iIPeXrLtpro0Phsms6VL6CmOOXoOf3xBMeBoqw0MQsLjPZC5oJzY7NqC1GszFg4yPRT2
	zDPHrKpm3gsU663dmlJglsEyIOJYTNz7bbNhz9MAJdq1bQQMdApU8jQMUkORqRjVuoRfXKVIIMR6M
	rvSdtQSnQuT0tRtR/+ZWGbvwCrX7+XkXEW5TB3G/UpjIONoZljZcTl0t9+8pRtwKZ3tFlX5PkyeIX
	aOKzAFeQqBHl6kONZmxUiy5S/Wsd8aLHUUmWbodw+qnAkiXk3/S5YrUajYLsc6xP/AFkA4pDTlNS4
	o1TJBiDP6uJ0/IjjVToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hif2g-0004RL-Rs; Wed, 03 Jul 2019 13:11:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hif2B-0004CV-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:10:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so2730622wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 06:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1Bobaa50WXbR9Y4LcY/j1xmyJEA8EpS2B/y8I4HgN8Y=;
 b=m01HNG6wrx/reIarGAfsQfArF84e7O4uyXNBjqkc9OOTg8rv7kmLMtGi/FGFpq/IHM
 LLFm+60f/VkHVa/kdCHMn3Gdk31L0i7zSM8d7O9Yop9simcXDE2BFiTdV5wWl9ApObxn
 dF3oVE8bQ7aJhpHFPcU+LGNtNDRgbAxjQfMy5gHMowF1EQq5jWLIvX2mz5NOP6Cr5jva
 WH7a83cBEgSceLeUh7dtKLV7cUNsAVryRJWwIGXFU7WSdK0WzKrsuFiIxA3/ARt4L5p4
 5kvXGVYykMG1z5CkyV+VVwmJ2z9YwW1gBVglW86TSqLoXPg99UbW1QKZ/wEPhWppm3xq
 72Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Bobaa50WXbR9Y4LcY/j1xmyJEA8EpS2B/y8I4HgN8Y=;
 b=G1oD25GQhoWNqeTXfJAZ7G22QhiqB4yNdOKGOZSsgctdbIkmA53YV3yf3pTsU2UCqK
 HAKKrrm9XQLbTqdacwmHH5ZgRcsabx57lWEtNk1S2j6442SvxJmhD7xhWym2fdBHwu6K
 aJywoLUWBHBRSmVME6lWmXlAvjqpTBDEDlQ4+fj4ZRNSxU8bMti50WPtohDNgVEVYT1w
 O76XgtNvDk5unyUaP12Jijx4gMoltH9n1tqo4XDx+5d+iWQg0t4Y4XrfT/VxM6u0A+6W
 gGeI/tCIV076FtKJODVwdA+r3LjyPKjQCEsseSvV5lLEae2Wg+x9f4fsKXicSgHNb12l
 TKOA==
X-Gm-Message-State: APjAAAW33Qz6IVstTPjtI+p0KxvInngqrtbMuGHe8zuoTh2s5ylU3bvQ
 25/VZEug70/q4g8ZKXYOig/Blfc/Xjdk3j334y4=
X-Google-Smtp-Source: APXvYqzxRCWgYBv94XndsktY7TXLYzN563M7b6eZz6JCymcmhJ0NgQ/r9yxy7ERMDwsgfwNkZOv6T+elFv3Cp6CEi1w=
X-Received: by 2002:adf:b69a:: with SMTP id j26mr21775717wre.93.1562159449703; 
 Wed, 03 Jul 2019 06:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
 <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
In-Reply-To: <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Jul 2019 16:10:38 +0300
Message-ID: <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
To: Angus Ainslie <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_061051_673700_4BCBE36E 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 Devicetree List <devicetree@vger.kernel.org>,
 Andra Danciu <andradanciu1997@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 andrew.smirnov@gmail.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 4:01 PM Angus Ainslie <angus@akkea.ca> wrote:
>
> Hi Andra,
>
> I tried this out on linux-next and I'm not able to record or play sound.
>
> I also added the sai2 entry to test out our devkit and get a PCM timeout
> with that.

Hi Angus,

There are still lots of SAI patches that need to be upstream. Me and Andra
will be working on that over this summer.

>
> On 2019-07-02 07:23, Andra Danciu wrote:
> > SAI3 and SAI6 nodes are used to connect to an external codec.
> > They have 1 Tx and 1 Rx dataline.
> >
> > Cc: Daniel Baluta <daniel.baluta@nxp.com>
> > Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> > ---
> > Changes since v2:
> >       - removed multiple new lines
> >
> > Changes since v1:
> >       - Added sai3 node because we need it to enable audio on pico-pi-8m
> >       - Added commit description
> >
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29
> > +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index d09b808eff87..736cf81b695e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -278,6 +278,20 @@
> >                       #size-cells = <1>;
> >                       ranges = <0x30000000 0x30000000 0x400000>;
> >
> > +                     sai6: sai@30030000 {
> > +                             compatible = "fsl,imx8mq-sai",
>
> I don't find this compatible string in sound/soc/fsl/fsl_sai.c. Aren't
> the registers at a different offset from "fsl,imx6sx-sai".

Yes, you are right on this. We are trying to slowly push all our internal-tree
patches to mainline. Obviously, with started with low hanging fruits, DTS
nodes and small SAI fixes.

Soon, we will start to send patches for SAI IP ipgrade for imx8.

>
> How is this supposed to work ?
>

For the moment it won't work unless we will upstream all our SAI
internal patches.
But we will get there hopefully this summer.

Thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
