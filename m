Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246901DEB23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtleqnCfUquXd8ky+OKoD8zKyCSg1m7HDtPos6vPGS8=; b=u4m88kiN5e90cm
	tJpZAW124T0Jaku/EwW8LoThy/yPM2YpdGbJWp/WAQoySVYRPpQTVBvIQORxRu2gcApxDs5WTJ7rg
	z4A2gERg4R4cevZKD/0Q23eMaTm40Sp49iQThiyackK4U/IF36XyxHX6ltVk0rxY0VZ88P1Um9L4O
	7wI7nZ+XDnhkI9iZCtdAkdj7sU2nzzJkUJQPIvpz6pq6mxh3Vnhr9+pZH1bi502hPcBaI19ixV4rj
	BsjPkMQdlMYAhd3nphq2L9bELXjv/51+kFxDEzRzlU+iMihD3YgNylL6rjstj0U2RDzzCfGqrKh2t
	0A29JhruVH/cbUpR5XTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc98V-0003gN-13; Fri, 22 May 2020 14:58:59 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc97M-0002m8-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:57:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id d5so2127896ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4E93R1F4OMg9K2XLuc0UwI5BfmV/kB8DZ8DcAqlj91Q=;
 b=RJh8B/6rHjjbkuji4u+fJ26zGQ2weYdBP8O87V6gBC0R3uO3Cxuxwia4xEC5fiQpVd
 BVao3bcj3EENB6cqKTKGBQu174xQRasXIfU4q+TkCRor9QpUGn/bNvOhtPgxnpksjF4z
 3fsMvYjJfJTHISaJ3cUFiRzeDfD7i3e9PZi6fj0SkJEmzk7TEWtsxWUY/iwJxQpOJ2R4
 T9SYcuC5mIwu3BPDv9d/KbkENTdJY9raVR0/065zsK9r46jPvzUkAxudp8zmyxpkPzW8
 Mh3IcqqBDWoU5MuQNyfGmuqSaUQzuiK4qAbocc1kDDt5QghsG+0LEtcX/A9knBg3T5Ef
 pvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4E93R1F4OMg9K2XLuc0UwI5BfmV/kB8DZ8DcAqlj91Q=;
 b=DO0N9ggJY6qztgu0vybj1rlWxDft0XrkRmF0Gu1GKdfjEAuzWSGTmOHV7YoY4x3PhT
 JHmTLkc5Q1KKDxEeWPNT2nza6gWaafI2jmZ4jKfyRbqs2bvDouUkE449JinuwLCjEXgf
 egwXJpdr3l0g0KKuD+dWbaFMvQH0bvcPXRGsKTcT+uEeobVkywv1DE8wQGKNUu0NNmz1
 D3ib4Gl2fXWH5/WPmLYA/Tk3Sg8H8R0BDMetp4Sh+jDxzkeDh/6HIeeQn+JNUZxS0bG0
 DKx99NcAk0gTSyVmfAQcWfcyUMOgAK7+2zZ5CXJHF5WavK77smo3pFhtQYmi0rSHJaVc
 +5/Q==
X-Gm-Message-State: AOAM532KmPBnQi0lE75OSSSC+ShNmDmUR1hPZaOrO+NV+EkWqOCWGoVm
 kls9wjBuLlzM6aOVnKXZ5s6IKXxFZXjEEyw1Gfk=
X-Google-Smtp-Source: ABdhPJzIBFSsXPwSSCGw73KtvrqDIXMGD/+GjvxVG0mSEkFCp7BWwg4nqAvzm+UoIsx0S8/uDt84GiJO2N2vFmJg7HM=
X-Received: by 2002:a05:6602:2ac9:: with SMTP id
 m9mr3461002iov.68.1590159466755; 
 Fri, 22 May 2020 07:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
 <20200522113634.GE5801@sirena.org.uk>
In-Reply-To: <20200522113634.GE5801@sirena.org.uk>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 22 May 2020 22:57:10 +0800
Message-ID: <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_075749_127792_D526B6EC 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

hi Mark,

Thanks for reviewing.

On Fri, May 22, 2020 at 7:36 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, May 18, 2020 at 07:09:20PM +0800, dillon.minfei@gmail.com wrote:
>
> > 2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
> > null, we must add dummy data sent out before read data.
> > so, add stm32f4_spi_tx_dummy() to handle this situation.
>
> There are flags SPI_CONTROLLER_MUST_TX and SPI_CONTROLLER_MUST_RX flags
> that the driver can set if it needs to, no need to open code this in the
> driver.

Yes, after check SPI_CONTROLLER_MUST_TX in drivers/spi/spi.c , it's
indeed to meet
this situation,  i will try it and sumbmit a new patch.

thanks.

best regards

Dillon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
