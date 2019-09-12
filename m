Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBECB1220
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4N9Li/VC3OQpiZPFHzKb0I9aQP1yxutaAKus6DRunM=; b=cDbQM49G5YH8wl
	y3BjXscZCe13KLx1LoSiTwuQUJMQ+EddBPFVGhJtbZo4XaCc2fN/zXlhrQjk8rm9QR8nK0GFCyi3u
	EI8EaPU4fhOp1ZfO+oZjIClqh29odprs+Iz9whDKyxXfCj7YXtw5aZAmfoekb6TjhaDsteY5x2WmT
	OjxWDfcjqLdvbkvt8j7H8Hqs+VGzxPEKxWOqQxnWriSQhnjo3ukHGuSjyri74axwlBZBzeXU4O6uC
	N6x/3m6fPoKumQVkf3Lk/BXl/y1JGbhSK1nL31VUa9nEtFaANrepcDd4qf/0bdXkHmoTN+KwXq2TK
	95seuv5R9Ts7aHbMYD3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8R4D-0005md-I1; Thu, 12 Sep 2019 15:31:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R3z-0005mC-RQ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 15:31:17 +0000
Received: by mail-lf1-x143.google.com with SMTP id u3so4598235lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 08:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NLThGLGX2luBPY/V3tzpyvjSzQN5EJNand59KMNVjgc=;
 b=gkG2975pwBiCBXaPE6eTjd/T6v/glmnTKg3B5kK4SOVJDsDgKIGQa1k18m9BcBs9VS
 bAO7rcjTbL5EVUOf1frETZsAHAoEXE7QPTHaIkBFLZn39bQ2PSgPKEGbTIEce8MaImDp
 wPbQIRdRURaivJt2WWrFc/NBYU+wUAcBFczFFGuzXiTVCe7vCvJ9tBxeX7zmaH3BTT3k
 pe+x8odbQtrIXAhdSKSM3t9rP/1oF2vADV4q3300DjrKHBGEAlWD+d24H49Chk7L2xzT
 IxbuEjWlEnx4tcdExp98Wrlhz6qxyS5Brp72oqRne2wOEwkOLOXbxidzW0McZ3W8M7H3
 7H0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NLThGLGX2luBPY/V3tzpyvjSzQN5EJNand59KMNVjgc=;
 b=ISCv+RYBFT5lOJ6Uk/FL2kUQOexm+NRlqofha7yQCmA6nPJk0eraOB77NJxKyb09Kr
 sMyC6UppVUivbz44h1eLkS5O9xv4S72+nS/Pgh90ZPI/Dhj9avGWxkxXugRrFw+DIobo
 AuYu15TnqzoR7mVkEpAENRIbO/gCZHcMDxEao8FFC050hPfE0fhFsb3sKxaCMDaqVzkx
 EBUSJFaseMx8cTpoEVHcOCUnRV3nxRcpZlEX5rdR8//pK3W9zl5zCfVLHrOt5zlSohdU
 cm/URrScTVBoY177iOwIqkaa01AAe4BUD0nfPFvrKQ/aVAuSGtQgYzRIzvfkAZ+PMDJD
 I5sw==
X-Gm-Message-State: APjAAAXBJJ7kwv+f8mSH2JjirmN5fcINN4jgTKGsrCFbWQwq8Q8QTKpZ
 bI/e5YtI2ug/BenaBDF01OC2ee6n+y2t3yuM9Kc=
X-Google-Smtp-Source: APXvYqwUhkAPW9D2SkLS1McuAXKVB3YjfihtVnFvJQvIuEmwcKR9GEFxQHz+6tPz/KYnEI/dqNUstw+dR+4k3wO1i98=
X-Received: by 2002:a19:2207:: with SMTP id i7mr28348579lfi.185.1568302273356; 
 Thu, 12 Sep 2019 08:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 12 Sep 2019 12:31:02 -0300
Message-ID: <CAOMZO5Bxks8709gEA+8OFH2b0LYqJd1EmpSbKEgPJo+64Pf3EA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 Robin Gong <yibin.gong@nxp.com>, Fugang Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083115_914106_2531022E 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Adding Robin and Andy]

On Wed, Sep 11, 2019 at 11:50 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:
>
> For some years and since many kernel versions there are reports that
> RX UART DMA channel stops working at one point. So far the usual workaround was
> to disable RX DMA. This patches try to fix the underlying problem.
>
> When a running sdma script does not find any usable destination buffer to put
> its data into it just leads to stopping the channel being scheduled again. As
> solution we we manually retrigger the sdma script for this channel and by this
> dissolve the freeze.
>
> While this seems to work fine so far a further patch in this series increases
> the number of RX DMA periods for UART to reduce use cases running into such
> a situation.
>
> This patch series was tested with the current kernel and backported to
> kernel 4.15 with a special use case using a WL1837MOD via UART and provoking
> the hanging of UART RX DMA within seconds after starting a test application.
> It resulted in well known
>   "Bluetooth: hci0: command 0x0408 tx timeout"
> errors and complete stop of UART data reception. Our Bluetooth traffic consists
> of many independent small packets, mostly only a few bytes, causing high usage
> of periods.
>
>
> Philipp Puschmann (4):
>   dmaengine: imx-sdma: fix buffer ownership
>   dmaengine: imx-sdma: fix dma freezes
>   serial: imx: adapt rx buffer and dma periods
>   dmaengine: imx-sdma: drop redundant variable
>
>  drivers/dma/imx-sdma.c   | 32 ++++++++++++++++++++++----------
>  drivers/tty/serial/imx.c |  5 ++---
>  2 files changed, 24 insertions(+), 13 deletions(-)
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
