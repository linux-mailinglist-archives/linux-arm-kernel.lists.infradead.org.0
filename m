Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6807916A4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 14:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDxcJrouYoEx8hhQrZi6h59+N2gOzx40XKDU78tf03M=; b=CJEhcg0qAcO4Kz
	7qwqT2Zgqdya6hqKNUMlctIPd0vk2QEVuJdPpWIungiMP1MvuUnfhiwPFXzrDHZltSLY7ulfRamkn
	UbkOzXsU6164DBJ6F39DgkX5t/kVqqPpTOKeyek8dCQ/NPoSNyE8QT+gX0k2C5XDbK6m49IDkI7hZ
	n94TRcl6ZeUyn1VY9Mv2nvDaROifaACv1Az4Sk/nqsmHkGJIljFa92uX06xHDfiUMLpRt1Y1LHFV3
	OgTA4/fxxVeQ84Sj22RNuyyd4wWI7nPs4tBqSCkWkJi+PtOsWZ2U6zrt9GjNzN6zaiXKzBu590JZf
	gPTIf/z2ReOIRGDI0h3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzKXi-0007rp-94; Sun, 18 Aug 2019 12:44:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzKXR-0007rI-Mn
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 12:44:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so5902856wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 05:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EMFKk1n9F0RltZTUuZxEGQUuLJ8Qu6vhKVRysw5bjnk=;
 b=BL9J2p2YxiLC+yxrDCDBNCpaiospQJ8ci9Hp2Hv2OnihgXE9UCF/h26f/yCE3lA1kW
 ObohkSVZBArxG3rI5ZxVFOfU7Uvl45SWYC1Cv+gNW0C0UlqufJFC5u3xHH/Bn4kr5GqU
 lSiolgv3pzkrEdOTM7TrRzTAtpV0vHf26u4O4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EMFKk1n9F0RltZTUuZxEGQUuLJ8Qu6vhKVRysw5bjnk=;
 b=X8yJEMph9Mi8cIkZ0XnJceZHRTyf7WzsiUSFxP9C+cckkqCS7GXEjOfACvyb98bCRM
 SqqWjm83GcNURRSAeFw41FF1cgciERraFmZyOwConavd5vBdTrMx9yzHH7ZLUMv4Kcu0
 yY9mrHhFU4M3UO1ZLwvHA9hOV/n6F7cUzqUvxryfTscnQqaDDq/B8C1fKHJdp0Lq3wWh
 YHS7BWS5G++ZPQuGKnA1zQw9x+gJKxV8l47O98hnNSsn78cZ5856Xbrym9SFM9Djm2ZK
 4dquFYFOA5NmiKGJcLkDolcy3NSn5id80Qp5ZZgbKGbrHK2YghyCdo8Hvd9Z5HynkKxx
 5m5g==
X-Gm-Message-State: APjAAAW0fJ8HE0k4GHxw9Cww/Gbr4PAuclxNa6mGcSculkjlmLK1vfuH
 KrlbSPSi6G4DXTqjo8kVSnZXCnMI9AUXl2ttXZHT9g==
X-Google-Smtp-Source: APXvYqy+zUjgw2x03zlenTbShENN2bqsYybRbLljEolpan5f5jMnZyZfeqPkywSR72xgBORHbXC30uZJeXTW9MJMubg=
X-Received: by 2002:adf:e5cd:: with SMTP id a13mr20642258wrn.316.1566132239479; 
 Sun, 18 Aug 2019 05:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
 <20190818114332.GA32205@amd>
In-Reply-To: <20190818114332.GA32205@amd>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 18 Aug 2019 14:43:48 +0200
Message-ID: <CAOf5uwncAHQ-nfFzQhv=T+pyXJ+60_QNT4F11VJg+25GjFFkxQ@mail.gmail.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_054401_917785_02539D7A 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Hi

