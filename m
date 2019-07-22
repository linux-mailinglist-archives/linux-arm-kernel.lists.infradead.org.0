Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C431F7031E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7a5zgJRc6TAZGMNZrbG12LPMyLGFfGikCoh/OW+nQHQ=; b=nr1jL/PjSYs605
	BQoWqhjgSnrq6iJ48ZIfbfQQ//nP5nbe2gdwrgbILsp1+CHL236QLXlrBM5ewZDHFc03dpkMaLW9k
	vjIBOuVBVS2Utsr6Wmy9HTkgB1pY92GVbTeVXm8CpWayBIRvsmTW2Eualb09OPzmDP+5RX320Oqtj
	un3FJrco4JFA5oGL32lQpounNUnKHZroMyQ8b8yZaSOj3U8X5U0yt2643gCC3G/wuRc10ShQqa46a
	Tify09DiY5JwThI53O7m+7fVo1GOY36Gxxk+Z3M5fzzLF/IgIJ6/M7Qc6Xiupuo++SEJFgAe5+Fqv
	oJo7LgtkhYH8coSdCAdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZul-00011w-8R; Mon, 22 Jul 2019 15:07:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZuW-0000xf-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:07:33 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3A1D21E70
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 15:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563808052;
 bh=7qg0yAA920X4Ncr5Zds38mIfFS/XufCTetqYjm+mbd8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VAhmbGpJXwgxbarsYi7Wxh0Mc10X06eDLsf4tRxwTHbu7xK1gkfD+EH8FAO0jH/IE
 03dKUw1TgUmfOdcxE2y/VCcIwfDOyetU1JdfMu5qHvPr9mHGcJkd2N2Dtz8GnqabYE
 C4U9Fnn8ct2FafMKWy9Ugi0Zu/+bbv1Mb2+2/JeY=
Received: by mail-qk1-f172.google.com with SMTP id w190so28832884qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 08:07:31 -0700 (PDT)
X-Gm-Message-State: APjAAAX8+qgjNXXSzOBitr0Zz49qr7UnUkMu+39AR6PrnvR7/wA9+KU/
 IzFdvAEVwUbjtGVwUDDgtGZM5dWPV5GLlJWDUA==
X-Google-Smtp-Source: APXvYqxwDqBafuv6UWbijjtznEpJUMlbiMB5DrW8ppb1oqirRkl8qD14ob6fueOHwQC+fNSyv4X5b2xgFyZ2BIF2RWc=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr48170070qke.223.1563808051061; 
 Mon, 22 Jul 2019 08:07:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 22 Jul 2019 09:07:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLBAsQKvAiwXrPdWv_fsGsocZKFO+Vhctumqtbq1TnZfA@mail.gmail.com>
Message-ID: <CAL_JsqLBAsQKvAiwXrPdWv_fsGsocZKFO+Vhctumqtbq1TnZfA@mail.gmail.com>
Subject: Re: [PATCH 02/11] dt-bindings: timer: Add missing compatibles
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_080732_347239_7A9FB28B 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 2:12 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Newer Allwinner SoCs have different number of interrupts, let's add
> different compatibles for all of them to deal with this properly.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun4i-a10-timer.yaml      | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
