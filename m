Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A4B1608EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EBblEucZE48hYo7TuUYU3cRO7TDB6GqLFRainh2Xjk=; b=VMiOu+S4JU/1mB
	monWzu8td6C4wtfhWTjrIErE016ZFiyRS0sGmxxIN2s+3xa0jeozyPhTROTUEAHgPP0GbSSUDK3Fv
	aAH17m9XttXlt7xqKZPov9ZIJgP4AwrZ5bIW4LOjmZNYNftWYqIFTQIp90UNEjCmvTw4ujWSgUIpH
	FOiNOdcT7cCmyVHB2ToG+u8Hzaz0owW0pJovM5b+dD2yWek+tXGP7kIMsYaSEPspMyrgHJopV7COm
	pY13CxU57hWfjTmFz0wqxV/YDJtN42k4/Nr9RoUkBSLyWZRd+vJeUC7hGLPjErgBGieG0M0VDafmQ
	gawr4JjL8+BT7vBrq91w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X5H-0000zf-8z; Mon, 17 Feb 2020 03:28:35 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X56-0000wM-Sj
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:28:26 +0000
Received: by mail-ed1-f68.google.com with SMTP id p3so18978958edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:28:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Vf+s0xiHFIhPppg6jnzm8oEYQMOnPl6UhM4IxCWOkI=;
 b=JKzwDZwytwv5j6Vk83hFYe5yJ66U+XdhNROcFMpahY7Jys4KsJ78eP0HtKxM1ciFdU
 wBv0u3DIbCjOVsBDgOTDM9tRQ239Dv8X/Q1/tHP+SejR1J94Cd3JmyhdQrM/VIUEXJB8
 6HghmBf7aPU52ce4PCUvDxJcC5WlodyZgKPuiva4HTIIc+6K+BpDhYovf57P7VQlQDzp
 fKsH6XSvaHI5ekbMlHHnpzHtDCZyQNXFfv/00tDUM/c5hs+4gXzxqeNgXnas8CeXm9XB
 2k2e4EsNUer5jo1vw2iMakkqYKUi/3pewqyrtuKzTrHswAmLg+q7GY2opc7lZmB+/d7O
 j1JA==
X-Gm-Message-State: APjAAAWCVjPMelk/9sj4ROE9O00nslTVR/MAnqhIeLCYvnPjRo18SF/9
 V5jZK4vmTOe1hA7KJIjjCqRbZ+/pzMY=
X-Google-Smtp-Source: APXvYqw6s7wrsEzVak9m7OFEMuAC+6sZU2XOTsBqgjMimMCnibpm/Zi8oOsXyLVz7fS5xGD+txoDlA==
X-Received: by 2002:a05:6402:12d2:: with SMTP id
 k18mr12560640edx.253.1581910102709; 
 Sun, 16 Feb 2020 19:28:22 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id m6sm814345ejb.51.2020.02.16.19.28.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 19:28:22 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id a9so16808114wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:28:21 -0800 (PST)
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr20681900wmg.16.1581910101671; 
 Sun, 16 Feb 2020 19:28:21 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-2-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-2-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 11:28:11 +0800
X-Gmail-Original-Message-ID: <CAGb2v67PeKSpzRRQNvUy8PXtLMtv1=PZk99mmGgaL6nwMYMa+w@mail.gmail.com>
Message-ID: <CAGb2v67PeKSpzRRQNvUy8PXtLMtv1=PZk99mmGgaL6nwMYMa+w@mail.gmail.com>
Subject: Re: [PATCH 1/8] ASoC: sun50i-codec-analog: Fix duplicate use of ADC
 enable bits
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192824_925129_39F98713 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
Cc: Ondrej Jirman <megous@megous.com>, Luca Weiss <luca@z3ntu.xyz>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
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
> The same enable bits are currently used for both the "Left/Right ADC"
> and the "Left/Right ADC Mixer" widgets. This happens to work in practice
> because the widgets are always enabled/disabled at the same time, but
> each register bit should only be associated with a single widget.
>
> To keep symmetry with the DAC widgets, keep the bits on the ADC widgets,
> and remove them from the ADC Mixer widgets.
>
> Fixes: 42371f327df0 ("ASoC: sunxi: Add new driver for Allwinner A64 codec's analog path controls")
> Reported-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
