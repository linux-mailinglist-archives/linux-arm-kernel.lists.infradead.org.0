Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8804F1608EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCGvpZoADMSBCk93SRDxkxw5lVXvbo2cdL2JdCUaS3k=; b=sb+tMNCqIz2uIv
	swQfDrd5MMmBoYHB1fwyeyCkQqG6hqATxokzgQkpJf298TQ/ViOa+L5eIdRMwmBeiQHJA2LHaFYRY
	cO3xJPOLRm5s0xo7RfsrK2T1qfDfe6i0RYv/nztLQSHn2QBU/cwHF3HcaNfQMbsYhQ//l/3pqDfz6
	F+9gb82Gm0pIWNPR4C+bwS8f70VC6626H5UL1iOZWFc+kEAkYHSlR+aHPjzByKelnLyJjXcqwRagj
	JCJZo/nxFA6Xco7tQ8b6Mq7RDIYGjhcDitoybfw+37kBLwtC6yEwRWO96Bba6zGBWyATZKN1vswC8
	9cCYgWSds0UdBjqpCLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X6N-0001ID-LW; Mon, 17 Feb 2020 03:29:43 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X6G-0001Hw-7I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:29:37 +0000
Received: by mail-ed1-f68.google.com with SMTP id e10so18955884edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:29:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=En6qfleyTIxn0Lmliem5wgGqB3laLlmUnkFCgAGehpQ=;
 b=hYaGfqJyvNPx+ryP/C7eodXD00uK7/lofQRT9e8U9Lkyd0HZ7KZNG4XtercnK3p1cb
 4K9DC6PVwDLlGp7t3Ta4EEsDtoO76rl333yYvEqxTNGf4Apm4SedZyV8h3QbJq57Y26I
 dM1//o0xRN3pklagT27Z0YmhnEYNFrjIJxgPKNUrM0zje0/HLFtxpVx5UCVI66fAGsng
 9UvyY+GzHF4WoQWGjrV4jOTQodiq9vf9rX82BfcSNcdfXHhnS5ZjL7oD6xhDFM5WNAlE
 hMZB4yB/rgsJY1tL9acaoA2+DyaXUjYyB2Qj3aAHaInDq4ihbJwjrqKCocfNoqbcPSPC
 uA6Q==
X-Gm-Message-State: APjAAAWIibybfU+n9+hjPefjfMQrnzjcPNJbPMGkp89+NT+O2gpNHL0E
 uKKl13Lfonx6nuNeyF8KKnCq82oVrZ0=
X-Google-Smtp-Source: APXvYqz87NZLESf4fklkUhn3gV1fKLB1sqPM7bUDWiApRD4tWFwDl9Xt1QHkyALPj856GgPHoiVNYw==
X-Received: by 2002:a17:907:1059:: with SMTP id
 oy25mr12313659ejb.142.1581910174741; 
 Sun, 16 Feb 2020 19:29:34 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id q3sm812873eju.88.2020.02.16.19.29.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 19:29:34 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id s10so15658621wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:29:34 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr19909383wmd.77.1581910174069; 
 Sun, 16 Feb 2020 19:29:34 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-3-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-3-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 11:29:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v66w5v6MtLzmZ=C_ApNBktTxwgnzprQ8FKmuCbBwhvum9g@mail.gmail.com>
Message-ID: <CAGb2v66w5v6MtLzmZ=C_ApNBktTxwgnzprQ8FKmuCbBwhvum9g@mail.gmail.com>
Subject: Re: [PATCH 2/8] ASoC: sun50i-codec-analog: Gate the amplifier clock
 during suspend
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192936_260374_978B51FB 
X-CRM114-Status: UNSURE (   8.00  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
> The clock must be running for the zero-crossing mute functionality.
> However, it must be gated for VDD-SYS to be turned off during system
> suspend. Disable it in the suspend callback, after everything has
> already been muted, to avoid pops when muting/unmuting outputs.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
