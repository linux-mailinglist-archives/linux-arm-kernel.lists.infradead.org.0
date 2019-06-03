Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E6A327B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 06:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5DNsBmejbEpeNT+PMJ3Zw1lKN8zqYQE/N53IuDb+qk=; b=pSj7ZUTAaI0r81
	Zc/i47o7c073pdBtJ4ukUWbSVw377nDLiWz2EbJ/+0pxC8yBdgUEjZjbG630zurW9uvYPhyF3teV4
	vWClYWYdTtS914raxzQ5DnUS8SE+bCwK7YT2yFEYsx7Rr7GeOQBYR0/rIuR3soclPtMWgfYINWTH0
	s6o6k4IVF4/da7KdpKM0u5fe2hMcWZfr6iK4vgcwjIcC03fut3x2BjF8ckjdxySc89oPtmyNex0RI
	j9bT/j+3Be3jgU3H4ZAWD1lGquG4nNDSd4Hzx70cAjs80jlYF1uy9yN7L3j4lGVfL2y3SRAGYom7K
	9yQlWZS3WwBx/2u4oKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXefu-0003SU-Ad; Mon, 03 Jun 2019 04:34:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefd-00034i-Q5
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 04:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3pFTY68CYf0vqkaIF9RkUPvim3fj+DjvxB3baTxp4Mk=; b=NCB3oif07HMc8rkvGu8vFGXX0P
 J2Qw5J9DhMJVpWlSin1j90j+8AAxQRLQGCK9PpYdgI3mTTXP/1l2Wk4GNzD8CnV3N2Fi7Zn0ZyB2Z
 Ba7sBTAZrmq56aJH+e8g7EUhELWN0d8mDYwgkoRc3bWDCR7dXsLvGsDCBtXvQzZYmNbzK8RKP4V7o
 dCgT0xDJkWbR28uYs4T53HQ28RC8jMmrlemig6d4HVRFiJ2M1irklH8H8WNoj4Css2YU5CVW8Sexz
 Qtq9TaO19aGJNAEQiPkBlnAc2sNTLFi1I4Q8zXQHIMc7yPBXRjLZJ/1zkZKzeq4MEswgmPLOR9Bqm
 o6cWt7AA==;
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefb-0000T9-3g
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 04:34:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so9842014pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 21:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3pFTY68CYf0vqkaIF9RkUPvim3fj+DjvxB3baTxp4Mk=;
 b=RQSvUzIgUKgIsNlQFm+7zwJeVC5MSGMQ7g3/DtHR16ldFiUtk0+JARXtgZwEjl9tbN
 9hWW1p5DfY6fy/aBLs4Yymn5h3QUKDGbkoEPEt1I/+q7XpVzAK46qrqE/1RGqPuPtlv2
 oTdErhd/k+QH1OsnOMAFqzaVQi6I8u9i9UvY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3pFTY68CYf0vqkaIF9RkUPvim3fj+DjvxB3baTxp4Mk=;
 b=GC4MoSijbKfVHmiBfy4oZJGkfDpJ7rqjuXjHe46AxM2hQ7FpFMpFYs3A7eeyKvIc5L
 2Lyr0z7CkCOxy+dHr9U3xNqKhlZ6owoaPcfaFSRLXm1UamT/HGSddCr/5zgCteZ65Uo4
 6HSg6OHoJ0fvOJ3r8UCK9lDy9WEo8ykQ338P/P0mWhjCNGsCzG2jnqaDmxpJTcLgJJj4
 NExlokUlngxxQog+5jf8AfzxRWODQMz1hk7noTXTocd2ToDcVxSlYx4/nYTaLaBf78n7
 mfMfS1qHodjk7++w7hTRAtz4ewnxvo16MjkE07oxDjLjlIXrukJ32A5wRoACHGDQ1s5q
 bM4Q==
X-Gm-Message-State: APjAAAVPnkPQkkCYr7Y4sPfX5pEAyoayZkvNsLcehXTqLuRKFUOFjnsE
 t6t3j/+ZtLWrNWpAjJt9R5GMyg==
X-Google-Smtp-Source: APXvYqzy0pOcm1foPAUC6fqZXlzM7mUcjUylak9ZglBCN1Q2GIU98tYWPiPis4kHfvZEn5RQOneLLw==
X-Received: by 2002:a17:90a:730b:: with SMTP id
 m11mr27194254pjk.89.1559536438112; 
 Sun, 02 Jun 2019 21:33:58 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id j23sm13509733pff.90.2019.06.02.21.33.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:57 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] ASoC: rockchip: rockchip-max98090: Add node for HDMI
Date: Mon,  3 Jun 2019 12:32:49 +0800
Message-Id: <20190603043251.226549-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003403_151893_A4A88995 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let user specify HDMI node so machine driver can use it to let codec
driver register callback on correct hdmi-notifier.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..dae57c14864e 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -7,6 +7,7 @@ Required properties:
   connected to the CODEC
 - rockchip,audio-codec: The phandle of the MAX98090 audio codec
 - rockchip,headset-codec: The phandle of Ext chip for jack detection
+- rockchip,hdmi: The phandle of HDMI node for HDMI jack detection
 
 Example:
 
@@ -16,4 +17,5 @@ sound {
 	rockchip,i2s-controller = <&i2s>;
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi= <&hdmi>;
 };
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
