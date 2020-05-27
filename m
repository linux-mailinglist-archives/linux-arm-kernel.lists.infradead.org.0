Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC911E495A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4MElZeLZdF8lz/0zNvNfuW5YZb/qKBKKnHhfRxBrWk=; b=D8k47aRc6oV7od
	f+6Z6A0356miYlUf9+aPAXZvnwASLKo7AabBRgSAruAtJryHWAF9NTke/7OGQropYOU7Gs1frvMpO
	sriay8V1OveHxb3RuSKpAYeiv2nelpbm4/e+pNL5EdClUnSmrGsm3SOjmh+CqTZ2ck4Gxefph6ZmT
	qM1m4gkX9QeKmMItPR8yoArmMcAmjIbdmeuAWXN26FBNIYI4szaklfwYmyPQuPmiLFJzIEUjPHv/A
	gkVTm/XyewP/6nTxASN0viuO7OIyn5mPPNbyCqzZlu0T2ZjnFTteiVzAgeOAGub0Os5+/G7E86ZIw
	7qtGXv7s936uKJvI1VdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdybg-0003mA-8J; Wed, 27 May 2020 16:08:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJa-0006Pm-Uk; Wed, 27 May 2020 15:50:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6C82F58203B;
 Wed, 27 May 2020 11:49:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=NNRyGdulB+GEV
 VHlWzjj38fI50EeD5+L1i1sfpqi4Ew=; b=XQsou6Ec0LVf7hi+Q3BTvqjM2Ok4F
 3qKV+k8tjBBzUjwNDd4tvICTjLwa1Z4R6W0DlNdxm7WylV9WCCBknGJQfHrRk0Ji
 WJAdwBEa6t76sZRJkdQphBH/I0LWp12pdGi/maIxa26KBafhb7ZuxKgUQ1Oz06JA
 II8M4P8mNz8Qmg9zgquXLEmsiWFgal0IiEiI0MjlmiXTcD7z8gEwdjSgNcoRIFWY
 nyz9naBUOtNo8hrmaPbh0md8/HUsJOXS6ZLtRFgMBT6dztoeXnQlrS8jczP42XKr
 MuiTI5s6R4ZNekouAWr/sunvkmTTMu/hG1h5u2N/mAoZm0zz4t1sRAZXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=NNRyGdulB+GEVVHlWzjj38fI50EeD5+L1i1sfpqi4Ew=; b=YdSuNB6s
 IVGtX3fEc0TsyhqUOmPcLs5XF9QViFRI+YETtBjb6XK1i79/9hnJhu9XLpkCjE4c
 0QGoszNK+xNyEGw/Y88/FO5f5rMQlBXF/c5wwi7AN1keZyLFy0J2hcj7i8dp4St8
 f+ons4XBuZ6QNiJ9lkcHOjVKRbWDFp/X/fMGab806pRlrOdwwt3WoZ2/bcYTr2vs
 ew8W6D+x5HtOqSd83B37NaMsvNNnnxJ1xHMItkct3rTltFC9EN5aiwxsC4CdveHJ
 +aleyrHD68D15TDGKmIq/rGUDwmHQURzZrl2JcIupX6rPJemA5yMP+T5JAwPgiuZ
 58zymcHTpX2wiQ==
X-ME-Sender: <xms:JYzOXvo6w6_oAuzV5ziME1pZ-ULmOWaYKlNKbck5W9tKpkUx9zCgEw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JYzOXprUiq_nepVFRl_plvrR24y8jaEEFZ5PDiaW0rKkOl2d7TYAwQ>
 <xmx:JYzOXsM5d_ql6ZJ8Xg4y0litrZSDpGljG4arHnZVAlAubjmZyDZciw>
 <xmx:JYzOXi42UGG2eJCYN5vwUIcGKTPHqzTD2yKiJz3r-4EKg6NhTNHkDg>
 <xmx:JYzOXla5GrBThQISpr_JAvnb5rjwaPl-Y84mnM4nO5vxQO-pkp8i-w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 108B5328005A;
 Wed, 27 May 2020 11:49:56 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 026/105] drm/vc4: crtc: Use a shared interrupt
Date: Wed, 27 May 2020 17:47:56 +0200
Message-Id: <6a2e6a4ba651d5bbdfd2c18c090525e50992e448.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084959_275523_1388EAA8 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Some pixelvalves in vc5 use the same interrupt line so let's register our
interrupt handler as a shared one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index a3fc7dd97446..fd248ee546e8 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1179,7 +1179,9 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	CRTC_WRITE(PV_INTEN, 0);
 	CRTC_WRITE(PV_INTSTAT, PV_INT_VFP_START);
 	ret = devm_request_irq(dev, platform_get_irq(pdev, 0),
-			       vc4_crtc_irq_handler, 0, "vc4 crtc", vc4_crtc);
+			       vc4_crtc_irq_handler,
+			       IRQF_SHARED,
+			       "vc4 crtc", vc4_crtc);
 	if (ret)
 		goto err_destroy_planes;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
