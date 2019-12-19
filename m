Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85E4125D7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AbDTXaszMd6ba3iPiPMVoVajPXxzc4+D9/G6IZmVVck=; b=gqpmJ/AtDah6Iu
	lE0u98BlqlZ5/HJ44N7K1tVwWIStWByqqff6rEvkvt7cUZZX8olal0CCLCnrwCLXyiQ/cGq2xCgVh
	irnjq0vVIL+GAbrWUB6JYictvCmxEnGJp7ulz3Orl+z9fJc4DNHsGXk0l7P8DyOvEBuZL3OeMEGO0
	uH5S1E85A+EKYPZLlmhH2WEZkWNaGC0yXuPjcxRWl02eO15b1sGJNjQIyQ8OO0MztxqHFPW6W5U2B
	T7o4oKrPbk3RACMEW8g7G7IFTyBHtqtCgGdJlRgH+XOKQgR+YtjmbvxV/d4+CisGLt0xfXa1OaCIJ
	z/RX3lCMXp07YzjlREPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihryy-0000uU-Tg; Thu, 19 Dec 2019 09:20:32 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihryb-0000bA-Pl
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:20:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 1ABDD596;
 Thu, 19 Dec 2019 04:20:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:20:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=/gNcTvDKI4nxKVR3eNM6FMu/Sg
 TNjggBxmKC7zb9KD0=; b=iqop338EUk6HWpGyool8au09oYRfXeGEvGx9DRADET
 ke3PYk8mrD2T/5aPfY+CUFTRuZh0UlT6bNo7SMF9n2lMu90fFBY5t3wWSthAJ8Iv
 sgaTT0RnVr2qEL+gPxrC64phN87MJQsZhBiNnbz+CD8jO0Rrwx6H/X8kNENvKjk6
 etkD2k6T1j+gPWihEQkX+cecmIIO72rrMnFCrWCsaS3gFewLMTs4he3ZktWR6YH4
 Qa/Js7NQjn0jLIqvCRjk7Yka1WDfAQo+bFKdeb/WJnmI1U93wQ1aMwlXXwSFY9ya
 ws/CtrGW2fo7MnvkMTQ+5xP1uaatla4Ep31pwzn9r9Vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=/gNcTvDKI4nxKVR3e
 NM6FMu/SgTNjggBxmKC7zb9KD0=; b=wktalPLSkMCPqie4vGgR14o4/tKC1I0eY
 OTyuM7WNoVjEj8a+shtEGy4/eW2m0To5DTgD6kVKfFqHEZ0YMfgNMooJM4wm7fM1
 r9cjZqnOUy5Hrb5dzzWwdl9vKbHADDSkS6GHnZlTNmkEJ/FjSuDhnqbv1ujbSqKi
 AJYAVftelt0Pi+53oTpkj3h3UUnwtdfNTWhQh4KszYYUoHuYxwdqM6PLgTy9/4Fe
 5pwwcUh4gkE2CF62P8Pl4wO8CcTukvYIkQ3mlhCPJC39TcnOd773N0zX6x2tq7zY
 A/1xBRP84sDsiXT8ZWiPF6/yiJQ6KQe8z9DTr/BQvy66A8ywRjY+w==
X-ME-Sender: <xms:w0D7XUNvbIQrqg8LMFPFeNP7aTBmwLXr5_HsVz_fWh8EHnfGVzaFbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrke
 elrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhn
 ohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:w0D7XZWRi8J0wjVvx7rPSUti3uqa2ud1QfCR0ep3ygeucMaTdBLccw>
 <xmx:w0D7XdsAN3hKDFVjMFz_rEINCjJmpKqX-Bj0l2Q4Qhsu4DqaSFcPsA>
 <xmx:w0D7XZ599YJ-6nnK7norKCQsH-SZP3NM4tWXhrxeSWTXdfP1cVISuA>
 <xmx:xUD7XeHE7XB855KMKu7zrUbAyowFAz0qvirfZC9sslZxv9aSvhoh1Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 29E3430609ED;
 Thu, 19 Dec 2019 04:20:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/2] drm/sun4i: backend: Make sure we enforce the clock rate
Date: Thu, 19 Dec 2019 10:19:59 +0100
Message-Id: <20191219092000.949052-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_012009_875640_B85AE236 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The backend needs to run at 300MHz to be functional. This was done so far
using assigned-clocks in the device tree, but that is easy to forget, and
dosen't provide any other guarantee than the rate is going to be roughly
the one requested at probe time.

Therefore it's pretty fragile, so let's just use the exclusive clock API to
enforce it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun4i_backend.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_backend.c b/drivers/gpu/drm/sun4i/sun4i_backend.c
index 4e29f4fe4a05..aa55eaeb8823 100644
--- a/drivers/gpu/drm/sun4i/sun4i_backend.c
+++ b/drivers/gpu/drm/sun4i/sun4i_backend.c
@@ -857,6 +857,7 @@ static int sun4i_backend_bind(struct device *dev, struct device *master,
 		goto err_disable_bus_clk;
 	}
 	clk_prepare_enable(backend->mod_clk);
+	clk_set_rate_exclusive(backend->mod_clk, 300000000);
 
 	backend->ram_clk = devm_clk_get(dev, "ram");
 	if (IS_ERR(backend->ram_clk)) {
@@ -932,6 +933,7 @@ static int sun4i_backend_bind(struct device *dev, struct device *master,
 err_disable_ram_clk:
 	clk_disable_unprepare(backend->ram_clk);
 err_disable_mod_clk:
+	clk_rate_exclusive_put(backend->mod_clk);
 	clk_disable_unprepare(backend->mod_clk);
 err_disable_bus_clk:
 	clk_disable_unprepare(backend->bus_clk);
@@ -952,6 +954,7 @@ static void sun4i_backend_unbind(struct device *dev, struct device *master,
 		sun4i_backend_free_sat(dev);
 
 	clk_disable_unprepare(backend->ram_clk);
+	clk_rate_exclusive_put(backend->mod_clk);
 	clk_disable_unprepare(backend->mod_clk);
 	clk_disable_unprepare(backend->bus_clk);
 	reset_control_assert(backend->reset);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