On Sun, Aug 18, 2019 at 1:43 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> On Sun 2019-08-18 12:53:01, Michael Nazzareno Trimarchi wrote:
> > Hi
> >
> > On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
> > >
> > > Hi!
> > >
> > > First, I guess I should mention that this is first time I'm attempting
> > > to get wifi going on D4.
> > >
> > > I'm getting this:
> > >
> > > user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> > > user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> > > user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> > > wlan0     Interface doesn't support scanning.
> > >
> >
> > Try to use iw command. iwlist use an obsolete interface that you need
> > to activate in kernel for back compatibility with old command. Can be
> > your problem?
>
> Let me see ... CONFIG_CFG80211_WEXT was not set.
>
> Tried enabling it, and now I got. I remember getting it before,
> too... let me try few more boots, perhaps it is random.
>
> Best regards,
>                                                                 Pavel
>
>
>
> [   13.653778] panel-dsi-cm 58004000.encoder:display: using lookup
> tables for GPIO lookup
> [   13.661834] panel-dsi-cm 58004000.encoder:display: No GPIO consumer
> te found
> [   14.756622] ------------[ cut here ]------------
> [   14.761352] WARNING: CPU: 0 PID: 20 at
> /data/fast/l/k/drivers/net/wireless/ti/wlcore/sdio.c:86
> wl12xx_sdio_raw_read+0xa8/0x128
> [   14.772888] Modules linked in:
> [   14.776062] CPU: 0 PID: 20 Comm: kworker/0:1 Tainted: G        W
> 5.3.0-rc4-58571-gdbaece1 #85
> [   14.783630] Hardware name: Generic OMAP4 (Flattened Device Tree)
> [   14.791381] Workqueue: events request_firmware_work_func
> [   14.796813] [<c010f2b4>] (unwind_backtrace) from [<c010b528>]
> (show_stack+0x10/0x14)
> [   14.804595] [<c010b528>] (show_stack) from [<c08c1d68>]
> (dump_stack+0xa8/0xc8)
> [   14.811950] [<c08c1d68>] (dump_stack) from [<c012df4c>]
> (__warn+0xe8/0x114)
> [   14.816894] [<c012df4c>] (__warn) from [<c012dfb4>]
> (warn_slowpath_null+0x3c/0x48)
> [   14.826629] [<c012dfb4>] (warn_slowpath_null) from [<c0566674>]
> (wl12xx_sdio_raw_read+0xa8/0x128)
> [   14.835540] [<c0566674>] (wl12xx_sdio_raw_read) from [<c0567704>]
> (wl12xx_get_mac+0x134/0x260)
> [   14.844268] [<c0567704>] (wl12xx_get_mac) from [<c05530cc>]
> (wlcore_nvs_cb+0x270/0xb64)
> [   14.852355] [<c05530cc>] (wlcore_nvs_cb) from [<c04d7264>]
> (request_firmware_work_func+0x3c/0x64)
> [   14.861267] [<c04d7264>] (request_firmware_work_func) from
> [<c01455c0>] (process_one_work+0x140/0x348)
> [   14.870697] [<c01455c0>] (process_one_work) from [<c0145964>]
> (worker_thread+0x164/0x4b0)
> [   14.878906] [<c0145964>] (worker_thread) from [<c014a788>]
> (kthread+0x110/0x148)
> [   14.883636] [<c014a788>] (kthread) from [<c01010e8>]
> (ret_from_fork+0x14/0x2c)
> [   14.893615] Exception stack(0xeda0bfb0 to 0xeda0bff8)
> [   14.893615] bfa0:                                     00000000
> 00000000 00000000 00000000
> [   14.903625] bfc0: 00000000 00000000 00000000 00000000 00000000
> 00000000 00000000 00000000
> [   14.913635] bfe0: 00000000 00000000 00000000 00000000 00000013
> 00000000
> [   14.922058] ---[ end trace b611e5d6e7d5aa92 ]---
> [   14.926788] wl1271_sdio mmc4:0001:2: sdio read failed (-110)
> [   14.932525] wlcore: ERROR couldn't get hw info

You have a timeout here. Can be that your reset sequence of the wifi
is not optimal because
is not responding?

Michael

>
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
