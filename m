Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ACE160C02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDPJRs9ENYoLbRQJv3Rh7oPKL2M4msyhEfk7gVMaOBo=; b=miz+KeUJJUQA1F
	QJ8zXA87AgUta23NlcFW3QNzFPdjf4PLUgrxMqOsdh+AC5NB+2NhoYcoSOkGV+muP2u8LU5JlCDaN
	D69wSb475e3OGRbISN9kzNT2Jm7mPjCgyfWnhgB3N8/RfH9ufI0/3bIA+tcB2vpGEcXzmuL8g92fE
	/P6UfVN8RVaLNKCBRVvD2bBvcp+4ZFOl5uogfIGXSMYQQamuWwdiL+SU9Rt+qnG9uE6FqrGEuikco
	alQNdnavdlQ/O4p5asvwpvMlSPnNp18bnlIaiW/HWg03JwdmfCDJPQRyzLf2dAPu5p+d2KSrJLgFy
	ot2mxZWteJYjqNiXdNsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bId-0002hr-Nn; Mon, 17 Feb 2020 07:58:39 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bIT-0002hL-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:58:30 +0000
Received: by mail-ed1-f68.google.com with SMTP id p23so19582693edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:58:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qAkDAKXcgCBrOdSb/zgNyHSfr/RVZZb04YTPxwkLXA0=;
 b=l6O4z/BVEEQ5B588wDSuNrQZMs6mOz7bBoJBendZa+H6CAPVTnG5kDmLllzPuMwhq1
 L9W4+UItxeVW+ahtPPOQXgliNyKq4qecwbVMrGWj9ziOGow6lExXZCg4PrrGmkD+n95W
 s+F9jBiX9GZIYvFyYwA3fOXZDEhLlNkLY1nQ3F+C/cm3xphYCC9+n1BqX4weUMa8VtTy
 m3m+IdMZA8gXgTROOjptbNgrG+cKjHISDf5Fy0qialZPFmQtTpBird6YNbr9mItfFXj/
 RaaAT+mZ41025NFd5E1JmfbwwbLyL8S9jj4Z429W8MO759aNa5jD4GeH647UOnqDsKgt
 WkUw==
X-Gm-Message-State: APjAAAVRKI9sFsAavQn0Mip5A0jsZcXmZHCk6bTDwN35wWQ8f1FgIjw7
 d28BT6iPuDgr6Fm2dZ8Z6p2mDz9yTcI=
X-Google-Smtp-Source: APXvYqwue4tbER2LLhZFJ553bIpdYlC5oUZ1k/R/oDeF0L2jBYumsboN2a5kFRHGERh0jE/alNRtKA==
X-Received: by 2002:a17:906:23e2:: with SMTP id
 j2mr13324433ejg.257.1581926308278; 
 Sun, 16 Feb 2020 23:58:28 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id p16sm461122edr.83.2020.02.16.23.58.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:58:27 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id a5so16069935wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:58:27 -0800 (PST)
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr22154598wmg.16.1581926307557; 
 Sun, 16 Feb 2020 23:58:27 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-14-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-14-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:58:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v649-ZJZfnOoNtsRuQXFOsZLg69Bizz+vZbB6yML-T8z2g@mail.gmail.com>
Message-ID: <CAGb2v649-ZJZfnOoNtsRuQXFOsZLg69Bizz+vZbB6yML-T8z2g@mail.gmail.com>
Subject: Re: [RFC PATCH 13/34] ASoC: sun8i-codec: Fix AIF1_ADCDAT_CTRL field
 names
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235829_812104_555B1EB0 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
> They are controlling "AD0" (AIF1 slot 0), not "DA0".
>
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
