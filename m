Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB501DECB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIDczY6sTK97OvzlvroOWlI5ivzexUsELIOO1I943gU=; b=SMs98mMYPZpqCC
	c76ZTx5ejBKQIYIr3IgyfqN8lcfZaBisx4+4EY7v9mT7WBKx0an5vKW0hIClE0y5D3XsawbJqn3cx
	zI8xqfQqHeyXIJ6ybCrzixtgdwuf21Rpw1NJRjox6OBjalKpj+kn5opuwoGmM+2ZBbh6q0Mqs1sUx
	dMKvjXHN7ENgXhXicwcZ/bW+bLTL3fxyDIRE8XTPIlrKjQIv2odowqzRgpPeEJdX9HOFXYA6F5WyE
	gEhwg0OnuOLvghRBEj4N4rQGTn/qtyhX7DqCM2cpBfP+aB85pIWvhI0OA5EGVweeyEExa4sUdGTFe
	lKJelB7vtn14a3yeYoqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcA5s-0006Np-Gz; Fri, 22 May 2020 16:00:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcA5a-0005fm-92
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:00:04 +0000
Received: by mail-io1-xd42.google.com with SMTP id c16so11859239iol.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 09:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FHIFAWUYDhJ80n0eXg0z7nTHf0/vDwtgn87D1kTvKZw=;
 b=VwHlaoAfnE0jrQI4ME3ZjZ87Fl8fMiI7FOB/65iDK32jeXJ0r6Bf6SnfYRIVEO6k6m
 DzlctHIuvMnhbnvAziB3ubyH4olRzONZWriz82tW84id41d+G0aaZsGJzAQD9SqY6STl
 U+KIXtBjUhXfneehG1qd35VDkYmEVKk7k7U5Q0d9nJw20AfuQV3MvWXVSY1liADEoJS7
 FgJEadNiBp+b7li6e5pXHsRL5ssVBlR672GS1Q9jDnRZiYAnpONVjiZRHjbbr9FFH8d8
 W/7kM258Bwcm/cHTYm/kHaSY9DU3wWohGjofhiEvbcNCowmRsk2+eu46fBFd/xkb9Pl+
 kx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FHIFAWUYDhJ80n0eXg0z7nTHf0/vDwtgn87D1kTvKZw=;
 b=P1ocEyi8YYlRwrJFBiwT25XXOsAFlZZHUwxaY1V4xXnN595tgkR8GUHA7+p9vlhu/l
 0zJw7mOSAl5YLq+sdzvrUUVuB8W0y4OQTxiSebQFA+bCKHtCtRi5IRhkiAlN/8VqATC+
 GuHKdrna8zuqJY9PirLVdmPe2bbzscVsNDzjSan54sZNoCRyzvKFW4CIjTSxnjCBl2BS
 y99rsvlNptwnDTXlaL2Y3vlcYWfDCQ0I9//L/uFXwT4O0KoPXg+WtNajJTlgSKm25znZ
 HhBulNEg8s/4wuyJfG0p5xR7fj4RC8L4mMcHnv66yyGers0fOB2G8g4CvpquEUeR6BJy
 O9SQ==
X-Gm-Message-State: AOAM531AKS7ppt7/yXJFHdq5eY5xqTmCQWCAdkxlUjKrdulM2b5uOiQF
 6RJKeavgpz8gP67RS0EKcCmHuArnfpK4p9aLfe8=
X-Google-Smtp-Source: ABdhPJzAQJiDrgeJy7rhfX0pAkio1uuxAwG3849yDdBeiLJsJGxodT7NQRbXZ/oKCcFCwEsCtRUE249ryL/Lt2qOMyI=
X-Received: by 2002:a05:6638:631:: with SMTP id
 h17mr2552012jar.137.1590163200792; 
 Fri, 22 May 2020 09:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
 <20200522113634.GE5801@sirena.org.uk>
 <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
In-Reply-To: <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 22 May 2020 23:59:25 +0800
Message-ID: <CAL9mu0JZ4Qy+m2oF9TSTRqA_mM0J89huCt3t_Gs7qHa=3LxhBw@mail.gmail.com>
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_090002_354660_025935E1 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, p.zabel@pengutronix.de,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, linux-kernel@vger.kernel.org,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, thierry.reding@gmail.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 10:57 PM dillon min <dillon.minfei@gmail.com> wrote:
>
> hi Mark,
>
> Thanks for reviewing.
>
> On Fri, May 22, 2020 at 7:36 PM Mark Brown <broonie@kernel.org> wrote:
> >
> > On Mon, May 18, 2020 at 07:09:20PM +0800, dillon.minfei@gmail.com wrote:
> >
> > > 2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
> > > null, we must add dummy data sent out before read data.
> > > so, add stm32f4_spi_tx_dummy() to handle this situation.
> >
> > There are flags SPI_CONTROLLER_MUST_TX and SPI_CONTROLLER_MUST_RX flags
> > that the driver can set if it needs to, no need to open code this in the
> > driver.
>
> Yes, after check SPI_CONTROLLER_MUST_TX in drivers/spi/spi.c , it's
> indeed to meet
> this situation,  i will try it and sumbmit a new patch.
>
> thanks.
>
> best regards
>
> Dillon

Hi Mark,

There might be a conflict with 'SPI_CONTROLLER_MUST_TX' and 'SPI_3WIRE' mode,
i need to know the SPI_3WIRE direction,  currently i get this
information from 'struct spi_device'
and 'struct spi_transfer'
if ((spi_device->mode & SPI_3WIRE) && (spi_transfer->tx_buf == NULL)
&& (spi_transfer->rx_buf != NULL))
    this is a SPI_3WIRE_RX transfer
if ((spi_device->mode & SPI_3WIRE) && (spi_transfer->tx_buf != NULL)
&& (spi_transfer->rx_buf == NULL))
    this is a SPI_3WIRE_TX transfer

but, after spi-core create a dummy tx_buf or rx_buf, then i can't get
the correct spi_3wire direction.
actually, this dummy tx_buf is useless for SPI_3WIRE. it's has meaning
for SPI_SIMPLE_RX mode,
simulate SPI_FULL_DUMPLEX

how do you think?

thanks

best regards

Dillon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
