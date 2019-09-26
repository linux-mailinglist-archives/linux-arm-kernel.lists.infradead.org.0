Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73F0BFA42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgZiREcytFndGT5zJIngXc89XbKu6g14LQuaRKEl5Vw=; b=Q+y3NB3KexbDf/
	LR1H9RaObYMPdaj6fl6RhHGnhK98PRFXY1t7peXMYTlJTd5yqyY3Oc54/D9oNDvn3oCJel+iTUMQN
	DWmkVc9RYOOjxGBZaHw7BGz25stQVzbNMvL+M1zV6L70r35zGyhimghU7QcYbvoHGJG6dedlE3bHi
	u1mdG0WabP8LZ/R5Sit+GRmYaaer40nJSL7qNkfNMAPX+9fKxuLmIOs+SE5uIzjyoK0ssf4oAgVUN
	i5ad/2/F2HAeZgDZz6Pci6wmgeUL9hu3hn8Eyr1SY+12V8sX7ygBeC0AlTcnhopRtHjJc428gA8L9
	X7cA2hvI227xbxkS+PKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZh1-0007yM-W4; Thu, 26 Sep 2019 19:44:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZgd-0007xb-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:44:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id v2so9622041iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7YaOJjbeJ4vHzFNCKN4Rfl7SNbQO++40kW4opqhFvjE=;
 b=ptL+t++PhjIDsGKfuLy0BchccV5YdocaOsRsXZ/4JqKqUKoQzhFSC1NY4npM9rE3Yl
 C7Zl9VNtkmAwuniXVUGj4fMyTDLJ9ep+95WejAowbtGq6FHtnA2xpNZVLKkTBrGnzor0
 0V+gRFuTh35NxWLvtKPNWwtsROhtajgumBlMHA4ZM5svWHQtB83GqJQoIMPvnDLX0Mog
 7cFhKRgDTuCirRwxX668mKmMZkEuY9LObevYVy1kBjI8F/Gm4TsEt4zLDYd6uSq7cZCt
 gi9GXWN/AxMMuWydGrQclQzQp/+PcBWPKz+vNmn/hh8LJXIC7WXRfqGKq1Ck+jfEHf1j
 qu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7YaOJjbeJ4vHzFNCKN4Rfl7SNbQO++40kW4opqhFvjE=;
 b=rxjuG3Z049RkhB9KRuFC2Mp25CJtdZzVItehlFZS8TR7zYW8xRfFpiqnzxmP3us1yQ
 EYUC2lVEPZe0chGPksy3AeT3UccbM5NSRn26DBhaeHs3DkqVl3fxgoUSxYepALTQS9BK
 QIK73Fy3Q70JXCsf4sN1J+m48Juz5iKK75UTh83Ze93B4aaCBBCVTcJw++Yd41eygYBF
 eWJAqbOqo9CT7KWrfT+PxP72KHOeFXnPYYMbMwdXjX9UWY4PdZGB2APg0EQ2esw/UxFs
 8l3RQkGyKhk7tPI7psFYmDMxVFqaTI7YaS8sY9GzDQv7d6TP8kvAmcASu218e7Rs1KZK
 Qdvg==
X-Gm-Message-State: APjAAAWN4egKqG1PxInL33VQaIpU3e8+Na4f6Aphw1Ag0j4mTYHCgH/y
 2K6wATHU0K/ewquNsszFo/41i1zfDkxSfXCvxCM=
X-Google-Smtp-Source: APXvYqws94RCz1OEKmJWcCJfFYz8odw3snwroxEbJRlT5VqNIjb8opn290GiegEG8UnQeVF3x/P4koKd12cnxdqwU+Y=
X-Received: by 2002:a92:3f0a:: with SMTP id m10mr357121ila.158.1569527062022; 
 Thu, 26 Sep 2019 12:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190919145114.13006-1-philipp.puschmann@emlix.com>
 <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <ac67f010-1b2c-6996-f542-ab955ca86489@emlix.com>
 <CAHCN7xL0BKmt8xrhuB4rrvOqkCM5AUJ6YAzbcU8eNDXbzj4fZg@mail.gmail.com>
 <15be848facd5e80222e5db30c61fe72f82a85713.camel@analog.com>
