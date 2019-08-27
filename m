Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D778E9E5A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UL9igIR2URfwK67rykHJ+Lcto8q3NEqa+Ncw45wGVs=; b=rBwio+IZV7mL4V
	52MpxypgJIsj655uueilSHI46QP9DGGKTDVPCFsMfX1wuXcA4SssZngATzp5st0MrbeG4sMi+mYyR
	E9tZqM4S2bW9MLxCaKV/6l6GgEH0lwNzpkWfWd2wu/RzQIE2jFhYjDoYXMrZgBbo5lFALSNY7ctkS
	epVWauO8pfPx1g/1msRXN1XpMlpvKzVxNVQhuUrWba291bw/PpZTqUy5UyH3lxlbORULq8nGcw6h8
	z47GkADZdy8fqyOfR3KbxW0jBfPNphE7rc4eAw6xnXmk5mBvyVLADW0smN6cvqiJYoPjhmHTze+Zv
	WZPrXTz4jx7ZrDuHiilw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YiW-0006HW-9N; Tue, 27 Aug 2019 10:28:48 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YiJ-0006Gp-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:28:37 +0000
Received: by mail-ed1-f68.google.com with SMTP id z51so30620121edz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hpmMfEcW04e4wPdBKLOA6yCkiTAFKCBRUZkT3TMGsjY=;
 b=MjNvytBLr1GhqlgZYLSgVQi8KumA8LMICOFQaebuVq+SqD6AE2Luu5qLnDbGnfigdH
 msJDtZRBRSUemihoYqoKd/ABKCuIy33FLQtNBnr0OfjvxdvbbHmqxyacRS/0DG86s7Zk
 4+bFBJ/SOMChmB7hRJ+AqFT4BhJ5BbC4YNEoOy/nmKIN2K02RmaxKtMpZD1EJ146XmWa
 zVC0Jfz3Mm7eOYBNYltZyCu1AsdwRUsNluT8rHT+A7c2I91iV9ePOqrxHClkL3FgAgNU
 O5njj6HNqKCbhzeVBKXMHpH8DByjp4JlpH/nRmwzJow36rZkq4L8jTKHNdiblZP5fW4O
 nLVA==
X-Gm-Message-State: APjAAAX3nVl/hzin8VQC8EP5hm8Io6s1N8RUOWU6MUzg4S4gj+zj+aEu
 u9jBxQaGx5M4O0Aml05kPFlsIKvx9mo=
X-Google-Smtp-Source: APXvYqw2o5mK+I5j3R9m9j0i8QyvkhJgRvp7zEukhzPw1IPwGa4b8P7gPZ/dlcVdjVCdycGuhM7KiA==
X-Received: by 2002:aa7:ca59:: with SMTP id j25mr22919909edt.197.1566901711998; 
 Tue, 27 Aug 2019 03:28:31 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id g17sm1877341edy.26.2019.08.27.03.28.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 03:28:31 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id k1so2519381wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:28:31 -0700 (PDT)
X-Received: by 2002:a1c:eb0a:: with SMTP id j10mr28275617wmh.125.1566901711153; 
 Tue, 27 Aug 2019 03:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-2-codekipper@gmail.com>
 <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
 <CAEKpxBmCg4AkqKM-O3C76gto+mPWyEdDbviAmRJ8PxLOOMTJ7w@mail.gmail.com>
 <CAGb2v64VNZ0oyD_760uNccwJb7MKngSooWB72M+d1DfT4-djog@mail.gmail.com>
 <CAEKpxBn3g2hFaei6thAnAHX4nemrs9c_xWp1GheMfMS6+TJ7gQ@mail.gmail.com>
