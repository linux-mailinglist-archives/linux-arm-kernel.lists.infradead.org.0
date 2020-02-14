Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8776115D723
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VCHvjliIkxg07vVvqyUgfqn03DhUf1Lm907nNaSAUtg=; b=r0UZ6Fng8nccKT
	AmkKa89lu10txoT2/bOAlIBiC9S2A1qKbEG+2FWHo8PO7KzzvcdVMjEjFXMuabdkaK9lsCh57dra2
	Qw2jkS1N+0QIZ7KWjpZFWWD/DXn6VQ7KfMi6XHACu5vvZYcgCoArVZLNBt1HQnj9cdngbQGGufRC9
	Kjpcm5XrEHL8BCIKMTFjE9y2xxC7B1LQ0XCa8qWFTZnHC4fOIfrINykBblhOG8TurQ2VqiW2mXwbv
	fkp+d8r0hg0pSfjt6/2IdToT1zY19lkTsu3Ljox30WgfFDa9Cvr+AbKmkaOmgcZPlYTMbK7tCZllA
	d4wQgO4DhPsBPD/VzcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Zn7-0005z5-Kp; Fri, 14 Feb 2020 12:09:53 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Zmz-0005xO-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:09:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 1045D5D2;
 Fri, 14 Feb 2020 07:09:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:09:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=2f3VFRjW3B+zONorxo3OTyEyy8
 z5poB18m7XL4T/tlo=; b=qBukKA+sxCmpiwup4xTPDCsXNr95YOzQdhyKS4YDYI
 OYuM4MEAbJ8UGQEikfoBqUJS8AweY/TAdPIDqmRRlS2njJBdNTSvcp7C5t45Hx6r
 Ml5cziFxxjoY4ueyKpok5eIlC2mWhjw1lM27hephl7nZLMECzHxE8rOfq+xCEVRy
 chaqEwj+x5UEkn6Qw0CwEaDytr5mtxIsJabXMLbg0ZlwCQ3GfkNSnwg+fBB+rera
 PPyi90sG3lRHlZ/aAmbgZx4b1ov64BugrWVdU76g+gLk4FnQmkZie58o+qZHAGr7
 V8pF3QfWhRuTQ7QEDbCiEKTclOC+3R1nv9GiJVb/NyYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2f3VFRjW3B+zONorx
 o3OTyEyy8z5poB18m7XL4T/tlo=; b=14YBVnF7JMr1qIOUHNP6u9DxeGajjtExw
 CVwC8RAdx0tnaVfTveXtrrx0TfjYLKoO5hppd81QNlg9YLtZ4m3SnS9C7S7Ahtq5
 YGme/BrN41vTZV6STHt3JFgK2p9VVTSgs8f3771PDh6nrJq1Se0wscO5LX4xTK1r
 VmfpdnYzBPNFnu7w2cbdVTEPj0VTOYGzzGDesNb8+ai/8gonJ6L2e+nXMQQ9XtMl
 G22ZYYu7WMcbnnhuVYQcKOlaF2LG0VgZcRrCsfgLpPmQBOLAQe7VXPYSfFPkBXu5
 c3eI7J1sy7Fj+95gqpQbhJbdLx/DAs0ZlUaPkXSxHs9usLfWC07qA==
X-ME-Sender: <xms:Ao5GXjLEBf4LrkmbQmlkdG1Ie6pEcQvUfBPJhf9TY_nRNDn0b06J5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhho
 rdhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggt
 hh
X-ME-Proxy: <xmx:Ao5GXpjhYJqoIwAnuPj6Ge-qEHj6TaJ2c0s-nr-gEaWIFPilhIj-iQ>
 <xmx:Ao5GXtLYmVa1m9aFdaWj6wuuted2irFxN42pXmRdPRPtwVEhsl-Kzg>
 <xmx:Ao5GXuEPZBDtbP8YJNmT8W2jOyeTdJz6XXEx99S1eKvmw-2fOIf41A>
 <xmx:Ao5GXhjc5NzqwfHvqXfYLZf4cd9PquV9Ync9F--3gyg6-iTBF0YJdg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B97A0328006A;
 Fri, 14 Feb 2020 07:09:37 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/sun4i: tcon: Support LVDS on the A33
Date: Fri, 14 Feb 2020 13:09:34 +0100
Message-Id: <20200214120934.107924-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_040945_515423_5FAA1648 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A33 TCON supports LVDS, so we can toggle the support switch.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index fdf143042f83..14026b4fa7c7 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1475,6 +1475,7 @@ static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
 	.has_channel_0		= true,
 	.has_lvds_alt		= true,
 	.dclk_min_div		= 1,
+	.supports_lvds		= true,
 };
 
 static const struct sun4i_tcon_quirks sun8i_a83t_lcd_quirks = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
