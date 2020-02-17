Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DADC160888
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C7lkRNwljoDgTDXNvVIRzKq/G54YVzPQNohuvsjPBeQ=; b=OufC5mcypjUw9E
	n/tFZ9K8JoA4bPINjGoSI/55qQCNoioCXc7OcJu6Y4SV26ruaN+ei0Ae3U9D0qXdF9kk1mBkaUdRq
	L9zGLeRNAtwJ7m0ZSJuB+yNLqukf7y5UAkh0XheEx+mlIegPnHW2sD+tJhIxI5VKIiP/KRXppNLGh
	DzEb7YhqrTvtLXfCyuV1iU1bYj+GSjNyRaKefflXMj2ENDl4PNcB/gPEUtL42Ydmrd1LWCJGqd+qy
	FDPwi39ELE6PQuz9o2MLPwSzvoEGQ63uNBUAZVja6WK2P1T2yEHdAez5DBBG/be9oypEo5WbJxnW3
	6F7LvigrPTdUvX4fzo0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3WuI-0002iZ-Ei; Mon, 17 Feb 2020 03:17:14 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Wu8-0002hR-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:17:05 +0000
Received: by mail-pg1-x54a.google.com with SMTP id h21so10825872pgl.19
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=95LDy22BpOxyIQvBk6FRPJlH91thVepwqVtwc6u1oGw=;
 b=nEeqMrk6uvG7rmPyXEGMSsIzelMz2dF99i37OZljcuo4oh7xZZoesAk4KrAQMOsWWY
 dTXreQy8BM9DKwR58wY7FRf4V9otbgQ2XYeTYDnHZE5mwrwLwuzImNlHIxOYMJTELfpn
 Oj3mN6jy/gx0BWtD1qG2u+X3A/guxcA70lSFPD9ekQq7rxSFDroFkBkLCEB23lH4+s+Q
 z9csLL3pxzo89k/O1pFjcwy9Wsr5bFBxD1GgMiWnQ4CKwXX9VjrgXroTSSEhWGrFgWCn
 A8/mcR4NzEWuyhlTwVoQ1RUK7TvfpCEUgR7ilK/luqlKNWo5sZacMLWsquJBcfmQt92V
 iirw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=95LDy22BpOxyIQvBk6FRPJlH91thVepwqVtwc6u1oGw=;
 b=uh6eZGdB0OmUU5jwk2fCbEpOKDadCzgZ/MPwE28uLO2KHiStfBImAt1jgMFfBUDH46
 lbp2PowxYchWrQkKQhuJDBoEIrob0SR3GpQTbDUrdrDOiMKZyM6ZEzY+7RAz/TWJbPtG
 wtb3orJAD/aO4yJ+M5Yg5ZxrgiLHMdbZjYgG+Eax0xgfHKvrduPe3dznuI+qbDGUWJVT
 NdCSgPIA3qg5FkHCxve3lGwqSKl7u2zpUnpaDEBTuMtFKKJBKTm36nzMcN+T6Ti0fWyQ
 iDnfp7d4S1TpQqRMwUf1rKzMTsRg9j6PyIHmt0zq51cyPvjG/wcJLM3NMIBPxLqPz4DE
 O4JA==
X-Gm-Message-State: APjAAAXcGiwGHX0mkMj8mptwViUVpkEZVtMsZj8Oe8/ypX2xRtzsC8iR
 eGnxxigMt8FaA6LrexVHvry5fp0obsQz
X-Google-Smtp-Source: APXvYqxBjslw8uxUiWz+4Eukc1k6XyGzGLU0KOA8j+kAfZKXNmE12yvV1aiYrnwpHrjkFRt+J4989fLX4IEC
X-Received: by 2002:a65:4c82:: with SMTP id m2mr15138678pgt.432.1581909421205; 
 Sun, 16 Feb 2020 19:17:01 -0800 (PST)
Date: Mon, 17 Feb 2020 11:16:51 +0800
Message-Id: <20200217031653.52345-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 0/2] ASoC hdmi-codec: fix HDMI jack reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_191704_150247_3BAC43BD 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With proper unbinding audio components and inserting the HDMI external
display, kernel crashes as the following messages:

Unable to handle kernel NULL pointer dereference at virtual address ...
[snip]
Call trace:
 plugged_cb+0x1c/0x74
 mtk_hdmi_update_plugged_status+0x48/0x6c
 hdmi_conn_detect+0x1c/0x28
 drm_helper_probe_detect+0x110/0x170
 drm_helper_probe_single_connector_modes+0xd4/0x608
 drm_mode_getconnector+0x1e8/0x418

The 1st patch fixes the crash by notifying hdmi-codec's consumers to not
report jack status anymore when component removing.

The 2nd patch fixes race condition in mediatek/mtk_hdmi.c.

Changes from v1:
(https://patchwork.kernel.org/patch/11379979/)
- added the 1st patch
- use mutex to protect plugged_cb and codec_dev in 2nd patch

Tzung-Bi Shih (2):
  ASoC: hdmi-codec: set plugged_cb to NULL when component removing
  drm/mediatek: fix race condition for HDMI jack status reporting

 drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++++++-
 sound/soc/codecs/hdmi-codec.c       | 10 ++++++++++
 2 files changed, 20 insertions(+), 1 deletion(-)

-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