In-Reply-To: <15be848facd5e80222e5db30c61fe72f82a85713.camel@analog.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 26 Sep 2019 14:44:10 -0500
Message-ID: <CAHCN7xK=kxEFiuUEX=q4R3XEyeaAp+HGFCUpYkYUESMhqwMA6A@mail.gmail.com>
Subject: Re: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_124423_134675_2E2B5077 
X-CRM114-Status: GOOD (  38.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "fugang.duan@nxp.com" <fugang.duan@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "philipp.puschmann@emlix.com" <philipp.puschmann@emlix.com>,
 "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 1:37 AM Ardelean, Alexandru
<alexandru.Ardelean@analog.com> wrote:
>
> On Wed, 2019-09-25 at 10:14 -0500, Adam Ford wrote:
> > [External]
> >
> > On Fri, Sep 20, 2019 at 2:06 AM Philipp Puschmann
> > <philipp.puschmann@emlix.com> wrote:
> > > Hi Andy,
> > >
> > > Am 20.09.19 um 05:42 schrieb Andy Duan:
> > > > From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Thursday,
> > > > September 19, 2019 10:51 PM
> > > > > Using only 4 DMA periods for UART RX is very few if we have a high
> > > > > frequency
> > > > > of small transfers - like in our case using Bluetooth with many
> > > > > small packets
> > > > > via UART - causing many dma transfers but in each only filling a
> > > > > fraction of a
> > > > > single buffer. Such a case may lead to the situation that DMA RX
> > > > > transfer is
> > > > > triggered but no free buffer is available. When this happens dma
> > > > > channel ist
> > > > > stopped - with the patch
> > > > > "dmaengine: imx-sdma: fix dma freezes" temporarily only - with the
> > > > > possible
> > > > > consequences that:
> >
> > I have an i.MX6Q with Wl1837MOD on UART 2 with flow control, and I am
> > getting Bluetooth transfer timeouts.
> > (see imx6-logicpd-som.dtsi)
> >
> > On top of 5.3.1, I have installed:
> >
> > dmaengine: imx-sdma: fix buffer ownership
> > dmaengine: imx-sdma: fix dma freezes
> > dmaengine: imx-sdma: drop redundant variable
> > dmaengine: imx-sdma: fix kernel hangs with SLUB slab allocator
> > serial: imx: adapt rx buffer and dma periods
> >
> > and I still get timeouts:
> >
> > [   66.632006] Bluetooth: hci0: command 0xff36 tx timeout
> > [   76.790499] Bluetooth: hci0: command 0x1001 tx timeout
> > [   87.110488] Bluetooth: hci0: command 0xff36 tx timeout
> > [   97.270507] Bluetooth: hci0: command 0x1001 tx timeout
> > [  107.590457] Bluetooth: hci0: command 0xff36 tx timeout
> > [  117.750477] Bluetooth: hci0: command 0x1001 tx timeout
> > [  226.390499] Bluetooth: hci0: command 0xfe38 tx timeout
> > [  231.590735] Bluetooth: hci0: command tx timeout
> >
> > I did a bisect and found the start of my problems came from
> >
> > 361deb7243d2 ("dmaengine: dmatest: wrap src & dst data into a struct")
>
> That commit only touches `drivers/dma/dmatest.c`
> Are you using that module?
>
> It's a "unit-test" module for testing DMAengine drivers.
> The only way that can break anything [from what I can tell], is if it is
> being run. It will probably put the DMA into a weird state (it is a test-
> module after-all), and it may require some DMAs to be reset.
> I admit it would be nice that the test-module would put the DMA back into a
> normal-working state, but that effort could be big for some cases.

I will bisect it again.  I removed the CONFIG_DMATEST from the
omx_v6_v7_defconfig, and I still got the failure using Kernel 5.3.1,
so I'll work on this tomorrow and try to narrow it down better with
and without the test module installed.

adam
>
>
> >
> > This happened sometime between v5.0 and v5.1
> >
> > Is there a patch I missed somewhere?  Do I need to change my device
> > tree configuration somehow to allocate the proper DMA memory?
> >
> >
> >
> > > > > with disabled hw flow control:
> > > > >   If enough data is incoming on UART port the RX FIFO runs over and
> > > > >   characters will be lost. What then happens depends on upper
> > > > > layer.
> > > > >
> > > > > with enabled hw flow control:
> > > > >   If enough data is incoming on UART port the RX FIFO reaches a
> > > > > level
> > > > >   where CTS is deasserted and remote device sending the data stops.
> > > > >   If it fails to stop timely the i.MX' RX FIFO may run over and
> > > > > data
> > > > >   get lost. Otherwise it's internal TX buffer may getting filled to
> > > > >   a point where it runs over and data is again lost. It depends on
> > > > >   the remote device how this case is handled and if it is
> > > > > recoverable.
> > > > >
> > > > > Obviously we want to avoid having no free buffers available. So we
> > > > > decrease
> > > > > the size of the buffers and increase their number and the total
> > > > > buffer size.
> > > > >
> > > > > Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> > > > > Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> > > > > ---
> > > > >
> > > > > Changelog v3:
> > > > >  - enhance description
> > > > >
> > > > > Changelog v2:
> > > > >  - split this patch from series "Fix UART DMA freezes for iMX6"
> > > > >  - add Reviewed-by tag
> > > > >
> > > > >  drivers/tty/serial/imx.c | 5 ++---
> > > > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> > > > > index
> > > > > 87c58f9f6390..51dc19833eab 100644
> > > > > --- a/drivers/tty/serial/imx.c
> > > > > +++ b/drivers/tty/serial/imx.c
> > > > > @@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct
> > > > > timer_list *t)
> > > > >         }
> > > > >  }
> > > > >
> > > > > -#define RX_BUF_SIZE    (PAGE_SIZE)
> > > > > -
> > > > >  /*
> > > > >   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
> > > > >   *   [1] the RX DMA buffer is full.
> > > > > @@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void
> > > > > *data)  }
> > > > >
> > > > >  /* RX DMA buffer periods */
> > > > > -#define RX_DMA_PERIODS 4
> > > > > +#define RX_DMA_PERIODS 16
> > > > > +#define RX_BUF_SIZE    (PAGE_SIZE / 4)
> > > > >
> > > > Why to decrease the DMA RX buffer size here ?
> > > >
> > > > The current DMA implementation support DMA cyclic mode, one SDMA BD
> > > > receive one Bluetooth frame can
> > > > bring better performance.
> > > > As you know, for L2CAP, a maximum transmission unit (MTU) associated
> > > > with the largest Baseband payload
> > > > is 341 bytes for DH5 packets.
> > > >
> > > > So I suggest to increase RX_BUF_SIZE along with RX_DMA_PERIODS to
> > > > feasible value.
> > >
> > > I debugged and developed this patches on a system with a 4.15 kernel.
> > > When prepared for upstream i have adapted
> > > some details and missed a important thing here. It should say:
> > >
> > > +#define RX_BUF_SIZE    (RX_DMA_PERIODS * PAGE_SIZE / 4)
> > >
> > > Yes, i wanted to increase the total buffer size too, even wrote it in
> > > the description.
> > > I will prepare a version 4, thanks for the hint.
> > >
> > > Just for info: A single RX DMA period aka buffer can be filled with
> > > mutliple packets in regard of the upper layer, here BT.
> > >
> > >
> > > Regards,
> > > Philipp
> > > > Andy
> > > >
> > > > >  static int imx_uart_start_rx_dma(struct imx_port *sport)  {
> > > > > --
> > > > > 2.23.0
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
