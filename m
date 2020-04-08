Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863951A1A10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 04:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVBzAaZIPDO2cLE4OlSobYQUBDRDv058v/AJ9wB7b6w=; b=hBL5jdQFmocNME
	m1SjV12prXHDh71eLnXOZrLZgN1zwOMS8a8JMidF4dL74gHRnogkOGht0Tz/hqEOtE2MfPs4gSlwA
	eNZ0gn3NWHTniXFw5E12nrkEhVmXP0yombHh7nz/yLHt4URUw43TED3bwxojCIt4vweAx0CR9GbEt
	+o5XVYyMoLLGSC6xWFaK/VWVqZFg+o9fLwRn7N6L0bj/WlSj9mKpxqsgosbtDZ7imnYESszfcHlwT
	kni97FA0qmlQewqaKvUREEY+AKlxpcaur/OZTHnXlu/vlSo678bu8lFiWvYhBaj9MVHn0hpms+LHK
	CqRyJziT3vYNIdGwzMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM0g0-0006CP-31; Wed, 08 Apr 2020 02:42:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM0fs-0006C6-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 02:42:46 +0000
Received: by mail-vs1-xe43.google.com with SMTP id s25so1858888vsp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 19:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgCzGC1kvy7uz42NyKbeHibJLU8sxqBfQKH68cIgT/g=;
 b=cx9Qsi72wzKy/XU4FQqkeYKTGUFhM0z6j2FN6hQ65ZDbSG9Emo3vh/laboSbSnP6Oy
 UKsa+Rjeyr2pB+zcaQksgYunG/grjh5B57OJUwQ8UVnfCi7JOjFuBKf/CL+EJUW1iIth
 IkP5YmBGan3ewUJ37DrS+yyfl4r6mlUnzvalEBgUnlXIPgck3UhI1TBRlNu3vc9nOHgS
 ryzIFGnV/08OZxcYNbwPcVvTdSGP13UaVz1g9ANQew/e6G3/kUe8EvPEZFMtWJSyMfJs
 7dgSlnecvYQyY9hve7Uky1gutfpHci0ERR/WaJ2/eyEx6Di5lMzQuI9K9kIOaomz3waK
 Rmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgCzGC1kvy7uz42NyKbeHibJLU8sxqBfQKH68cIgT/g=;
 b=qNCVoHS79gTy2bfQNikAD39SKlMFMgyYiJdHxy0lbs/NNUH8+TV2w2/4THaLVQ5qeR
 cqXkHfCYbWjLD0DK9Fz687KZj0c4ja9cSvVCVjjeVEPSG5mRlrqnbdsnrzOiTVkuZqrR
 flhHlXLskEN8V8R2dRhTOikOLKDIDc4GDfjvYoG1u8VFGmrSGOmyDAYaANopOOgLt/Mz
 yn/FtQ/wm4xJUGNLxPt1F0k36jaLPTiceTPf42QNx3poUSIsTv+TnE7tSVEpYHzojU2W
 Ex1nLWWCqDZEZXArjjNZMCyR58VKc5odYJEpKGs02Tv1E0RHQTxNK3M9QGnSN6oJAebi
 eAUQ==
X-Gm-Message-State: AGi0PuZ8MdqhQ4hPqNAPWOgeFCSsF6UmNQViehCn086DHa4cIx4ae/NA
 shwjg/QYcDk8qfbEynSEhpPEYxIRkaQqw3cFqtE=
X-Google-Smtp-Source: APiQypJgKZShAtHyReSHvnIKPU4K34SOKUvabdLuLm2C8WyckZcMyaZpynMpdqqE3w5V3IRWj8tpywcTktVgv0y9y7A=
X-Received: by 2002:a67:1b81:: with SMTP id b123mr4371610vsb.172.1586313763887; 
 Tue, 07 Apr 2020 19:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055837.3508017-1-alistair@alistair23.me>
 <20200407055837.3508017-3-alistair@alistair23.me>
 <CA+E=qVf_Zr6JXQVxRuUdTWL7oxq5dRp+jeHF8PWDSozyFZMaCw@mail.gmail.com>
In-Reply-To: <CA+E=qVf_Zr6JXQVxRuUdTWL7oxq5dRp+jeHF8PWDSozyFZMaCw@mail.gmail.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Tue, 7 Apr 2020 19:42:17 -0700
Message-ID: <CAKmqyKM=YGq98E2dWu2BczTxHVOO86XW9Et1z_u8DOSJMtHdyQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: allwinner: Enable Bluetooth and WiFi on
 sopine baseboard
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_194244_949847_71A0C033 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alistair23[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [alistair23[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, netdev <netdev@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 11:53 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Mon, Apr 6, 2020 at 10:58 PM Alistair Francis <alistair@alistair23.me> wrote:
> >
> > The sopine board has an optional RTL8723BS WiFi + BT module that can be
> > connected to UART1. Add this to the device tree so that it will work
> > for users if connected.
>
> It's optional, so patch should have 'DO-NOT-MERGE' tag and appropriate
> change should go into dt overlay.

I was hoping to enable WiFi/Bluetooth by default, even though it's an
optional add-on for the board.

Alistair

>
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > index 2f6ea9f3f6a2..f4be1bc56b07 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > @@ -103,6 +103,16 @@ ext_rgmii_phy: ethernet-phy@1 {
> >         };
> >  };
> >
> > +&mmc1 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&mmc1_pins>;
> > +       vmmc-supply = <&reg_dldo4>;
> > +       vqmmc-supply = <&reg_eldo1>;
> > +       non-removable;
> > +       bus-width = <4>;
> > +       status = "okay";
> > +};
> > +
> >  &mmc2 {
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&mmc2_pins>;
> > @@ -174,6 +184,19 @@ &uart0 {
> >         status = "okay";
> >  };
> >
> > +&uart1 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> > +       uart-has-rtscts = <1>;
> > +       status = "okay";
> > +
> > +       bluetooth {
> > +               compatible = "realtek,rtl8723bs-bt";
> > +               device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
> > +               host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> > +       };
> > +};
> > +
> >  /* On Pi-2 connector */
> >  &uart2 {
> >         pinctrl-names = "default";
> > --
> > 2.25.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
