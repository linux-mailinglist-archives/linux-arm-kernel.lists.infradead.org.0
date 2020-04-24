Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4781B7ADA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6suzgBqiLJn8QKb8e5cH5ik0bm3RCBhOlqxc0iW7vaU=; b=LVyyRct4OWjZHp
	MHKcZapeRZcBSB0gaOQYuK9b2sF4C9bS1xhEDK+ogmY4CLffbVSwJxxQCNlhSLDWEYPRpqxY0kPC0
	2/rtLo25T/li/v9V+hC0cJedSrgTf2E1AkoMXF6CU9I4Sn70EYqsdH3/WfXpHIPpZ+cEPOvaPch9c
	DHtnwu76VRC4jYG3UvWI9TWe9r/O4B8YrLRsw7wiVpxqHau9vT0ClkBkJnqjgDeJo052NNm0QVxdU
	6m6YKfPdxDTlfB40ufuP96fCzX9vDoqldt+jWd1wzFkqm9Sb4mpg4QJj0534jIcyF6g02DhHcXfku
	s871obChsBdglhTZ29uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0ga-0001GY-Az; Fri, 24 Apr 2020 15:56:16 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ne-0008Ov-MT; Fri, 24 Apr 2020 15:36:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 0EDE610EF;
 Fri, 24 Apr 2020 11:36:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=iq6OgdlFEi7iP
 9VtPA3ftfVCrNknR3NlOuyTZGDy93w=; b=HChR8YBtXgXQqYbRO1Jpwyey+yYPQ
 cPcN1K+2vRjn/O8HWfjND2M6H1xoegmU9aHcpBgh25W7Juput/FFZSfHRAxn698g
 oEs0S8t4xmmRCyT1gM2mVpwfRfm6Dwh7RnK55qvwnLVrjuMi4o4KGwAVWPCxij8F
 iTW8dCuiVtzH1qqU2JBXHP2eRmcK6OdBwOTDhZunPgHoM5ajP1n1kSlNNOHykvhA
 lhGpX6R3+C00JJphvLtM6RM9qZ0qBUWotft76FUy9mNYOsjyLX9SP60EuWCOECSp
 80dfjyVLIcK4pysKytoQ0W1Pzp59/J5JMb41pNZF8DdC7acj61KF5zOmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=iq6OgdlFEi7iP9VtPA3ftfVCrNknR3NlOuyTZGDy93w=; b=SCsvIJTi
 VeCzFoe8CkT9Vn1TYOhartPUFW7a90SDZ1iNP8ta4ttb1IbNQtgB+Z+sWfgIz/6l
 fdW7PEdkpHSWkqKA4zNC6P9QwFJhMmWo7vt6dxBkyPcgbFS5vDuRPoc6xZMLpASC
 iqhDFfv9pN2tdw0vC05505/4rOIK2UrmFrkhf65TWYenu3WLBBZxD0jAuv4Xucgc
 XxnXjbP5gzaapu5uyPNza7mT03QVA833udpfJ6W3nJgnwcATiXwat4Bs9qQo/5+p
 yFWyX3bLS7bApJ+66p3z/OzufW8lWOsVKXuwBteKKKh7JOKoWcGIKCZGhJc1wrf5
 bG2jehCh3rmpZg==
X-ME-Sender: <xms:iAejXoqG_4BifGT85kv0gVNMHrg3E2VyWYZRHyE4-zvUm1r-a4eVVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iAejXg6QcCnaLysFXwaagmhlKrj6XoyqVH8LHV-jQqKRqf6nRdCfpQ>
 <xmx:iAejXs4702M3TRA-1YO_mmMAa4FLmFYMnA99a_FLCKmXBQRcosJcRA>
 <xmx:iAejXsnw1GDWx6T2LxCQKlAb7G0KTFc-2BTjf3U0PerSzxozAAPtzQ>
 <xmx:iAejXtL4dIL5GeiPG5J7q4Ipv4bXCWCcEq475I46x_FAfe0lmrpnUylu7mQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A514328006B;
 Fri, 24 Apr 2020 11:36:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 56/91] drm/vc4: crtc: Add HDMI1 encoder type
Date: Fri, 24 Apr 2020 17:34:37 +0200
Message-Id: <ceede41bee5828a381358165d298fef933ff8f5a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083643_060382_22F12AC3 
X-CRM114-Status: UNSURE (   6.76  )
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

The BCM2711 sports a second HDMI controller, so let's add that second HDMI
encoder type.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index e480839c1056..39b0d5ee1eba 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -430,6 +430,7 @@ to_vc4_plane_state(struct drm_plane_state *state)
 enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_NONE,
 	VC4_ENCODER_TYPE_HDMI0,
+	VC4_ENCODER_TYPE_HDMI1,
 	VC4_ENCODER_TYPE_VEC,
 	VC4_ENCODER_TYPE_DSI0,
 	VC4_ENCODER_TYPE_DSI1,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
