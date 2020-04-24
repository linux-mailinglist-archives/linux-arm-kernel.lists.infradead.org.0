Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4C1B7AE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H60qfbzDef15vBXPLr71JpNeLf/yQPHO0sjIoKQFChw=; b=Sj4Vb52gs6aJGD
	5EK2Q8pKb4S9V6ctc1PEGkqnxsx0eWL45I1FMgyllCa4QASZMZcyc457txzyzqXGOPUuOcJVanA3O
	P9uryNeDnoNDtfoospiK+WVIxbXFVdZN1sWPZxAkGK7T7Cc7nGqnHEY/KLEOH0a9uyPG5lKxRnpEY
	eRQApVZXeJD8dOKJMnCIGJRl+IFD6R40H1ejSC/tKNmEiDeeHVzmmzKom6UrYI0JB89FpSrQ+381V
	OwKSPuVDMcmDpkpadvzq93k6dHkZYnF0WvLhHX90iX+A1vuDvY1q7jSIxFngb3fJoSSIXRf6fLSOO
	4XkNBcWKHxwaCVokdtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0hq-0002KN-6P; Fri, 24 Apr 2020 15:57:34 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nl-0008V5-BX; Fri, 24 Apr 2020 15:36:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1A67E144E;
 Fri, 24 Apr 2020 11:36:48 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=eOZSTsLwzi7X4
 6+RpMSLy3AiFh/ZbNYEXIOKGvsLCwc=; b=f+qpgAyq6I2S2BcsEeU/8sk1JRTbw
 ED45phzfojgvui30ZQ0B4is/YVxn1yOxWixq8CsbyjWEaoLR5VEgAz5XzYoRPvQN
 BO58JYNFzZ50PkFSu3ub8GzWTTeV8XiOueMCXEkx0vHToaAvDovrAFwgOPdEQr6t
 1MjiP4EXX8WEMseKCpnSx8Q9MFmFRxgxkaK49i/Ec9eNPtzrn8SlK3kAMeMvxz77
 tQJKz9vfIlhIg4B+jiUkzH9NNXssDeorjOe5EAETMR1MX7DaWYRw414BFzqSCmKE
 UrkFUnHOSsyeALN2xQ5HivShCMEOqBfqLMUNrzV1HTspcTJcGDt1AZ7cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=eOZSTsLwzi7X46+RpMSLy3AiFh/ZbNYEXIOKGvsLCwc=; b=rPFihze0
 9t64ZiA3+gvpY3r5SqzRI0VeUKiqiYxQc94Ma7Iq2+5VecdDGl6jqHA1IcIF0s66
 yxHI2xUJayCIr98I7kwduQqw3dS8saBBbs4md/mx2sWMFa+P/b7RiAEGJfy9CwVi
 ckw57UR63hN2A5VDZYj2ff379LVeQuodulfypvXEzer3siM6jdekHBFWAnrRmM6U
 lumhuLh4y6DvxX6dsi8S2z1zRu6im3jAVxDEBvMCVUqoagTpPvuKkjgRi2f//Jmu
 gQzzEUbBL0AWYftRzyX1Y3M+eBI2B8pBz3BKZabtPqz36UyshYEv2YugTUVI0uKV
 b9CG4oZy0oCPmA==
X-ME-Sender: <xms:jwejXt9_andU4Hn0rriVS44GaBaHk367yi36KziH9tOHxD1w3jCoJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jwejXgHMdBPzZG8QCqVN7RzeAyVUcJtZ9uQnIxpz_N642mfi5sQ15g>
 <xmx:jwejXtfokfmFy1Xl1COmGmBGcAHoZAwR_0USWmcPJgQhabwld7-dAg>
 <xmx:jwejXuqrZqevL3hvO1c7hYkH9FwRS3thJs3ZBzQxgg9vovHQpuVsmg>
 <xmx:jwejXp4vMUkr1xmiD6aewyyIwGBnm1QRXx7dHWRJRZce3hGA2eWEUQ-grHM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 50ACC3065D97;
 Fri, 24 Apr 2020 11:36:47 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 61/91] drm/vc4: hdmi: Use debugfs private field
Date: Fri, 24 Apr 2020 17:34:42 +0200
Message-Id: <f2e5aadf3203eb9152ce5b106016628b5f194f78.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083649_478704_99ECDF31 
X-CRM114-Status: UNSURE (   8.31  )
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

We're calling vc4_debugfs_add_file with our struct vc4_hdmi pointer set
in the private field, but we don't use that field and go through the
main struct vc4_dev to get it.

Let's use the private field directly, that will save us some trouble
later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 7e2d3ec311e3..a9e32ad7b0ab 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -182,9 +182,7 @@ static const struct debugfs_reg32 hd_regs[] = {
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 {
 	struct drm_info_node *node = (struct drm_info_node *)m->private;
-	struct drm_device *dev = node->minor->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *hdmi = node->info_ent->data;
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	drm_print_regset32(&p, &hdmi->hdmi_regset);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
