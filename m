Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9161E497B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRP9p7nDpGbW+PYM0waD2+xSt1MwJgDqU3F46gwYw/g=; b=ho4HvJYci55dF3
	CNBVkiDe34l7hGvoQb2kKd7Ft3dJLbYRHJBGuub9BnK0VSrbpvJeZQRVHDXKL02POmzEiIldYzHr5
	dp8nIcwuiZA5KJUDJngjnciP+hveZakMNjQKarQTOKx6w2v8UI/R06EWMFPwAu+W4KwC8DLK1mb3H
	mUY3AR1FdSxACaZiZqMJSDqaGQpOBhfkBKnm4DWMf0biBrSfD/Ri1Q/omOKvcgqghbHTobs6eY0Lx
	zwLVpHo//jw/6gdmw4HRxrk2w2YGNBwGiTUVqEscTpEIhJcFxkycakIQslQtZIdgD61Mthf8Zihd/
	3S5JQ4CjGr0YPQBvuBMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyed-0008WA-Je; Wed, 27 May 2020 16:11:43 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJq-0007tD-VB; Wed, 27 May 2020 15:50:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 675A0582067;
 Wed, 27 May 2020 11:50:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=I0qBgYPifeB7J
 BxbmCk3SRyUi3j0HLjhg9JsadKswFE=; b=p60FZNXX6Ya1s1sXBGhl10XsjG0W+
 OL7+OQnhlDtyT465yXI9JvU8kMWGbiizre0ZfX9tpTEPIA+sWIz87Sv1kNxDNizM
 rQ2enb7HnQ48WdaVDgLmY0ygf4kqhmOlXWOILpo/JhGe9LuDLaQWtFtQrnBc9OHH
 UaCFHXYP7qE2BGPAAakXW9lTvSTd0hD0iqropgKBaBLsW3bF3SAF5G//EbeCQtRF
 PnNWq0dR6vTfX6zGzjvLFj3cXyXlFDG4SnqmA89s7hKrwjbpeW5HdlLkeqs09+vG
 XMCI1h85gFIh+kVyd76YbDoph4TxJZq1p2Aenr0rSoy1IC8paxs4pWaUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=I0qBgYPifeB7JBxbmCk3SRyUi3j0HLjhg9JsadKswFE=; b=ennjk80+
 PM+eUnsONYm4YPB8g/3hPG3V4q93O+wTAFaBFRsXuRv9PrH/Mz0rdhBX8YZJychP
 jKwJ8GPC9edagvaC4vCIRT0MD9JL1mO/Dgq/xN1uJ9llWEv3xFdtjicv5cdJ3LvS
 lIioka8J/L5gvEPtwFCkO2EO1e9ZFd7SrI9qP1yOxFFgtm3vo4mHCaaYinfhPa90
 YKSMgHkjLGq06t7gDoHLxlpT2wZUNDbMYnLLbJkeb246KOiJPTtZKj2RDK406jje
 U2A3NFIMONDRAuUtLUNnE0//zyvJvM72du+8urr1E5QJJnTM8B5CiE1qd8jOpF95
 AqinR3JGBOQh2A==
X-ME-Sender: <xms:NYzOXmzLkXdkE7-jBKHDzkXjsSmEIjOSx-qoxDkXvM0O16ZPDgm_1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:NYzOXiTBXF2x1DISCtnp2rFv6P9sbZVNXUnhz0ifP8jBaA5LVb-YUw>
 <xmx:NYzOXoXslFI1lMrVcezG_7dV_rhsqYHZp-6Y-QKMWdyc5Kmvxku13w>
 <xmx:NYzOXsieZ5uyHbN4bPs2vNOmvoykivwpHqnArbr_3aAI2OZ1HiC2fw>
 <xmx:NYzOXmDcyGQz7ctU0yzQ-_zftkdlGE10FsqDpQGZCRzjPTpU56fKXQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 066AA3061856;
 Wed, 27 May 2020 11:50:12 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 035/105] drm/vc4: crtc: Add function to compute FIFO level
 bits
Date: Wed, 27 May 2020 17:48:05 +0200
Message-Id: <af7e711fb46f21015a4328dd7aea984e2a8dded6.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085015_197653_B02A7B44 
X-CRM114-Status: UNSURE (   9.15  )
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

The longer FIFOs in vc5 pixelvalves means that the FIFO full level
doesn't fit in the original register field and that we also have a
secondary field. In order to prepare for this, let's move the registers
fill part to a helper function.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index e25e81bf64e7..12cfa0fb2e19 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -275,6 +275,15 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
 	}
 }
 
+static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
+					     u32 format)
+{
+	u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
+
+	return VC4_SET_FIELD(level & 0x3f,
+			     PV_CONTROL_FIFO_LEVEL);
+}
+
 /*
  * Returns the encoder attached to the CRTC.
  *
@@ -376,9 +385,8 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 		CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
 
 	CRTC_WRITE(PV_CONTROL,
+		   vc4_crtc_get_fifo_full_level_bits(vc4_crtc, format) |
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
-		   VC4_SET_FIELD(vc4_get_fifo_full_level(vc4_crtc, format),
-				 PV_CONTROL_FIFO_LEVEL) |
 		   VC4_SET_FIELD(pixel_rep - 1, PV_CONTROL_PIXEL_REP) |
 		   PV_CONTROL_CLR_AT_START |
 		   PV_CONTROL_TRIGGER_UNDERFLOW |
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
