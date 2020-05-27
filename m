Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8006B1E4962
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhD7E27iRaxf+ett+wPwq69M87R/qmCE20ocs1S2q6U=; b=q4npOE+cHoFWWL
	05hJDgHLRc7kXiPIdx9gQ8GqbAwGxJVwGBwAeHhEPhIjsLjnUOWytviOrPeSs7DVvoHgAQDV2Txv8
	datdCQO6PnqpJxdl6iXnHZ4WMYQN2tTOYZaWM9B3jT6KD0/qoa5jpupyfQ6ADt//TL86xGnaFSVYP
	kJmPY0SzTXf7lDLwEToi6j74pZLvCNRy7EJrCuARoAf7fxoklgW6upUXyu5SoNyFY9keiRy0n4IxD
	96LL5E3x3Qv4S1QKGglT2kO7x4PQDPkaJvT5SNzUdYZxRElVj8/h+meBNDmYZyKp5vLM1ug0jxRTb
	vuHzBCjoky7SCLnNUufA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdycI-0004Ex-Rb; Wed, 27 May 2020 16:09:18 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJd-0006Ro-T3; Wed, 27 May 2020 15:50:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8427558204A;
 Wed, 27 May 2020 11:50:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nraSlgJbsb/0z
 SiZLIXgVenK3TQP78QMuAzCTOoxk9A=; b=HWbvOU3cV14XpZLhsgFbU4JmzTwr2
 t2eh+Uv86tDxtbq+msDaLU/AeuemAj/RCVzQmohicsA3Xoo3GMwK2CKlVxmltfj5
 k8/0MggVYg8smkSZsCVuGyVqs1tAEkiO/3k2JhOuNcQcDOibDvi8h71bd/u5evmQ
 TGpNpAVhZWkoPh7V3PP5xqMLvuM6SsC8pEWo0IiTMyyfLW0xfRMK4HkkrzjdxVTy
 qTv+ZYo9p9VTNALK5yTuCV5DtBNjnq3fGGN4wza87JBqlFtaOBe+sbpssk4ryW+l
 208vM+sCELf+jKU+AF8cWn7aLG8sGiqROztuDHbJPhP4/5iGyAzoSJung==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nraSlgJbsb/0zSiZLIXgVenK3TQP78QMuAzCTOoxk9A=; b=MIM5euon
 lys+3BtC83CyPOPiDZT5GxDEt4v34Q2HZh7aolEnWrmvt5RQ5hu0dbjO7U3qxrtL
 Dlc14QEyzXYQlhIXMZMz6tYLz23upTzsm7COSnliSTFw5/pKLENJTgc7T7D6vCwo
 +6zkypxE9rsDsdGx+I0nd1eF4CvLA785NUtDOIZ4MeqVXB4MBzlCPKy3TyoSYqBq
 4cObxsWWqRYSCcheMyipwokN/XO6D7QpWZ+GcDloJDzSaYnVaoLOZff+UZrDlfXo
 8JLozBArBqwC+B2tA2q3We7tHU/rVdKsxd2NwQFyPPG/6WjJgHcscisCyni372gk
 0vqBo9n+0CGQEA==
X-ME-Sender: <xms:KIzOXlwxG8Ezmqa4Mc2asPTIQzHX7PUbOw3SqxBEX7zL4SBPNYYB1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:KIzOXlTIsjdPFuUhWGOfe-R61_dtzaGrUMqUuJrBvXPWv-kPhV7xmA>
 <xmx:KIzOXvUb69PUN_TTXQUTOb2e3p_1g2WMFGyWwIpnB_44nLwDAdoARA>
 <xmx:KIzOXnhx-PaHRmoshoF32hSI8LmLAq6zcqVDEg9oQaRZpqW5v4ZsZg>
 <xmx:KIzOXpAPb8LKTfCLGXBOrVOxofXNsQ8FUlWhtwIuVNgETjN7pqugMQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 240F13280064;
 Wed, 27 May 2020 11:50:00 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 028/105] drm/vc4: crtc: Restrict HACT_ACT setup to DSI
Date: Wed, 27 May 2020 17:47:58 +0200
Message-Id: <7a93436f97666a2aa025686ef3ff3606de4bec67.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085002_409511_7B023302 
X-CRM114-Status: UNSURE (   9.07  )
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

The HACT_ACT field only needs to be written to when using a DSI display.
Let's move that setup to our DSI branch to clear a bit the common path.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 8dbf06cdb069..5e1d234f3c8e 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -344,7 +344,8 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 			   (is_dsi ? PV_VCONTROL_DSI : 0));
 	}
 
-	CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
+	if (is_dsi)
+		CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
 
 	CRTC_WRITE(PV_CONTROL,
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
