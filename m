Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D55DF134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3wyjRaDO70gL5BqiNxtpk2QABXCCxOWs7/LkQz6SdU=; b=QYXP/fKWIdTxyZ
	8FleENChdN1luO+ZS5Mpt2aMRqxG7nm+sEZvtrlIREuAQ+t4b2q2gZRkWMVUymI8CseU1bmbhjbzs
	q7a5J3wpTKI1e6hbQAp6a4JF9+F/1VnBcnW76Joc8gFDCpTh/pAbkJmXgrTvqc+0MAL03yYQUBQid
	+OFp/K0IJ5z+cZNo9f2HWaFfMa2RkMuJNr27hoSyaPfEtlP8DPR+paOg9C6UgGdFptRlNrql05lkk
	khrOrnMujE4tr8B0KkEuyWWT4helyZri4NpBMy8gaIJqpBD5NMLOwuVIFOBBU5qxnPi94OdBd3LXE
	e1LLnk26P+K1GiWPtWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZVF-0001RP-Vy; Mon, 21 Oct 2019 15:21:49 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZV6-0001PY-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:21:41 +0000
Received: by mail-ua1-x943.google.com with SMTP id j5so3909041uak.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 08:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HvOcHe5sgnM2Ih10HPGzGtz2+0bgk7nxRpCIIRNQM7A=;
 b=woqRl8XYxFpkzjzJqhbqZ/o37KeoHSE0zn/+EdUQU4kQK467JyEQRZgquspYLySMJZ
 vCMxtniRWFfq8PVlZ9OGFFzdq97rjpzYh2Im6/ZIWGl0l35q9u2nYtQ5qwKUF7FS4wL7
 2P0Kj/jEd3jg7Ez+ToqzRJnuVTDh8d3UGFwF8JzCSQDbp3qtYPyET4z/jfS7ij6tJ/hf
 7GL4CWrXtUAiwDnyu7Ne2DqOG71Tws7noIZu7fb3BkqnZcwLLw0UoXtQrahfr6Jjm7pn
 eNodA3bDqT/zML97urY/UvCPJ49M4R8UgiqBKA69H/qeXbtrLLspLWYcCBKJrcF67F5G
 dokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HvOcHe5sgnM2Ih10HPGzGtz2+0bgk7nxRpCIIRNQM7A=;
 b=UAVzbYOEf9anq8edgPrmJs71VbHhzk4nKEtUs//YCGoXdN9jF8IooM1dOtzbPM6UZ6
 uGSmwy/jirlrby7np3yag8lLaczi6ZPxEsFS3hSaJumWk6951veV8I+Y/x1M1lMbxF0s
 vkpppEnXHpPPIA1G6YFstKdE32XaZoxyWq/F8OcQ/uA2pkuy/iQ4dYe9dA0SgI2vKPK+
 a8StOXxPBtY22Fk7H0O2d+nUGVxOBRJe3ST7rnyRXhS3/aYsT7jhkann5uIj41Z4yhs/
 TuPX5ETOildS/5ApESAWsEhoueEF5Qds1TYCmD0FMErCnaZhlprwg2cXz9gvTUofvFrl
 f1xA==
X-Gm-Message-State: APjAAAUX0sqpHHUT90JmDhBKToRuqzDlQfNvMW0M7eGmRR6bGJrXKLHI
 ltlsVYhJem+d2QPTA914OyBhdITXppH5TNSYG9Gb6g==
X-Google-Smtp-Source: APXvYqzhMXR2NneFdAKl7YDt/OnBvYSd12yNpMMH2svyTHRBphhTEAUOoTgn9L00HK1pOKlkytzxjOdn37raM4VctCE=
X-Received: by 2002:ab0:331a:: with SMTP id r26mr6180177uao.104.1571671295461; 
 Mon, 21 Oct 2019 08:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191021143742.14487-1-geert+renesas@glider.be>
In-Reply-To: <20191021143742.14487-1-geert+renesas@glider.be>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 21 Oct 2019 17:20:59 +0200
Message-ID: <CAPDyKFr5H5x9LRjvVsDbNoGgZx-EnZGgUD9fEt=esN8HumNDHQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] debugfs: Add and use debugfs_create_xul()
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082140_491272_4B06F40E 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 netdev <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 at 16:37, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
>         Hi all,
>
> The existing debugfs_create_ulong() function supports objects of
> type "unsigned long", which are 32-bit or 64-bit depending on the
> platform, in decimal form.  To format objects in hexadecimal, various
> debugfs_create_x*() functions exist, but all of them take fixed-size
> types.
>
> To work around this, some drivers call one of debugfs_create_x{32,64}(),
> depending on the size of unsigned long.
> Other driver just cast the value pointer to "u32 *" or "u64 *",
> introducing portability bugs or data leaks in the process.
>
> Hence this patch series adds a debugfs helper for "unsigned long"
> objects in hexadecimal format, and converts drivers to make use of it.
> It also contains two cleanups removing superfluous casts, which I added
> to this series to avoid conflicts.
>
> Thanks for your comments!

The mmc changes looks good to me. I guess we could funnel via Greg's
"debugfs" tree?

In such case, feel free to add my ack for the mmc changes.

Kind regards
Uffe

>
> Geert Uytterhoeven (7):
>   debugfs: Add debugfs_create_xul() for hexadecimal unsigned long
>   mac80211: Use debugfs_create_xul() helper
>   net: caif: Fix debugfs on 64-bit platforms
>   mmc: atmel-mci: Fix debugfs on 64-bit platforms
>   mmc: atmel-mci: Remove superfluous cast in debugfs_create_u32() call
>   mmc: dw_mmc: Fix debugfs on 64-bit platforms
>   mmc: dw_mmc: Remove superfluous cast in debugfs_create_u32() call
>
>  drivers/mmc/host/atmel-mci.c   | 10 +++++-----
>  drivers/mmc/host/dw_mmc.c      | 10 +++++-----
>  drivers/net/caif/caif_serial.c |  4 ++--
>  include/linux/debugfs.h        | 10 ++++++++++
>  net/mac80211/debugfs_sta.c     | 17 +++--------------
>  5 files changed, 25 insertions(+), 26 deletions(-)
>
> --
> 2.17.1
>
> Gr{oetje,eeting}s,
>
>                                                 Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                                             -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
