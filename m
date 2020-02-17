Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431A8160BFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7sO/kWpNdq1WSIxjUEG7wWuO2FdMHg9Ab5ByYUX2jA=; b=il6SaJot930yc4
	9Dvt9/esIIaHK5AuWyJn6I/WkITGsAbqoWDKtJIR0JuUt3xLEjsO+TG4IVIJ0MwuQGTBo0w8rUad+
	/ME2cZ4pvc6vHdqKQi610U1312s9vaeAIhkG+IZbq9N7S5FG0pmZTGc2eOiyqkud5mxubmuXV/2fd
	zVFP5Etg1oPrBTYGVviuwmjn+PuPqn1AI/kDbmYuJGuRczNx03CnH3TkPNq6Iod++dlAqTHwoUAvE
	BjDGVMqaCLebYc0QoESaEqaIBjGcVR5YCqugJjOiQZgLsCTkVwTHKUk4Sg+2eOKMXv7GK78zackd+
	bi5xPLnPSKPIinyR9zZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bHm-0002SO-3p; Mon, 17 Feb 2020 07:57:46 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bHe-0002S2-Go
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:57:39 +0000
Received: by mail-ed1-f68.google.com with SMTP id v28so19556623edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:57:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RXwH2ZY89QD7QWNaSd/vgTmgRslu6k13i/RLcLVOpys=;
 b=X2yvx4tt6plgErZ0UBQmiN5VKDYj6rLJymwFgifydi/fdI2V2glPloJltEPcgweUqJ
 M0VbaQcvrUuYh1EXx7alY+KwnkQvMI9FVZj2Pz/4ooE/wzOTE/PKGA3RMskY0ADYE/yN
 pQUfdDqSccCdnu2O+mRsOtmIChtDi4tV8T8NM3pdMph/wVVIA9yadlIjBElJMMBTiDjY
 JeF2tzWVcSOss9PedVLI999k6wJ9rmx+W/QZMUUR50u7gjSUXGkj46nnIJbSNo3D/cub
 NE1zgLlHyHAHgQgCWXZtd030Z2SACFok/a8gLPHGEE15iCwM9cJEopBvmMTjGTv5Donp
 Fq/w==
X-Gm-Message-State: APjAAAXXSMdwwy6SVnFt0zMATS5wR1n/vB6d9Hbo80akcue7bJtQbzbW
 GdGH3K7vg9C0sEQj35ygI91T2i92wN8=
X-Google-Smtp-Source: APXvYqwrbu7GOJ3vuGtkrZrxaSZYuY/o0QkFkEha1LwTAI/WkokN1kRLrQMiFL0QozfSUwx3ROhgdw==
X-Received: by 2002:a17:906:8d0:: with SMTP id
 o16mr13459233eje.101.1581926255941; 
 Sun, 16 Feb 2020 23:57:35 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id q18sm460810eds.7.2020.02.16.23.57.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:57:35 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id s144so6746946wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:57:35 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21328621wmd.77.1581926254712; 
 Sun, 16 Feb 2020 23:57:34 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-15-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-15-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:57:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v67ZtOajmfvoFNfsqWJ4K3pjfW16uoWYnMUcpqi7fg5XAw@mail.gmail.com>
Message-ID: <CAGb2v67ZtOajmfvoFNfsqWJ4K3pjfW16uoWYnMUcpqi7fg5XAw@mail.gmail.com>
Subject: Re: [RFC PATCH 14/34] ASoC: sun8i-codec: Fix AIF1_MXR_SRC field names
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235738_558889_DC4BA0AC 
X-CRM114-Status: UNSURE (   9.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> Even though they are for the left channel mixer, they are documented as
> "MXR_SRC". This matches the naming scheme used for the main DAC.
>
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
