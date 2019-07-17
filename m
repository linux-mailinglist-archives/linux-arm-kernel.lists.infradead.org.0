Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEDB6BDCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xvpzfC9XRjVdPU4n4iR5XzejCfXatnl8pHpJ9/qBl4=; b=GPrvWHPy6SANob
	EsWUsUIZArYMQmM0kMKxVZHnkQeiTB3xJwHzjmO5mffw2ysX5P6ykcD1f+EXmEjE8msOxxdvYk9yz
	SIDZ3N0TGYXlp5IPi9x64HRb2/aPcmNPuaixKTxPGveVdj922mPQE6uazYPSeMw2uND7WEpmfLoq+
	AAKD1hwI1LkmRmZj0tC+bXZG6SlJJKVzOy6pgbVHCO+jQ/PLWvpHhYSqUTajHv8sNoj4F8fD+/QB4
	odcH5fmPpVT6djZ38GeJJrN2xEQ1U1I5v3VQUpWrS9wCFdPRVatBNcfsl/atXJbRCCEfvGgYtIOPv
	rUtKGr9U7PoMBI9FBCsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkXe-0003hz-Kj; Wed, 17 Jul 2019 14:04:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkXW-0003hM-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:04:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so24981012wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 07:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZznUD/3Doukl7awZznF628Vg6/9V6wzQqJQaI/2mctw=;
 b=LXI3hn+8n+V+6M8Q47325XdmRfkVNVfYLcd+e1GHj2TtXbZBiNh1fwFhgQoQrYcVZG
 UKIzpZnomSpzeOvsRwgz8S1YD2FNizYVlsW6noHnfRTSqQGamq10fCEyxHxg3loqYkrU
 nxdKO2LGO144u7GLuhmHbFHl/jheY/bhvflyOzi2Oj/dfONYGufdifrbhHjcZtSY6+hJ
 QiI7nZFkH71dQbVIoGhk6kV1sSVq06jXG94aB7IxUoi7qBC3Fte3Z+yV4XD3y3I8UaAX
 BnO4ZSLi3RApiAzB6KuD02WUdNIleg98kwZc+8APi+T5PEyKk+9P0SSh6atW8vthCjrw
 McJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZznUD/3Doukl7awZznF628Vg6/9V6wzQqJQaI/2mctw=;
 b=Pv1wtyTYIFMwCBn0PTeS9A0fGp6SsC7QvGFYGYX+lan294mTUvn7BvSeIzJ2eUnig+
 pdr9UlEpHlP+s6zhJ1zcr3ApaiR3eC9hanVkcFuDXRX2Dhi+7KSzjo2RKY5Yb5wve3SE
 c1EI2oaS5u4+HYS+193hMN+T1Ra0qcN4yLQA57M1M4KtX/px6RPJNyOcQslGQPvdqhd4
 ZhXgOQVdnxTAjruI/KgzdVrapt117MCLwiapU55JXdFpgSP6PspULXsPmwWVxUbWGGY0
 ih9EDwmWl6mcfwINXhtlOdn6DoIcT6TMS9j8yiuOSHaRquHU5P+eGbCqN5kOK3xRpSiX
 Z0KQ==
X-Gm-Message-State: APjAAAXAW8iagkE7IrD4nKQsyR94cCttYzri0Bi+7i1e5bqpPX43Zy7N
 99cMSUTllISCg0v69XQLixUWkPpSF4HDmtvC4qQ=
X-Google-Smtp-Source: APXvYqzpP960/74duT8ltae4WRae9+c2tEyndB2cDroFKwAvE4YQsyVSRFcoFAD1nYGVeU/h2sY49bvQ9GPuyk8AvC4=
X-Received: by 2002:adf:f450:: with SMTP id f16mr12451048wrp.335.1563372252370; 
 Wed, 17 Jul 2019 07:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
 <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
 <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
 <9e196ce51eac9ce9c327198c4a2911a8@www.akkea.ca>
 <CAEnQRZCoOyyZVs0=BjXB5=wYe3XW9GOF9JvwjhSU9BsChh08uA@mail.gmail.com>
 <1563292685.2676.12.camel@pengutronix.de>
