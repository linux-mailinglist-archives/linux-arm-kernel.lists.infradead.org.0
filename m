Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816A0191C84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 23:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlTMezWVhvgnJpe0kjCeS6erpZNs0nxPGl515qbrWLM=; b=BD6KhpE6He2uHc
	HC7iD+Xx0Eb9QR6M9IzMipPjGx3kb/z2AI3XHeA7PG1BaLfAY8uV82YS2G0zMft+hkuaQu7jj5BB6
	aRRLunGoqe6gRMJFsmPb2NSH3hRiCC706U/YKdTyShTLQfj59I+22bnWP8keWy7zpI9w0ewhp+Luk
	le/Jqg/YmjP8O3QR2yS+tHkZkrAOCljJ8NiWvwOyGxMT43asWFf4gkBw9h9DBJRLxqkEkoLjXzhSw
	3389qV3Jnrb0Lq4w1Q6O+NumlaecA0ugNmrAkRrlaMJaP2BI0GNwhSdEuswFiHkEuJu2Ad2xZxKWb
	eSfkflsp+6adWbDKh6hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrhu-0007W8-Lj; Tue, 24 Mar 2020 22:07:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrhj-0007UJ-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 22:07:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id d5so564778wrn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 15:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=YusM14BzJIMDSHzMH5zdQjw9hhEPT3JITrKIkp7xEiM=;
 b=U5oJgwJXEzInJbCIIllHCyQtoy/blNO5KYVVGHN+8SR+VKjULgmNBy/lH8MVbbmlkL
 GPBooUKVyWq7vjqhlzRUKcA01z8NTBrvLB+e98zv7ais1jXQoW3t4CQ7mxYkL+gTucey
 2OB3m6uVI+l05dzTf7V0rJFPEpe9siDmry3VRO/wNAo4QVPTOvgDhTpNnhIWUAcDQoGB
 QgqQ5eLI88p3/+p2/3h/WuZ+UPfBhCOmbPHIGFirtt1E9h4DRCjG1StIjOr5JdLZAwfA
 +dIjEKOIgvfNhulzvawbwxR40c1oj51Y+fWYB4rHjY9Ui2T25TTQzDUWifCnWaF8VbJ3
 Slhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YusM14BzJIMDSHzMH5zdQjw9hhEPT3JITrKIkp7xEiM=;
 b=PfwNfHYhvyeSivQiXuwx45x1zJn70fwPP+HTSvEUvfUSdYiXY0JQSzG7x1soN0Dv7J
 3FFm1B/M1U/8hQ3SfVoNJ/jIUt1mb8iLXz+LHwPK5HvXclRaUzrwI5uPhj9+f3XymkIG
 MCG8piirZL5ob3CXClCAoE3EEFZA41Einitaems/P+Zk1jY5JEHbj31ZpTNjOkTPxSun
 GlaGJSe96p11PDtm9zJXS0XGLgMKCRklGAplk01PWp8uNGojUa7H4rRQKHr13UjrFZ9E
 gP5F6pH56gNpGZlNk9QMjM/KVhQDByTWEk4i72xN1jUumlyAUTwZd/TZuNieIBhI8TVe
 vVOQ==
X-Gm-Message-State: ANhLgQ0AvCd4EQBUeELrk19oHAoTEPsKpesuE3VZYWh40JOSwDDvvnbx
 heZxtWZ9l56f4mSMDJ3B9K3r3A==
X-Google-Smtp-Source: ADFU+vuSxXw25QUR0nIAb5OLmIU6jTi7EWOtLxakEApqVuvh84HPZknVnAkiaJ2bxtodhoIEBc76bQ==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr32380863wrv.92.1585087641149; 
 Tue, 24 Mar 2020 15:07:21 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id v11sm11963482wrm.43.2020.03.24.15.07.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Mar 2020 15:07:20 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/7] drm/meson: add support for Amlogic Video FBC
In-Reply-To: <20200324142016.31824-1-narmstrong@baylibre.com>
References: <20200324142016.31824-1-narmstrong@baylibre.com>
Date: Tue, 24 Mar 2020 15:07:17 -0700
Message-ID: <7hsghx2yqy.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_150723_196742_1A7CE5EA 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, ppaalanen@gmail.com,
 linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Amlogic uses a proprietary lossless image compression protocol and format
> for their hardware video codec accelerators, either video decoders or
> video input encoders.
>
> It considerably reduces memory bandwidth while writing and reading
> frames in memory.
>
> The underlying storage is considered to be 3 components, 8bit or 10-bit
> per component, YCbCr 420, single plane :
> - DRM_FORMAT_YUV420_8BIT
> - DRM_FORMAT_YUV420_10BIT
>
> This modifier will be notably added to DMA-BUF frames imported from the V4L2
> Amlogic VDEC decoder.
>
> At least two layout are supported :
> - Basic: composed of a body and a header
> - Scatter: the buffer is filled with a IOMMU scatter table referring
>   to the encoder current memory layout. This mode if more efficient in terms
>   of memory allocation but frames are not dumpable and only valid during until
>   the buffer is freed and back in control of the encoder
>
> At least two options are supported :
> - Memory saving: when the pixel bpp is 8b, the size of the superblock can
>   be reduced, thus saving memory.
>
> This serie adds the missing register, updated the FBC decoder registers
> content to be committed by the crtc code.
>
> The Amlogic FBC has been tested with compressed content from the Amlogic
> HW VP9 decoder on S905X (GXL), S905D2 (G12A) and S905X3 (SM1) in 8bit
> (Scatter+Mem Saving on G12A/SM1, Mem Saving on GXL) and 10bit
> (Scatter on G12A/SM1, default on GXL).

Tested on meson-sm1-sei610 (VP9 60fps content).

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
