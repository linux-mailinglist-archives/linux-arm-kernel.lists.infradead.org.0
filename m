Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20722F2116
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=US3EC0yfOyQErB20CHaEogGynMSD9QJViMidpsiV61Q=; b=HAD5Rl2IyC+9Hq
	PPbVYzROsOynxi8Gu2DfxBs8CllhyspMg3MNQzL50eWHQfsHBQJhGWxWkVWS9oFKe2yYpxBum+0AW
	jg5R5TfPWcbqMCn572ltjoFo2OUM1gFWsxreF9uMLEA7xX8owRsodyFVAEjrmDeIpPkk2UUHaLquq
	uk4hsTCXemON7IBpBsl5fGMaf3nA1IAx4BAmMVZ+Th8TcZDYxabgXYdQDKAK6vNv/LlrtjI7Tp2no
	dkZ0nPhmZmtEm/9K1nGb2h+A74av9GCEkKSVUVeemY5hcBCye9TmJm4AoQOEHeeefYbAVD5EN8wDY
	P4DDrfZWAS/PVzTUsYIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTCw-0008Qn-Sh; Wed, 06 Nov 2019 21:51:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTCq-0008QL-0T
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:51:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id 139so27956571ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 13:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XXHffMhLqHV3+nf/8dCtN6KvSuj9fMAxyuhOM6lmxAs=;
 b=VVYt2y6mmF5rVyBM0aYxD9AE+a5vRgGSZdO2bi6U8c2WRgi/xa1J4PtJmJT0eOD2LO
 fOEs7VCCtZybdoirayhpjnp+VhEvb8EjdzfpBnEEMqTUttfbGrt8EWWqpyjFOqq9NEbe
 2NwK3aTU5HmFQnjUtXz2CrxS1My5iMESEuWgC7ZQt2olHOcgexC2ABFg6wLLhunB0LuO
 x58adyhHwK/9vfVq+EPDnO/sMQ1P7dxkL+sWQFV5oFe/VVbMyFmNJYcGJQS01htj31hW
 YzjC09YBrNwzoOnmkRwSHMlh18D1KtcSXa7a1x/yVkslgjFKHvED3ATLTbOi48aEhKhD
 RlFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XXHffMhLqHV3+nf/8dCtN6KvSuj9fMAxyuhOM6lmxAs=;
 b=WTXLgQCilBUIOIwwTMbqz+wKhEY2mMHGDPgXxiXv3hIukd6wkNwp06VnG3W/dkj83n
 jivsCIIoD6GORIsCqJKgttG62K2+7dfZX0HAuunb3ClmuKE01Ind9lY9MmGRdSXDBG/k
 M6wGEGFOB/C15CUYMKLjqxZFYqPs9x82w4iEcvs9ndfG8/fpI9m5rpMX9cw+XatusMZd
 ELfWFYOUdCjFwB1WmataHOCrt3quNQdSMvWRhyW0nxOXAhP3loxO1LCnthBKsuhnE2W2
 d0lQ4pzACS46U/f/5gpyqmymerwBzFr6vZkdNv8BIOtg1M4kGCI8ldDMHQxGP1u3p4cQ
 9Gug==
X-Gm-Message-State: APjAAAXrG61vDbIp/MzeLXbn5W+1c7PuIhNCuHnwumae+oI3yEd9/jay
 pANbrE9UPUarx/wD2sDfY2rEOftn0VBiPd1YvuM=
X-Google-Smtp-Source: APXvYqy/wCCWRQ2JBV3PNapXKlfu1wU4Z35nh3XscrtsJDbENGiKGiAE5Q0b/ln+I7HSRVkJr0GqvlyeoxZt6njoZZY=
X-Received: by 2002:a2e:6a19:: with SMTP id f25mr3575611ljc.147.1573077069287; 
 Wed, 06 Nov 2019 13:51:09 -0800 (PST)
MIME-Version: 1.0
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
 <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
 <20191021111709.dpu6g7jltuw6cbbn@gilmour>
 <CAKmqyKN8Ru19h3y=9O13=5wpys3BC2LQM65S+2QYjPdJQn2O4w@mail.gmail.com>
 <20191106115222.GA8617@gilmour.lan>
In-Reply-To: <20191106115222.GA8617@gilmour.lan>
From: Alistair Francis <alistair23@gmail.com>
Date: Wed, 6 Nov 2019 13:45:24 -0800
Message-ID: <CAKmqyKOQDD848PCXrqB1YD5OORtGhSF_uz4WzAzYr1iEQANZag@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_135112_051689_FC73B5D3 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
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

On Wed, Nov 6, 2019 at 3:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Tue, Nov 05, 2019 at 11:27:42AM -0800, Alistair Francis wrote:
> > On Mon, Oct 21, 2019 at 4:17 AM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Oct 16, 2019 at 10:54:27PM +0800, Chen-Yu Tsai wrote:
> > > > On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > > On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > > > > > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > > > > > connections.
> > > > > >
> > > > > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > > > > > ---
> > > > > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> > > > > >  1 file changed, 25 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > > index 124b0b030b28..49c37b21ab36 100644
> > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > > @@ -56,6 +56,10 @@
> > > > > >       aliases {
> > > > > >               ethernet0 = &emac;
> > > > > >               serial0 = &uart0;
> > > > > > +             serial1 = &uart1;
> > > > > > +             serial2 = &uart2;
> > > > > > +             serial3 = &uart3;
> > > > > > +             serial4 = &uart4;
> > > > > >       };
> > > > > >
> > > > > >       chosen {
> > > > > > @@ -280,6 +284,27 @@
> > > > > >       };
> > > > > >  };
> > > > > >
> > > > > > +/* On Pi-2 connector */
> > > > > > +&uart2 {
> > > > > > +     pinctrl-names = "default";
> > > > > > +     pinctrl-0 = <&uart2_pins>;
> > > > > > +     status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +/* On Euler connector */
> > > > > > +&uart3 {
> > > > > > +     pinctrl-names = "default";
> > > > > > +     pinctrl-0 = <&uart3_pins>;
> > > > > > +     status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +/* On Euler connector, RTS/CTS optional */
> > > > > > +&uart4 {
> > > > > > +     pinctrl-names = "default";
> > > > > > +     pinctrl-0 = <&uart4_pins>;
> > > > > > +     status = "disabled";
> > > > > > +};
> > > > >
> > > > > Since these are all the default muxing, maybe we should just set that
> > > > > in the DTSI?
> > > >
> > > > Maybe not, since people may want to only use RX/TX, and leave the other
> > > > two pins for GPIO?
> > >
> > > Right, I'll apply that patch.
> >
> > Ping, just want to make sure this has been applied/will be applied.
>
> This has been applied, and was part of the PR for 5.5 sent last week

Thanks :)

Alistair

>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
