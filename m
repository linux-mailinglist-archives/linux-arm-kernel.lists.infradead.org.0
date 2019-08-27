Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B869E50C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BXSuqz7Tli6xqwEAWUvVXOIS8geJErqk9Jmg+4iFlzo=; b=bZVK0Zc36B+l2V
	g/Cvxh1fcYQAf6ZAV8X+1kxGrMeWQ6qMkyu0v8jaaq/xzlkGNg2p8ODymMHC3MNPAahETAeYms2/D
	9vnfyv0ocPGAqW6w2nkbgQ5/7OoUy7lnf/AGZ+cRffyQPqESni2vnuBrtqeD2TrEugmt3fNN+OefW
	ZsI2BBMc4HJkLBzUrFnsMNYxDGMGv0KtGjFl3dwzhOzQh2cQ0VmcZR9VZIlC9p/7p+8Ddiw+Bmpet
	hZCqC13fFa+ZIDx3qkRyDl6/d9yTPVwxAce/hJeUXxOhFZDHaV8JBJhzKFlZ6n1kq/n8wAJ9n/+vH
	h5WbNqyuc4+cVWPrODUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YFZ-00010D-MN; Tue, 27 Aug 2019 09:58:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YFA-0000wV-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:58:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so2388482wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KtIIzwTDR1B8HezjMZLd0UUrjubJe6Pa7zbd04NstpY=;
 b=zAQ2uvSvJSVmWXzSLfN3dfzl/n5RCwFZYCTgk+n/eg1RDaVnKT69s8WDBwU+9jvvNr
 Zcosf/Sm886GfP1In/JAYTq0mTJA5pJq8/H6r8T0TGhOtRm6eaXGSobKTpUikVR6xOzo
 wecGUL4VzblD5iC96+CMpyhOrd2mh3EkQoIpR1P8ZD45ncg76XgjkinMPqym/E6+JmkR
 bqvvNZ/jlk/eMuacEWTOZuUW4ko4sTaXRtCyv82qgtMfVKWNz5FSYSgsaHlg1H01d2wo
 tUN476WU+HcumjeDsmXOuCodvBUolzMK1RnBxrYs3EyEVAp8H9nndkFhicDEZ9WYRtLC
 0nxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KtIIzwTDR1B8HezjMZLd0UUrjubJe6Pa7zbd04NstpY=;
 b=VKnruQIkUiQpSl+rpmaxS22Sd8KyntPwVpbewaZOseaG6sLKzzvmJoivi7r5MeEOXH
 gQUjWsQ8RhYsmVY9/j2iqKDCxbAfW8H/34G2j73spJ3v5nTRMksgsALKml9+SiSxyzHQ
 hPj12TvVimf5EuQsfdTseZl/XxPaHANRyrq8UnR7Yw2YZucL0T5YUqB/1mMU3pmksJ0n
 MYHz2xviXVfUKK6Ys+unDcXIqIcugwfeC2WMs7o5J9C/1fWLnLQG8z4oA5O8p861WOem
 bznV/e06PFsC7UtiAPHtlvlUqAFv2RSFiUhSpx9f0dlzLLmdmTS/W/U1NG1iOcuybgYY
 C+Yg==
X-Gm-Message-State: APjAAAVekhvhf3EAIBJs5U5zPck6bQ+t/GvoUW1+7B3l0IQv/4VC9xQX
 hqICpMginJM3jFdMhPxHGXqE6A==
X-Google-Smtp-Source: APXvYqxtnYf1tAwNYwh4f/eAjThvqPmtKVp37xwzQWjJOeB8wQJpDTM2QVLcJ49DhGpTADsj+rGFpA==
X-Received: by 2002:a1c:4383:: with SMTP id q125mr9198967wma.16.1566899907058; 
 Tue, 27 Aug 2019 02:58:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m6sm10862084wrq.95.2019.08.27.02.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 02:58:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/2] drm/meson: add resume/suspend hooks
Date: Tue, 27 Aug 2019 11:58:23 +0200
Message-Id: <20190827095825.21015-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025828_910534_DE2A77C6 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: khilman@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie adds the resume/suspend hooks in the Amlogic Meson VPU main driver
and the DW-HDMI Glue driver to correctly save state and disable HW before
suspend, and succesfully re-init the HW to recover functionnal display
after resume.

This serie has been tested on Amlogic G12A based SEI510 board, using
the newly accepted VRTC driver and the rtcwake utility.

Neil Armstrong (2):
  drm/meson: dw_hdmi: add resume/suspend hooks
  drm/meson: add resume/suspend hooks

 drivers/gpu/drm/meson/meson_drv.c     |  32 ++++++++
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 110 ++++++++++++++++++--------
 2 files changed, 108 insertions(+), 34 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
