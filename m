Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AF58059A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 11:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdWSMlrVcgp/3CruJtwVRmEujSFaSmTdbdLyvACW3+Y=; b=KdFUUu5MRiSBU7
	md3ycHE/fy4g9L90iVxik3xXgoTTopbBUrOLFzxHNZlCLq/GNh234v6QRqBnyvEedNfIp96SnPxZw
	rmY+006EJzZlps+yT+WWp3J+nEUxI45awGhy7gzUbw7Xmy6rb93cFZxgsB7TaTs9W/uMoIm2L3Q1d
	shTl8CTSr97jsglV8EUG/sc3vCPcVvK+/THwucbhbpw5T2T92tIm0VvS3a2/PghRWlmJZAi2NON56
	ewzmT7a6/TIghujZ7UnwHPjo1rgn1tpL6QEYUBXDLmM96l58oDFEmoddbLQHBogBzKY6dUmpU2s3T
	SQ50KJa4CW0OUZaccERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htqi7-0007rc-3s; Sat, 03 Aug 2019 09:52:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htqhw-0007rD-29
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 09:52:13 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so15871826lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 02:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K594JGSknkAcZWf3euXiHTro/vk9tms/9rcP/e8gVDk=;
 b=K8U3VUiNeAnpQ/N3lR/RllAdNvL29fI0dUQ6kRi2aXYuMb0Ui24hdqf0f3v9KEFrgf
 ALYVnfWhdmdhUvE25D+23BrX7paKQeSd1FBY20o/174MuS94pnXlnBCmF1aEcu+H6x9k
 Ki0sBlMhq90RbCKn34BjW3U16Kck/phVFxxuWZSfwGlEzCugnLe9FK8bZoXLE485kxer
 dzrqitGrpTz0z7gO0JRjvuN3nrKVo46hCfocwGeJygcSEvktz56C6D/LpRyifeSQbQFF
 jScxqmTasC7oN0AWKki1NUPf6YsbX8Tp/n/qD9hIIFwl7af18QLTKGMsz7Uchjv+1mve
 ufmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K594JGSknkAcZWf3euXiHTro/vk9tms/9rcP/e8gVDk=;
 b=J4wK7GsU58svKau7s92z2gIaG/KJf36YY7M3uOdxzrN6ptI5Ur2/wlbT5z/eA6RQz/
 aNW1Xq80+4Uo8TlpwXDWcm27U2/TbuhmkKcPOsEMq9tUVkU6dKa+XgR3+YM+GRrRtsIj
 a6GHByjwNsTfZTEijUdYbVPOPdUzW2jjGY3ap57m2DgGpibsvw9UZQdL5VFy9iZzmuEZ
 HGMatPvgLcVNisQI6XBC3vrCgkdVkJI5wdfQWbqQEOMOmsN7UgwstTNPQCfhkC3qOrzk
 8Wfa0qA2hh8P001iYZzVTgfXrRlo28F2g0LZJhdP9rjzV6cJUSHyKvMdtcASFh8rJGIB
 /zSw==
X-Gm-Message-State: APjAAAUWWVk8rBu9Nhk/ShXyiz+gAA9R987KU2+KBQbwqznIfmuktBE1
 I0wUUfju3wU77aPamiuzlXQY3w1V60yP1fhS3N8sTA/+
X-Google-Smtp-Source: APXvYqzvP5D4HG2MtagSK7Kt0YP7GwP6ea61hWlrYqCP0tfsH4AreuQRQ1Y+wbXqv39HPwj3Fxu+I6wxa3fBUP81u7Y=
X-Received: by 2002:a05:6512:205:: with SMTP id a5mr685384lfo.60.1564825930461; 
 Sat, 03 Aug 2019 02:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <1709073.y2qmsckc0Q@linux-e202.suse.de>
 <CACRpkdYAgLJ9asftN5EafeN5EVEyH_xHVdwjbecZqvgz-JJ98A@mail.gmail.com>
 <12154694.e2V3OH3Rcx@linux-e202.suse.de>
In-Reply-To: <12154694.e2V3OH3Rcx@linux-e202.suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 11:51:59 +0200
Message-ID: <CACRpkda-5xu2-X5yo=dXchSvuD=ZmZSpTbGNrkv6V+UKs27xWA@mail.gmail.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
To: Fabian Vogt <fabian@ritter-vogt.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_025212_115919_C6996D2B 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel Tang <dt.tangr@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 9:26 PM Fabian Vogt <fabian@ritter-vogt.de> wrote:

> On a real CX the LCD displays shows content without
> any other changes to the set, but has a ~3Hz pulsating effect scrolling from
> the top to the bottom and the gray text changes color slightly.

So you mean something meaningful appears in the LCD
but there are visual disturbances?

> Without the patchset applied everything looks perfectly.
>
> I tried setting vrefresh to 20, fb_bpp to 16 and forcing an inverted panel
> clock, but the pulsing didn't change.
>
> Using the emulated CX I compared the contents of the registers and found
> that only the IPC bit (which I tried to set, so that's likely not it) and
> the interrupt registers have a different content.
>
> Any idea?

I think it's the clock settings in patch 2/3.

I just set them to "1000" (1MHz since its in kHz) based on some
educated guesses.

The old driver set the clock to "1" (kHz) so just try that first,
maybe it is really that slow.

It's just that the old driver also set refres to 60 fps which doesn't
add up, but I think that setting is simply ignored and that is why
it works.

Yours,
Linus Walleij

Yours,
Linus Walleij

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
