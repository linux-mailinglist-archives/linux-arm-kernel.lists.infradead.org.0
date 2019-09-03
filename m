Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9248BA6AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk8TWBB6FcYqryx4HYe9q5oWZ+x12cZjE+RZDmQZNkA=; b=uIv9bLNBPv8TWT
	e+yN74EC3HVkx4pjoviPjBz8dts5Scb5Mj40XOSSukd3kGCqAMips/77pSahKEU1yByd1rwB8D/r9
	3hVoKUAMjQC38jQPo2S3U9KoAAvx0DDYgn5Ufx0bxJRW1Cf4SFHlByN/C14Us5mVpLYdlIDNuGmmp
	uqyKZiS5+5TNS7toU+mQoawP2hkdOJaFDQhSwHi/qPdVsinsr3N+DHROqluCe5s1Bcf5FC6bXyKek
	bONzVf1x2eO5nDwKu8pwLrIsbKKrxGgXOnDbqb9g9bU8FNwNNgRXANazI3dCi2ZtQnJS0dCNj+hx+
	eZHhY0w6RNfaC0Nxw8kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59YC-00065X-TU; Tue, 03 Sep 2019 14:12:52 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Y2-00064q-24
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:12:43 +0000
Received: by mail-qt1-f196.google.com with SMTP id b2so16589839qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8vwpc2dCJzlh5VGSs8AHn+BDKp8FmreMQfZLH6JvhsM=;
 b=I4JGoDxBcMKh9UvYo/PYNNGD3l1O4C6igbThPGsaF1V5ni9Z1mJdhKD5SMPpPk/2N8
 QusQrAefi/kqiiCXI2qgouARRSIW6MZLe/NOB4Sp0wRhI+ZyAGNy/VTRX8Pj7MFUlN0U
 68h+Qse8kP1urQzepdvo6d3gRfGfqWPIxYIbEkkjd9ISDS37jghWM3OT4FTvyArl7t9z
 BrwCAmdsxcX8RowuSlLe+loMsNUElPcmXyy1k3wcxFqBg4Z3vingHUyxol6/IaStQfMQ
 SUr+DLda8xnAg7h5W3KXOIQo3rBBouf21bwb6AGBxPWWMpMDCegfmjLSL7G86pg2qi2W
 YJaQ==
X-Gm-Message-State: APjAAAVkkKfTWzPAfT+OyY2w2cW5HKZalL4Yuvfz5IddHU3O0NxlDiTq
 abSj8joKIIhq+AWB4mzE7IrKHyYC3Q+tzrD1u1goVQ==
X-Google-Smtp-Source: APXvYqzVJYRn0qqe00mNx310RecoZoQ7v/vLoHYJ2P7tyQreb450ERty6dQ3AEHoYwJD8PiAIwQNdnbgrmhB+gb71GI=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr3094803qtb.18.1567519961203; 
 Tue, 03 Sep 2019 07:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-6-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-6-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:12:25 +0200
Message-ID: <CAK8P3a3X=y63e35T+y_-rLv1YP2rehDFRZM54-KSP=8osnOQRQ@mail.gmail.com>
Subject: Re: [GIT PULL 6/7] i.MX arm64 device tree update for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071242_175887_8E354687 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
> ----------------------------------------------------------------
> i.MX arm64 device tree update for 5.4:
>  - New board support: i.MX8MQ Nitrogen8m, Hummingboard Pulse,
>    PICO-PI-IMX8M, i.MX8QXP AI_ML, and LS1046A FRWY board.
>  - Add gpio-ranges for GPIO devices on i.MX8MQ and i.MX8MM.
>  - Update OPP table according to latest data sheet and add opp-suspend
>    to OPP table for i.MX8MQ and i.MX8MM.
>  - Add IDEL states for i.MX8MM SoC.
>  - Correct I2C clock divider for Layerscape SoCs.
>  - Add series alias and LPUART baud clock for i.MX8QXP SoC.
>  - Add MIPI D-PHY device for i.MX8MQ and enable it on imx8mq-librem5
>    board.
>  - Enable USB1 and Type-C support for i.MX8MM EVK board.
>  - Add Thermal Monitor Unit support for LS1028A SoC.
>  - Misc small update and correction on Layerscape and i.MX8 support.
>

Pulled into arm/dt, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
