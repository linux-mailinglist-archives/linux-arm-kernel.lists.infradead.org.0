Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB461DF3E1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 03:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edmEI41K5Ox3NrmAFdz8e1wMIoebNnHuei+Cy+UQqHg=; b=sEVVc7OLSBd0S6
	Ki7bRWiUZTWmokHT/Y4vpR8JlS6I+M2cJ4SpgdQDeLBJ/FDpNSsWh+TEGzPDDJg7Zxpu/HMdM3GIs
	CMqjkd9fhOIt5yz2Ld2Vds8ollslPF5I2tVh+2kYaai2tDtw4eovYGREGbc7mMq+7HwiZVDr0elQf
	o6U3NBkufK3OY1AOUTctSBxwgtG8cYu0viOUNnHYjWZ6HtqJhZYLw8fzFUz7cwoEr8STS0OUthPNz
	tAiiAd6D0swDoo/JESF/M+Q89n0A5AEzl5bPGfYNcTdczzkVam25oihqrsI5bd0qpjTXKap/bwiMf
	xrsxSwX9iinHtAJm1tFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcJ4r-0005ND-6A; Sat, 23 May 2020 01:35:53 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcJ4i-0005Mh-7E
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 01:35:45 +0000
Received: by mail-il1-x144.google.com with SMTP id l20so12625845ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 18:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S1QSAzJLA557HDI9geZdFtza2j2ttaAmC0/pNbF94RQ=;
 b=A992b6KQ0XxvQBvr4hpSCBAiJVOy3bCMOJRZbTEgNVsjziHkOX1YLkNL2W7JgGf5kB
 6dkdnQIBW/+Lh4TZr5VZ9W9jlKsQLHFUNaXvbtKPXiXkE2z25chDOo+YqkADBuJdDhZ/
 tHUB4rgSKsyEN1xbge2cNw65A0heIWhKbJcDMDvUkNC/9rydOmAqGX3PUZ8I2z0U7Y/V
 5Cr+kLr+aMh+DQj7mplWOIOBhISwulzYr6G01tL+aSEMoNt7Tw1DQ0rbXyQBcNzZ99L6
 aTZi5JpRzKVrsOLiFDG26hTNg0/+eB2eYUciggM6rhuzsRwMg4KgAEsT2EqkXuw9fJM0
 UHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S1QSAzJLA557HDI9geZdFtza2j2ttaAmC0/pNbF94RQ=;
 b=jLEPZujgzFHHFshToH+2oAlkgLVsmYz8Awo8yVE/K6NRSQXWpVWSqIQU8/RhfTZAWK
 hWcQhZ274dyTVPPAvIlyyUl9NBjiO6L73fWWzJAPeEkD2pFtTYDXMOaE7ZPopQ4ZvPVL
 gKy7OH5qKUPi8mN74fFF+nZlBwcTkvfNpEMDPMtjuVU9w6VnzLpf9OMv9wN5dKT3oskG
 nZoVzkPXaoeZNbA+J810b8XKAaFyaJu3Wl6XuscCM0/QVflo9JdIe2rTuc3qGnkkrzOe
 z+2pQHkmL2UU6HuFW6wOe/xOqEcZ/Mx7UAduae60dg58jyMUfVY5Ih43GalPfkts5eTv
 8nLw==
X-Gm-Message-State: AOAM530y5FxouPCXK5/9bl87KIupeYQptcOcUw92XGQNJLBJRB/dSM/q
 Y7inDgnZYjPeeiFRg1+uMWuXgS1hIT0xOdZIouU=
X-Google-Smtp-Source: ABdhPJyFMcan15/IQgBUd7V654mVVCiDvmI/KPlV1LTFmOXrmNhn289+5jn0LkISjmGIfWZTCLlEXoFxdgoJGQtXdZU=
X-Received: by 2002:a92:dc85:: with SMTP id c5mr15557198iln.270.1590197742955; 
 Fri, 22 May 2020 18:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
 <20200522113634.GE5801@sirena.org.uk>
 <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
 <CAL9mu0JZ4Qy+m2oF9TSTRqA_mM0J89huCt3t_Gs7qHa=3LxhBw@mail.gmail.com>
 <20200522162901.GP5801@sirena.org.uk>
In-Reply-To: <20200522162901.GP5801@sirena.org.uk>
From: dillon min <dillon.minfei@gmail.com>
Date: Sat, 23 May 2020 09:35:06 +0800
Message-ID: <CAL9mu0+E5R0mDUW3f+aKpfE_457VimS-ow2z_xVOmCfCAMnKuA@mail.gmail.com>
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_183544_278156_B78BEFAE 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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

On Sat, May 23, 2020 at 12:29 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 22, 2020 at 11:59:25PM +0800, dillon min wrote:
>
> > but, after spi-core create a dummy tx_buf or rx_buf, then i can't get
> > the correct spi_3wire direction.
> > actually, this dummy tx_buf is useless for SPI_3WIRE. it's has meaning
> > for SPI_SIMPLE_RX mode,
> > simulate SPI_FULL_DUMPLEX
>
> Oh, that's annoying.  I think the fix here is in the core, it should
> ignore MUST_TX and MUST_RX in 3WIRE mode since they clearly make no
> sense there.

How about add below changes to spi-core

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8994545..bfd465c 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1022,7 +1022,8 @@ static int spi_map_msg(struct spi_controller
*ctlr, struct spi_message *msg)
        void *tmp;
        unsigned int max_tx, max_rx;

-       if (ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) {
+       if ((ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) &&
+               !(msg->spi->mode & SPI_3WIRE)) {
                max_tx = 0;
                max_rx = 0;

for my board, lcd panel ilitek ill9341 use 3wire mode, gyro l3gd20 use
simplex rx mode.
it's has benefits to l3gd20, no impact to ili9341.

if it's fine to spi-core, i will include it to my next submits.

thanks

best regards.

Dillon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
