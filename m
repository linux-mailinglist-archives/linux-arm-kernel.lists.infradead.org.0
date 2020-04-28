Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E743C1BBCDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mz69oEXBsG+NZebtwjTQBfxrPz2dnnwTSxogPx22IQ=; b=bQAoAKpawYuqRE
	j7+uYaVCUNG2Y7JQjZTZg7EpKK4jnThEetTlZqV4uGfjzDIzo6aaU2DoyMzlt1Kc/MirsRIZ3uSAb
	Y81k/IQQrhsWcgho2R2J4/o4lRVspCrvQkxKqUEDyX9VR9pU5SSfJIZwKPSKRKLZttiMpMoEvS6em
	ripFF1oF58DqffFudxeLsy9iH6vqleOzTNxKXF/thvV+MqP9cFhvIUDcxdojWuB/q58jo1R7evQeG
	ga8WR0l6PStlDAeuwp92mUsqnB7EZndLGH2MYBTuSOKxuhmtNF3f0h5Vt5jF+NZzTZFkQ6BHQPd3z
	CdUCffICw7K6a73MinHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOm2-0003Q7-1Y; Tue, 28 Apr 2020 11:51:38 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOlr-0003Oq-WA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:51:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id c3so32031605otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 04:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YV5X7b0RVx9UtJZqWhbhycNNkPCol2NhsoVPXumvChw=;
 b=qY200Gdh14KWjuFl7nMHJc5Y6JPsMnKXb+yEm+ncWoJ2UZOZXise3+Js8HeoWMi7cc
 IgwtEqKjPLAGBnHEg5HKFHjRoxSnELVv8kn45MyI9kIFqYgVS6zPiJ2M85fAOg22GyyE
 819bOa4POc+oTD+ZXBHOQGapNKnxVaE7fpJUkb9oIedVVdxYBRu0336uweqMWwyfBhRd
 cg4cmOHFVMgLu/3Xr/MNVw4TRUgxCW2aFT9eVid1r0DJvVrHL5ecakv39CU7qdZADE2/
 mV9188VWARK8Oe7oA39H1FZ1UhXWmfyCwoT9EmxMJFgimfGqXL9yyKrEStKAlQkAgLsZ
 rJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YV5X7b0RVx9UtJZqWhbhycNNkPCol2NhsoVPXumvChw=;
 b=osQNHe/5geuLRnq+tGZX2lxWQeZgsk9ypmDWhUdBkB2gca3XcBfu1UWF7hphb7OgND
 IE5py5W3n0W11ZX4vBQNM5RNMhtEzkvQh5s1QghZ1QkdZeqj8BqtNXZ2V+cHcKZYHhWj
 5/2JankgcB2BOnRnerTz+dDHPWts1SOEtGVUGFhB2u4+GNOxiMmm8GfzEeMJA6fdYuU5
 ja/uXs/Hzmzla2FGjcAZQ4OInmMru5rTQZwztCYn3ZhC0A3bO9+EK8aECX7u38eh6KDJ
 hgybC9vt69VKOMj0pdhEYKBLdyVc85XmQwYnmJutuxMKmqxpXE9U6z6x42jpsBF9xTvV
 zNZQ==
X-Gm-Message-State: AGi0PuYQ7XuEl6T7LT/njzKRuQ1jNguePewCt9XKesCet0tkcBpqTs3O
 3AZ8N07Dt7kRHqLGFmUzL8QUp+iTrrrEsyf+3BvrGw==
X-Google-Smtp-Source: APiQypIGTUh/5sCvlDOhvI/LG4JE8NTFr9y4EW8BlYgrxb5QHasXcsr59vMAsl3o74ezgCVEiF3BiSVV/FTK4Mkh01Y=
X-Received: by 2002:a05:6830:1e4e:: with SMTP id
 e14mr21811872otj.91.1588074686391; 
 Tue, 28 Apr 2020 04:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200408110816.2712841-1-robert.foss@linaro.org>
 <20200408110816.2712841-2-robert.foss@linaro.org>
 <20200415160729.GA4438@bogus>
 <20200415162110.bmorj4u4hkqohqjx@pengutronix.de>
 <CAG3jFysg34=HJ7xefuAKw4Uq6W0POm5TsJmzQku6WwkhH_j=-w@mail.gmail.com>
 <20200428075504.ovzugt2mbgan7z3k@gilmour.lan>
 <20200428082505.GA22489@pengutronix.de>
In-Reply-To: <20200428082505.GA22489@pengutronix.de>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 28 Apr 2020 13:51:15 +0200
Message-ID: <CAG3jFysKKfu564y4jnfh3unT-6xPLSeBPjfGX5KRY5s=avp1mg@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_045128_047234_2B46DE81 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ah, sorry. I was thinking of the 'port' property and replying to that.

assigned clocks are definitely being removed.

On Tue, 28 Apr 2020 at 10:25, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> On 20-04-28 09:55, Maxime Ripard wrote:
> > On Mon, Apr 27, 2020 at 05:13:42PM +0200, Robert Foss wrote:
> > > On Wed, 15 Apr 2020 at 18:21, Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > >
> > > > On 20-04-15 11:07, Rob Herring wrote:
> > > > > On Wed, Apr 08, 2020 at 01:08:14PM +0200, Robert Foss wrote:
> > > > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> ...
>
> > > > > > +  clock-names:
> > > > > > +    description:
> > > > > > +      Input clock for the sensor.
> > > > > > +    items:
> > > > > > +      - const: xvclk
> > > > > > +
> > > > > > +  assigned-clocks:
> > > > > > +    description:
> > > > > > +      Input clock for the sensor.
> > > > > > +
> > > > > > +  assigned-clock-rates:
> > > > > > +    description:
> > > > > > +      Frequency of the xvclk clock in Hertz.
> > > > >
> > > > > These 2 should have a 'maxItems: 1'
> > > >
> > > > Don't know why those properties are needed here.. IMHO this shouldn't be
> > > > part of the binding or at least it should be optional and not required.
> > > > All we need is the clocks and the clock-names property.
> > >
> > > Thanks Marco, I'll make it optional for the next revision.
> >
> > Well, the whole discussion we had was about removing them entirely?
>
> +1 from my side. It is part of the system integration and not part of
> this device.
>
> Regards,
>   Marco
>
> > Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
