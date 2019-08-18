Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F44916A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 14:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6hF9B4uhfBLOjPuZfgOROvL7eWqKG2cBU2ul6aYw3Y=; b=R0mRPgJ0gWqM4f
	pY9x+lYTaClpxVkEzpvhRFdocVqFy3bzK/JZyT57AeT5PZUqckhP7M5azwWgNLtfDJ2DGN64wu/SY
	IxU95TgH82C1XZRMTmw0fohKg4oCmm26qrOoKnDraSKAOkhijsPqr3x8iIfWykD0RIxc40vKJecqN
	2QTR6+79GALnIB+pWS08ts5IsYSsShQ07XljmKzuc/lXmzBrdixncJCQ7goIqtGFW8RhYb7ZoXxRQ
	FJUAHHX7ExSQpBCDMtzVibusw7tKZ2EuIdYSDUaKS7cy0ox392mWEFy1DCkqs28mpuBRKwSIuygo0
	rkePVTWRtwdPbIlIMC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzKYu-0000ta-Tu; Sun, 18 Aug 2019 12:45:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzKYe-0000tD-7A
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 12:45:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id b16so5885072wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 05:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R2axUqO7BW/8JGo+TtC7MH/Mt1ZFiLk2XRc0w1LrBFA=;
 b=mGdfTPmmiXtRRsVK5clC/hcrfnL+/X7oI8OfBgNhBOk3gIaCEau8gEB9S3/eAg9Eg5
 rt0TGuF4v5QGCXz3gPFs6yW5RwTn1ee32h/Mlved/1Uos2LxvDmwN52uJW+jdpZ4EAex
 yjENM1Tt29kRC6UE1t8jl7zbSjMuLvR1kIxg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R2axUqO7BW/8JGo+TtC7MH/Mt1ZFiLk2XRc0w1LrBFA=;
 b=aeid/HQQQ1P9kmkCREEBPPz6IV+T5mwSFS+Q0hwcQcaf37fBOuo4+CfDfkzCWmNhVZ
 qd5YfHmdjyJJ8RGIhZMFC2URYzQ7wWLHE3WBio3ThIzw34BEO/c3kDl4gNabtCPoctMy
 EaDoRdVei9AhFpzC2YyQdlT8Tuw4iiZAGz88NK+A9tYyN3OAdLHwLP2M3W9q56iPiogR
 5OwLuBZdL7C0JxsxPyLHeW/tXp4L6lNqmfDq53ArTtyTIINiSqnw1kZOwjlkjPd/8aM0
 c7d9dS5oJiP4KPDIW3KiZwqn6EQGIT/fKHVmU52ZykDh72rsoXJx8SYH2ki6VW5uIzlo
 gnCw==
X-Gm-Message-State: APjAAAXt9+qsgPoBJpEdRjxQL/luXNZNOTRUCKMK06G1RqoPK7bPtgtH
 ePeRud//DYoKbx5RetrxhT7173gtgSvyid3UP67/bQ==
X-Google-Smtp-Source: APXvYqwPdJ5cn3hOeRS8SiLPSklEPlywvHiHvnoysw18xv8yvEqS8q2aUJepTQJ6Lrc+rN5hEFFrJNcoq488n8vaojI=
X-Received: by 2002:adf:facc:: with SMTP id a12mr19969296wrs.205.1566132314527; 
 Sun, 18 Aug 2019 05:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190818104629.GA27360@amd>
In-Reply-To: <20190818104629.GA27360@amd>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 18 Aug 2019 14:45:03 +0200
Message-ID: <CAOf5uwmprKDNd-6C0xigdV5ZdkGOquwoXcMVbteK9XNE+sKqSA@mail.gmail.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_054516_261897_24992605 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mpartap@gmx.net, Tony Lindgren <tony@atomide.com>,
 Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel

For the second part

On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> First, I guess I should mention that this is first time I'm attempting
> to get wifi going on D4.
>
> I'm getting this:
>
> user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> wlan0     Interface doesn't support scanning.
>
> user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> wlan0     Interface doesn't support scanning.
>
> user@devuan:~/g/ofono$
>
> I'm getting this warning during bootup:
>
> [   13.733703] asoc-audio-graph-card soundcard: No GPIO consumer pa
> found
> [   14.279724] wlcore: WARNING Detected unconfigured mac address in
> nvs, derive from fuse instead.

This is ok. It means that your nvs file is not the original one taken
from android

> [   14.293273] wlcore: WARNING Your device performance is not
> optimized.

you can use plt command with calibrate

Michael

> [   14.304443] wlcore: WARNING Please use the calibrator tool to
> configure your device.
> [   14.317474] wlcore: loaded
> [   16.977325] motmdm serial0-0: motmdm_dlci_send_command: AT+VERSION=
> got MASERATIBP_N_05.25.00R,026.0R,XSAMASR01VRZNA026.0R,???
>
> Any ideas?
>
> Best regards,
>                                                                         Pavel
>
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
