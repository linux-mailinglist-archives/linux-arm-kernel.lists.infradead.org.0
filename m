Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2366E16918B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 20:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnBYtVzUrkJkszFzE9t9q0B3NsR5oY8Jyb0cU0wF06M=; b=OSuysBipPPFZjO
	uT+8IGV0jvPcQ3/74X/MWDDYspf+9e/KCrzwcvv+dshEFHa2V7nPGkxZ4vQK0oJyj/MSYXjydQB7e
	i20smRr9aq4uebZNebo2pcHHXoS1Ovbv+7hZNeCJlUwKEGolCjzTBAOQEWTGgNvzREeEcA78cWFBt
	Iq5pSg8FClFUaPoMpYYAqbKaUEShxJm2GM9bL4TM4QdE/kZRNmdUFwVB/9f1glFhRfsQyMaAuBAXh
	mmfwmRXBJDEZ+dgRQolcqtWA8FxOv0mcMQVmx9Au9bHj56Fhzn+/IdD4uzBRv2W2aTH6u+iMekJr/
	HbeNaWCupViqcpV12OBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5aWP-0002vu-DU; Sat, 22 Feb 2020 19:33:05 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5aWH-0002va-L8; Sat, 22 Feb 2020 19:32:58 +0000
Received: by mail-ed1-x544.google.com with SMTP id p3so6797107edx.7;
 Sat, 22 Feb 2020 11:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=abOo/01onxmCrl2+HYFGD4dtsZsCLfGBQC3tyHMZjis=;
 b=VVA+Y0w2cTzdFoO/atz+136TaD3pxtmudXz5C974oxFGSuVuye4uBLm4qLRipvyvov
 qIN4c/bWLfPMqXqWgV301z5bAYGmkahHY2wN/vwxRWeHdML97rpGAipSHtswTjK7F9Ux
 N9V9n3PCg97usS9WmJMO5+zMabE2ZMcu/vMjC14pWNNE//T2NNt1WX/pP2QA0sx6Ylun
 SY5sMJ2s1d3hXWFGYNoqRr6ih6wcvO8ubyo3eExk9clA8G9jriHTdaFppv1TApjRMINX
 gUlsX9eExM3ic02lxpue7imTI97AKYJAQhYUYYyEHiJCoox7GC3foF0L4X+fAn4r5PZJ
 Lfmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=abOo/01onxmCrl2+HYFGD4dtsZsCLfGBQC3tyHMZjis=;
 b=AaED02dduSvEkqsJ76XAs6YcVTAo14t05I13xX0C7sJEaW+AQs5cAS04g8YIwrDJW6
 NH8Cs5jrsx0ugqHKUDvx5Ypu1TQXLyiwHLwHNyhGPSeWvPKdKPFWRMpMEigAnh8rm3tg
 oq6IpvxuqObz8+0Dc21H6J2ngiVvnz3VvlgnwXzagPKvQd9GveoiQjK/c4TWA/Tki71D
 pIdE7aOCV6Mt2Vmj9AT/bSDzfZ9Vdc+1wYSjL/SSOgM5VGRfUM6QkdTQ/Ia1UzGpv2VS
 oJg1yGAu3LTnDvnnUKBM9ERypatwmoFaU2PKN0RdM3NHGFNiAy7R7XN8OpgBIteq5J80
 t5fQ==
X-Gm-Message-State: APjAAAUwqGwtcv8JD5eH7sfEhNJaJJkZbM5zjDDZ8bunzX7Hb6ldyG+N
 6wiW7aWAUJZSG3u/14emRZeza7DM4FxyXxCX3Xw=
X-Google-Smtp-Source: APXvYqwSDLn063dC13fCS2x5o5KSt+86sLTD3VApIdIahY8Td3TAnjcZDxUtKhOk4AFeH5hrqEFUhOchgc+A2h2gJIQ=
X-Received: by 2002:a05:6402:3c6:: with SMTP id
 t6mr37429429edw.110.1582399975292; 
 Sat, 22 Feb 2020 11:32:55 -0800 (PST)
MIME-Version: 1.0
References: <202002230135.WpIL6nAs%lkp@intel.com>
 <20200222170154.GA119396@e50d7db646c3>
In-Reply-To: <20200222170154.GA119396@e50d7db646c3>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 22 Feb 2020 20:32:44 +0100
Message-ID: <CAFBinCAveBrxYDH-SQpbYjF8rdzR5vDPOvXdzWyZyUG5A_-X3A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: meson: aiu: fix semicolon.cocci warnings
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_113257_718103_5C4F7DDE 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, kbuild-all@lists.01.org,
 Kevin Hilman <khilman@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 6:02 PM kbuild test robot <lkp@intel.com> wrote:
>
> From: kbuild test robot <lkp@intel.com>
>
> sound/soc/meson/aiu-encoder-i2s.c:129:2-3: Unneeded semicolon
>
>
>  Remove unneeded semicolon.
>
> Generated by: scripts/coccinelle/misc/semicolon.cocci
>
> Fixes: 3e25c44598aa ("ASoC: meson: aiu: add support for the Meson8 and Meson8b SoC families")
> CC: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

and also (as reply to my original patch yesterday):
Reported-by: Jerome Brunet <jbrunet@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
