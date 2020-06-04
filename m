Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1901EE5F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5WeZrVnrstNoI6wbZZd6nNupyazUfxf6UIRiyuQTv2w=; b=aNgs+jA+6rrxM2
	tipX3kmLpGNukKbbF6uzhCMv0rVcGXT8E2rOgcmygNK3rU3jMwy2k27NZPCVPEn/6hBcYqRHKQ+6J
	4Qu55lqJDOIgg6vxKjf8F/e8tsXV5sM6QkkVseZusRUWriWsVi34mRgvTmwKm5roTO04vUfJCAUPQ
	PEESoaJcomtMQYNsNN8vFdjmu51F34Ro91+A7kqx9+8gZE4NgIDLYVjk7Gq1CM2OfPgrEj2AdzuPK
	Y9+e9SPy2qRbps/vP21hO+B8zZQ3CGFtcJOYOg/AGMzX43MURvUx/NfGY/DhXH2xHj9ZQQJY5ePBy
	sVEugA+4lCK9SN7TRg4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqJW-00014f-EW; Thu, 04 Jun 2020 13:53:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqJG-00011t-88
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:53:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so6184823wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNKgisTvCxKeIfzFNw79PawPgsdQpi+VTBw2eOrL7UI=;
 b=O51Osu4UdCOGnotGhmGHJ94XsvwJxmD+RL/BS27sj3XsP9eR4kHTb7INzvbmhlBvlN
 rkWYTnjyEYtr0YDzMY3DYmpmeBHD2VZQvLtyScigshpv1/y2n7nlH55NZ53DLwvzu8by
 F1ZhUQ3WBqgq9FXPVN5C5mTbOQ6NvqI0rcuRpD0nK/pH2TBrBdpobdxf3G3nRR1vekki
 iO3f9lHdG9jEFpKK4mFfiAuFO/Pa8ZBPE2z6kKu7JTDk6G+cEQaRzinD7/0foyg048Gh
 9khvPqsS5YZSCB+wa+8s2lk2PFqPmadl0+6QZSiJcMHWbBEI+8U71HcphuUVlhgucVKj
 mTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNKgisTvCxKeIfzFNw79PawPgsdQpi+VTBw2eOrL7UI=;
 b=SRElx/b/vE1EYn/RJXolujlwLqwjo9h5th2a6J+s2pGdbqkkxp8sWhXV+bgCwAg8ye
 dOz/eDdvrejSFpXwJSkPsQSv9sSHGnbsAmNzDFDlnrBKfWp6sQstI1+TcMvQN8TumkJU
 pSFAds85O0Q59dpAapJvgmzc70aUBcZ74GQC4mocRfm0GP6mVhUb6OhHy5XbMGN08SsT
 Swg+HwVjVZD1MzCt9xFtAK0/pvio9KviOTbmyvyUHaTqLmOEdQdWd68ODYLabz/wufF+
 10yZ4ULBE6tHXKw9rZwH5NSZc/cDbI+VpdQKozIw+dwdl3ThKT/LfzUBhIpT3nAbQeFb
 dhhA==
X-Gm-Message-State: AOAM530i5yx3ZvlOKo31koWkl5DBwcbCPwiL5yB7TRuXnFdCiHDUjCXD
 XN7cVkPW9tiQl7zvA+eq3WhIWw==
X-Google-Smtp-Source: ABdhPJxqdqJHN5Y5b9X1Q7kP0UxYnF1bBarO0Pdw4x0ipWE20qFJ7SzK27MiQOP21FgZk4r2/ND1+Q==
X-Received: by 2002:adf:e782:: with SMTP id n2mr4462910wrm.417.1591278807326; 
 Thu, 04 Jun 2020 06:53:27 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 i74sm8185599wri.49.2020.06.04.06.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:53:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: hverkuil-cisco@xs4all.nl
Subject: [PATCH 0/5] media: meson: vdec: Add support for compressed framebuffer
Date: Thu,  4 Jun 2020 15:53:12 +0200
Message-Id: <20200604135317.9235-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065330_339890_34984E69 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for compressed framebuffer while decoding VP9
8bit and 10bit streams.

First, it adds two generic Compressed Framebuffer pixel formats to be used
with a modifier when imported back in another subsystem like DRM/KMS.

These are aligned with the DRM_FORMAT_YUV420_8BIT and DRM_FORMAT_YUV420_10BIT
used to describe the underlying compressed buffers used for ARM Framebuffer
Compression. In the Amlogic case, the compression is different but the
underlying buffer components is the same.

Then, in order to handle Compressed Framebuffer support, we need to handle
the switch between 8bit and 10bit frame output.
Add the necessary changes to decode VP9 8bit and 10bit streams into
compressed buffers to be imported back into DRM/KMS using a modifier.

Finally, add the necessary to add support for negociating the compressed buffer
pixel format with the V4L2 M2M consumer, and allocating the right
buffers in this case.

Until a proper mechanism exists to pass a modifier along the pixel format,
only the generic V4L2_PIX_FMT_YUV420_8BIT and V4L2_PIX_FMT_YUV420_10BIT
format are passed in v4l2_pix_format_mplane struct for consumer.

Maxime Jourdan (5):
  media: videodev2: add Compressed Framebuffer pixel formats
  media: meson: vdec: handle bitdepth on source change
  media: meson: vdec: update compressed buffer helpers
  media: meson: vdec: add support for compressed output for VP9 decoder
  media: meson: vdec: handle compressed output pixel format negociation
    with consumer

 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
 drivers/staging/media/meson/vdec/codec_h264.c |   3 +-
 .../media/meson/vdec/codec_hevc_common.c      | 133 +++++++-----------
 .../media/meson/vdec/codec_hevc_common.h      |  13 +-
 drivers/staging/media/meson/vdec/codec_vp9.c  |  29 ++--
 drivers/staging/media/meson/vdec/vdec.c       |  46 ++++++
 drivers/staging/media/meson/vdec/vdec.h       |   4 +
 .../staging/media/meson/vdec/vdec_helpers.c   |  68 +++++++--
 .../staging/media/meson/vdec/vdec_helpers.h   |  11 +-
 .../staging/media/meson/vdec/vdec_platform.c  |   9 +-
 include/uapi/linux/videodev2.h                |   9 ++
 11 files changed, 203 insertions(+), 124 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
