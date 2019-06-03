Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EF2335D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WPD+DAz8tHn3Qk8Jv2lVTdk1eeQxlOj8kTR5N5PSm2w=; b=FBZj4uYIqSaxMa
	l7yaETLUcmVhXtFT1V05lEMBzF79GhrlSdGanXhRSg9A18Ex93kpPR8OuExQVfCNUV8P1ARB5PNGp
	mB9aTizLFlXlta6yATa3b4+3CaqZw4zeA0qY5daiN/TNnZEnEq2PkAnSV3/isfZiDLWi+XpIJpOfc
	ol3NaB7EZL7Opfr8kFmmfmjty8DePW0M6/1JT3c/oZim9dyvBAgbSnQN3kXhYRWAGuWEpll0hLuTV
	Pv6TqamtfAYbvdzB9KFmPlXFHhnMG1C/WmRW7m6uoQGhmUP6jney/dssIWoCLnMmNAb2TxG4ve7CU
	4jT+w0IcAygYEBQyOpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqIe-0004Hj-NK; Mon, 03 Jun 2019 16:59:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqG9-0001Ai-J0; Mon, 03 Jun 2019 16:57:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 82DD527FDB2
From: Helen Koike <helen.koike@collabora.com>
To: dri-devel@lists.freedesktop.org,
	nicholas.kazlauskas@amd.com
Subject: [PATCH v4 0/5] drm: Fix fb changes for async updates
Date: Mon,  3 Jun 2019 13:56:05 -0300
Message-Id: <20190603165610.24614-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095634_377090_1D588021 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 daniel.vetter@ffwll.ch, linux-kernel@vger.kernel.org, eric@anholt.net,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, harry.wentland@amd.com,
 andrey.grodzovsky@amd.com, Daniel Vetter <daniel@ffwll.ch>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-msm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeykumar Sankaran <jsanka@codeaurora.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@google.com>,
 Sandy Huang <hjc@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>,
 Rob Clark <robdclark@gmail.com>, boris.brezillon@collabora.com,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I'm re-sending this series with the acked by in the msm patch and
updating the docs in the last patch, the rest is the same.

v3 link: https://patchwork.kernel.org/project/dri-devel/list/?series=91353

Thanks!
Helen

Changes in v4:
- add acked by tag
- update docs in atomic_async_update callback

Changes in v3:
- use swap() to swap old and new framebuffers in async_update
- get the reference to old_fb and set the worker after vop_plane_atomic_update()
- add a FIXME tag for when we have multiple fbs to be released when
vblank happens.
- update commit message
- Add Reviewed-by tags
- Add TODO in drm_atomic_helper_async_commit()

Changes in v2:
- added reviewed-by tag
- update CC stable and Fixes tag
- Added reviewed-by tag
- updated CC stable and Fixes tag
- Change the order of the patch in the series, add this as the last one.
- Add documentation
- s/ballanced/balanced

Helen Koike (5):
  drm/rockchip: fix fb references in async update
  drm/amd: fix fb references in async update
  drm/msm: fix fb references in async update
  drm/vc4: fix fb references in async update
  drm: don't block fb changes for async plane updates

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  3 +-
 drivers/gpu/drm/drm_atomic_helper.c           | 22 ++++----
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c    |  4 ++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 51 ++++++++++---------
 drivers/gpu/drm/vc4/vc4_plane.c               |  2 +-
 include/drm/drm_modeset_helper_vtables.h      |  8 +++
 6 files changed, 52 insertions(+), 38 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
