Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A86F060B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdeCaWtihESitPxKatlEGfdl5S1+NgaXc1FvbUiLOgQ=; b=R3xXO87syVUTg8
	2nQfOc/TugDKA/7hmkA1YosmIVpMo9KCs+ffs+5XZ8pLd6tFeHUThXYWJ/xoSMv2NRo5cNIIqYk55
	IzfqiXQ2J/DsoEqd7XustFCxr3SEF+YmCv70Hk0GirllutMJJsXPk4nzYt8mPpYnAbQs1S54CL1w8
	PJO2qH8JOmT/MWs/bSJlDTqu4rvJE86i7jek9C+tjuke1DRCMQ/HDdseUoX7IVgKGSpkdWvZ/GryD
	C4qkLPDhtYtqBgj/J5Xy4PSZ+UABAzqR54K9cxpPY6pbmGf+WA9WK6cmRFjp/7R+7D7j69wpIzWfi
	Gl72nFygpCSk9Z4y/U2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4a2-0007NL-15; Tue, 05 Nov 2019 19:33:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4Zu-0007Ms-TJ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:33:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id t5so23255206ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 11:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I+MPyMHNaAjRQvZ6iKHiwm7qDRtza2TDmfA+ceVFOL0=;
 b=b+Gg10jVzxDOyvISO0AonChau01JWusEEKryI39jtyF8bqTketz+BUKTuPtBA+drOv
 YZ3tpMMgMhMB4d6pDYhh2NSVcnEJ4pwtjkD9aMWf5kVdUu6aWtLZjyVVV/p2V11jIMD6
 zLtq1WSoxYy4mfJw67YBK4MHI0fG/BIl6WL2vvUD2mvuMIbeQ90r3Ls63T/EKW/H2AXJ
 mS16h3c0dftKXy00HoC6AGL42ztxQro/6bRUvxdWJJlqCWsYpBnxwvTTSy92uVuCBvgo
 3d5YvgrcVDL2c/w9xBufxdSfk3c6dq9H7oQRu1luipatbwv7kN5VvugmcumEOkvEpEZQ
 LB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I+MPyMHNaAjRQvZ6iKHiwm7qDRtza2TDmfA+ceVFOL0=;
 b=F3nvsJlzg1T144xmf7LCsRqgB9VeaZdQyAjrNsjzEnCA3LmNUobfjOaQYKzWmoype1
 hpv3BwrRW5rYdEraXTtAevA1WeMstBiPxOO0cgi7koahVHjXqprD/ozRw7c051HAdZCl
 bA21rL6GU/BcbjGPzmNZo9gQyIkR+KQzO69Dqr5Lt0UawZ/Iu8qHXLth0x4clFZ07LQG
 3K4FGpuk8MI7LdNgslPGv2kCoXvTq09T1JvXQUA6CYWS1cjXqfs+AtESXYp/3w3Q3q8M
 HrJD8NHaVl2vzDJnYe5DkSegFg0Zi6uSAwHHV6Meb87ElLk0JcorEB6QM5QUtoBxbMfX
 px8Q==
X-Gm-Message-State: APjAAAVRLja+IxNuDrLb1sregEaJvzc4Zz0pdGEbcCuKDQEShRCc81QM
 pMeuztzKmQaJBLCO6D1ZYnDDHYH+G1CUHKI5d7s=
X-Google-Smtp-Source: APXvYqxWyl+bdXvYXm0tfCa9yYZ/kOxjk6xKZRZDNSZDcR0N7SPIlEfhp2DOrA1agEILcvfyL/jjn+XkaZOcnW/AMG4=
X-Received: by 2002:a2e:9417:: with SMTP id i23mr12150878ljh.152.1572982400796; 
 Tue, 05 Nov 2019 11:33:20 -0800 (PST)
MIME-Version: 1.0
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
 <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
 <20191021111709.dpu6g7jltuw6cbbn@gilmour>
In-Reply-To: <20191021111709.dpu6g7jltuw6cbbn@gilmour>
From: Alistair Francis <alistair23@gmail.com>
Date: Tue, 5 Nov 2019 11:27:42 -0800
Message-ID: <CAKmqyKN8Ru19h3y=9O13=5wpys3BC2LQM65S+2QYjPdJQn2O4w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_113322_944691_5F1B95CE 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 4:17 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Wed, Oct 16, 2019 at 10:54:27PM +0800, Chen-Yu Tsai wrote:
> > On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > > > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > > > connections.
> > > >
> > > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > > > ---
> > > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> > > >  1 file changed, 25 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > index 124b0b030b28..49c37b21ab36 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > @@ -56,6 +56,10 @@
> > > >       aliases {
> > > >               ethernet0 = &emac;
> > > >               serial0 = &uart0;
> > > > +             serial1 = &uart1;
> > > > +             serial2 = &uart2;
> > > > +             serial3 = &uart3;
> > > > +             serial4 = &uart4;
> > > >       };
> > > >
> > > >       chosen {
> > > > @@ -280,6 +284,27 @@
> > > >       };
> > > >  };
> > > >
> > > > +/* On Pi-2 connector */
> > > > +&uart2 {
> > > > +     pinctrl-names = "default";
> > > > +     pinctrl-0 = <&uart2_pins>;
> > > > +     status = "disabled";
> > > > +};
> > > > +
> > > > +/* On Euler connector */
> > > > +&uart3 {
> > > > +     pinctrl-names = "default";
> > > > +     pinctrl-0 = <&uart3_pins>;
> > > > +     status = "disabled";
> > > > +};
> > > > +
> > > > +/* On Euler connector, RTS/CTS optional */
> > > > +&uart4 {
> > > > +     pinctrl-names = "default";
> > > > +     pinctrl-0 = <&uart4_pins>;
> > > > +     status = "disabled";
> > > > +};
> > >
> > > Since these are all the default muxing, maybe we should just set that
> > > in the DTSI?
> >
> > Maybe not, since people may want to only use RX/TX, and leave the other
> > two pins for GPIO?
>
> Right, I'll apply that patch.

Ping, just want to make sure this has been applied/will be applied.

Alistair

>
> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
