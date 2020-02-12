Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C56E15A7DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OGVlS+gGSPLiDXCn7QdL4/Gpr5bLKu9vjn6UviWilJc=; b=mrc3qekDiQ5pVa
	LPNLYQaCxZkLZ8jVYO6neI6Xu4xOTqHgkd1dL2+o6rxIKgwIxzdlHropt/UuKORtv43nbVskb5iwI
	WfXmtI0+9CTVJ1jmNIo2JW64S0TGJd1ZBc9+aIxhGDWgJtQQg3eYHwfD6Q1UX+a0DbZg0hW97Wjc9
	2+aRt2ZDjnD23HHChgoHtVZzq+zCcMAZFA7HJpBR/omUPHSktl7VO4Jq96fESygOtVsQIhIp5S7aT
	nQYZglNz2BCY16yGiWhSoQB++jK6uPtp1fLP01Qui+jXeBaKlZ41rQ4ZChujcb1ZhoTejjoutYNNM
	JwbRAPS2D+GkDnpkQseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qD4-00037s-91; Wed, 12 Feb 2020 11:29:38 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qCx-00037F-BM
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:29:32 +0000
Received: by mail-vk1-xa49.google.com with SMTP id u7so563165vkb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 03:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=SoC6rVFw6F86jiDloCCVTNvG0+gKemeB0EmmXCP7Dqg=;
 b=nyH6pgf9J7jaOR4zodSFCo3vHMcfatUXwv5n7EHIEZbmRrQN+0sIsCn6NSi7ItZBzY
 D/cMkzBlGf5EtGq2wYbkshowisriEzSCbb1Fm+rGXDC5UwWt9g+6IITPIUDddcapovlT
 RjvkKv2xZQ9ShYTeIG2lniDAvvyhIq3sujIr03QpCMcmFtm2dS+v0iTr5Hb04MZy5H6P
 IZyVwIakftF3kEqIS9c9cSzlS7kay0muLEipZmyxcWeu4c/R+r1Py+bHs8wRgHgnpeh8
 6YYFhX3MntuPRW9adOTAk6Ng43es7I7dTb03xVA9sjLDnbA+gp+D7ibFk9xIFeZi60w1
 Icdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=SoC6rVFw6F86jiDloCCVTNvG0+gKemeB0EmmXCP7Dqg=;
 b=i4YmkuaQCwSBm1gXDbLv9fzIyn3HlQTW4YygKVrngBc+l7xSJrv59bwMO8jjsC/Vre
 cLgFMk+UXVqvJggJG54aZIzGlPP1FgImZgBqkzBquYHvpK2aGxv52rJlJYvzyXR2CTgk
 KM8lQVbzZqxEQJdecS74hrQ3kpCYGghHMeW8QWRG32TZy+Ou6Hxw8clVTVgR6fzifu26
 kSpqThQ2dlAAIWOxzigbEbIJYZAAfk6Bxbh7H4+FqrQ4RDREaOzrT/HyADbNsU2kAcgT
 YdGanaAyDVCxfL5PQ/H/rSZ6gTcbSFVEE5u0e4AA2uJxLbE2tcBhQtzItUklbqREegpo
 iBIQ==
X-Gm-Message-State: APjAAAWHeONAj3LHCYgDKXWdpe2xzxfsgWS46/QZmgl6J9x3lPXkSfsg
 7BAELN9WDd43C1Y6cPS+2FarYVpueZC1
X-Google-Smtp-Source: APXvYqwyE18TjD5fW1MmWZFJv3Wb2a8JX+p8pSY+ifSY8r0QabHqn8yasFBmFMDQqG/e+oN4hNYjpMz/g3u3
X-Received: by 2002:a1f:328a:: with SMTP id y132mr7449492vky.60.1581506968242; 
 Wed, 12 Feb 2020 03:29:28 -0800 (PST)
Date: Wed, 12 Feb 2020 19:29:16 +0800
Message-Id: <20200212192707.PATCH.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] drm/mediatek: fix race condition of plugged_cb and codec_dev
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_032931_415522_B3C6DE07 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

hdmi_conn_detect and mtk_hdmi_audio_hook_plugged_cb woule be called
by different threads.  plugged_cb and codec_dev are in danger of race
condition.

Fixes by:
- Checks NULLs first.
- Uses WRITE_ONCE() to prevent store tearing (i.e. write to plugged_cb
  after codec_dev).
- Uses codec_dev as a signal to report HDMI jack status.

The patch intends to not use mutex to protect the shared variables.
In runtime, mtk_hdmi_audio_hook_plugged_cb would be called only once
if no one rebinds the sound card.  In contrast, hdmi_conn_detect could
be called multiple times.  Uses a mutex within hdmi_conn_detect calling
path is a waste (no lock contention).

Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 03aeb73005ef..746567c91bb7 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1201,7 +1201,7 @@ mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
 {
 	bool connected = mtk_cec_hpd_high(hdmi->cec_dev);
 
-	if (hdmi->plugged_cb && hdmi->codec_dev)
+	if (hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, connected);
 
 	return connected ?
@@ -1669,8 +1669,12 @@ static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
 {
 	struct mtk_hdmi *hdmi = data;
 
-	hdmi->plugged_cb = fn;
-	hdmi->codec_dev = codec_dev;
+	if (!fn || !codec_dev)
+		return -EINVAL;
+
+	/* Use WRITE_ONCE() to prevent store tearing. */
+	WRITE_ONCE(hdmi->plugged_cb, fn);
+	WRITE_ONCE(hdmi->codec_dev, codec_dev);
 	mtk_hdmi_update_plugged_status(hdmi);
 
 	return 0;
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
