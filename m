Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F5AD263A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sdZSO3k9l9MCFJ+y+n7mYZ9G28If5OZZibMfiPbsB5Y=; b=F9J4S+0soHL4bB
	dtxJrWjmFbC5TZIhs79OiDnm2u5cCw3vrkqs3/OZFBwfRzoFtZ4SBOJ21JnjBikuR+Cjq1b7YzBLF
	6yA70RSd3qzFa5L1emloSIhnv/HF/PElKAmnzqJgu6x9nIL8ZPHG+ixylP3Yu+daNPd1M+p54KyoO
	Tpy9IT6RIVrKDCFJxFZO6jsTjhvWZpIaalKqBQTyOoCygGvNKt2w8pGpUZm8cvuHcBiezHbcLeZoU
	oH75nCEnMldl+VQnB7jYPL6W/EL+VungqvJ0h063WZPiWkV8o5wGL2lKpr4ZprnnUjw8T7duUS7Yn
	nb439OFPsytx1qYyuWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUhj-00062J-Je; Thu, 10 Oct 2019 09:25:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUhQ-0005xy-Co
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:25:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so5975923wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBZJziBCP0Io8mOtg7LNdgKGNqQTzy9M4M3Ibpe8gWQ=;
 b=zyIYpwV78KenVxkg75EKDfnK4bllbOhdikspSpe25/Sqh8qsrZuw0eOnU8Obd0Z6TN
 lBUHJM0Sica6r6dTkw19utZUSwWwIq5rNa1M7QuX1yUKgcZiC+OO+aSRAuCbZ2DNVe6X
 A8NE0KEmWx9hnzN6ixgCvGF8RfrtFH4dU8xQ+WdRpNa+IzKh+qTyN+qkYDhsAdicFTv/
 zuQ1pem7a12ipH3crQ7iCrLnNvuAZUKTlWUNwQNuGlvmelb3AmjlHWCe/ez8yK9jpCOn
 bRRbvvQfX8RzBJLUJxWMGIVgGyRNQN1uz4myBlT+De/jf50kiitn32n79gQXwrcnPdcz
 Qnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBZJziBCP0Io8mOtg7LNdgKGNqQTzy9M4M3Ibpe8gWQ=;
 b=p9XxwpLAQr/ga3Nd3M/2HjC65fjWxETLSXkXoZ1F/j/f6MmpH7OIkkTD9+7HBhzWRQ
 LTQbBFFKB/JK1B0k+/7hRLLewVDTQvA2TAO6S8NonqrMzBD0dejYpBowo6OZ8Xgg7q8C
 RBqeHFB7dKB/VZIcwpc2ua8+QyJNK9vW6pxKOrwGO/bUYbYN1DwGEYYtphH25X7QfEqP
 fvUXW6oDIiKLNdUe65AyPYXtHiFlI5Sjd+2BUmy8XUtgxsRL+j7X6yM9VEYooA+YRzKj
 Q0X00JT/lFcueUv9CAm9Eaco9RihRrw9JV39KLdXyB94fSoUBNoWWFtLekBliUvL97Vi
 Nmqg==
X-Gm-Message-State: APjAAAWrLIKrIYBmcymvI5noBbc0vFTs7X62NZgXZbiimFPGpG+0gjkQ
 6huKKyyEc9W1r4sKAqCxs0CmOIISqtZENg==
X-Google-Smtp-Source: APXvYqwMySxHV38oK6rqXMAyhha5lJA8caNfQ4pkjOaluJZgT5JIoYWO/VrHE7PRQ9rwHcIUWeIVuQ==
X-Received: by 2002:a7b:caea:: with SMTP id t10mr7189361wml.38.1570699529796; 
 Thu, 10 Oct 2019 02:25:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s10sm8373770wmf.48.2019.10.10.02.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 02:25:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/7] drm/meson: add AFBC support
Date: Thu, 10 Oct 2019 11:25:19 +0200
Message-Id: <20191010092526.10419-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_022532_492248_14AE0364 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the ARM Framebuffer Compression decoders found
in the Amlogic GXM and G12A SoCs.

The Amlogic GXM and G12A AFBC decoder are totally different, the GXM only
handling only the AFBC v1.0 modes and the G12A decoder handling the
AFBC v1.2 modes.

The G12A AFBC decoder is an external IP integrated in the video pipeline,
and the GXM AFBC decoder seems to the an Amlogic custom decoder more
tighly integrated in the video pipeline.

The GXM AFBC decoder can handle only one AFBC plane for 2 available
OSD planes available in HW, and the G12A AFBC decoder can handle up
to 4 AFBC planes for up to 3 OSD planes available in HW.

The Amlogic GXM supports 16x16 SPARSE and 16x16 SPLIT AFBC buffers up
to 4k.

On the other side, for G12A SPLIT is mandatory in 16x16 block mode, but
for 4k modes 32x8+SPLIT AFBC buffers is manadatory for performances reasons.

The Amlogic GXM and G12A AFBC decoders are integrated very differently.

The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.

On the other side, the Amlogic G12A AFBC decoder seems to be an external
IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
feeding the OSD1 VIU pixel input.
This uses a weird "0x1000000" internal HW physical address on both
sides to transfer the pixels.

For Amlogic GXM, the supported pixel formats are the same as the normal
linear OSD1 mode.

On the other side, Amlogic added support for all AFBC v1.2 formats for
the G12A AFBC integration.

For testing, the only available AFBC buffer generation is the Android
Yukawa Dvalin Android Mali blobs found at [1].

Both SoCs has been tested using buffers generated under AOSP, but only
G12A was tested using a runtime stream of AFBC buffers, GXM was only
tested using static buffers loaded from files.

[1] https://android.googlesource.com/device/amlogic/yukawa/+/refs/heads/master/gpu/

Neil Armstrong (7):
  drm/meson: add AFBC decoder registers for GXM and G12A
  drm/meson: store the framebuffer width for plane commit
  drm/meson: Add AFBCD module driver
  drm/meson: plane: add support for AFBC mode for OSD1 plane
  drm/meson: viu: add AFBC modules routing functions
  drm/meson: hold 32 lines after vsync to give time for AFBC start
  drm/meson: crtc: add OSD1 plane AFBC commit

 drivers/gpu/drm/meson/Makefile          |   1 +
 drivers/gpu/drm/meson/meson_crtc.c      |  81 +++++-
 drivers/gpu/drm/meson/meson_drv.c       |  38 ++-
 drivers/gpu/drm/meson/meson_drv.h       |  17 ++
 drivers/gpu/drm/meson/meson_osd_afbcd.c | 370 ++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_osd_afbcd.h |  28 ++
 drivers/gpu/drm/meson/meson_plane.c     | 216 ++++++++++++--
 drivers/gpu/drm/meson/meson_registers.h |  61 ++++
 drivers/gpu/drm/meson/meson_viu.c       |  54 +++-
 drivers/gpu/drm/meson/meson_viu.h       |  19 ++
 10 files changed, 842 insertions(+), 43 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.c
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
