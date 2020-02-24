Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC1C16A258
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEzsxCO3tkK5ZHU/zYx+ZpQYOI9YXMDKYrHjpoMwwuk=; b=a39EdTsdCO8F1t
	kObVcaAgtef7awQeyYbCPz8tb29rY8Ucr/j82oy4NEe8lqWJG+DdaRj9phSrF2ZN3RHHMBk0QY18w
	j6wEShcpvvUpBMLE3ROS8hC4okawY0xRzEICU1JWQIagO4+rkkawT3v8SBj+/iL3SoA4rbGd8iYct
	mAKJjVSQm97d4dzvzvzkb6Cb9ucEyyTjIEogh0lkooiduZn31xBz0rRR5elEmZbBhxFckTo1cjDYN
	OoZ6fPqc2u1hS5q2gKjY+YhObIgV1pTdCI2+7v5obr0F4IncuJ9eWx/cW36q3+pMF1KGmmwRMNrcv
	Tb7x/PnwJ/Nf3hWFahMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A5q-0000AV-D7; Mon, 24 Feb 2020 09:32:02 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kk-0002qX-PD; Mon, 24 Feb 2020 09:10:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 160C960C;
 Mon, 24 Feb 2020 04:10:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Kc7cB+siTPadg
 gfY98n1dIUNfpOHCaNhkrg1nIOPsT4=; b=rxDwSTJrSH+ia5GRBGp9HkdqtN4nw
 cnhL8L/Yt59RmmEly6aFuA76nNy3d+evKCkOQLcmBitVW6REGgS+/XYWPN++L2ox
 /iB4fhAGe83RUXshBShjGz1pe9l0nxon7nhG8UjPviZqA7Uf5xHdagwGra8N2aTe
 sbh1h+V0/IiHa+a+S6lhBTtMdmaJHrxnn6nIcZroVg1X6Iv50iiYKGfrffYYilbm
 9v9G6yg2JegyI+pefjxnm52iOXLrM8zwgOnN4j8M4DWHZnMUxKyxvBJhFKknA9Jv
 KnQfHjtVPrpZCFoscHM/t60QeMkwdF6o2+zeAjKWu/avALUeBmULCDE4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Kc7cB+siTPadggfY98n1dIUNfpOHCaNhkrg1nIOPsT4=; b=BXcz6Jmc
 iAoWpqj/kIX6i9s16A2gSWuVU6/tjN5jsDPioCvgvGdN3Pab9NUOxDl9cJQjZkFF
 jUYm3hnMdenUJJwe8l89678gYTqI8VGJe31IiNzYeazsIYbAeaAo/6sKEJMG/jxi
 EDYTP6f+eQqpr89HL6naybxHo0D0LoQgk2QZsFEuHjQ/84XioH/t/3w84SYD0FzX
 VAnIhp5AyocEVE8rRFWj7ICsM94sC9LcBOz3lQ92QdWNenUz7mAfWhu7d0J2/D8z
 u/O/MqZTa0tJlpOz8Jn7T5x+aShvwHVRkLjRk+L5EEuV6VnopSeNBp0RBIIuVxv6
 CY+fi79+et0hdw==
X-ME-Sender: <xms:85JTXgqB78qdwP5BZa2YhMHbOi3mt3JrhSGxhtWQbovBc9wewioxwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:85JTXq7iRdgBwU3PisRJOGge1OFuegSqmhY36ORBsVoROmrDt2BOSg>
 <xmx:85JTXgPFfH1DIx_X5_6XMGek9UOKqjkov-WrIGoKmVj6UWaTAy99GQ>
 <xmx:85JTXsOd484TWoGIFsMcSZJPk4xHYwkHTY7z8cn4apMO3aK-EX3Chw>
 <xmx:85JTXh0Phz74QwzWAuRTo0mCt_uJedtLQMa0S-P4gmt-QohPN32f-tWmzlY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 541C73060D1A;
 Mon, 24 Feb 2020 04:10:11 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 57/89] drm/vc4: crtc: Remove redundant call to
 drm_crtc_enable_color_mgmt
Date: Mon, 24 Feb 2020 10:06:59 +0100
Message-Id: <bd7d94fa2c8ad256347408cd2e175a25a1af3469.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011015_596223_3CDFCCF4 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver calls the helper to add the color management properties twice,
which is redundant. Remove the first one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 34e914b3c686..67d9beb2cff0 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1197,7 +1197,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 				  &vc4_crtc_funcs, NULL);
 	drm_crtc_helper_add(crtc, &vc4_crtc_helper_funcs);
 	drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
-	drm_crtc_enable_color_mgmt(crtc, 0, false, crtc->gamma_size);
 
 	/* We support CTM, but only for one CRTC at a time. It's therefore
 	 * implemented as private driver state in vc4_kms, not here.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
