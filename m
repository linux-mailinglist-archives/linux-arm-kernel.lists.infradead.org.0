Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8377A1B7A99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXkqZySBpk4m3QiYKawkZGwXRrzjpzwRPbRKkC8nQgI=; b=mxzxG4iBgxzUot
	bavWvL2J4YKK8sEcVQiQb+xpoU5yHNbseWtvyRVXdsL9W2FTV/fPI57x5VeD8/Upb5KdFO3COriub
	sAnrySDme0tjw8idM1PG0tFCsvoOUIRPRwgoDbY44sL1x6ogFwYQRRge26YVTDrugipJizcJiVY3h
	ujSq8YdSGFgJ62hPrTJ+SVOrSMfCVEm4Uvds9SFU0oaSTNoEKkoUjRH0oo5JUKOiZJYjO/3V3Ogup
	QPbdG4gULQo97ICwfJf4lWFTyoOHV7cYl6owHFc7ykO4lz4Kl5lndJHzmrn6893Pjh1nzHlqzeXpW
	2qWRrD4jjBFWutGZ/N4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0ao-0007n0-Hh; Fri, 24 Apr 2020 15:50:18 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NR-0008CY-4j; Fri, 24 Apr 2020 15:36:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 34747143F;
 Fri, 24 Apr 2020 11:36:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=chTEdfP/TGVQC
 B89hyBYCnukgHUPmk0+Fjf1O1Hfcig=; b=wfmZEBx8vrwcs/BGGRHW2Wa8fFn7Q
 u9nR5EOL8JWpIBypP0t3Kqzr2jj4d3LynyrESahg7u2x9fn3/LtTQdudkk+JSTCk
 kD3RWKjCYW/aZG8hvN7z3/t0DhPpP91NkN1h1oA8ziVv3Np7/8hblc0eo0mAqmd2
 A7X/w5PlV8QPqZLLAPpdQVVdeNdEiUw3w6eSmaQ6aqjiKtphhvahFWzcoxmcAUxW
 3ImkemQ+IZTooPOSjCjjadll94RF7PpoSSReP4Gs2LPHTfq8q9WtevCA3FRTSoPC
 oxNMLsPlPqY4a3RBz34fzKV6/VpiZDwuOQTYzYjUxXoVpUO/9pIAQx9IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=chTEdfP/TGVQCB89hyBYCnukgHUPmk0+Fjf1O1Hfcig=; b=0xGpL6Dq
 4PfZ/F+hBdLcEbO7CAUveW8KzMsRRcICDhSO6qMMaG8tk7oElMeV/H6KD9E9Qn2M
 LwtVvjsgp1RhTfSv5gsd5OMMn1g1VKwch1m3RmuADDaehC932+4j7SAHK/18apCK
 BnvDLU+ymw3lQ8IdIv1iA4tSIsKkqvxXQvX0ctuYWthlPgYgS/dZV07L20yXfG1P
 +Z9lxnT8inLP2Gw16l+g4cTOq/DWGe7lEgl7dJesYw8hkBdNv/JLnCujANRwxUSB
 vx9pnkcvvyvqglTvWP3mfQR6NC5lwFsQPsbSfbg9PZ6dd4auWIpgGLax4uun9nMA
 2n2VAjC+LG+lcw==
X-ME-Sender: <xms:egejXtkkYhbb1LlfqJNeVB2269X8vSG--b6pX_UdSCE2rbPEmICn1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeefkeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:egejXgAWrRFnCfGyE0oaohVPqsJMQUVTlA-dPu-1Wp0lvONlECYMAg>
 <xmx:egejXi2-wjLbLXoXTtxGU6U42cHTbQC_F5Jfk8ym1n4KJtHLXLd0Xw>
 <xmx:egejXvCHD9WZhCfjFodjYrcSZlR96peVILVdQW-onlv6ntsyYbrp5w>
 <xmx:egejXqOHaw1NfuNaZzHo5zPjQlL7dh9rVQ6E1VmbnEsLwUAXiDo_pKyeh7Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7171E328005A;
 Fri, 24 Apr 2020 11:36:26 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 46/91] drm/vc4: crtc: Use a shared interrupt
Date: Fri, 24 Apr 2020 17:34:27 +0200
Message-Id: <941aa091135806b802969346125faa449fb281d2.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083629_361079_B448B4F1 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index be264da1a13f..5d713fbae139 100644
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
