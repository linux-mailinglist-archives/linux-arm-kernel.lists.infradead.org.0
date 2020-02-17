Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0461F160B75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AscdY3SW2ZOchui0wRZuFix5B2gLJ97LUHyySsziuic=; b=T56L/GWr1GU8Mf
	GHSQmWhwgAnfMFTNHhhdsDELdGsP08c3mBSXXLEuhcZi1+H/zZ0GTO7TU/vwGhhr2COZLSUjZ7o4S
	yaNOcC5vp0elR+r44sn6Pww4nlIjdfGjlff7LZ2goPvEe/ZOxT/36r3V0fUIOa/aNdfscFaBXeBv/
	Po9n/tOJLZ4e07Wm31wtAVa9208RR/42KXgHDYel1uKNrupqyAjmX6/zOFFclWNfmtx9SRX1MSUe9
	1xd3BNN5RZkzkL3toMs6x9d8W7LiDLSVKkLWe4r8m35ahCy4QpFHa2BN7V/cdnjjHsENKAgveVaU5
	ivHtavAo8SGitI65gPdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3afZ-0001B1-IY; Mon, 17 Feb 2020 07:18:17 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3afS-00016P-HO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:18:11 +0000
Received: by mail-ed1-f67.google.com with SMTP id m13so19475680edb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:18:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dW4Ej8MLzzPbydvCeEmiQskFOW2o/76spt2iKZQxuT0=;
 b=Z9NKAtMNN3mpOp+SR+geBb+28JiU/3m4AYyT4Y4dBkVxLBTI5eQmTaYsZqhchKTms3
 NrudzcpJLOXiD5Y1nQjl0Lq7W8WqUroK5hW/8vpvDnw4rCBb3D270yDbibo8nR2Hsooq
 Ka7e0X9YZBvIt2iMDH5/P7+lDXpUw0Esx6n2szUEsmflgRNX4uRPjom+hpDByGVeUu5T
 4ecJoODl4Thk+nxbaKvlJT4OVOa6jcmW2T3bQpjZeLFpZxRhajarzBGBYRfGXcQ/BDlx
 qucXu3bsXq5GgiA2GrVB74Kj9mZcZVhcvcmA1SeEoECB73l3R/sasKnJWD9cZQNpUsu/
 x/eA==
X-Gm-Message-State: APjAAAXCXMfQA3/pdeYU6tdUILiwypWY9/zTppNtY8qgKP2fgX+qw0k8
 aWnUAOOC2eCaA+67ANFfEQ+wtGsgeXA=
X-Google-Smtp-Source: APXvYqzy7Qy9apsbfrQr+mD59Vf+kK6tXgvg1lr8NACxOK4hoJHzY0No/TBDg+3GKSRVAWJRLdW/bg==
X-Received: by 2002:a17:906:34d2:: with SMTP id
 h18mr12974437ejb.76.1581923884886; 
 Sun, 16 Feb 2020 23:18:04 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id j15sm892719ejy.55.2020.02.16.23.18.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:18:04 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id a6so17180667wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:18:04 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21111044wmd.77.1581923883938; 
 Sun, 16 Feb 2020 23:18:03 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-6-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-6-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:17:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v65v=wPJNxPfOzp2bcevk0qoDiW-+KFBO1MKHz6gE86DPQ@mail.gmail.com>
Message-ID: <CAGb2v65v=wPJNxPfOzp2bcevk0qoDiW-+KFBO1MKHz6gE86DPQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] ASoC: sun50i-codec-analog: Enable DAPM for headphone
 switch
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_231810_575849_5B9DBDBB 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
> By including the headphone mute switch to the DAPM graph, both the
> headphone amplifier and the Mixer/DAC inputs can be powered off when
> the headphones are muted.
>
> The mute switch is between the source selection and the amplifier,
> as per the diagram in the SoC manual.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

BTW, have you also considered tying in the headphone volume control?
It also has a mute setting.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