In-Reply-To: <CAEKpxBn3g2hFaei6thAnAHX4nemrs9c_xWp1GheMfMS6+TJ7gQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 18:28:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v67MOE0bUrxO6NrObOCUO9ErknC0CNGYuk_Bs_iBwvU_DQ@mail.gmail.com>
Message-ID: <CAGb2v67MOE0bUrxO6NrObOCUO9ErknC0CNGYuk_Bs_iBwvU_DQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v6 1/3] ASoC: sun4i-i2s: incorrect regmap
 for A83T
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_032835_516720_8EB0AB09 
X-CRM114-Status: GOOD (  32.12  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 4:35 PM Code Kipper <codekipper@gmail.com> wrote:
>
> On Tue, 27 Aug 2019 at 10:01, Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Tue, Aug 27, 2019 at 1:55 PM Code Kipper <codekipper@gmail.com> wrote:
> > >
> > > On Tue, 27 Aug 2019 at 06:13, Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Tue, Aug 27, 2019 at 2:07 AM <codekipper@gmail.com> wrote:
> > > > >
> > > > > From: Marcus Cooper <codekipper@gmail.com>
> > > > >
> > > > > The regmap configuration is set up for the legacy block on the
> > > > > A83T whereas it uses the new block with a larger register map.
> > > >
> > > > Looking at the code Allwinner previously released [1], that doesn't seem to be
> > > > the case. Keep in mind that the register map shown in the user manual is for
> > > > the TDM interface, which we don't actually support right now.
> > >
> > > Should it matter what we support right now?, the block according to the user
> > > manual shows the bigger range. I don't have a A83T device and from what I
> >
> > There are a total of four I2S controllers on the A83T. Currently three of them
> > are listed in the dtsi file, which are _not_ the one shown in the user manual.
> > The one shown is the fourth one, which is the TDM controller.
>
> The configuration for the A83T suggests that it's a mixture of old and
> new which I don't
> think is the case considering it was released around the same time as
> the H3. There
> is enough similarity between the blocks for it to still work. For
> example on the H6
> we referenced by mistake the H3 block and we still got audio (with
> only slight distortion).

The difference with the A83T here is large enough that if you play anything
it will simply stall. I already reported it as broken and Maxime has sent
fixes.

> I would suggest to validate all of the i2s blocks we need to test
> using the internal loopback
> as that will also cover capture.
>
> >
> > It's not like we haven't seen this before. IIRC the A64 also had two variants
> > of the I2S interface. The one coupled with the audio codec was different from
> > the others.
>
> Yes...but the i2s of the audio codec was documented in the audio codec
> section. I've used
> this device to ensure that I've not broken anything in the old block
> with these new changes.
>
> >
> > > gather not many users do. But the compatible for the H3 has been removed
> > > and replaced with the settings for the A83T which also has default settings in
> > > registers further up than SUNXI_RXCHMAP.
> >
> > I'll sync up with Maxime on this.
> >
> > > >
> > > > The file shows the base address as 0x01c22800, and the last defined register
> > > > is SUNXI_RXCHMAP at 0x3c.
> > > >
> > > > The I2S driver [2] also shows that it is the old register map size, but with
> > > > TX_FIFO and INT_STA swapped around. This might mean that it would need a
> > > > separate regmap_config, as the read/write callbacks need to be changed to
> > > > fit the swapped registers.
> > > >
> > > > Finally, the TDM driver [3], which matches the TDM section in the manual, shows
> > > > a larger register map.
> > > >
> > > > A83T is SUN8IW6, while SUN8IW7 refers to the H3.
> > >
> > > Since when have we trusted Allwinner code?, the TDM labelled block
> > > clearly supports
> >
> > Since they haven't listed the I2S block in the user manual, so that is what we
> > have to go by.
> >
> > The TDM section in the user manual only lists the block at 0x1c23000. The memory
> > map says DAUDIO-[012] for addresses 0x1c22000, 0x1c22400, 0x1c22800, and TDM for
> > address 0x1c23000. One would assume this meant these are somewhat different.
> >
> > > I2S. The biggest use case for this block is getting HDMI audio working
> > > on the newer
> >
> > I understand that.
> >
> > > devices(LibreELEC nightlies has a user base of over 300) and I've tested this on
> > > numerous set ups over the last couple of years.
> >
> > Tested on the H3, correct?
>
> Yes....but only with the additional changes for multi-channel with my
> LibreELEC build.
> These changes I tested on my pine64 before pushing upstream.
>
> >
> > > Failing that reverting (3e9acd7ac693: "ASoC: sun4i-i2s: Remove
> > > duplicated quirks structure")
> > > would help.
> >
> > I'll take a look. IIRC it worked with the old layout, with the two registers
> > swapped, playing standard 48 KHz / 16 bit audio when I added supported for
> > the A83T. Then again maybe the stars were perfectly aligned. At the very least
> > we could separate A83T and H3 as you suggested.

Maxime has sent a patch reverting the merger.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
