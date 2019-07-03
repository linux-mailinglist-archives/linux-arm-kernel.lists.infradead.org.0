Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F705E568
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4849j8/NxaKqXPN7VBd6h/yJoRQIQpsYm73vGLj9AU=; b=onDtchFMnC2WXq
	7+QaJZPF8ey3gG+NbSY2JvorVokgE4RbN/8i9j0RyFIsReorcmigKGxm4F7JQ3J01UYgPNclN/2Ls
	gdj4avknZTT4Ddf5oPQ0co3eJxio6idJgvAcJNfAya+Sl9QCyE1rk5pCK9oKPHzIxBTemvKFqMVCL
	V0ylkyNWlVNVGzXqDDO7wEI7EGQs8k45Ht2Ns5iovEIo23YGG9npHUXYkIfsSIdIlS74vdQIOgip/
	Vm4IGzhtrjLUObTvybYZCYf/mlAFs6bVZI1b8EZ4y8jXXGqQmBIXgIRQNT8QpLb3yoqhTZFdy0iPq
	yLAC2znQ2T/BffEDYklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifGS-00038e-9b; Wed, 03 Jul 2019 13:25:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifGF-00037x-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:25:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id c27so2838388wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 06:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4NwugRsrz30iTHZQgWt6F/3Ov8fl00xOltiwxUVEio8=;
 b=gpg6IaJ2V2R/S8X/fVZz+TVrGpioO30d1kedBhmuLkrgt48raO6wgYYtLQMI0SvZH8
 xOMeAXfBsRZCOnvNrZeBFCo500XqvHpTmjJNXjW3IGTvTjEYx/rClLrlnWh1rX4gaCQX
 Nxd8k8gSxt3B0QMV6mUHj0QG/bKQPiEKcQmDi8YY92Jtw0bdwFuMYYCmW2IpDK5sUMVl
 8qv2Uc+Mg7HoiZCajbjFv+O1WGCDYSQCf2SFM8wS1GL9a35GOnSJF/5srPQcPOlXcGWR
 lov25fTvovhq667L//7AO05bdZ+UicM3tDbMJw4XnDQa5VoAvcHS7/41wY7NrwoN/8bF
 t2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4NwugRsrz30iTHZQgWt6F/3Ov8fl00xOltiwxUVEio8=;
 b=f79WRudBINYNLDVokpKsqkpoOZq2jB419krZFpay1la0ZkPD1LYwbcX4qu5tT38VWr
 aQzPXYWxftvMr2GlElzA5pNI5islt13eN1PPfe007Cqyzr91F54Q4rubAplg9CZVlKLN
 cfT0Xd65sk3czvp19n+AXEaqE+rFfiuRI3YfSHkupRIeH1FZBFFACFg7zZEeyS+UQI7U
 0Lgel332u+/jbZRQe+qtXjYkPFkZQDLMKyFTAu3CIQm1b7Jv6TVj8bvi0Zxq+BRWCVYr
 Or8LpmvuZlXQ43vt99YUuxZ5km4Q5p5gRbAJX8o2ay40IAS+ZkWPcH1S6Oh2TcSZgURt
 rg4A==
X-Gm-Message-State: APjAAAVf8JQPy07ciF3Qan3O9hAcasV2nqX8jgTCF1ynMW27yECXEBMd
 yEvtuH1m/sCUCXp6G235JuvtZwYz0xJRFM/OC4Q=
X-Google-Smtp-Source: APXvYqxo5f8uBoCPBbG+a3vlWIJP2lcqQMuX5HJWpva0kJNkHI1DRDi/7+BDTKw8Pzb4DjO37HrMXCarLAsyxHuzdcs=
X-Received: by 2002:adf:b69a:: with SMTP id j26mr21826997wre.93.1562160321848; 
 Wed, 03 Jul 2019 06:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
 <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
 <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
 <9e196ce51eac9ce9c327198c4a2911a8@www.akkea.ca>
In-Reply-To: <9e196ce51eac9ce9c327198c4a2911a8@www.akkea.ca>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Jul 2019 16:25:10 +0300
Message-ID: <CAEnQRZCoOyyZVs0=BjXB5=wYe3XW9GOF9JvwjhSU9BsChh08uA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
To: Angus Ainslie <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_062523_587656_0F09D9CC 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

On Wed, Jul 3, 2019 at 4:12 PM Angus Ainslie <angus@akkea.ca> wrote:
>
> Hi Daniel,
>
> On 2019-07-03 07:10, Daniel Baluta wrote:
> > On Wed, Jul 3, 2019 at 4:01 PM Angus Ainslie <angus@akkea.ca> wrote:
> >>
> >> Hi Andra,
> >>
> >> I tried this out on linux-next and I'm not able to record or play
> >> sound.
> >>
> >> I also added the sai2 entry to test out our devkit and get a PCM
> >> timeout
> >> with that.
> >
> > Hi Angus,
> >
> > There are still lots of SAI patches that need to be upstream. Me and
> > Andra
> > will be working on that over this summer.
> >
> >>
> >> On 2019-07-02 07:23, Andra Danciu wrote:
> >> > SAI3 and SAI6 nodes are used to connect to an external codec.
> >> > They have 1 Tx and 1 Rx dataline.
> >> >
> >> > Cc: Daniel Baluta <daniel.baluta@nxp.com>
> >> > Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> >> > ---
> >> > Changes since v2:
> >> >       - removed multiple new lines
> >> >
> >> > Changes since v1:
> >> >       - Added sai3 node because we need it to enable audio on pico-pi-8m
> >> >       - Added commit description
> >> >
> >> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29
> >> > +++++++++++++++++++++++++++++
> >> >  1 file changed, 29 insertions(+)
> >> >
> >> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> >> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> >> > index d09b808eff87..736cf81b695e 100644
> >> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> >> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> >> > @@ -278,6 +278,20 @@
> >> >                       #size-cells = <1>;
> >> >                       ranges = <0x30000000 0x30000000 0x400000>;
> >> >
> >> > +                     sai6: sai@30030000 {
> >> > +                             compatible = "fsl,imx8mq-sai",
> >>
> >> I don't find this compatible string in sound/soc/fsl/fsl_sai.c. Aren't
> >> the registers at a different offset from "fsl,imx6sx-sai".
> >
> > Yes, you are right on this. We are trying to slowly push all our
> > internal-tree
> > patches to mainline. Obviously, with started with low hanging fruits,
> > DTS
> > nodes and small SAI fixes.
> >
> > Soon, we will start to send patches for SAI IP ipgrade for imx8.
> >
> >>
> >> How is this supposed to work ?
> >>
> >
> > For the moment it won't work unless we will upstream all our SAI
> > internal patches.
> > But we will get there hopefully this summer.
> >
>
> Shouldn't a working driver be upstream before enabling it in the
> devicetree ?

I see your point here and maybe your suggestion is the ideal
way to do things.

Anyhow, I don't see a problem with adding the node in dts
because CONFIG_FSL_SAI is not set in the default config.

We try to speedup the upstreaming process giving the fact
that SAI patches will go through audio maintainer's tree and
the DTS patches will most likely go through Shawn's tree.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
