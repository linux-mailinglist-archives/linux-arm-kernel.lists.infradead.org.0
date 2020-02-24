Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433F816A217
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDypoOy+kBEL7i7TVqH980SUiWmbtFc46jVdY/TOs3U=; b=chrcJL0VGZZV1j
	YF4Xm594DzKpqIdwdFTcrvk/c2UOk/RlhQ70XQ1IqwkScwXezoVdqfRa6vpzZEz17S2jm+qISRZBt
	5Y9d+WfJqylymXF55l/XWU5/foCMEo4GMrMZPnzk5oesT/7T09gWF/GQylWDpqaNnwwlWXhAHDdXb
	afvqEf2mXWb021B/eMYZKSDcL4N7hsB3ktQLDCVfqeu6C3pcX6aI+ZBq8A4Pr2IdpjRStXUSE+HzP
	JK5pS5EjF26AEKfKdfjom1WLtokL6ycJaPh2Ic9QWugAQMDtCuh65J+DId/fWjDC/aRf81xOqDt6u
	L/DwLz7SZo4fCgGvAYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69yD-0007ON-Fv; Mon, 24 Feb 2020 09:24:09 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kT-000214-L9; Mon, 24 Feb 2020 09:09:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 1D289628;
 Mon, 24 Feb 2020 04:09:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=HrcO6q4Cs/fdy
 zr6HzRlMJbR7u8he4OI01tO0VTXeAY=; b=TW+wXJz5Fmko4RC7evt3+ZqbzvdhW
 kgTnQGDcqdPm8XLNrLhRno0/NoTygahw6RNbcAgPqK7m/PZDwyxSJqnzP7r2SVFS
 V4EheerRnwkNrL9sCZOB2/98J8lqu9qcIaiHuGYmrUlHUsR2eUuJ3GZOBBbU6cOE
 c/5kwIfa4uKU14CL6a3ZQNc7zgnnVvfRctkcpkIyYsdJj/7eA8ENLI3WNk2y8uhG
 G1STe9Uxf8qk5xzgwpzfhR/6tgoSbiVyFyVm3mYYZz5upAIgaNK5ZPzI1ftxVUwt
 VC9L7UPayPKh6/q8xHM3BB8XRiEV9C05HIZZNnoctheCMqNzdjYBObvRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=HrcO6q4Cs/fdyzr6HzRlMJbR7u8he4OI01tO0VTXeAY=; b=TmazJPbN
 0Z6lmlo/FWAM6/7iLe0xjohhcdo1SW17P0gThxzbCt1SPuE+c2WYNIy7bGwp2Mfx
 f4+qzhn9WVyDne3Xd2KIJEsULRSmHs9NkDznrfQNqS9DwYADFJ5bSe/OkqYq55NK
 M5inXuQzJZnjW00v83HIx4lrzaqDy95Qe5WcbyEs0AK59VwhIuL44bL+KT25eRsc
 DSBMJ2LleRqmMgtL128T9UX9TkU8RoLfaY2bfN+4wB2MkEH+Ubf5IsX8SUfz3VNd
 xKy1966RNoI7vdsyMAOHXCBWEAi7Mdyg+PBlquH9RurdS0jTXO9IYSMMEQrTCs2+
 z7o+qDncElxREw==
X-ME-Sender: <xms:45JTXqfhlq7Hr7khdUbHL95OND7PElQ4UOfZ8XRtP8-U9gxrkqmfjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfeelnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:45JTXudW31iRM17FBtGQaKKwclFiN09MVDb6N26ckd8glxanwhHNLA>
 <xmx:45JTXqc2ZOuACeItKn5binEtBt79XEUcO2i5Gg4r0vVWdRqMlkCyLQ>
 <xmx:45JTXvlt-JS5mXfwzpwl-zeYysYx8y1egN-jzr8Ys5GM4ozuXnqzQA>
 <xmx:45JTXpYCY6gSzKNCoRqUe-5GOaDiu1bkD1ITjsNZ7u196uJSqdEhFvRMnfs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5ED99328005D;
 Mon, 24 Feb 2020 04:09:55 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 46/89] drm/vc4: crtc: Use a shared interrupt
Date: Mon, 24 Feb 2020 10:06:48 +0100
Message-Id: <386f44abd9b0f5ee6ee1d76b23025a27450a093d.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010957_903553_681C8DEF 
X-CRM114-Status: UNSURE (   8.77  )
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

Some pixelvalves in vc5 use the same interrupt line so let's register our
interrupt handler as a shared one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 236a14190ebd..4a2ea897eb48 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1176,7 +1176,9 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
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
