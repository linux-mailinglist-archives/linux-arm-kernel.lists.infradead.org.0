Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A68E160B80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqIh+sMO1LS+wXrP5JOktpGqVHUYH6gI9M2al2+Fuf4=; b=OmIOEzhMIESORN
	r4z/jpj8hdGLskTW8jQfpIzqnubKiLEC0Y2MKGq5WjLJQSHDmHKtaCf0uGhH4X74BktYXs7reIJhm
	s98N/Q9clkQxWAB9Hxw+BwUazvFGC2J+GAGa3i/hGRZYxfQmIKES2Br1nvmcqaniQo0lVj6+bpqoj
	72+CAp7I/VlMJycEnmC+rUZuQwHUrAGole+1up50RXRdbjmiputqTt4JSLVxitKw6zDlvjEgD6L9k
	aYNJ0YylgZ53VxBJjoOlg8QDIrMKflRHCkrHI3DHLiGi4VRmfFanHWOjiOecUAKjhrpxbKcvGlJJS
	mi4Qc3zl4xeQKjlkYhBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aiM-0003RV-Dk; Mon, 17 Feb 2020 07:21:10 +0000
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aiE-0003Qw-QS
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:21:04 +0000
Received: by mail-ed1-f43.google.com with SMTP id e10so19465473edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:21:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=scxVOt7vJ8XADBjS9Kw7nULEogoDx5VlxsaehXEQC7Q=;
 b=EF65aDqqhztGydO2m8jQeYNzsu52JfAHBx7/UCCxy2usMpqtsCG9fMpaehmp5Cm0qp
 qZVrhYsErg500DGI8AGMmmwHktPqDCCff2yVakX5Y7AQ1Y3XG1PvJE/ipPLUt9ob8GXS
 mwJtU43EgcFqzWty0vVJwk7D7qMVprOJot0F+oBwpPyzquJC3Qm+uTaP1VNx4kIZH4bF
 LkcPEO14JY35yuC5LGpl2MptiwrIw0VYIYRdsF6twacXqDidKUF5zcywgmZ+sUSxG4Z8
 yCDpvFyBjwdUbCLMcGRpUPeIltUOMirkbZhFFw3H9hLyv2bgNkw58z1B/LHZ43CguCzO
 Coig==
X-Gm-Message-State: APjAAAUrdsJ7ulTV/zy1TTLrVSkqEFSsy6/Ix4Il12sM4vISyYhFN4Uw
 ns9auj1BArZYV/kEWyPdL4i/aBALI9w=
X-Google-Smtp-Source: APXvYqyHsSggKhmH+ic9X33635YftWzIs1qJD37tBZ+8OAVV7vc3Rym/0GJKFVYYiuGWxLoQvXZyvg==
X-Received: by 2002:a17:906:a950:: with SMTP id
 hh16mr13502842ejb.75.1581924059323; 
 Sun, 16 Feb 2020 23:20:59 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id v16sm808433ejx.5.2020.02.16.23.20.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:20:59 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id a6so17187036wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:20:58 -0800 (PST)
X-Received: by 2002:a1c:7915:: with SMTP id l21mr19642112wme.112.1581924058371; 
 Sun, 16 Feb 2020 23:20:58 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-8-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-8-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:20:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67R7ObOSnU3o400PWNtnSFouNUait9ULP_1NQs4YnDccA@mail.gmail.com>
Message-ID: <CAGb2v67R7ObOSnU3o400PWNtnSFouNUait9ULP_1NQs4YnDccA@mail.gmail.com>
Subject: Re: [PATCH 7/8] ASoC: sun50i-codec-analog: Enable DAPM for line out
 switch
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_232102_857882_BD7B8D6F 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.43 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
>
> By including the line out mute switch in the DAPM graph, the
> Mixer/DAC inputs can be powered off when the line output is muted.
>
> The line outputs have an unusual routing scheme. The left side mute
> switch is between the source selection and the amplifier, as usual.
> The right side source selection comes *after* its amplifier (and
> after the left side amplifier), and its mute switch controls
> whichever source is currently selected. This matches the diagram in
> the SoC manual.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
