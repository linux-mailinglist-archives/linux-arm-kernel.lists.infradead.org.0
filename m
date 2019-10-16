Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2493D96C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goHyazcVqj52cDn6eCrJsAvuM2XTyvhEkMfGebJ2fdk=; b=rJCFbyaUXWbXP7
	iOOnyuWhbPgogZoWs+uHFPVBnjGyU0KbS4QhKw/mNQyypMnF6+mJMQxDc0+sj/0m/gqkDxbEsiJhl
	lNj2+b/xqUJi4BPbOf7KHuNIr9CJVep7DEjRVuSePV19eImMzOIQ26KHF0R8BuqjC9puGwtVicYuy
	cttRt7gj8VY3FW6yWKqgQSWDYRCJU9TZ9Xk3kEdGY5Z/vGJMlJwTvwbYSxjKyBjNjJ8+zYmLwU4Zz
	cSp4L3Cr6ztuEbuVqgP6PTx/z2yPs7lU0b3QvgMUGvMFAnhYcnECMqJAXnUAv41dn+NtMq8lhNosB
	JWaxee2x7Jo1ejxynKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlyJ-0003px-Iv; Wed, 16 Oct 2019 16:16:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKly2-0003iD-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:16:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id f23so2477014lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1ylL1eydi6OUMBpWNcbTT5Kqt/V1VFfcpzawFZbwf6M=;
 b=kDSeyOj2cXVo7ubdqGLKFFuJ5cwxCUGu2SnwcczXReu8aRgDcead9Wx74qE6k3g3pE
 /07VqXUD5t1xAzaAb2w/P2S+kDu9v7iCNXin8iwCbXhpcKi8EG1A2GmMevstjIgJsKAV
 9T4qEBQcU5aRhoXOw+QwOeSdEIjAMq1EE0I4c9TmZKtTP7eCND+NEHSTRHfMMM9JN4lZ
 p/ITNKm/aLkWLrIn27E60n4e65CNws8LVq/AMlALEwJ5P8dJbhOA8n0PXVL/+h5p+6L9
 UqVqldxfOwPgSaioISiX3JNEN7mxF8WoKmEyn4UvRK3STHuPAdDOgxkeBJhX6pkJRBiX
 a14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1ylL1eydi6OUMBpWNcbTT5Kqt/V1VFfcpzawFZbwf6M=;
 b=eDkhysWmcxyVje8Yd8uoI5dolksVtacdgJOaTg1AwLhde+vqi7oSTDADepuuLjabDt
 KFhVz6dzTn5SH9ri4GA/zik1ShpRYXHz0nWrzvMA2qk2tfNVvYNJST95YRnJso1THPhm
 i0/izUJj2wiNTjnQri5frcLy7AmMGEj2YuEr40F5RdqP5qYIiQCjXfx4wJpEQq//p103
 uvLCaW7Nzf6Q471BNoRLIGGVJcfUL+O+CvTALlONh18zQ0/pQlcw3fcPmv9ajVbaXr5l
 cq77fwaz15klMIB1uC8z3W7rVtm2Z3qPTshlFhrvjUBMdJghR5AHC1ZGZtGz/CWhpXgs
 8Jnw==
X-Gm-Message-State: APjAAAUqDKG17XyAl/sIJZ2bvDQri4YQlZri3BDi2kG3TdQi+vVqn76Q
 HKWIw2QyIQD0BP4vGJDAoi2xqLQ2NBY94Q0890Y=
X-Google-Smtp-Source: APXvYqxro5i35Ft6ZD3j7iIxrRJ7VRGx4dCwTbmqD/NDL7ZHsmxJkNf1lH2oVljT+08Fxt5pyVK8s657Msykgea09JE=
X-Received: by 2002:ac2:5610:: with SMTP id v16mr25010105lfd.93.1571242563292; 
 Wed, 16 Oct 2019 09:16:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
 <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
In-Reply-To: <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Wed, 16 Oct 2019 09:10:54 -0700
Message-ID: <CAKmqyKO1QugY=JHORoGnPjTqZQV-jMfey8T3144vaqTwNoCwqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091606_716219_2A9D4350 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 7:54 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > > connections.
> > >
> > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > > ---
> > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > index 124b0b030b28..49c37b21ab36 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > @@ -56,6 +56,10 @@
> > >       aliases {
> > >               ethernet0 = &emac;
> > >               serial0 = &uart0;
> > > +             serial1 = &uart1;
> > > +             serial2 = &uart2;
> > > +             serial3 = &uart3;
> > > +             serial4 = &uart4;
> > >       };
> > >
> > >       chosen {
> > > @@ -280,6 +284,27 @@
> > >       };
> > >  };
> > >
> > > +/* On Pi-2 connector */
> > > +&uart2 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart2_pins>;
> > > +     status = "disabled";
> > > +};
> > > +
> > > +/* On Euler connector */
> > > +&uart3 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart3_pins>;
> > > +     status = "disabled";
> > > +};
> > > +
> > > +/* On Euler connector, RTS/CTS optional */
> > > +&uart4 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart4_pins>;
> > > +     status = "disabled";
> > > +};
> >
> > Since these are all the default muxing, maybe we should just set that
> > in the DTSI?
>
> Maybe not, since people may want to only use RX/TX, and leave the other
> two pins for GPIO?

I think this makes the most sense for the default.

Alistair

>
> ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
