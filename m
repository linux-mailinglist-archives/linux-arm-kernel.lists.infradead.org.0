Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871A316ADC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Na6v2rdyI9phCkd+iIBpIuZLUROLnP4+O/YN1GWFFyU=; b=Dq3EN35itTi4K7
	TMlM4my01o/vJCB3Vb03MQXnXIhHVIxaFpoMzQ5sRhyVlC3v6r5G+KfyZHMGJ6sy9NuKYs6Sw6Czn
	Lkh9dRE/jsIMSV83Xa/tfFdiJIJwFDYgryytMUEhLnBzhlsW85fEKfHfFIz1yGVoRT+Tag+7K82Ve
	IMh35Zhz1ZPcDwJRGXLtinvWt3PzVVxNRSlUjkE4wptAm9bOgUSOcNS6ggJaFYfjIgWWA4gbbW68l
	xHv6QV+PxMefvaOmmYVGpAgjLslwGtxc1bN6B6Cih3CsxRAaos5yLbvUVDebR6LxABfU7g/WUlGq2
	nlauoqUG1CqxCGzc7v0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hhy-0008Le-Eu; Mon, 24 Feb 2020 17:39:54 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhQ-00086L-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4ED395236B9;
 Mon, 24 Feb 2020 18:39:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ffxPlucRGbIH; Mon, 24 Feb 2020 18:39:09 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 03FBE5236BE;
 Mon, 24 Feb 2020 18:39:09 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 689AB5236B9;
 Mon, 24 Feb 2020 18:39:07 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/7] drm/sun4i: de2/de3 format fixes and updates
Date: Mon, 24 Feb 2020 18:38:54 +0100
Message-Id: <20200224173901.174016-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093920_609855_53EDB6CB 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jernej.skrabec@siol.net, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently VI layer code reported wrong formats for DE2 and DE3. First
three patches are fixes. Next two patches do code refactoring to remove
redundant information, which is already included elsewhere. Last two
patches are more cosmetic.

Note: It can be argued if patch 2 is really a fix. Consider that if only
patch 1 and 3 go into stable, wrong formats will be reported for DE3 VI
layers.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (7):
  drm/sun4i: de2/de3: Remove unsupported VI layer formats
  drm/sun4i: Add separate DE3 VI layer formats
  drm/sun4i: Fix DE2 VI layer format support
  drm/sun4i: de2: rgb field in de2 format struct is redundant
  drm/sun4i: de2: csc_mode in de2 format struct is mostly redundant
  drm/sun4i: de2: Don't return de2_fmt_info struct
  drm/sun4i: Sort includes in VI and UI layer code

 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 159 ++++++++++++-------------
 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  21 ++--
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c |  14 ++-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 106 ++++++++++++++---
 4 files changed, 183 insertions(+), 117 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
