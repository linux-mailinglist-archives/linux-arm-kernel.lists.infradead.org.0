Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB78035ED1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ogcCVo8PNNFHVLOErSy863r7nNDhwPzy8krjJhduVCU=; b=F0fv6cjt1JmCCG
	Lweyu8EhkFyCSCvaF4pLi5cq+irDXKjuGsGcWfTK/7mBZnQIJ+cDwuk9fh3o8sMFu448VTE3sI86J
	Cp3Mm4ElmJwcNO44mDWKI6Wy/sgzNQ1CMCuu5TOP4J2bK/z+Kwbke9HpXNzz0MxdM3on8DzIXYgLJ
	QXygPG8zMKTBSuxq9Ksbbb3fngHK5sQr+vOxkqnc18TJdiqyTfUHtansHpmwYPfH8zrGDStoF9gNx
	G+vg9J6aOThgyeY0RAcvpn2qDvajnePjRWS75V21k/5kuhCTDD8SfCEEos7Mhmc3v95s5PTD/7Gpw
	QZeEV8SMh/USV8MDH/6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWf4-0007de-D4; Wed, 05 Jun 2019 14:13:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWew-0007c1-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:12:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so19629703wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 07:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AycgXSGYqUAjsITGUjnhQpci5ICfquB/aTQgTSexg/Y=;
 b=SAmYe+PChAGdpz3sq/wSWM30WEDKfSGzSN7aCEWwBeVVYwBTaYCsR8tqJy2F6mPhTx
 UEEXrL7JujXQ6vElMFOuTPhlaA+BpBXz+2W1+aalkZh0k6taPWsHfWnYHGk7aAxSEbhT
 LAjZNa1A1Fh6k9NaRNQGCpDiwd+CFSbmT8UB45Ry5bQjWLFCt2M1NcfMwMDX2rvdSo+P
 GHZ/6io8pmjRFt1qxRcfPHuUZCj+xdzR+vt0Mb5u14YyACdNpab0HYjEGCpcJyJlwyAS
 ZpWMHVaNsjXy5tt7nssu3TvOObOZt70/I6DejgUIR5PHEzNv5qHOEyq0RoZRM79oLKyh
 UOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AycgXSGYqUAjsITGUjnhQpci5ICfquB/aTQgTSexg/Y=;
 b=UZaqVs4Vo31lHW/YjYa48ssILGktY013qT2DnSXUpwzc/jVwpbz3IrjsWIXrpC6ZQT
 LZBmZbVF1vdRhYh19FPQPt1KvQCS0IUL+wodr5qp9sXHiklaB+BuoO0SsAfCn5hO5vjH
 7GhMlHgVJSulVKVBt3pGyShXlnH+D50vJsqtg7JHba28VRB36nS0zc+oF6bRuDFXjmuz
 u6uOqqRXMtEGluJ/ngNtuLOCnqXEuPBJD/53pljfOgymQHKUBNi0s0hkziioILDlIN39
 1Hs5+IyETE+E2XYNmbcI/uepBiJlK0RX/fUQVMIWH/MNIESFjcFEss4Z0U86MwQlLdu6
 tZlA==
X-Gm-Message-State: APjAAAUn1ZJjUOxYCrtI19L8QdXY3t1VTCzIPLAjRnm0rWKZ3agTHn2e
 RMKw2+IPVDalBMRJkofCHmyOYOo1acPkEw==
X-Google-Smtp-Source: APXvYqwt/qL/+dVCADHJ7VzKOX6wFacIr8smg4S+3JxBM+1fYpsjKCJgyKEX+SxU7TlspnyF/Abntg==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr12845013wrw.138.1559743976264; 
 Wed, 05 Jun 2019 07:12:56 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s8sm36292546wra.55.2019.06.05.07.12.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 07:12:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/2] drm/meson: fix primary plane disabling
Date: Wed,  5 Jun 2019 16:12:51 +0200
Message-Id: <20190605141253.24165-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_071258_245686_1C30BBD5 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The primary plane disabling logic is broken on all supported Amlogic
SoCs, and the G12A primary plane disable register write is wrong.

This patchset solves thse issues, and has been tested with the Baylibre
ffmpeg-drm tool and modetest.

Neil Armstrong (2):
  drm/meson: fix primary plane disabling
  drm/meson: fix G12A primary plane disabling

 drivers/gpu/drm/meson/meson_crtc.c  | 6 ++----
 drivers/gpu/drm/meson/meson_plane.c | 8 +++++---
 drivers/gpu/drm/meson/meson_viu.c   | 3 +--
 3 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