In-Reply-To: <1563292685.2676.12.camel@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 17 Jul 2019 17:04:01 +0300
Message-ID: <CAEnQRZDSzjMUQ36BCE=wQUN3fRg_pL2cDb1xxFz222LoZrmW_A@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_070414_396871_1EDCB8EA 
X-CRM114-Status: GOOD (  34.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 andrew.smirnov@gmail.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Angus Ainslie <angus@akkea.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 6:58 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Daniel,
>
> Am Mittwoch, den 03.07.2019, 16:25 +0300 schrieb Daniel Baluta:
> > > On Wed, Jul 3, 2019 at 4:12 PM Angus Ainslie <angus@akkea.ca> wrote:
> > >
> > > Hi Daniel,
> > >
> > > On 2019-07-03 07:10, Daniel Baluta wrote:
> > > > > > > On Wed, Jul 3, 2019 at 4:01 PM Angus Ainslie <angus@akkea.ca> wrote:
> > > > >
> > > > > Hi Andra,
> > > > >
> > > > > I tried this out on linux-next and I'm not able to record or play
> > > > > sound.
> > > > >
> > > > > I also added the sai2 entry to test out our devkit and get a PCM
> > > > > timeout
> > > > > with that.
> > > >
> > > > Hi Angus,
> > > >
> > > > There are still lots of SAI patches that need to be upstream. Me and
> > > > Andra
> > > > will be working on that over this summer.
> > > >
> > > > >
> > > > > On 2019-07-02 07:23, Andra Danciu wrote:
> > > > > > SAI3 and SAI6 nodes are used to connect to an external codec.
> > > > > > They have 1 Tx and 1 Rx dataline.
> > > > > >
> > > > > > > > > > > Cc: Daniel Baluta <daniel.baluta@nxp.com>
> > > > > > > > > > > Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> > > > > > ---
> > > > > > Changes since v2:
> > > > > >       - removed multiple new lines
> > > > > >
> > > > > > Changes since v1:
> > > > > >       - Added sai3 node because we need it to enable audio on pico-pi-8m
> > > > > >       - Added commit description
> > > > > >
> > > > > >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29
> > > > > > +++++++++++++++++++++++++++++
> > > > > >  1 file changed, 29 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > > > > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > > > > index d09b808eff87..736cf81b695e 100644
> > > > > > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > > > > @@ -278,6 +278,20 @@
> > > > > >                       #size-cells = <1>;
> > > > > >                       ranges = <0x30000000 0x30000000 0x400000>;
> > > > > >
> > > > > > > > > > > +                     sai6: sai@30030000 {
> > > > > > +                             compatible = "fsl,imx8mq-sai",
> > > > >
> > > > > I don't find this compatible string in sound/soc/fsl/fsl_sai.c. Aren't
> > > > > the registers at a different offset from "fsl,imx6sx-sai".
> > > >
> > > > Yes, you are right on this. We are trying to slowly push all our
> > > > internal-tree
> > > > patches to mainline. Obviously, with started with low hanging fruits,
> > > > DTS
> > > > nodes and small SAI fixes.
> > > >
> > > > Soon, we will start to send patches for SAI IP ipgrade for imx8.
> > > >
> > > > >
> > > > > How is this supposed to work ?
> > > > >
> > > >
> > > > For the moment it won't work unless we will upstream all our SAI
> > > > internal patches.
> > > > But we will get there hopefully this summer.
> > > >
> > >
> > > Shouldn't a working driver be upstream before enabling it in the
> > > devicetree ?
> >
> > I see your point here and maybe your suggestion is the ideal
> > way to do things.
> >
> > Anyhow, I don't see a problem with adding the node in dts
> > because CONFIG_FSL_SAI is not set in the default config.
> >
> > We try to speedup the upstreaming process giving the fact
> > that SAI patches will go through audio maintainer's tree and
> > the DTS patches will most likely go through Shawn's tree.
>
> I've also looked at adding audio support to one of the custom boards I
> have here and was caught a bit off guard by the fact that the SAI
> driver is totally broken for i.MX8M due to missing patches, as I
> assumed the necessary bits are in place before the DT patches are
> landed. It's certainly not how things are usually done.
>
> This also means the DT description of the SAI nodes is wrong, as they
> are actually not compatible to the "fsl,imx6sx-sai". The register
> layout is moved around, so there is no point in claiming any backwards
> compat with the old SAI version.
>
> Do you have an ETA when the necessary patches for the i.MX8M SAI will
> be available for test and review?

No ETA for this. Sorry! We try to upstream it as soon as possible

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
