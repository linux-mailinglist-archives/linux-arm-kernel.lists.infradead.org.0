Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89107117912
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX7VdQokKlAHwXMU54v/RcVC2Mo0q2SpnlRsHyXBWVY=; b=FGGZ1WA3Ia35en
	pR9IjuCJje/Cuyyg7F829MPyQZJ+4EA0+U/kyRpnw1q06GMsDA2KdR8GkJYgBulzvxFwCG1bdglFC
	tHctK3unntO2I8bkM2zDYfb7wnc0Dunmo1erajeSeabdEuzAyIqD7fJGyn3dZp6vAssEUkkkbIULc
	3CSxCOjnv+l9UH8goIUq0LlZoNYJE5ac6k2tNbUvaYW5TNKIlMKbElHU0WfbmslcXiaVzV7owuG9u
	7mFfAge6f+TL/Qyj5yzkhCXAPDn9Hy03RaXb26hldHZ6e/HG4f/XNgExmpq9gTuHZ8YL2kuNqf2JE
	75eipomFWZQXZlw34zXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRDn-00059m-Tz; Mon, 09 Dec 2019 22:09:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRDf-00058p-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:09:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so7803500pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aH72KfB+jd8LoZ9WTIWQOhLHCco482dBV+3OetYANfk=;
 b=yqoI3WedmSPPH5+3eZ7ga+cYHKCC4gNQ3D5kXpyDlprI0f6kbGLO4sdxrvrd0bN8k6
 H9qxWAzCI63pOPBlXKaTLeqU5rDqkz+dDqurJLkSfXa5POqq7j7/3RCRlj3SWjbYfYlj
 V6fgcjE05Z6hk/oqlEos0KLQXDYHS5i8jbMMcwI/6LZbiYj8f/bEqhulSs28L8lYz78u
 3palGsGJGhkY3UHlFO+5WmaNEN26K/BQ+1wS+TOLDS0qIjD9erVYn15kMlV+PhJjo/Kw
 lJFkuo6zDnOlNNAD8C9OmuvUXdiBHsPiRwOonBcrcwrbyUwcuozDGVu4y0jM8K4xGXOf
 1ekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aH72KfB+jd8LoZ9WTIWQOhLHCco482dBV+3OetYANfk=;
 b=bdrTwm1wH9jb0cd0cJdKmz2Eh0nHS0XaB++m/1Lb+fXFzwv1cFNgpKt1kfH2lBAH4p
 ZbxbG84XZkkG5o8ohM+vNk8kiVD4rzejjlmpM4ej/qWbl2w+zwPBnlzfpnzvpCJ/SSRR
 gcpIk+E14vX35oGHNuozatJuj6ZL3NTioD0//I+k6z66sa09oy/ypEFu7ZnAi9hnCMDl
 eUFQZRxkXZu+ikMkXt9F0dkGmDdrjat/Vaog6fbUL6OAcT4HpPHNeSZR3IwF2XJUdNxD
 2IU6+EgVGvmOHzfJo4WvZocHC+pgwn1ufaN7Uo/jJaiGK3oY5dsaAHCY0wTSU6eWh8OO
 dYaQ==
X-Gm-Message-State: APjAAAWch2E9GOaBiCM57ByxlaJ1aN4Ivs1rj3cZ1g0jrv+3PqpSaYQR
 Fx3X6ejOnFK2zQIZ1rhiqG1agOIaa1X6Tw==
X-Google-Smtp-Source: APXvYqw9VHnx8+RwX5no7IWuPVs1FzEgFK1TIEbb0vRSourFalI7XV39vudP3wtb+25GxinvpiQYEw==
X-Received: by 2002:a62:8456:: with SMTP id k83mr17928443pfd.29.1575929371147; 
 Mon, 09 Dec 2019 14:09:31 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id j14sm501754pgs.57.2019.12.09.14.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:09:30 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/9] drm/meson: add AFBC support
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
Date: Mon, 09 Dec 2019 14:09:30 -0800
Message-ID: <7hk175rw11.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_140932_000183_84FF4C1B 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, ayan.halder@arm.com,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This adds support for the ARM Framebuffer Compression decoders found
> in the Amlogic GXM and G12A SoCs.
>
> This patchset is a merge of v2 "drm/meson: add AFBC support" at [3] and v2
> "drm/meson: implement RDMA for AFBC reset on vsync" at [4].

Oops, replied to the wrong series earlier...

> The VPU embeds a "Register DMA" that can write a sequence of registers
> on the VPU AHB bus, either manually or triggered by an internal IRQ
> event like VSYNC or a line input counter.
>
> The Amlogic GXM and G12A AFBC decoder are totally different, the GXM only
> handling only the AFBC v1.0 modes and the G12A decoder handling the
> AFBC v1.2 modes.
>
> The G12A AFBC decoder is an external IP integrated in the video pipeline,
> and the GXM AFBC decoder seems to the an Amlogic custom decoder more
> tighly integrated in the video pipeline.
>
> The GXM AFBC decoder can handle only one AFBC plane for 2 available
> OSD planes available in HW, and the G12A AFBC decoder can handle up
> to 4 AFBC planes for up to 3 OSD planes available in HW.
>
> The Amlogic GXM supports 16x16 SPARSE and 16x16 SPLIT AFBC buffers up
> to 4k.
>
> On the other side, for G12A SPLIT is mandatory in 16x16 block mode, but
> for 4k modes 32x8+SPLIT AFBC buffers is manadatory for performances reasons.
>
> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
>
> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
>
> On the other side, the Amlogic G12A AFBC decoder seems to be an external
> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
> feeding the OSD1 VIU pixel input.
> This uses a weird "0x1000000" internal HW physical address on both
> sides to transfer the pixels.
>
> For Amlogic GXM, the supported pixel formats are the same as the normal
> linear OSD1 mode.
>
> On the other side, Amlogic added support for all AFBC v1.2 formats for
> the G12A AFBC integration.
>
> The initial RDMA implementation handles a single channel (over 8), triggered
> by the VSYNC irq and does not handle the RDMA irq.
>
> The RDMA will be usefull to reset and program the AFBC decoder unit
> on each vsync without involving the interrupt handler that can
> be masked for a long period of time, producing display glitches.
>
> For this we use the meson_rdma_writel_sync() which adds the register
> write tuple (VPU register offset and register value) to the RDMA buffer
> and write the value to the HW.
>
> When enabled, the RDMA is enabled to rewritte the same sequence at the
> next VSYNC event, until a new buffer is committed to the OSD plane.
>
> For testing, the only available AFBC buffer generation is the Android
> Yukawa Dvalin Android Mali blobs found at [1].
>
> Both SoCs has been tested using buffers generated under AOSP, but only
> G12A was tested using a runtime stream of AFBC buffers, GXM was only
> tested using static buffers loaded from files.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
