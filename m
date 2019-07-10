Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA564F1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 01:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0S3zPCM8bzQ+NOlA/r9s+LUrlTgTIpj8ENEGYNlwYU=; b=GOocCw6QDCe/rF
	7ql+TU/d6tZcsIMxyfPmQDsS7yFPpNlvuB8FC3qC0ayOw6wUR4YknsTBVCAQ/hLJyEOxUg7gNGMaw
	zaTDTU0UbJb7I7S6Tu5i5hl2kns0T6CKxAtcG5UoSL2F8ZCVtUpfUXkBJObY2fH12v/nBUCwKLG3+
	K+DhYP4T6PeGm7IKk9ffhXLJqCQfVsDS1m4joDzrRC2ciGHFCs3uGRzwFjyfolWFfvItWtmgYA+0D
	mLkaEsPzqBDItI/rXmjLW4HiYOKVAx/WghIBL15Q/s3W3m9kSTsRgWDjx252Y9sHF+HMJb3L28v+f
	tmIg7aOwqO/FJm7V0SiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlLjX-0003Af-4B; Wed, 10 Jul 2019 23:10:43 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlLjB-00039j-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 23:10:22 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so3872524ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 16:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zOl/4QjBy1AW7qYuyDY5XT0hjYnXC6DcAJBpkzl0PHI=;
 b=H1UDpQLEZcDHT2f5H5ImR/uneIMngNaFtHExhhRI1hPFxMbfZ4VUbowPJKrXdHu/Wt
 smoBUScf5aczoqOoDJG9maeO0XjvWp+H4fNsfspzcmv31JCtuPqL0cXVz4GD8oLzbf2N
 ZgGvav44nwUxj0RA6R0zBRV40Wfni/MkjCZJcSLJ7UgvH2O4e+2aZ7urVmR89RMHzfTZ
 lxqTgljho97ZquaIlQ6yF05xR5M7ODf61hpv56An+RGS/nMpOODNSWTHDewJY2Wr3ct7
 5Ghai8O3H2/tzyUAaj5QKonCrJceoW00furKv0qheUams9jV9kz+sYXaEglIe3CjMc+s
 aR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zOl/4QjBy1AW7qYuyDY5XT0hjYnXC6DcAJBpkzl0PHI=;
 b=XLiEKgTFJFsRBXA1QeDwR5DDjqFZkS+nNs3Om+LHkiMAfxcJLkMD5ioyjfXOXAnbAZ
 3SHAh/LPme9GYqnHBSMNqv53Rei6EgBykTVsTqgJ+l3Jj4dlqMz1r3Jr46S0qq/zlfgd
 i5rFvJqwmDwugtJBXv4Qj1/hPDONmA9BrbMW10byMi7fkMZkQbTZ8sNoPJFSD7rG0Zzc
 zeK1vLdNZZyUlZh35uTDaslrLf82ARZFOcvqQVssI3leRo9OFb1TCFYm5jXhsl0LaR6k
 EaKBRxkqrvRbITitxHewRlhemNZ7m2v0deE0+pj6gshUxrnooZ/9QMkTEh2p1MDLFVNU
 H6uQ==
X-Gm-Message-State: APjAAAV7c6/8+kaveLHex3MmMzg6E3aEEGNBtIid1Lyr7x3SlvMr0yHv
 YuHt0vIGaOyvoZF8dQj3IrDBJsdyzhGWLPn0UIE=
X-Google-Smtp-Source: APXvYqz2RpwH4pyPuxIqsY3Jk01l6pCxhtB+fsAoA6sP8HbGqCPKyFUN1rGcJxjdBY2aJ7m7PpF04jShUCcSnuc4/nQ=
X-Received: by 2002:a05:6830:2010:: with SMTP id
 e16mr728916otp.344.1562800218410; 
 Wed, 10 Jul 2019 16:10:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 10 Jul 2019 16:09:52 -0700
Message-ID: <CA+E=qVfhDEQER2UTj65hR9erzej9Ey2FrUa9GV=iCFYsWZ2ztw@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] add thermal driver for h6
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_161021_448560_E7C51C63 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 9:42 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> This patchset add support for H3 and H6 thermal sensor.
>
> BTY, do a cleanup in thermal makfile.
>
> Yangtao Li (11):
>   thermal: sun8i: add thermal driver for h6
>   dt-bindings: thermal: add binding document for h6 thermal controller
>   thermal: fix indentation in makefile
>   thermal: sun8i: get ths sensor number from device compatible
>   thermal: sun8i: rework for sun8i_ths_get_temp()
>   thermal: sun8i: get ths init func from device compatible
>   thermal: sun8i: rework for ths irq handler func
>   thermal: sun8i: support ahb clocks
>   thermal: sun8i: rework for ths calibrate func
>   dt-bindings: thermal: add binding document for h3 thermal controller
>   thermal: sun8i: add thermal driver for h3

It would be nice to add dts changes to this series. It's unlikely that
you'll get any "Tested-by" otherwise.


>  .../bindings/thermal/sun8i-thermal.yaml       |  94 +++
>  MAINTAINERS                                   |   7 +
>  drivers/thermal/Kconfig                       |  14 +
>  drivers/thermal/Makefile                      |   9 +-
>  drivers/thermal/sun8i_thermal.c               | 534 ++++++++++++++++++
>  5 files changed, 654 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
>  create mode 100644 drivers/thermal/sun8i_thermal.c
>
> ---
> v4:
> -add h3 support
> -fix yaml file
> ---
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
