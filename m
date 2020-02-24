Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE1E16A272
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z+oLdZGoBQNEUXZcxMHWbc7JUgcC0JkSnEvWXDFoyg=; b=MDfqvGv81eort1
	qKAT/zpVhagPTUlwtjko524WIGeniM1Q23rsGIRZXrQlHgHpcQE0aswWAbkvKkw0CpDrAFNEfQLxE
	eoXGKELkD3+jWExs3vflyFAfYU0MAQAmKv/0ioyHnx/wnz9gw5aN8p2+YN2jrKxJ/4FgZc1YHP+yS
	v7gxqbDvg7fJQFIb7DnhziLMF85mluqS9yN3GofQVYLLXtKcURpWXReKpEBOlX3frdctsfzZXpWqD
	GNuzcS0amoYw+JJtpqGHt3WqI/Hpy0zbqy1ZvH42CsKkY+IsjWuTEVVB8PmaAhUu3lABkjdK7UhmW
	V9TwIYDzKWHnItOjNlWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ABI-0006Sj-7p; Mon, 24 Feb 2020 09:37:40 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lL-0003rv-K7; Mon, 24 Feb 2020 09:10:53 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 62E4B64A;
 Mon, 24 Feb 2020 04:10:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=h4W+HJeoNQVE7
 dwloRlWrUOnWKSD6AD1egWsD16amdc=; b=Mb1nR0GJJx5XBcPcOrJH1ZXkR1ivz
 2Qcshr0uSzuO/b8vxmw5IvmGUXWXDY42U+7aaeGxXMlxCICL3pR/HyZ6h2l5kQjd
 MKSg/FcfiOFg1/0EUcNWQM9AX07yrkSUefGSLukGKr4TDrgqR3qZX23sUKC3wtIw
 zRZsgYer7cIUEF7ZLlgpRGPVCwUnSE5pj1aEK3R7s9TcjHRfXu+zVqzA8RMaGSXp
 f8yZNsn5xhbbYHiQ21/BQSvBd5rOASZ5MrSxIKDOKj5/8Pg7+1lfCxGcw97Y6Ry/
 o2/nhfEpw+dW7xK2CX7sCKT/ieofkkeIz7IYrygkW2vdGPIG7S6P3SNzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=h4W+HJeoNQVE7dwloRlWrUOnWKSD6AD1egWsD16amdc=; b=iKfTp/VE
 z40H5LZDs1hPjFpZupQJFeOEsbWvQHhneYdMM7wQOi+YU/YXNvplQee8eHtNqcTY
 xhq6nPqxLWA3Dvh5V+ASXdL05wP3WCpSEKxpSRBqIiW9AKzAzXkvGXpIq0ddzjlY
 suk1GhxaY7W0I6LUWDm1iivrLqcL295xPCpX/jtWm/0QUC6YdmHGZTowPu6LdZ8v
 pOUXEcWC2JBl6frgRqW3+JDkZWBrP+almtmOujftjA6G81VEZHgSI7vbSSQ9my0K
 XW1oDhRaw3z67QUDnJfWvvM45nWDDrCg70HOKY4xHPHGJ1LNCOTGK7HRL4XAGIbC
 XrueAGU7omGqkw==
X-ME-Sender: <xms:GJNTXtCVhjBMpdMJJiYF46HVhUHHlC11od4tQzvl8419eXq7zUfGiw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:GJNTXlfv3bBGP4BKUwYTe2QZZBF8A9WhJzzB8FHREHolsnjS-r4GSQ>
 <xmx:GJNTXqcbmuFH3eZg_HuZruyHT_32XjNIkb3fPipx6LIgJ1bb73RLlQ>
 <xmx:GJNTXjNPcamyWht0tI27Pjn_h7sgWB8WrfzMnonQ3-PmLPkZ-XGxVg>
 <xmx:GZNTXhLC2U30YLZokQlyFnblN7Wm5MqzQw-LlBDMpgrqLpk4cocIG2QLy0s>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A69153060F09;
 Mon, 24 Feb 2020 04:10:48 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 83/89] drm/vc4: hdmi: Add CEC support flag
Date: Mon, 24 Feb 2020 10:07:25 +0100
Message-Id: <6d70995c9effa5253964724350a007525fca975f.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011051_748632_9FE4335D 
X-CRM114-Status: GOOD (  10.92  )
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

Similarly to the audio support, CEC support is not there yet for the
BCM2711, so let's skip entirely the CEC initialization through a variant
flag.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 ++++
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index f7fd1914aec7..1762484bd97a 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1168,6 +1168,9 @@ static int vc4_hdmi_cec_init(struct vc4_hdmi *vc4_hdmi)
 {
 	int ret;
 
+	if (!vc4_hdmi->variant->cec_available)
+		return 0;
+
 	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
 					      vc4, "vc4",
 					      CEC_CAP_DEFAULTS |
@@ -1459,6 +1462,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 
 struct vc4_hdmi_variant bcm2835_variant = {
 	.audio_available	= true,
+	.cec_available		= true,
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index f41116507156..cbb1d3ab85d7 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -35,6 +35,9 @@ struct vc4_hdmi_variant {
 	/* Set to true when the audio support is available */
 	bool audio_available;
 
+	/* Set to true when the CEC support is available */
+	bool cec_available;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
