Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F9216A221
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+KEk3PZETgDuJIQhgG6fU855OjXjFdR1w5X3O9tJGY=; b=IL6Fe666NLLevk
	fkNlfx8K7alwM5hry5Ptif7Ejsay+wpnjw1EAKsnAGyDEPVLgMN6V3E/5BhbXYrjrNX9569XZxRXl
	CU1hj2nQ7CoxkdxSMit9r/Em5+X9HJgSHchXFb8xbE4tU5mxMJFsrMqBcekSnNIhl5YYZq/QihyWV
	8KeG1qQO+6a7WWKvJLAVJ4vGNLK/Xst6ew0jIa9pws8MzQDsHsZh/Vh609ouBufaO2SYeCNW/Z4tH
	G93MG+LVf12bbmL7AQT8M5W5omxFFnMZkumghuWHdoJO/cJLtDttCXnQhoTfrs76Ix/5lxkpcDiBq
	fFErlJS0NeQtn8N0cmDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69zq-0001lM-0E; Mon, 24 Feb 2020 09:25:50 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kg-0002XM-1N; Mon, 24 Feb 2020 09:10:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id C85E5616;
 Mon, 24 Feb 2020 04:10:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=XOAXUK0oU5Tj1
 VxK6KFCC0Euff0pn2yyPW45oYg5juU=; b=JbXxNFzR0cX8JAduI70cg5P/TdR1V
 PmRF8u3/TIcv+RxtHgRAXCUUOs2LCGjHCU757uWuHRT6KhqgLf+dY3w69mKTfOBk
 4qZnXLqwPAMAOeMwUStqHMYuxre1coc27wLhLQlwHr19djp7gRwTYQm3iLIpu71Q
 awfS2liH3MeuJspbqe0YVa1XbbYI43uCc9iA1K2F5d4/lJ9lr2WrOfO/xImBpGRk
 Ake+IZ6TPhFM8VODoGAXJkIMfrC0w1fe5pjU6faUd6xlB+qO9AOE/rGM0yueQocX
 E18ExCe6jZlV9GWxKNW3ZwuzrojQyIXubkuSUV7JQtdRq9hcod1/YBY9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=XOAXUK0oU5Tj1VxK6KFCC0Euff0pn2yyPW45oYg5juU=; b=WIOBX/YZ
 Vn7c0V7HcJto//EEM0TLH1rTOxi3rPD62SOGukA8OLF4x50jeNYu1CQNs2R9CsDj
 EEbBLr5VHV2fKNIZWOSLyqDIm+102021Wwp80fy29Bd4PZjqITyKEKPpCy6nmaYj
 /XGleVrI+7Gh8+wke+F10632dKjfr7f+Z0QH4WKkjeP4Dj1+UEZ9VXXVjIc9PrvH
 LXzNqG3XyKRx+pib9f30m7mKxRAfuPTAOc5j81GIN1UaOuocSrw2erACe+GoET4V
 EDe8wjQif1NWTs41nP98VlM/MKmnN2x/S6PWgezatKpv/dHqp7xjdentqX7eeSd6
 nUYc5LnRg1rvTg==
X-ME-Sender: <xms:75JTXr_qJQR79_WEBZnSjQjUW7nuB0W0Oxlz4WuLcJ72yR15tBWPEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:75JTXkB6y6ABDZGJwo_YCKgVvwin_QEdR22VEWjoY5Xf6MdXrPIdmQ>
 <xmx:75JTXryWd4iWDNZD-n0g_cMml5tSad8wa8mFpMZsbGrYc6WOkoOdfA>
 <xmx:75JTXpS1O2I-yVWn95pwRgzBGYY3A9jbtxdOaMZ34fVkpUDquqnybA>
 <xmx:75JTXtsJ_HgmYdXetr7K_0djWDegNUPaP8CsdPdEAv8W_efA4Dfti3zpIP4>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0BD03328005A;
 Mon, 24 Feb 2020 04:10:06 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 54/89] drm/vc4: crtc: Add function to compute FIFO level bits
Date: Mon, 24 Feb 2020 10:06:56 +0100
Message-Id: <12f981ddc23c58ef9357d2a6eda6b7a237889b0c.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011010_646745_D303E803 
X-CRM114-Status: UNSURE (   8.93  )
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

The longer FIFOs in vc5 pixelvalves means that the FIFO full level
doesn't fit in the original register field and that we also have a
secondary field. In order to prepare for this, let's move the registers
fill part to a helper function.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 129131a07edd..1dd0a9fb1c02 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -277,6 +277,14 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
 	}
 }
 
+static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
+					     u32 format)
+{
+	u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
+	return VC4_SET_FIELD(level & 0x3f,
+			     PV_CONTROL_FIFO_LEVEL);
+}
+
 /*
  * Returns the encoder attached to the CRTC.
  *
@@ -377,9 +385,8 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
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
