Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198621ACED5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xW4tGN2w6DNH0q1eJY3BzcM3eppnWhLkS1FsR0BecNY=; b=tSfq5RCbzsA7fM
	lTSqKossCu6baeCH0gOROHHUcY1QOGW/GIRdlKgrRGuDQQOi4NQLpcineULrdA0VUrsZ/IFMpM/jh
	ysmp+SbamRcEuErjCIoheB55/wHSZKKCkRdAvl4PDFybDbhNoEez84k8Q5T630iW2AsHAoYZR5U5a
	NVa1ap/nnoeCiCibyYyzIOIbp7kVAUD5pZJ9QALjjcheVxxiSHuFhJABeGQfei++VhB0TCxQC78T4
	Lw4GCzL+apGxPFB5UO2NM9YdgRXw1mkH/ebOtkaZb/8Ct0s/73QyMyiZt/HnJTKaAGweMZS9MCvzj
	DZtIUcEaX9Gm8oRLmSrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8SC-0000sZ-AE; Thu, 16 Apr 2020 17:37:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8S2-0000s3-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:37:24 +0000
Received: from Mani-XPS-13-9360 (unknown [157.50.106.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D183A2076D;
 Thu, 16 Apr 2020 17:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587058642;
 bh=c6RjcLo9mHi0Qj+iI/ymrQ+8S7krFiwa/crVExYtMzc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MPW/w2Hfnyk6tUbCwgA+epGBp7s9x8qUWJj1HiCBq+J9LTkOTM2QYZTP/j5uo/wrm
 Zu7E5RQleCiRVXkZUgTILmP6u9Q5+x1hOTZEgCwX8xxgd1Ay9ngjsrcfWax9ah1H31
 eWIhS2p6dEJvzP9lw8E2V62BIIK92l1CFStWvCOY=
Date: Thu, 16 Apr 2020 23:07:10 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH 0/2] Add software flow control support for STM32 UART
Message-ID: <20200416173710.GA4548@Mani-XPS-13-9360>
References: <20200412180923.30774-1-mani@kernel.org>
 <CAHp75VfDUoFMWg42OFHZtKQ972eoR3UDLVAs+BQjJm3h3-fOGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfDUoFMWg42OFHZtKQ972eoR3UDLVAs+BQjJm3h3-fOGw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_103722_952219_440955A8 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Mon, Apr 13, 2020 at 12:17:21PM +0300, Andy Shevchenko wrote:
> On Mon, Apr 13, 2020 at 7:06 AM <mani@kernel.org> wrote:
> >
> > From: Manivannan Sadhasivam <mani@kernel.org>
> >
> > Hello,
> >
> > This patchset adds software flow control support for STM32 UART controller.
> > This is necessary for the upcoming STM32MP1 based board called Stinger96
> > IoT-Box. On that board, a bluetooth chip is connected to one of the UART
> > controller but the CTS/RTS lines got swapped mistakenly. So in order to
> > workaround that hardware bug and also to support the usecase of using only
> > Tx/Rx pins, this patchset adds software flow control support.
> >
> > This patchset has been validated w/ Stinger96 IoT-Box connected to Murata
> > WiFi-BT combo chip.
> >
> 
> I think it's a mix of terminology or so. Looking into the patches I
> found that it's required to have GPIOs for SW flow control.
> No, SW flow control does not require any additional signals, except RxD/TxD.
> 

Yikes. Yes I got it wrong. 'st,hw-flow-ctrl' property confused me :)

> On top of that, it seems you adding mctrl-gpio functionality. Why
> can't you use that one? And thus no bindings needs to be updated.
> 

Sure. This looks feasible. Will submit a follow up patch.

Thanks,
Mani

> > Thanks,
> > Mani
> >
> > Manivannan Sadhasivam (2):
> >   dt-bindings: serial: Add binding for software flow control in STM32
> >     UART
> >   tty: serial: Add software flow control support for STM32 USART
> >
> >  .../bindings/serial/st,stm32-uart.yaml        |  15 +-
> >  drivers/tty/serial/stm32-usart.c              | 143 +++++++++++++++++-
> >  drivers/tty/serial/stm32-usart.h              |   4 +
> >  3 files changed, 155 insertions(+), 7 deletions(-)
> >
> > --
> > 2.17.1
> >
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
