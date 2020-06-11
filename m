Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729901F6959
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lNHD49B6wiw0SuVNeNLfi0jRzl1/XLht5SxqCdvS1cM=; b=C2gig5KXIhEVLr
	fqehZfx3RFX6izvFXHvgToTqLTrpxJWOdj4U/bg4o7eibwDLSF5A0y0j0T3qtT6Ou7wv1ofnu0RO2
	Hu4+vmck6YXDecmCvItk8uFIXTocQClQTYIziTudDw289W5Cdg3IqrN3Zfjyq8WphCnaYfQFArLm2
	0DLU9c0aAJpfp3l9j7oonPciQNDD6pAucRGhnK1s6Ib7CLdc0n0CLp8Np8D+agXfU5woyh+P1K9IY
	/CmHrF/oylwQP+VPOqYv2gXxb3jR1OOSctPdUKUX7YNV+Dnrp26q/3WvlSg4vCF4H2omQN3ebDpUw
	Ilckzmea2MIj0SMB6TtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNZT-0003DM-NH; Thu, 11 Jun 2020 13:48:43 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNZL-0003D1-8O; Thu, 11 Jun 2020 13:48:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8062E5801A2;
 Thu, 11 Jun 2020 09:38:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=jQjsWeIlhqPm1oZNMXNmNsjlPz
 ih/RDA2oOywNwUB50=; b=I87kwz69l9LvgHZdmVA+cDiJ9T9yrQX9kGu1qjvJiX
 LlG8iA49WMbkddT4lbo6z2ptt32ZhNcSKpTJns/HIsFWLSDt6OV03QLudgv/G5mC
 nnaz/AUdBPkmzPaMAfrgg/AmPurXxhdteD2LqasHZv6h99gyQfdLjvR7Zs82WWjV
 OSVsG4ViowKy5pqm3DygekU/rlm2qjQEYZUUV0PSsVT0oQ85NZC/v3JfmtvhKuu6
 he6Afya9/QAZ9LXD5gEVE4eiZ6ApAc+8KdcfDGU6p3sBmOazQ3lCVlmCcn3peLXO
 YTK9NBchDnjmah2lSh2Q0UXwwoZi1C8l0hIkZN8ZCf9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=jQjsWeIlhqPm1oZNM
 XNmNsjlPzih/RDA2oOywNwUB50=; b=PuzL4vF6Dju4Xctz5wQb0mqpZKmzZEQan
 aLEyfReB4xgLdcjXl6pP/FW87U+gCqhQ8E2BLRft+UFfFhkmtbl3PuzxzQLrg8uV
 xApbyVVjR9Ji/dA4qe2dSWFoRMOY2gBAo5yymv3vo7U/EZKHTdVdOEw1Cq81Seck
 lvt4eJUe4L/cefvhiNZNIV2ZJGAIyR24fUkwhRUZdIaTZi7VDJDmj+SOartaueZl
 f0O+mvl8Ls0lliHdtj9VKxKBp7MC9bu3iP4j1uakXzln5ZLpxMvHJnmwY0gRsRVk
 ywSkO/9RG2YfApuUQN8rrRu+kCzi/Ny7WP2dAA05ZJwI1gcSs1aLg==
X-ME-Sender: <xms:2jPiXktuOVskVoY5KmhamXjS_PrrZeCxGJUmr4HNEvzFgssPTz10NQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
 hrnhepjeffheduvddvvdelhfegleelfffgieejvdehgfeijedtieeuteejteefueekjeeg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:2jPiXhd0pW_81VlCfqAD34FL9WOAf2j2VtEfJJR0uvOzet2_sVr2EQ>
 <xmx:2jPiXvxvUx66V9nBHhR0qIKP5or9l_sPJdDy_xBbloRRMQK4lpZjFw>
 <xmx:2jPiXnOCVumnEv76bVK98Bn4bEmaxVEnH5LPFD_PzVhpWt8oNrGH6A>
 <xmx:2zPiXhMywNAl4iF7Rt_C0NB88zfGr4tmimA_b5hR7qfebbJM5SQiZA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 71E1F3066656;
 Thu, 11 Jun 2020 09:36:59 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 0/9] drm/vc4: Turn the TXP into a CRTC
Date: Thu, 11 Jun 2020 15:36:45 +0200
Message-Id: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064835_432931_F7FAEC96 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

This is another part of the rpi4 HDMI series that got promoted to a
series of its own to try to reduce the main one.

This rework is needed since the bcm2711 used in the rpi4 has a more
complex routing in the HVS that doesn't allow to use a fairly simple
mapping like what was used before.

Since that mapping affects both the pixelvalves and the TXP, turning the
TXP into a CRTC just like pixelvalves are allows to deal with the
mapping in the CRTC states, which turns out to be pretty convenient.

Let me know what you think,
Maxime

Changes from v3:
  - Stripped the patches out of the main HDMI series
  - Change the bind order of the HVS to avoid a compatible check
  - Added Eric's tags
  - Rebased on top of drm-misc-next

Maxime Ripard (9):
  drm/vc4: Reorder the bind order of the devices
  drm/vc4: crtc: Move HVS setup code to the HVS driver
  drm/vc4: crtc: Make state functions public
  drm/vc4: crtc: Split CRTC data in two
  drm/vc4: crtc: Only access the PixelValve registers if we have to
  drm/vc4: crtc: Move the CRTC initialisation to a separate function
  drm/vc4: crtc: Move the txp_armed function to the TXP
  drm/vc4: txp: Turn the TXP into a CRTC of its own
  drm/vc4: crtc: Remove the feed_txp tests

 drivers/gpu/drm/vc4/vc4_crtc.c | 427 ++++++----------------------------
 drivers/gpu/drm/vc4/vc4_drv.c  |   2 +-
 drivers/gpu/drm/vc4/vc4_drv.h  |  38 ++-
 drivers/gpu/drm/vc4/vc4_hvs.c  | 291 +++++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_txp.c  | 109 ++++++++-
 5 files changed, 522 insertions(+), 345 deletions(-)

base-commit: ebd11f706c9d9756edad5b5f3f3310d77d77f60c
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
