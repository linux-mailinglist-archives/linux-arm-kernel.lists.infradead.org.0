Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDD5D750B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TtZJEP+HfPyrMudr+DhtG5kEwu9wDWa+pQIttcFmh58=; b=Wn5yOkefRV7UZ3
	canittPNmMxip8X2F/+eQhiaYEtlKAvjiYerFQPSWx4V1F49Nia4nra708WEQmsxbUOGeiDjCrjiC
	mXPUt/T87Cu39YjW1f61Id+30jyhBgvJ7XSyEoyiij54b1C5z9cQrF9+URU+fCKSTUOeKSJkXETJo
	IoJZ92mH7pRLzJ2HfoZj2rszyXpPene/X0LLqADs9NviuYOqx9DBbP9/xSW1P2WStpHHcbDIT9vWv
	eblS1OZM0c6jB4ylvd3z9EOAF4JY1My8WUPTl7VNIHBEjSJQ0CSi3DUfucgoh259FUgPk2B8YcXVZ
	XIGRBFOk0K45C3E2D8SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKL54-0003f3-1c; Tue, 15 Oct 2019 11:33:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKL4r-0003dC-9K
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:33:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so19909212wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 04:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uCg5k9ZAbrV4GjqeNyvcbYZv8xwqr0DzEBoAapcuUF4=;
 b=G3fnqlIagUgIzXqdwH5ad+9LBWcqrcYgJb30mqH/lJuHES/QADTo7Q79HHx38JFeTw
 iBIq6Rqp2ebm7x8t/kgaoAOp5et70+eGTzJos/0qlpHJndcaijozRSQnJL5Pb5SnNQQU
 76EUgt79m8OWixvlxO89x8wmWLHnZEU5HTqvG3Kx1S6J5F6MtbDiVsqaEh2P25bnBjQo
 1qCm1lmgxaAGgzHHdCzFXDtXxj8y9Fb4mYBGRibzBCvjCSpudY/a0KPWikrkqfo7SO1S
 Nfl6Yz5EX2IvwfF6VL7q8qnMU7bhNWi1lRgDZt45RxD56XeB/EerY8fY66o2NLxJt+pB
 NTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uCg5k9ZAbrV4GjqeNyvcbYZv8xwqr0DzEBoAapcuUF4=;
 b=ryls2bJz1VBpx/yf8kcIZ0dT0reYIeSsUvJ8noZLdYMWWeTyM1MpfmnRbEtubSZn/A
 mr4J0TPMsN/QGC4Z5U5B+0OjiS3ryT5IvAZPxYR6P2hKQfb4yfo6jiprLCG4OyI8JJmg
 SvEXomFU10vwHTczRg76nrypMH4JkI9jC5z46S9vb4TPXs+PxqsjuphbofrzXAW1c+rC
 xKnXH3XDgAOzJu56kj9Odz9w8+UeDrqnEgtF94tDr51B77YZoa8qq/v1HbNdkCDSPtGU
 UVK93HRdYJfcggA4LjrBhqmyw0J48b171bT+S7Y3W6t00rzznVQaFv+3T3COxc0stiLp
 l0nw==
X-Gm-Message-State: APjAAAWOWb15o7eYJzBA4HtN4CnWmj6q30R2XkD5riCPOpWz8FuVvEGZ
 58sRcjiIBPI+5goXNQ3BVWRboA==
X-Google-Smtp-Source: APXvYqyIEaSI5PuyJnBq1t2p/C0YZ4qVez2hBxOerZiqkWm523CK/Be1suSrot9c87mv9lo9+TH4/g==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr2446921wmj.6.1571139199425;
 Tue, 15 Oct 2019 04:33:19 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 63sm32395096wri.25.2019.10.15.04.33.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 04:33:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/3] drm/meson: implement RDMA for AFBC reset on vsync
Date: Tue, 15 Oct 2019 13:33:14 +0200
Message-Id: <20191015113317.8870-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_043321_458729_D01124DF 
X-CRM114-Status: GOOD (  11.17  )
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VPU embeds a "Register DMA" that can write a sequence of registers
on the VPU AHB bus, either manually or triggered by an internal IRQ
event like VSYNC or a line input counter.

The initial implementation handles a single channel (over 8), triggered
by the VSYNC irq and does not handle the RDMA irq.

The RDMA will be usefull to reset and program the AFBC decoder unit
on each vsync without involving the interrupt handler that can
be masked for a long period of time, producing display glitches.

For this we use the meson_rdma_writel_sync() which adds the register
write tuple (VPU register offset and register value) to the RDMA buffer
and write the value to the HW.

When enabled, the RDMA is enabled to rewritte the same sequence at the
next VSYNC event, until a new buffer is committed to the OSD plane.

The the Amlogic G12A is switched to RDMA, the Amlogic GXM Decoder
doesn't need a reset/reprogram at each vsync.

Neil Armstrong (3):
  drm/meson: add RDMA register bits defines
  drm/meson: add RDMA module driver
  drm/meson: use RDMA to reconfigure AFBC on vsync

 drivers/gpu/drm/meson/Makefile          |   2 +-
 drivers/gpu/drm/meson/meson_crtc.c      |  27 ++----
 drivers/gpu/drm/meson/meson_drv.c       |  14 ++-
 drivers/gpu/drm/meson/meson_drv.h       |   6 ++
 drivers/gpu/drm/meson/meson_osd_afbcd.c | 100 ++++++++++---------
 drivers/gpu/drm/meson/meson_rdma.c      | 123 ++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_rdma.h      |  20 ++++
 drivers/gpu/drm/meson/meson_registers.h |  48 +++++++++
 8 files changed, 273 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
